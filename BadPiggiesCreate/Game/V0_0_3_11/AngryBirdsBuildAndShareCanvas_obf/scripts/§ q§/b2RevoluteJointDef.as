package § q§
{
   import §+L§.b2Vec2;
   import §7z§.b2Body;
   import §^+§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §[!L§:b2Vec2;
      
      public var §8!^§:b2Vec2;
      
      public var §]!v§:Number;
      
      public var §[!g§:Boolean;
      
      public var §+_§:Number;
      
      public var §^"3§:Number;
      
      public var §,!d§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §?C§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§[!L§ = new b2Vec2();
         this.§8!^§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§[!L§.Set(0,0);
         this.§8!^§.Set(0,0);
         this.§]!v§ = 0;
         this.§+_§ = 0;
         this.§^"3§ = 0;
         this.§?C§ = 0;
         this.motorSpeed = 0;
         this.§[!g§ = false;
         this.§,!d§ = false;
      }
      
      public function §5$§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §@]§ = param1;
         §3@§ = param2;
         this.§[!L§ = §@]§.GetLocalPoint(param3);
         this.§8!^§ = §3@§.GetLocalPoint(param3);
         this.§]!v§ = §3@§.GetAngle() - §@]§.GetAngle();
      }
   }
}
