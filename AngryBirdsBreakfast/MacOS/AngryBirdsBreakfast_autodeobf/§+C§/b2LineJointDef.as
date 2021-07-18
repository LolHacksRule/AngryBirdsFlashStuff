package §+C§
{
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §6Z§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §0O§:b2Vec2;
      
      public var § @§:b2Vec2;
      
      public var §@`§:b2Vec2;
      
      public var §+!<§:Boolean;
      
      public var §9"'§:Number;
      
      public var §<"%§:Number;
      
      public var §[!W§:Boolean;
      
      public var §8!B§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§0O§ = new b2Vec2();
         this.§ @§ = new b2Vec2();
         this.§@`§ = new b2Vec2();
         super();
         type = b2Joint.§8f§;
         this.§@`§.Set(1,0);
         this.§+!<§ = false;
         this.§9"'§ = 0;
         this.§<"%§ = 0;
         this.§[!W§ = false;
         this.§8!B§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §",§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §'!n§ = param1;
         § 5§ = param2;
         this.§0O§ = §'!n§.GetLocalPoint(param3);
         this.§ @§ = § 5§.GetLocalPoint(param3);
         this.§@`§ = §'!n§.GetLocalVector(param4);
      }
   }
}
