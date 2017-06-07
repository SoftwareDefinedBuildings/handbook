import pygame

# STATE VARIABLES
FPS = 30
SCREENWIDTH = 288
SCREENHEIGHT = 512
GAPSIZE = 100
PLAYER = {} #To contain image files.

pygame.init()
screen = pygame.display.set_mode((SCREENWIDTH, SCREENHEIGHT))

running = True
while running:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = false;
pygame.quit()

def main():
