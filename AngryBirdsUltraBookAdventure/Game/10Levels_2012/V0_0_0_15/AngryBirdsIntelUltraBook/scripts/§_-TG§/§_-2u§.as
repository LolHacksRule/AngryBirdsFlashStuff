package §_-TG§
{
   import §_-qO§.§ in§;
   import §_-uY§.DisplayObject;
   import §_-uY§.Sprite;
   import §_-uY§.§_-2p§;
   
   public class §_-2u§ extends Sprite
   {
       
      
      protected var §_-0-x§:Sprite;
      
      protected var §_-GY§:DisplayObject;
      
      protected var §_-0CG§:Sprite;
      
      public function §_-2u§()
      {
         super();
         addChild(this.§_-0CG§ = new Sprite());
         this.§_-0CG§.addChild(this.§_-0-x§ = new Sprite());
         this.§_-GY§ = new §_-2p§(2,2,0);
         this.§_-GY§.width = § in§.§_-W8§;
         this.§_-GY§.height = § in§.§_-Kj§;
         addChild(this.§_-GY§);
         this.§_-GY§.alpha = 0.5;
      }
      
      public function get §_-9A§() : Sprite
      {
         return this.§_-0-x§;
      }
      
      public function get §_-06T§() : DisplayObject
      {
         return this.§_-GY§;
      }
      
      public function get §_-Ly§() : Sprite
      {
         return this.§_-0CG§;
      }
      
      public function §_-eb§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§_-GY§.width / this.§_-GY§.height;
         this.§_-GY§.width = param1 + 600 / _loc3_;
         this.§_-GY§.height = param2 + 600 / _loc3_;
      }
   }
}
