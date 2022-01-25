package §4N§
{
   import §"!R§.b2internal;
   import §=!U§.b2Body;
   import §implements§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §7z§:b2Vec2;
      
      public var §#t§:b2Vec2;
      
      public var §^3§:Number;
      
      public var §&!8§:Boolean;
      
      public var §'%§:Number;
      
      public var §!!G§:Number;
      
      public var §>&§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §1L§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§7z§ = new b2Vec2();
         this.§#t§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§7z§.Set(0,0);
         this.§#t§.Set(0,0);
         this.§^3§ = 0;
         this.§'%§ = 0;
         this.§!!G§ = 0;
         this.§1L§ = 0;
         this.motorSpeed = 0;
         this.§&!8§ = false;
         this.§>&§ = false;
      }
      
      public function §4$§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §]!M§ = param1;
         §'!Q§ = param2;
         this.§7z§ = §]!M§.GetLocalPoint(param3);
         this.§#t§ = §'!Q§.GetLocalPoint(param3);
         this.§^3§ = §'!Q§.GetAngle() - §]!M§.GetAngle();
      }
   }
}
