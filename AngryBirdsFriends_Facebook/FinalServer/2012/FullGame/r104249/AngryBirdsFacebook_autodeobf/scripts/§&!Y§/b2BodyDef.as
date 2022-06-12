package §&!Y§
{
   import §7F§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §]!%§:b2Vec2;
      
      public var §`!z§:Number;
      
      public var §?!b§:Number;
      
      public var §5v§:Number;
      
      public var §>J§:Boolean;
      
      public var § !T§:Boolean;
      
      public var §"Z§:Boolean;
      
      public var §4!#§:Boolean;
      
      public var §;!R§:Boolean;
      
      public var §5!R§;
      
      public var §]!J§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§]!%§ = new b2Vec2();
         super();
         this.§5!R§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§]!%§.Set(0,0);
         this.§`!z§ = 0;
         this.§?!b§ = 0;
         this.§5v§ = 0;
         this.§>J§ = true;
         this.§ !T§ = true;
         this.§"Z§ = false;
         this.§4!#§ = false;
         this.type = b2Body.b2_staticBody;
         this.§;!R§ = true;
         this.§]!J§ = 1;
      }
   }
}
