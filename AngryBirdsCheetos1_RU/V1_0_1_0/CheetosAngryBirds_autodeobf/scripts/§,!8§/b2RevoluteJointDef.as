package §,!8§
{
   import §&!B§.b2Vec2;
   import §[x§.b2Body;
   import §^<§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §'s§:b2Vec2;
      
      public var §5%§:b2Vec2;
      
      public var §-,§:Number;
      
      public var §!O§:Boolean;
      
      public var §@!V§:Number;
      
      public var §9!§:Number;
      
      public var §3!@§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §9!J§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§'s§ = new b2Vec2();
         this.§5%§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§'s§.Set(0,0);
         this.§5%§.Set(0,0);
         this.§-,§ = 0;
         this.§@!V§ = 0;
         this.§9!§ = 0;
         this.§9!J§ = 0;
         this.motorSpeed = 0;
         this.§!O§ = false;
         this.§3!@§ = false;
      }
      
      public function §8#§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §^!<§ = param1;
         §!E§ = param2;
         this.§'s§ = §^!<§.GetLocalPoint(param3);
         this.§5%§ = §!E§.GetLocalPoint(param3);
         this.§-,§ = §!E§.GetAngle() - §^!<§.GetAngle();
      }
   }
}
