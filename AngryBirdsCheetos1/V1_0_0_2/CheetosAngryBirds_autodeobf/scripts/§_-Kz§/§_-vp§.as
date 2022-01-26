package §_-Kz§
{
   import §_-94§.§_-si§;
   import §_-GY§.DisplayObject;
   import §_-GY§.Sprite;
   import §_-GY§.§_-Bf§;
   
   public class §_-vp§ extends Sprite
   {
       
      
      protected var §_-XZ§:Sprite;
      
      protected var §_-pN§:DisplayObject;
      
      protected var §_-JH§:Sprite;
      
      public function §_-vp§()
      {
         super();
         addChild(this.§_-JH§ = new Sprite());
         this.§_-JH§.addChild(this.§_-XZ§ = new Sprite());
         this.§_-pN§ = new §_-Bf§(2,2,0);
         this.§_-pN§.width = §_-si§.§_-dI§;
         this.§_-pN§.height = §_-si§.§_-0R§;
         addChild(this.§_-pN§);
         this.§_-pN§.alpha = 0.5;
      }
      
      public function get §_-YF§() : Sprite
      {
         return this.§_-XZ§;
      }
      
      public function get §_-E4§() : DisplayObject
      {
         return this.§_-pN§;
      }
      
      public function get §_-zx§() : Sprite
      {
         return this.§_-JH§;
      }
      
      public function §_-rK§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§_-pN§.width / this.§_-pN§.height;
         this.§_-pN§.width = param1 + 600 / _loc3_;
         this.§_-pN§.height = param2 + 600 / _loc3_;
      }
   }
}
