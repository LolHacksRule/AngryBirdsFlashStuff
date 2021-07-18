package §[h§
{
   import § !t§.b2Body;
   import §<!B§.b2Vec2;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §;!1§:b2Vec2;
      
      public var §%?§:b2Vec2;
      
      public var §%g§:Number;
      
      public var §'!v§:Boolean;
      
      public var §=!1§:Number;
      
      public var §+Z§:Number;
      
      public var §3!J§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §=!m§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§;!1§ = new b2Vec2();
         this.§%?§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§;!1§.Set(0,0);
         this.§%?§.Set(0,0);
         this.§%g§ = 0;
         this.§=!1§ = 0;
         this.§+Z§ = 0;
         this.§=!m§ = 0;
         this.motorSpeed = 0;
         this.§'!v§ = false;
         this.§3!J§ = false;
      }
      
      public function §6!V§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §[!i§ = param1;
         §;!K§ = param2;
         this.§;!1§ = §[!i§.GetLocalPoint(param3);
         this.§%?§ = §;!K§.GetLocalPoint(param3);
         this.§%g§ = §;!K§.GetAngle() - §[!i§.GetAngle();
      }
   }
}
