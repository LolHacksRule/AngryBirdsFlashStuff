package §_-qW§
{
   import §var§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §_-hu§:b2Vec2;
      
      public var §_-KE§:Number;
      
      public var §throw§:Number;
      
      public var §_-Ko§:Number;
      
      public var §_-3L§:Boolean;
      
      public var §_-3J§:Boolean;
      
      public var §_-RL§:Boolean;
      
      public var §_-Qf§:Boolean;
      
      public var §_-ci§:Boolean;
      
      public var §_-mx§;
      
      public var §_-H1§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§_-hu§ = new b2Vec2();
         super();
         this.§_-mx§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§_-hu§.Set(0,0);
         this.§_-KE§ = 0;
         this.§throw§ = 0;
         this.§_-Ko§ = 0;
         this.§_-3L§ = true;
         this.§_-3J§ = true;
         this.§_-RL§ = false;
         this.§_-Qf§ = false;
         this.type = b2Body.b2_staticBody;
         this.§_-ci§ = true;
         this.§_-H1§ = 1;
      }
   }
}
