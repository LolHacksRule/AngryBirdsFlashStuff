package §0"=§
{
   import §8#t§.b2Body;
   import §[!3§.b2internal;
   import §`# §.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var § "2§:b2Vec2;
      
      public var §8!U§:b2Vec2;
      
      public var §5!w§:Number;
      
      public var §9!8§:Boolean;
      
      public var §3!o§:Number;
      
      public var §4"Z§:Number;
      
      public var §4#L§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §="6§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§ "2§ = new b2Vec2();
         this.§8!U§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§ "2§.Set(0,0);
         this.§8!U§.Set(0,0);
         this.§5!w§ = 0;
         this.§3!o§ = 0;
         this.§4"Z§ = 0;
         this.§="6§ = 0;
         this.motorSpeed = 0;
         this.§9!8§ = false;
         this.§4#L§ = false;
      }
      
      public function §7##§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §%#&§ = param1;
         §8V§ = param2;
         this.§ "2§ = §%#&§.GetLocalPoint(param3);
         this.§8!U§ = §8V§.GetLocalPoint(param3);
         this.§5!w§ = §8V§.GetAngle() - §%#&§.GetAngle();
      }
   }
}
