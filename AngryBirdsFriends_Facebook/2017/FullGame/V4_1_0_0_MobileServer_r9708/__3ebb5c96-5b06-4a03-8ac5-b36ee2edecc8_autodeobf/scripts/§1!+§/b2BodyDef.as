package §1!+§
{
   import §%!9§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §1!b§:b2Vec2;
      
      public var angularVelocity:Number;
      
      public var linearDamping:Number;
      
      public var angularDamping:Number;
      
      public var §>!P§:Boolean;
      
      public var awake:Boolean;
      
      public var §##b§:Boolean;
      
      public var §="§:Boolean;
      
      public var active:Boolean;
      
      public var §1$%§;
      
      public var §&"3§:Number;
      
      public var §,"C§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§1!b§ = new b2Vec2();
         super();
         this.§1$%§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§1!b§.Set(0,0);
         this.angularVelocity = 0;
         this.linearDamping = 0;
         this.angularDamping = 0;
         this.§>!P§ = true;
         this.awake = true;
         this.§##b§ = false;
         this.§="§ = false;
         this.type = b2Body.b2_staticBody;
         this.active = true;
         this.§&"3§ = 1;
         this.§,"C§ = 1;
      }
   }
}
