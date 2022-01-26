package §_-ez§
{
   import §_-Ah§.§_-b§;
   import §_-Bp§.§_-5N§;
   import §_-Q2§.Texture;
   import §_-vO§.DisplayObject;
   import §_-vO§.Sprite;
   import §_-vO§.§_-OW§;
   import flash.display.BitmapData;
   
   public class §_-QP§ extends Sprite
   {
       
      
      protected var §_-4q§:Sprite;
      
      protected var §_-Dm§:DisplayObject;
      
      protected var §_-Vy§:Sprite;
      
      public function §_-QP§()
      {
         super();
         addChild(this.§_-Vy§ = new Sprite());
         this.§_-Vy§.addChild(this.§_-4q§ = new Sprite());
         var _loc1_:Texture = §_-5N§.§_-9v§.§_-pE§(new BitmapData(2,2,false,0));
         this.§_-Dm§ = new §_-OW§(_loc1_,true);
         this.§_-Dm§.width = §_-b§.§_-iX§;
         this.§_-Dm§.height = §_-b§.§_-q§;
         addChild(this.§_-Dm§);
         this.§_-Dm§.alpha = 0.5;
      }
      
      public function get §_-DQ§() : Sprite
      {
         return this.§_-4q§;
      }
      
      public function get §_-5u§() : DisplayObject
      {
         return this.§_-Dm§;
      }
      
      public function get §_-Fi§() : Sprite
      {
         return this.§_-Vy§;
      }
      
      public function §_-ly§(param1:Number, param2:Number) : void
      {
         this.§_-Dm§.width = param1;
         this.§_-Dm§.height = param2;
      }
   }
}
