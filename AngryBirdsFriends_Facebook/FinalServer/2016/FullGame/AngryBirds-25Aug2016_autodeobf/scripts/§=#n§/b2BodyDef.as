package §=#n§
{
   import §0m§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §!#m§:b2Vec2;
      
      public var angularVelocity:Number;
      
      public var linearDamping:Number;
      
      public var angularDamping:Number;
      
      public var §,!6§:Boolean;
      
      public var awake:Boolean;
      
      public var §1#[§:Boolean;
      
      public var §`"q§:Boolean;
      
      public var active:Boolean;
      
      public var §>"<§;
      
      public var §4!K§:Number;
      
      public var §,!e§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§!#m§ = new b2Vec2();
         super();
         this.§>"<§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§!#m§.Set(0,0);
         this.angularVelocity = 0;
         this.linearDamping = 0;
         this.angularDamping = 0;
         this.§,!6§ = true;
         this.awake = true;
         this.§1#[§ = false;
         this.§`"q§ = false;
         this.type = b2Body.b2_staticBody;
         this.active = true;
         this.§4!K§ = 1;
         this.§,!e§ = 1;
      }
   }
}
