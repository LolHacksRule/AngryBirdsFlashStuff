package §@!]§
{
   import §,!3§.b2Vec2;
   import §3'§.b2internal;
   import §?!F§.b2Body;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §&!0§:b2Vec2;
      
      public var §,%§:b2Vec2;
      
      public var §!P§:Number;
      
      public function b2WeldJointDef()
      {
         this.§&!0§ = new b2Vec2();
         this.§,%§ = new b2Vec2();
         super();
         type = b2Joint.§0,§;
         this.§!P§ = 0;
      }
      
      public function §^!R§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §<!&§ = param1;
         §!8§ = param2;
         this.§&!0§.SetV(§<!&§.GetLocalPoint(param3));
         this.§,%§.SetV(§!8§.GetLocalPoint(param3));
         this.§!P§ = §!8§.GetAngle() - §<!&§.GetAngle();
      }
   }
}
