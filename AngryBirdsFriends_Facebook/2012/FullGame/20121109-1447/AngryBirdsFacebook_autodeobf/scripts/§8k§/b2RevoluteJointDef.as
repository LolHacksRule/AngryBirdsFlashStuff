package §8k§
{
   import §#]§.b2Vec2;
   import §4!!§.b2internal;
   import §48§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §#C§:b2Vec2;
      
      public var §^!J§:b2Vec2;
      
      public var § var§:Number;
      
      public var §3"%§:Boolean;
      
      public var §"!A§:Number;
      
      public var §,!=§:Number;
      
      public var §[!c§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §3$§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§#C§ = new b2Vec2();
         this.§^!J§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§#C§.Set(0,0);
         this.§^!J§.Set(0,0);
         this.§ var§ = 0;
         this.§"!A§ = 0;
         this.§,!=§ = 0;
         this.§3$§ = 0;
         this.motorSpeed = 0;
         this.§3"%§ = false;
         this.§[!c§ = false;
      }
      
      public function §`!r§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §!!v§ = param1;
         §'!4§ = param2;
         this.§#C§ = §!!v§.GetLocalPoint(param3);
         this.§^!J§ = §'!4§.GetLocalPoint(param3);
         this.§ var§ = §'!4§.GetAngle() - §!!v§.GetAngle();
      }
   }
}
