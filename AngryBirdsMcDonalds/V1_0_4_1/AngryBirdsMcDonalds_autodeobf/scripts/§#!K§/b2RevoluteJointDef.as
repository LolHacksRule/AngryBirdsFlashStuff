package §#!K§
{
   import §-0§.b2Body;
   import §@g§.b2internal;
   import §^!%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §0'§:b2Vec2;
      
      public var §;!b§:b2Vec2;
      
      public var §&!C§:Number;
      
      public var §=c§:Boolean;
      
      public var §'7§:Number;
      
      public var §`W§:Number;
      
      public var §4=§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §]9§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§0'§ = new b2Vec2();
         this.§;!b§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§0'§.Set(0,0);
         this.§;!b§.Set(0,0);
         this.§&!C§ = 0;
         this.§'7§ = 0;
         this.§`W§ = 0;
         this.§]9§ = 0;
         this.motorSpeed = 0;
         this.§=c§ = false;
         this.§4=§ = false;
      }
      
      public function §08§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §>!k§ = param1;
         §<u§ = param2;
         this.§0'§ = §>!k§.GetLocalPoint(param3);
         this.§;!b§ = §<u§.GetLocalPoint(param3);
         this.§&!C§ = §<u§.GetAngle() - §>!k§.GetAngle();
      }
   }
}
