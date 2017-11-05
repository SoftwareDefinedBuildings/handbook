package main

import (
    "bytes"
    "flag"
    "fmt"
    "net/http"
    "os"
    "time"

    bw2 "gopkg.in/immesys/bw2bind.v5"
)

/*
Pelican Driver Program Main Functionalities:
1. Subscribe to URI: Subscribe and listen to specific Bosswave URI
2. Publish to URIs: Send status information about device to URIs
3. Process Commands: Convert comamnds from Bosswave URI into actionable HTTP requests (Get and Post)
4. Listen: Recognizes and acquires whenever a command is sent from Bosswave URI

Questions:
1. Once subscribed to URI, does driver automatically process and send commands to the device?
2. Whose email + password should I use?
3. What is URL for Pelican Thermostats
4. Can I assume Bosswave URI's commands are okay to directly place in HTTP Request?

File Structure
|-main
|-subscribe
|-publish
|-process
*/

func main() {
    command := flag.String("whichFunc", "filler", "pub or sub")
    flag.Parse()
    parameter := *command

    if parameter == "pub" {
        fmt.Println("Subscribe called")
        subscribe()
    } else if parameter == "sub" {
        fmt.Println("Publish called")
        publish()
    }
}

func subscribe() {
    // Connect to Bosswave
    bwClient, err := bw2.Connect("")
    bwClient.SetEntityFromEnvironOrExit()
    detectError(err, "Failed to connect to Bosswave agent")

    // Requesting name of URI to subscribe to
    uriName := flag.String("uriName", "filler", "URI to subscribe to")
    flag.Parse()
    uri := *uriName

    // Subscribing to URI
    channel, subErr := bwClient.Subscribe(&bw2.SubscribeParams{
        URI: uri,
        AutoChain: true; // MARK: What does this do again?
    })
    detectError(subErr, "Could not subscribe to URI")

    // Listen to Channel, Send Commands for Execution
    for {
        msg := <- channel
        byteArray := msg.POs[0].GetContents()
        command := string(byteArray[:])
        fmt.Printf("Received Command: %s\n", command)
        execute(command)
    }
}

func execute(command string) {
    // Indicate Command has been received
    fmt.Println("Executing Command: %s\n", command)

    // Create URL
    var buffer bytes.Buffer
    // MARK: Filler Authentication Information
    buffer.WriteString("https://demo.officeclimatecontrol.net/api.cgi?username=myname@gmail.com&password=mypassword&")
    // MARK: Perform command parsing / translation
    buffer.WriteString(command)

    resp, err := http.Get(buffer.String())
    detectError(err, "HTTP Get Call Issue")
}

func publish() {

}

func detectError(err interface, issue string) {
    if err != nil {
        fmt.Print(issue)
        fmt.Printf("%v\n", err)
        os.Exit(1)
    }
}
