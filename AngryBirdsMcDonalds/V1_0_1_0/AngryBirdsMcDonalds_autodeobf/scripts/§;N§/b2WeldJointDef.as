package §;N§
{
   import §!R§.b2Vec2;
   import §1B§.b2Body;
   import §9i§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §4D§:b2Vec2;
      
      public var §@@§:b2Vec2;
      
      public var §'P§:Number;
      
      public function b2WeldJointDef()
      {
         this.§4D§ = new b2Vec2();
         this.§@@§ = new b2Vec2();
         super();
         type = b2Joint.§@!9§;
         this.§'P§ = 0;
      }
      
      public function §4G§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §-6§ = param1;
         §?w§ = param2;
         this.§4D§.SetV(§-6§.GetLocalPoint(param3));
         this.§@@§.SetV(§?w§.GetLocalPoint(param3));
         this.§'P§ = §?w§.GetAngle() - §-6§.GetAngle();
      }
   }
}
