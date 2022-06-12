package §!t§
{
   import §8,§.b2internal;
   import §9v§.b2Vec2;
   import §?!E§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var § ;§:b2Vec2;
      
      public var §8!Z§:b2Vec2;
      
      public var §#!8§:Number;
      
      public var §+!6§:Boolean;
      
      public var § !H§:Number;
      
      public var §@!J§:Number;
      
      public var §-! §:Boolean;
      
      public var motorSpeed:Number;
      
      public var §!""§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§ ;§ = new b2Vec2();
         this.§8!Z§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§ ;§.Set(0,0);
         this.§8!Z§.Set(0,0);
         this.§#!8§ = 0;
         this.§ !H§ = 0;
         this.§@!J§ = 0;
         this.§!""§ = 0;
         this.motorSpeed = 0;
         this.§+!6§ = false;
         this.§-! § = false;
      }
      
      public function §`!&§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §["%§ = param1;
         §`!<§ = param2;
         this.§ ;§ = §["%§.GetLocalPoint(param3);
         this.§8!Z§ = §`!<§.GetLocalPoint(param3);
         this.§#!8§ = §`!<§.GetAngle() - §["%§.GetAngle();
      }
   }
}
