package §3#h§
{
   import §6!R§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §1Y§:b2Vec2;
      
      public var angularVelocity:Number;
      
      public var linearDamping:Number;
      
      public var angularDamping:Number;
      
      public var §]#R§:Boolean;
      
      public var awake:Boolean;
      
      public var §6!7§:Boolean;
      
      public var §#s§:Boolean;
      
      public var active:Boolean;
      
      public var §9!g§;
      
      public var §,!x§:Number;
      
      public var §`!S§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§1Y§ = new b2Vec2();
         super();
         this.§9!g§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§1Y§.Set(0,0);
         this.angularVelocity = 0;
         this.linearDamping = 0;
         this.angularDamping = 0;
         this.§]#R§ = true;
         this.awake = true;
         this.§6!7§ = false;
         this.§#s§ = false;
         this.type = b2Body.b2_staticBody;
         this.active = true;
         this.§,!x§ = 1;
         this.§`!S§ = 1;
      }
   }
}
