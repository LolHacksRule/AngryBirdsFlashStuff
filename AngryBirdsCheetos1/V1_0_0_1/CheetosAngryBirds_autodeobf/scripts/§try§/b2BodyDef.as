package §try§
{
   import §_-cP§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §_-cx§:b2Vec2;
      
      public var §_-up§:Number;
      
      public var §_-sN§:Number;
      
      public var §_-iY§:Number;
      
      public var §_-pA§:Boolean;
      
      public var §_-pL§:Boolean;
      
      public var §_-gj§:Boolean;
      
      public var §_-II§:Boolean;
      
      public var §_-Rm§:Boolean;
      
      public var §_-MJ§;
      
      public var §_-BH§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§_-cx§ = new b2Vec2();
         super();
         this.§_-MJ§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§_-cx§.Set(0,0);
         this.§_-up§ = 0;
         this.§_-sN§ = 0;
         this.§_-iY§ = 0;
         this.§_-pA§ = true;
         this.§_-pL§ = true;
         this.§_-gj§ = false;
         this.§_-II§ = false;
         this.type = b2Body.b2_staticBody;
         this.§_-Rm§ = true;
         this.§_-BH§ = 1;
      }
   }
}
