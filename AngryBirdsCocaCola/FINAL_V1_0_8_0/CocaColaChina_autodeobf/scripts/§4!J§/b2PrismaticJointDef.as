package §4!J§
{
   import §6V§.b2Vec2;
   import §<!L§.b2Body;
   import §[!$§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §;8§:b2Vec2;
      
      public var §;!c§:b2Vec2;
      
      public var §,d§:b2Vec2;
      
      public var §2Y§:Number;
      
      public var §7!6§:Boolean;
      
      public var §=!4§:Number;
      
      public var §8!G§:Number;
      
      public var §&2§:Boolean;
      
      public var §5M§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§;8§ = new b2Vec2();
         this.§;!c§ = new b2Vec2();
         this.§,d§ = new b2Vec2();
         super();
         type = b2Joint.§2E§;
         this.§,d§.Set(1,0);
         this.§2Y§ = 0;
         this.§7!6§ = false;
         this.§=!4§ = 0;
         this.§8!G§ = 0;
         this.§&2§ = false;
         this.§5M§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §2#§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §;!9§ = param1;
         §;!,§ = param2;
         this.§;8§ = §;!9§.GetLocalPoint(param3);
         this.§;!c§ = §;!,§.GetLocalPoint(param3);
         this.§,d§ = §;!9§.GetLocalVector(param4);
         this.§2Y§ = §;!,§.GetAngle() - §;!9§.GetAngle();
      }
   }
}
