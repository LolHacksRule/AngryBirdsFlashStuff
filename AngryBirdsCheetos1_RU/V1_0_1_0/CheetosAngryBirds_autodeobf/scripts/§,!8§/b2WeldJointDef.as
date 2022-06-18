package §,!8§
{
   import §&!B§.b2Vec2;
   import §[x§.b2Body;
   import §^<§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §'s§:b2Vec2;
      
      public var §5%§:b2Vec2;
      
      public var §-,§:Number;
      
      public function b2WeldJointDef()
      {
         this.§'s§ = new b2Vec2();
         this.§5%§ = new b2Vec2();
         super();
         type = b2Joint.§%^§;
         this.§-,§ = 0;
      }
      
      public function §8#§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §^!<§ = param1;
         §!E§ = param2;
         this.§'s§.SetV(§^!<§.GetLocalPoint(param3));
         this.§5%§.SetV(§!E§.GetLocalPoint(param3));
         this.§-,§ = §!E§.GetAngle() - §^!<§.GetAngle();
      }
   }
}
