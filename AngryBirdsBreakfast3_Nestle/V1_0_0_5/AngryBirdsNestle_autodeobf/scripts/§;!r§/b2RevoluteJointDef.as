package §;!r§
{
   import §,v§.b2Body;
   import §-!A§.b2Vec2;
   import §@h§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §5S§:b2Vec2;
      
      public var §-!9§:b2Vec2;
      
      public var §,!w§:Number;
      
      public var §%"5§:Boolean;
      
      public var §7#§:Number;
      
      public var §%![§:Number;
      
      public var §0z§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §4r§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§5S§ = new b2Vec2();
         this.§-!9§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§5S§.Set(0,0);
         this.§-!9§.Set(0,0);
         this.§,!w§ = 0;
         this.§7#§ = 0;
         this.§%![§ = 0;
         this.§4r§ = 0;
         this.motorSpeed = 0;
         this.§%"5§ = false;
         this.§0z§ = false;
      }
      
      public function §"!o§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §@!`§ = param1;
         §@$§ = param2;
         this.§5S§ = §@!`§.GetLocalPoint(param3);
         this.§-!9§ = §@$§.GetLocalPoint(param3);
         this.§,!w§ = §@$§.GetAngle() - §@!`§.GetAngle();
      }
   }
}
