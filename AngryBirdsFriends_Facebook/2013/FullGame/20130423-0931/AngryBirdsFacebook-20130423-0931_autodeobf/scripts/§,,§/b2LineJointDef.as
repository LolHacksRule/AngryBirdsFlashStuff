package §,,§
{
   import §,"[§.b2internal;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §-!,§:b2Vec2;
      
      public var §["9§:b2Vec2;
      
      public var §""'§:b2Vec2;
      
      public var §5!!§:Boolean;
      
      public var §9V§:Number;
      
      public var §3!t§:Number;
      
      public var §<!0§:Boolean;
      
      public var §%!7§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§-!,§ = new b2Vec2();
         this.§["9§ = new b2Vec2();
         this.§""'§ = new b2Vec2();
         super();
         type = b2Joint.§^A§;
         this.§""'§.Set(1,0);
         this.§5!!§ = false;
         this.§9V§ = 0;
         this.§3!t§ = 0;
         this.§<!0§ = false;
         this.§%!7§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §6!Q§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §`y§ = param1;
         §8!7§ = param2;
         this.§-!,§ = §`y§.GetLocalPoint(param3);
         this.§["9§ = §8!7§.GetLocalPoint(param3);
         this.§""'§ = §`y§.GetLocalVector(param4);
      }
   }
}
