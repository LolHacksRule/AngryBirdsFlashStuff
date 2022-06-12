package §4"$§
{
   import §&!M§.b2Body;
   import §3!t§.b2Vec2;
   import §6!`§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var § 3§:b2Vec2;
      
      public var § '§:b2Vec2;
      
      public var §1+§:Number;
      
      public var §%"9§:Boolean;
      
      public var §2!H§:Number;
      
      public var §>!8§:Number;
      
      public var §^g§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §>A§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§ 3§ = new b2Vec2();
         this.§ '§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§ 3§.Set(0,0);
         this.§ '§.Set(0,0);
         this.§1+§ = 0;
         this.§2!H§ = 0;
         this.§>!8§ = 0;
         this.§>A§ = 0;
         this.motorSpeed = 0;
         this.§%"9§ = false;
         this.§^g§ = false;
      }
      
      public function §[z§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §>"$§ = param1;
         §%"1§ = param2;
         this.§ 3§ = §>"$§.GetLocalPoint(param3);
         this.§ '§ = §%"1§.GetLocalPoint(param3);
         this.§1+§ = §%"1§.GetAngle() - §>"$§.GetAngle();
      }
   }
}
