package §`X§
{
   import §'!&§.b2Body;
   import §9t§.b2Vec2;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §!8§:b2Vec2;
      
      public var §@W§:b2Vec2;
      
      public var §+!L§:Number;
      
      public var §+"!§:Boolean;
      
      public var §'!P§:Number;
      
      public var § !n§:Number;
      
      public var §+!b§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §?u§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§!8§ = new b2Vec2();
         this.§@W§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§!8§.Set(0,0);
         this.§@W§.Set(0,0);
         this.§+!L§ = 0;
         this.§'!P§ = 0;
         this.§ !n§ = 0;
         this.§?u§ = 0;
         this.motorSpeed = 0;
         this.§+"!§ = false;
         this.§+!b§ = false;
      }
      
      public function §>`§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §+,§ = param1;
         §"R§ = param2;
         this.§!8§ = §+,§.GetLocalPoint(param3);
         this.§@W§ = §"R§.GetLocalPoint(param3);
         this.§+!L§ = §"R§.GetAngle() - §+,§.GetAngle();
      }
   }
}
