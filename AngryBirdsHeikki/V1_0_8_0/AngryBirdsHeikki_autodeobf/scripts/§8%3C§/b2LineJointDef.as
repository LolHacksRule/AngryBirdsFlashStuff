package §8<§
{
   import §0!=§.b2Vec2;
   import §0!?§.b2Body;
   import §0^§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §@!T§:b2Vec2;
      
      public var §,!;§:b2Vec2;
      
      public var §;!-§:b2Vec2;
      
      public var §`!c§:Boolean;
      
      public var §#!W§:Number;
      
      public var §`X§:Number;
      
      public var §%s§:Boolean;
      
      public var §^x§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§@!T§ = new b2Vec2();
         this.§,!;§ = new b2Vec2();
         this.§;!-§ = new b2Vec2();
         super();
         type = b2Joint.§%!C§;
         this.§;!-§.Set(1,0);
         this.§`!c§ = false;
         this.§#!W§ = 0;
         this.§`X§ = 0;
         this.§%s§ = false;
         this.§^x§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §8!6§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §?$§ = param1;
         §%!§ = param2;
         this.§@!T§ = §?$§.GetLocalPoint(param3);
         this.§,!;§ = §%!§.GetLocalPoint(param3);
         this.§;!-§ = §?$§.GetLocalVector(param4);
      }
   }
}
