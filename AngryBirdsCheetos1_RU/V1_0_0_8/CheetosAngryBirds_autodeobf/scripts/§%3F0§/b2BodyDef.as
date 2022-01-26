package §?0§
{
   import §3q§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §,x§:b2Vec2;
      
      public var §!!4§:Number;
      
      public var §;!?§:Number;
      
      public var §^W§:Number;
      
      public var § f§:Boolean;
      
      public var §^!J§:Boolean;
      
      public var §"t§:Boolean;
      
      public var §&!Q§:Boolean;
      
      public var §=!Z§:Boolean;
      
      public var §1!%§;
      
      public var §09§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§,x§ = new b2Vec2();
         super();
         this.§1!%§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§,x§.Set(0,0);
         this.§!!4§ = 0;
         this.§;!?§ = 0;
         this.§^W§ = 0;
         this.§ f§ = true;
         this.§^!J§ = true;
         this.§"t§ = false;
         this.§&!Q§ = false;
         this.type = b2Body.b2_staticBody;
         this.§=!Z§ = true;
         this.§09§ = 1;
      }
   }
}
