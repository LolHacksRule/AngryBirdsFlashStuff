package §_-0y§
{
   import §_-I1§.§_-2N§;
   import §_-KS§.§_-ia§;
   import §_-jY§.Texture;
   import §_-se§.DisplayObject;
   import §_-se§.Sprite;
   import §_-se§.§_-N§;
   import flash.display.BitmapData;
   
   public class §_-0Z§ extends Sprite
   {
       
      
      protected var §_-eF§:Sprite;
      
      protected var §_-dM§:DisplayObject;
      
      protected var §_-9I§:Sprite;
      
      public function §_-0Z§()
      {
         super();
         addChild(this.§_-9I§ = new Sprite());
         this.§_-9I§.addChild(this.§_-eF§ = new Sprite());
         var _loc1_:Texture = §_-ia§.§_-vJ§.§_-2V§(new BitmapData(2,2,false,0));
         this.§_-dM§ = new §_-N§(_loc1_,true);
         this.§_-dM§.width = §_-2N§.§_-ZL§;
         this.§_-dM§.height = §_-2N§.§_-Uw§;
         addChild(this.§_-dM§);
         this.§_-dM§.alpha = 0.5;
      }
      
      public function get §_-Ac§() : Sprite
      {
         return this.§_-eF§;
      }
      
      public function get §_-1A§() : DisplayObject
      {
         return this.§_-dM§;
      }
      
      public function get §_-1C§() : Sprite
      {
         return this.§_-9I§;
      }
      
      public function §_-Mn§(param1:Number, param2:Number) : void
      {
         this.§_-dM§.width = param1;
         this.§_-dM§.height = param2;
      }
   }
}
