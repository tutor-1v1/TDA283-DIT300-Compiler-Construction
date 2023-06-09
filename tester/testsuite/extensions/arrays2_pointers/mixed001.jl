typedef struct Pixel_t * Pixel;
struct Pixel_t {
  int r;
  int g;
  int b;
};

typedef struct Screen_t * Screen;
struct Screen_t {
  Pixel[][] pixels;
  boolean active;
};

void initPixel(Pixel[][] pixels){
  int i = 0;
  while(i < pixels.length){
    int j = 0;
    while(j < pixels[i].length){
      Pixel p = new Pixel_t;
      p->r = i;
      p->g = j;
      p->b = i*j;
      pixels[i][j] = p;
      j++;
    }
    i++;
  }
}

Screen createScreen(){
  Screen screen = new Screen_t;
  screen->pixels = new Pixel[10][10];
  initPixel(screen->pixels);
  screen->active = true;
  return screen;
}

int main(){
  Screen screen = createScreen();
  printInt(screen->pixels[4][2]->r);
  printInt(screen->pixels[4][2]->g);
  printInt(screen->pixels[4][2]->b);
  // prints 4
  //        2
  //        8
  return 0;
}

  