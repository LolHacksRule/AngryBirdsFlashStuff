package §5v§
{
   import §1#F§.b2internal;
   import §3#h§.b2Body;
   import §6!R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §"#b§:b2Vec2;
      
      public var §[#b§:b2Vec2;
      
      public var §6"h§:Number;
      
      public var §0#[§:Boolean;
      
      public var §^!O§:Number;
      
      public var §^"v§:Number;
      
      public var §["y§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §-#o§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§"#b§ = new b2Vec2();
         this.§[#b§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§"#b§.Set(0,0);
         this.§[#b§.Set(0,0);
         this.§6"h§ = 0;
         this.§^!O§ = 0;
         this.§^"v§ = 0;
         this.§-#o§ = 0;
         this.motorSpeed = 0;
         this.§0#[§ = false;
         this.§["y§ = false;
      }
      
      public function §80§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §,E§ = param1;
         §&$7§ = param2;
         this.§"#b§ = §,E§.GetLocalPoint(param3);
         this.§[#b§ = §&$7§.GetLocalPoint(param3);
         this.§6"h§ = §&$7§.GetAngle() - §,E§.GetAngle();
      }
   }
}
