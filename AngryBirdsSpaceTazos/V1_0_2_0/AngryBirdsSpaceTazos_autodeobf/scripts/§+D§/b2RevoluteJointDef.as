package §+D§
{
   import §#!X§.b2Body;
   import §&!S§.b2Vec2;
   import §@!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §&9§:b2Vec2;
      
      public var §^"<§:b2Vec2;
      
      public var § "5§:Number;
      
      public var §>6§:Boolean;
      
      public var §5E§:Number;
      
      public var §;E§:Number;
      
      public var §%]§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §+"%§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§&9§ = new b2Vec2();
         this.§^"<§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§&9§.Set(0,0);
         this.§^"<§.Set(0,0);
         this.§ "5§ = 0;
         this.§5E§ = 0;
         this.§;E§ = 0;
         this.§+"%§ = 0;
         this.motorSpeed = 0;
         this.§>6§ = false;
         this.§%]§ = false;
      }
      
      public function §5!k§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §43§ = param1;
         §4!l§ = param2;
         this.§&9§ = §43§.GetLocalPoint(param3);
         this.§^"<§ = §4!l§.GetLocalPoint(param3);
         this.§ "5§ = §4!l§.GetAngle() - §43§.GetAngle();
      }
   }
}
