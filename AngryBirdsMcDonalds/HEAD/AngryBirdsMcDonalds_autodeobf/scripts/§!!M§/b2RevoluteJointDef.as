package §!!M§
{
   import §+S§.b2Vec2;
   import §8T§.b2Body;
   import §?!n§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §5!E§:b2Vec2;
      
      public var §21§:b2Vec2;
      
      public var §^!1§:Number;
      
      public var §5X§:Boolean;
      
      public var §'s§:Number;
      
      public var §6g§:Number;
      
      public var §,!9§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §1%§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§5!E§ = new b2Vec2();
         this.§21§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§5!E§.Set(0,0);
         this.§21§.Set(0,0);
         this.§^!1§ = 0;
         this.§'s§ = 0;
         this.§6g§ = 0;
         this.§1%§ = 0;
         this.motorSpeed = 0;
         this.§5X§ = false;
         this.§,!9§ = false;
      }
      
      public function §`!9§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §-i§ = param1;
         §0!F§ = param2;
         this.§5!E§ = §-i§.GetLocalPoint(param3);
         this.§21§ = §0!F§.GetLocalPoint(param3);
         this.§^!1§ = §0!F§.GetAngle() - §-i§.GetAngle();
      }
   }
}
