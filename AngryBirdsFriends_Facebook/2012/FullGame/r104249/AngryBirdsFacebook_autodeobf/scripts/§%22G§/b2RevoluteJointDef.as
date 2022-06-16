package §"G§
{
   import §&!Y§.b2Body;
   import §7F§.b2Vec2;
   import §@!a§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §!d§:b2Vec2;
      
      public var §;!9§:b2Vec2;
      
      public var §?"K§:Number;
      
      public var §5a§:Boolean;
      
      public var §"&§:Number;
      
      public var §6c§:Number;
      
      public var §-q§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §>g§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§!d§ = new b2Vec2();
         this.§;!9§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§!d§.Set(0,0);
         this.§;!9§.Set(0,0);
         this.§?"K§ = 0;
         this.§"&§ = 0;
         this.§6c§ = 0;
         this.§>g§ = 0;
         this.motorSpeed = 0;
         this.§5a§ = false;
         this.§-q§ = false;
      }
      
      public function §,!9§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §4"?§ = param1;
         §+H§ = param2;
         this.§!d§ = §4"?§.GetLocalPoint(param3);
         this.§;!9§ = §+H§.GetLocalPoint(param3);
         this.§?"K§ = §+H§.GetAngle() - §4"?§.GetAngle();
      }
   }
}
