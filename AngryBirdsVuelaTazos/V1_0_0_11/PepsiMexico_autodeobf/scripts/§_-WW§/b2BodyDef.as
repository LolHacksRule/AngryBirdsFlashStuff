package §_-WW§
{
   import §_-dx§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §_-jl§:b2Vec2;
      
      public var §_-2A§:Number;
      
      public var §_-JW§:Number;
      
      public var §_-cj§:Number;
      
      public var §_-tZ§:Boolean;
      
      public var §_-lQ§:Boolean;
      
      public var §_-IT§:Boolean;
      
      public var §_-XV§:Boolean;
      
      public var §_-az§:Boolean;
      
      public var §_-5W§;
      
      public var §_-Cs§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§_-jl§ = new b2Vec2();
         super();
         this.§_-5W§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§_-jl§.Set(0,0);
         this.§_-2A§ = 0;
         this.§_-JW§ = 0;
         this.§_-cj§ = 0;
         this.§_-tZ§ = true;
         this.§_-lQ§ = true;
         this.§_-IT§ = false;
         this.§_-XV§ = false;
         this.type = b2Body.b2_staticBody;
         this.§_-az§ = true;
         this.§_-Cs§ = 1;
      }
   }
}
