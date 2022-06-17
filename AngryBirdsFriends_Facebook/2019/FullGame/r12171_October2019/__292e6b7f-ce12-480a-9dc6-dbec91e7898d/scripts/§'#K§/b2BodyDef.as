package §'#K§
{
   import §04§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §>"Y§:b2Vec2;
      
      public var angularVelocity:Number;
      
      public var linearDamping:Number;
      
      public var angularDamping:Number;
      
      public var §1"&§:Boolean;
      
      public var awake:Boolean;
      
      public var §@!"§:Boolean;
      
      public var §8!1§:Boolean;
      
      public var active:Boolean;
      
      public var §9!6§;
      
      public var §?#?§:Number;
      
      public var §4#K§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§>"Y§ = new b2Vec2();
         super();
         this.§9!6§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§>"Y§.Set(0,0);
         this.angularVelocity = 0;
         this.linearDamping = 0;
         this.angularDamping = 0;
         this.§1"&§ = true;
         this.awake = true;
         this.§@!"§ = false;
         this.§8!1§ = false;
         this.type = b2Body.b2_staticBody;
         this.active = true;
         this.§?#?§ = 1;
         this.§4#K§ = 1;
      }
   }
}
