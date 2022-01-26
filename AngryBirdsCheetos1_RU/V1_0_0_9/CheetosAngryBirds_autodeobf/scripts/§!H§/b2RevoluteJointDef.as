package §!H§
{
   import §!!B§.b2Body;
   import §;0§.b2internal;
   import §;U§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §7p§:b2Vec2;
      
      public var §"!C§:b2Vec2;
      
      public var §#!V§:Number;
      
      public var §^+§:Boolean;
      
      public var §0q§:Number;
      
      public var §'!'§:Number;
      
      public var §+!6§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §[4§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§7p§ = new b2Vec2();
         this.§"!C§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§7p§.Set(0,0);
         this.§"!C§.Set(0,0);
         this.§#!V§ = 0;
         this.§0q§ = 0;
         this.§'!'§ = 0;
         this.§[4§ = 0;
         this.motorSpeed = 0;
         this.§^+§ = false;
         this.§+!6§ = false;
      }
      
      public function §`!0§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §1U§ = param1;
         §"=§ = param2;
         this.§7p§ = §1U§.GetLocalPoint(param3);
         this.§"!C§ = §"=§.GetLocalPoint(param3);
         this.§#!V§ = §"=§.GetAngle() - §1U§.GetAngle();
      }
   }
}
