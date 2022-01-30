package §;!r§
{
   import §,v§.b2Body;
   import §-!A§.b2Vec2;
   import §@h§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §5S§:b2Vec2;
      
      public var §-!9§:b2Vec2;
      
      public var §;!1§:b2Vec2;
      
      public var §,!w§:Number;
      
      public var §%"5§:Boolean;
      
      public var §]1§:Number;
      
      public var §=!$§:Number;
      
      public var §0z§:Boolean;
      
      public var §@M§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§5S§ = new b2Vec2();
         this.§-!9§ = new b2Vec2();
         this.§;!1§ = new b2Vec2();
         super();
         type = b2Joint.§3d§;
         this.§;!1§.Set(1,0);
         this.§,!w§ = 0;
         this.§%"5§ = false;
         this.§]1§ = 0;
         this.§=!$§ = 0;
         this.§0z§ = false;
         this.§@M§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §"!o§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §@!`§ = param1;
         §@$§ = param2;
         this.§5S§ = §@!`§.GetLocalPoint(param3);
         this.§-!9§ = §@$§.GetLocalPoint(param3);
         this.§;!1§ = §@!`§.GetLocalVector(param4);
         this.§,!w§ = §@$§.GetAngle() - §@!`§.GetAngle();
      }
   }
}
