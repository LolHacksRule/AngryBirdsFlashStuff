package §_-Di§
{
   import §_-SE§.DisplayObject;
   import §_-SE§.Sprite;
   import §_-SE§.§_-uX§;
   import §_-pm§.§_-gb§;
   
   public class §_-iF§ extends Sprite
   {
       
      
      protected var §_-ut§:Sprite;
      
      protected var §_-UK§:DisplayObject;
      
      protected var §_-Hq§:Sprite;
      
      public function §_-iF§()
      {
         super();
         addChild(this.§_-Hq§ = new Sprite());
         this.§_-Hq§.addChild(this.§_-ut§ = new Sprite());
         this.§_-UK§ = new §_-uX§(2,2,0);
         this.§_-UK§.width = §_-gb§.§ null§;
         this.§_-UK§.height = §_-gb§.§_-aD§;
         addChild(this.§_-UK§);
         this.§_-UK§.alpha = 0.5;
      }
      
      public function get §_-LA§() : Sprite
      {
         return this.§_-ut§;
      }
      
      public function get §_-jX§() : DisplayObject
      {
         return this.§_-UK§;
      }
      
      public function get §_-cn§() : Sprite
      {
         return this.§_-Hq§;
      }
      
      public function §_-Hc§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§_-UK§.width / this.§_-UK§.height;
         this.§_-UK§.width = param1 + 600 / _loc3_;
         this.§_-UK§.height = param2 + 600 / _loc3_;
      }
   }
}
