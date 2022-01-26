package §_-2r§
{
   import §_-Ls§.DisplayObject;
   import §_-Ls§.Sprite;
   import §_-Ls§.§_-nY§;
   import §_-gC§.§_-XR§;
   
   public class §_-rW§ extends Sprite
   {
       
      
      protected var §_-HR§:Sprite;
      
      protected var §_-u2§:DisplayObject;
      
      protected var §_-rQ§:Sprite;
      
      public function §_-rW§()
      {
         super();
         addChild(this.§_-rQ§ = new Sprite());
         this.§_-rQ§.addChild(this.§_-HR§ = new Sprite());
         this.§_-u2§ = new §_-nY§(2,2,0);
         this.§_-u2§.width = §_-XR§.§_-jC§;
         this.§_-u2§.height = §_-XR§.§_-0-3§;
         addChild(this.§_-u2§);
         this.§_-u2§.alpha = 0.5;
      }
      
      public function get §_-I5§() : Sprite
      {
         return this.§_-HR§;
      }
      
      public function get §_-mK§() : DisplayObject
      {
         return this.§_-u2§;
      }
      
      public function get §_-vb§() : Sprite
      {
         return this.§_-rQ§;
      }
      
      public function §_-Ej§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§_-u2§.width / this.§_-u2§.height;
         this.§_-u2§.width = param1 + 600 / _loc3_;
         this.§_-u2§.height = param2 + 600 / _loc3_;
      }
   }
}
