package §[h§
{
   import § !t§.b2Body;
   import §<!B§.b2Vec2;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §;!1§:b2Vec2;
      
      public var §%?§:b2Vec2;
      
      public var §%g§:Number;
      
      public function b2WeldJointDef()
      {
         this.§;!1§ = new b2Vec2();
         this.§%?§ = new b2Vec2();
         super();
         type = b2Joint.§[=§;
         this.§%g§ = 0;
      }
      
      public function §6!V§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §[!i§ = param1;
         §;!K§ = param2;
         this.§;!1§.SetV(§[!i§.GetLocalPoint(param3));
         this.§%?§.SetV(§;!K§.GetLocalPoint(param3));
         this.§%g§ = §;!K§.GetAngle() - §[!i§.GetAngle();
      }
   }
}
