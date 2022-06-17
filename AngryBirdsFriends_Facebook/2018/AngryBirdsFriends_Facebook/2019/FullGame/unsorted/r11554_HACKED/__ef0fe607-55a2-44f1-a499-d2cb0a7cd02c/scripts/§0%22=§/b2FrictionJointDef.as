package §0"=§
{
   import §8#t§.b2Body;
   import §[!3§.b2internal;
   import §`# §.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var § "2§:b2Vec2;
      
      public var §8!U§:b2Vec2;
      
      public var §5$8§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§ "2§ = new b2Vec2();
         this.§8!U§ = new b2Vec2();
         super();
         type = b2Joint.§9"p§;
         this.§5$8§ = 0;
         this.maxTorque = 0;
      }
      
      public function §7##§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §%#&§ = param1;
         §8V§ = param2;
         this.§ "2§.SetV(§%#&§.GetLocalPoint(param3));
         this.§8!U§.SetV(§8V§.GetLocalPoint(param3));
      }
   }
}
