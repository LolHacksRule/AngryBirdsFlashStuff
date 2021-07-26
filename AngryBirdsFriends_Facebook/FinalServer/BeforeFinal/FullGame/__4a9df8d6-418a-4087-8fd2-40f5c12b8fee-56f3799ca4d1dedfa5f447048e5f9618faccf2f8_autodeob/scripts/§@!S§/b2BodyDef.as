package §@!S§
{
   import §?!C§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §2"i§:b2Vec2;
      
      public var angularVelocity:Number;
      
      public var linearDamping:Number;
      
      public var angularDamping:Number;
      
      public var §^#&§:Boolean;
      
      public var awake:Boolean;
      
      public var §>$=§:Boolean;
      
      public var §`#J§:Boolean;
      
      public var active:Boolean;
      
      public var §]",§;
      
      public var §="g§:Number;
      
      public var §9"Q§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§2"i§ = new b2Vec2();
         super();
         this.§]",§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§2"i§.Set(0,0);
         this.angularVelocity = 0;
         this.linearDamping = 0;
         this.angularDamping = 0;
         this.§^#&§ = true;
         this.awake = true;
         this.§>$=§ = false;
         this.§`#J§ = false;
         this.type = b2Body.b2_staticBody;
         this.active = true;
         this.§="g§ = 1;
         this.§9"Q§ = 1;
      }
   }
}
