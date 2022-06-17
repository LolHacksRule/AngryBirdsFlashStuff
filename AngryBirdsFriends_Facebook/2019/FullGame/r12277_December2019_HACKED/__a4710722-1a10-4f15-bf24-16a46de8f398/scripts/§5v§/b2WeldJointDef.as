package §5v§
{
   import §1#F§.b2internal;
   import §3#h§.b2Body;
   import §6!R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §"#b§:b2Vec2;
      
      public var §[#b§:b2Vec2;
      
      public var §6"h§:Number;
      
      public function b2WeldJointDef()
      {
         this.§"#b§ = new b2Vec2();
         this.§[#b§ = new b2Vec2();
         super();
         type = b2Joint.§]c§;
         this.§6"h§ = 0;
      }
      
      public function §80§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §,E§ = param1;
         §&$7§ = param2;
         this.§"#b§.SetV(§,E§.GetLocalPoint(param3));
         this.§[#b§.SetV(§&$7§.GetLocalPoint(param3));
         this.§6"h§ = §&$7§.GetAngle() - §,E§.GetAngle();
      }
   }
}
