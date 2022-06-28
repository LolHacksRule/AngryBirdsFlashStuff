package §%t§
{
   import §&L§.b2Vec2;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §`!V§:b2Vec2;
      
      public var §6$§:b2Vec2;
      
      public var §"$§:b2Vec2;
      
      public var §?P§:Boolean;
      
      public var §8!`§:Number;
      
      public var §?7§:Number;
      
      public var §"!<§:Boolean;
      
      public var §;!9§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§`!V§ = new b2Vec2();
         this.§6$§ = new b2Vec2();
         this.§"$§ = new b2Vec2();
         super();
         type = b2Joint.§^!L§;
         this.§"$§.Set(1,0);
         this.§?P§ = false;
         this.§8!`§ = 0;
         this.§?7§ = 0;
         this.§"!<§ = false;
         this.§;!9§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §;o§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §^!G§ = param1;
         §-z§ = param2;
         this.§`!V§ = §^!G§.GetLocalPoint(param3);
         this.§6$§ = §-z§.GetLocalPoint(param3);
         this.§"$§ = §^!G§.GetLocalVector(param4);
      }
   }
}
