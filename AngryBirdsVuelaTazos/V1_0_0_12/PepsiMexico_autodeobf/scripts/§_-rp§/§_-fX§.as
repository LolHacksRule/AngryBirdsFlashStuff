package §_-rp§
{
   import §_-1P§.§_-3p§;
   import §_-Hw§.§_-3C§;
   import §_-S4§.Texture;
   import §_-pF§.DisplayObject;
   import §_-pF§.Sprite;
   import §_-pF§.§_-gY§;
   import flash.display.BitmapData;
   
   public class §_-fX§ extends Sprite
   {
       
      
      protected var §_-Ec§:Sprite;
      
      protected var §_-Zn§:DisplayObject;
      
      protected var §_-O§:Sprite;
      
      public function §_-fX§()
      {
         super();
         addChild(this.§_-O§ = new Sprite());
         this.§_-O§.addChild(this.§_-Ec§ = new Sprite());
         var _loc1_:Texture = §_-3p§.§_-WK§.§_-8R§(new BitmapData(2,2,false,0));
         this.§_-Zn§ = new §_-gY§(_loc1_,true);
         this.§_-Zn§.width = §_-3C§.§_-dN§;
         this.§_-Zn§.height = §_-3C§.§_-mI§;
         addChild(this.§_-Zn§);
         this.§_-Zn§.alpha = 0.5;
      }
      
      public function get §_-Nf§() : Sprite
      {
         return this.§_-Ec§;
      }
      
      public function get §_-pM§() : DisplayObject
      {
         return this.§_-Zn§;
      }
      
      public function get §_-Yn§() : Sprite
      {
         return this.§_-O§;
      }
      
      public function §_-EK§(param1:Number, param2:Number) : void
      {
         this.§_-Zn§.width = param1;
         this.§_-Zn§.height = param2;
      }
   }
}
