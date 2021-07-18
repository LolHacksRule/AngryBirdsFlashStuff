package §_-OJ§
{
   import §_-4g§.Texture;
   import §_-LP§.DisplayObject;
   import §_-LP§.Sprite;
   import §_-LP§.§_-19§;
   import §_-Ra§.§_-2X§;
   import §_-hU§.§_-MB§;
   import flash.display.BitmapData;
   
   public class §_-EU§ extends Sprite
   {
       
      
      protected var §_-ta§:Sprite;
      
      protected var §_-yy§:DisplayObject;
      
      protected var §_-nh§:Sprite;
      
      public function §_-EU§()
      {
         super();
         addChild(this.§_-nh§ = new Sprite());
         this.§_-nh§.addChild(this.§_-ta§ = new Sprite());
         var _loc1_:Texture = §_-2X§.§_-mE§.§_-pz§(new BitmapData(2,2,false,0));
         this.§_-yy§ = new §_-19§(_loc1_,true);
         this.§_-yy§.width = §_-MB§.§_-1q§;
         this.§_-yy§.height = §_-MB§.§_-SP§;
         addChild(this.§_-yy§);
         this.§_-yy§.alpha = 0.5;
      }
      
      public function get §_-61§() : Sprite
      {
         return this.§_-ta§;
      }
      
      public function get §_-8y§() : DisplayObject
      {
         return this.§_-yy§;
      }
      
      public function get §_-Nt§() : Sprite
      {
         return this.§_-nh§;
      }
      
      public function §_-nk§(param1:Number, param2:Number) : void
      {
         this.§_-yy§.width = param1;
         this.§_-yy§.height = param2;
      }
   }
}
