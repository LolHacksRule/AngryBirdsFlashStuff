package §,H§
{
   import §'I§.b2internal;
   import §9!Z§.b2Body;
   import §?"'§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §'&§:b2Vec2;
      
      public var §%"0§:b2Vec2;
      
      public var §=0§:Number;
      
      public var §?r§:Boolean;
      
      public var §1!]§:Number;
      
      public var §^p§:Number;
      
      public var §<D§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §#3§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§'&§ = new b2Vec2();
         this.§%"0§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§'&§.Set(0,0);
         this.§%"0§.Set(0,0);
         this.§=0§ = 0;
         this.§1!]§ = 0;
         this.§^p§ = 0;
         this.§#3§ = 0;
         this.motorSpeed = 0;
         this.§?r§ = false;
         this.§<D§ = false;
      }
      
      public function §implements§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §'!R§ = param1;
         §@V§ = param2;
         this.§'&§ = §'!R§.GetLocalPoint(param3);
         this.§%"0§ = §@V§.GetLocalPoint(param3);
         this.§=0§ = §@V§.GetAngle() - §'!R§.GetAngle();
      }
   }
}
