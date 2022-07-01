package §4"$§
{
   import §&!M§.b2Body;
   import §3!t§.b2Vec2;
   import §6!`§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var § 3§:b2Vec2;
      
      public var § '§:b2Vec2;
      
      public var §@5§:b2Vec2;
      
      public var §1+§:Number;
      
      public var §%"9§:Boolean;
      
      public var §0"4§:Number;
      
      public var §@!B§:Number;
      
      public var §^g§:Boolean;
      
      public var §3c§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§ 3§ = new b2Vec2();
         this.§ '§ = new b2Vec2();
         this.§@5§ = new b2Vec2();
         super();
         type = b2Joint.§3n§;
         this.§@5§.Set(1,0);
         this.§1+§ = 0;
         this.§%"9§ = false;
         this.§0"4§ = 0;
         this.§@!B§ = 0;
         this.§^g§ = false;
         this.§3c§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §[z§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §>"$§ = param1;
         §%"1§ = param2;
         this.§ 3§ = §>"$§.GetLocalPoint(param3);
         this.§ '§ = §%"1§.GetLocalPoint(param3);
         this.§@5§ = §>"$§.GetLocalVector(param4);
         this.§1+§ = §%"1§.GetAngle() - §>"$§.GetAngle();
      }
   }
}
