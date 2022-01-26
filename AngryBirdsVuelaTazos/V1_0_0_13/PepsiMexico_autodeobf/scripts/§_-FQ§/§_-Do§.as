package §_-FQ§
{
   import §_-7§.§_-ph§;
   import §_-Cy§.Texture;
   import §_-UX§.DisplayObject;
   import §_-UX§.Sprite;
   import §_-UX§.§_-2S§;
   import §_-rQ§.§_-hA§;
   import flash.display.BitmapData;
   
   public class §_-Do§ extends Sprite
   {
       
      
      protected var §_-f6§:Sprite;
      
      protected var §_-§:DisplayObject;
      
      protected var §_-HK§:Sprite;
      
      public function §_-Do§()
      {
         super();
         addChild(this.§_-HK§ = new Sprite());
         this.§_-HK§.addChild(this.§_-f6§ = new Sprite());
         var _loc1_:Texture = §_-hA§.§_-G4§.§_-ka§(new BitmapData(2,2,false,0));
         this.§_-§ = new §_-2S§(_loc1_,true);
         this.§_-§.width = §_-ph§.§_-EK§;
         this.§_-§.height = §_-ph§.§_-UU§;
         addChild(this.§_-§);
         this.§_-§.alpha = 0.5;
      }
      
      public function get §_-RD§() : Sprite
      {
         return this.§_-f6§;
      }
      
      public function get §_-xG§() : DisplayObject
      {
         return this.§_-§;
      }
      
      public function get §_-wH§() : Sprite
      {
         return this.§_-HK§;
      }
      
      public function §_-aO§(param1:Number, param2:Number) : void
      {
         this.§_-§.width = param1;
         this.§_-§.height = param2;
      }
   }
}
