package §4!J§
{
   import §6V§.b2Vec2;
   import §<!L§.b2Body;
   import §[!$§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §;8§:b2Vec2;
      
      public var §;!c§:b2Vec2;
      
      public var §2Y§:Number;
      
      public var §7!6§:Boolean;
      
      public var §3!E§:Number;
      
      public var §3z§:Number;
      
      public var §&2§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §>s§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§;8§ = new b2Vec2();
         this.§;!c§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§;8§.Set(0,0);
         this.§;!c§.Set(0,0);
         this.§2Y§ = 0;
         this.§3!E§ = 0;
         this.§3z§ = 0;
         this.§>s§ = 0;
         this.motorSpeed = 0;
         this.§7!6§ = false;
         this.§&2§ = false;
      }
      
      public function §2#§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §;!9§ = param1;
         §;!,§ = param2;
         this.§;8§ = §;!9§.GetLocalPoint(param3);
         this.§;!c§ = §;!,§.GetLocalPoint(param3);
         this.§2Y§ = §;!,§.GetAngle() - §;!9§.GetAngle();
      }
   }
}
