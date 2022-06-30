package §3!A§
{
   import § !_§.b2Vec2;
   import §+&§.b2internal;
   import §^!Z§.b2Body;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §?&§:b2Vec2;
      
      public var §4t§:b2Vec2;
      
      public var §9N§:Number;
      
      public function b2WeldJointDef()
      {
         this.§?&§ = new b2Vec2();
         this.§4t§ = new b2Vec2();
         super();
         type = b2Joint.§3]§;
         this.§9N§ = 0;
      }
      
      public function §8_§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §[!N§ = param1;
         §0!'§ = param2;
         this.§?&§.SetV(§[!N§.GetLocalPoint(param3));
         this.§4t§.SetV(§0!'§.GetLocalPoint(param3));
         this.§9N§ = §0!'§.GetAngle() - §[!N§.GetAngle();
      }
   }
}
