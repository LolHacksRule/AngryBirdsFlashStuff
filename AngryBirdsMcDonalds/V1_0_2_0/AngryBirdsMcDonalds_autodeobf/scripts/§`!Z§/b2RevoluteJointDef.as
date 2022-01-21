package §`!Z§
{
   import §"U§.b2Vec2;
   import §3!g§.b2Body;
   import §=!X§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §<4§:b2Vec2;
      
      public var §2§:b2Vec2;
      
      public var §7!Q§:Number;
      
      public var §2!;§:Boolean;
      
      public var §-!j§:Number;
      
      public var §#! §:Number;
      
      public var §>!e§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §%2§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§<4§ = new b2Vec2();
         this.§2§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§<4§.Set(0,0);
         this.§2§.Set(0,0);
         this.§7!Q§ = 0;
         this.§-!j§ = 0;
         this.§#! § = 0;
         this.§%2§ = 0;
         this.motorSpeed = 0;
         this.§2!;§ = false;
         this.§>!e§ = false;
      }
      
      public function §6!_§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §+!#§ = param1;
         §1!K§ = param2;
         this.§<4§ = §+!#§.GetLocalPoint(param3);
         this.§2§ = §1!K§.GetLocalPoint(param3);
         this.§7!Q§ = §1!K§.GetAngle() - §+!#§.GetAngle();
      }
   }
}
