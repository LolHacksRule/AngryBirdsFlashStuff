package §8<§
{
   import §0!=§.b2Vec2;
   import §0!?§.b2Body;
   import §0^§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §@!T§:b2Vec2;
      
      public var §,!;§:b2Vec2;
      
      public var §!d§:Number;
      
      public var §`!c§:Boolean;
      
      public var §&"§:Number;
      
      public var §8!0§:Number;
      
      public var §%s§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §`>§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§@!T§ = new b2Vec2();
         this.§,!;§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§@!T§.Set(0,0);
         this.§,!;§.Set(0,0);
         this.§!d§ = 0;
         this.§&"§ = 0;
         this.§8!0§ = 0;
         this.§`>§ = 0;
         this.motorSpeed = 0;
         this.§`!c§ = false;
         this.§%s§ = false;
      }
      
      public function §8!6§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §?$§ = param1;
         §%!§ = param2;
         this.§@!T§ = §?$§.GetLocalPoint(param3);
         this.§,!;§ = §%!§.GetLocalPoint(param3);
         this.§!d§ = §%!§.GetAngle() - §?$§.GetAngle();
      }
   }
}
