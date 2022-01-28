package §_-vk§
{
   import §_-bA§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §_-xG§:b2Vec2;
      
      public var §_-SW§:Number;
      
      public var §_-Yu§:Number;
      
      public var §_-0p§:Number;
      
      public var §_-kL§:Boolean;
      
      public var §_-A8§:Boolean;
      
      public var §_-R7§:Boolean;
      
      public var §_-b0§:Boolean;
      
      public var §_-yn§:Boolean;
      
      public var §_-nF§;
      
      public var §_-e4§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§_-xG§ = new b2Vec2();
         super();
         this.§_-nF§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§_-xG§.Set(0,0);
         this.§_-SW§ = 0;
         this.§_-Yu§ = 0;
         this.§_-0p§ = 0;
         this.§_-kL§ = true;
         this.§_-A8§ = true;
         this.§_-R7§ = false;
         this.§_-b0§ = false;
         this.type = b2Body.b2_staticBody;
         this.§_-yn§ = true;
         this.§_-e4§ = 1;
      }
   }
}
