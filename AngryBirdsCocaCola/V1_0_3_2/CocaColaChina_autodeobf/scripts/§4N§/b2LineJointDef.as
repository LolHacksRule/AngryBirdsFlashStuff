package §4N§
{
   import §"!R§.b2internal;
   import §=!U§.b2Body;
   import §implements§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §7z§:b2Vec2;
      
      public var §#t§:b2Vec2;
      
      public var §,!1§:b2Vec2;
      
      public var §&!8§:Boolean;
      
      public var §%$§:Number;
      
      public var §-u§:Number;
      
      public var §>&§:Boolean;
      
      public var §]!L§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§7z§ = new b2Vec2();
         this.§#t§ = new b2Vec2();
         this.§,!1§ = new b2Vec2();
         super();
         type = b2Joint.§"!9§;
         this.§,!1§.Set(1,0);
         this.§&!8§ = false;
         this.§%$§ = 0;
         this.§-u§ = 0;
         this.§>&§ = false;
         this.§]!L§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §4$§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §]!M§ = param1;
         §'!Q§ = param2;
         this.§7z§ = §]!M§.GetLocalPoint(param3);
         this.§#t§ = §'!Q§.GetLocalPoint(param3);
         this.§,!1§ = §]!M§.GetLocalVector(param4);
      }
   }
}
