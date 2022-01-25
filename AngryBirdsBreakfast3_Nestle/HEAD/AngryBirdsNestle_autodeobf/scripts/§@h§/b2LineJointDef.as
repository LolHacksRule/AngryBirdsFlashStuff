package §@h§
{
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §8D§:b2Vec2;
      
      public var §@"$§:b2Vec2;
      
      public var §2"#§:b2Vec2;
      
      public var §05§:Boolean;
      
      public var §;!W§:Number;
      
      public var §2!$§:Number;
      
      public var §9!g§:Boolean;
      
      public var §;d§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§8D§ = new b2Vec2();
         this.§@"$§ = new b2Vec2();
         this.§2"#§ = new b2Vec2();
         super();
         type = b2Joint.§"!A§;
         this.§2"#§.Set(1,0);
         this.§05§ = false;
         this.§;!W§ = 0;
         this.§2!$§ = 0;
         this.§9!g§ = false;
         this.§;d§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §6R§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §9!w§ = param1;
         §>!W§ = param2;
         this.§8D§ = §9!w§.GetLocalPoint(param3);
         this.§@"$§ = §>!W§.GetLocalPoint(param3);
         this.§2"#§ = §9!w§.GetLocalVector(param4);
      }
   }
}
