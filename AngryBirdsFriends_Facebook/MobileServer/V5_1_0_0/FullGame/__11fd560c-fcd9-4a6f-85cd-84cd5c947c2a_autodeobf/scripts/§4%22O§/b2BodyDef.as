package §4"O§
{
   import § "%§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §-"=§:b2Vec2;
      
      public var angularVelocity:Number;
      
      public var linearDamping:Number;
      
      public var angularDamping:Number;
      
      public var §@A§:Boolean;
      
      public var awake:Boolean;
      
      public var §-#l§:Boolean;
      
      public var §6!t§:Boolean;
      
      public var active:Boolean;
      
      public var §>J§;
      
      public var §6#f§:Number;
      
      public var §>#f§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§-"=§ = new b2Vec2();
         super();
         this.§>J§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§-"=§.Set(0,0);
         this.angularVelocity = 0;
         this.linearDamping = 0;
         this.angularDamping = 0;
         this.§@A§ = true;
         this.awake = true;
         this.§-#l§ = false;
         this.§6!t§ = false;
         this.type = b2Body.b2_staticBody;
         this.active = true;
         this.§6#f§ = 1;
         this.§>#f§ = 1;
      }
   }
}
