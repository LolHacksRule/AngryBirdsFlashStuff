package §_-EH§
{
   import §_-9z§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §_-3s§:b2Vec2;
      
      public var §_-0x§:Number;
      
      public var §_-ma§:Number;
      
      public var §_-Tj§:Number;
      
      public var §_-bY§:Boolean;
      
      public var §_-f5§:Boolean;
      
      public var §_-in§:Boolean;
      
      public var §_-IK§:Boolean;
      
      public var §_-8§:Boolean;
      
      public var §_-ZT§;
      
      public var §_-F8§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§_-3s§ = new b2Vec2();
         super();
         this.§_-ZT§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§_-3s§.Set(0,0);
         this.§_-0x§ = 0;
         this.§_-ma§ = 0;
         this.§_-Tj§ = 0;
         this.§_-bY§ = true;
         this.§_-f5§ = true;
         this.§_-in§ = false;
         this.§_-IK§ = false;
         this.type = b2Body.b2_staticBody;
         this.§_-8§ = true;
         this.§_-F8§ = 1;
      }
   }
}
