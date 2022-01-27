package §2",§
{
   import §1x§.b2Body;
   import §9!s§.b2internal;
   import §^>§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §2"g§:b2Vec2;
      
      public var §#l§:b2Vec2;
      
      public var §0"l§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§2"g§ = new b2Vec2();
         this.§#l§ = new b2Vec2();
         super();
         type = b2Joint.§5!N§;
         this.§0"l§ = 0;
         this.maxTorque = 0;
      }
      
      public function §8!s§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §!!x§ = param1;
         §%!x§ = param2;
         this.§2"g§.SetV(§!!x§.GetLocalPoint(param3));
         this.§#l§.SetV(§%!x§.GetLocalPoint(param3));
      }
   }
}
