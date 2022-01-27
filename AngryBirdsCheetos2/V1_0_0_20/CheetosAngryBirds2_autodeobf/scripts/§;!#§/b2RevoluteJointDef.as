package §;!#§
{
   import § o§.b2Body;
   import §"0§.b2internal;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §!!U§:b2Vec2;
      
      public var §"!'§:b2Vec2;
      
      public var §49§:Number;
      
      public var § c§:Boolean;
      
      public var §7!=§:Number;
      
      public var §'m§:Number;
      
      public var §32§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §<!B§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§!!U§ = new b2Vec2();
         this.§"!'§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§!!U§.Set(0,0);
         this.§"!'§.Set(0,0);
         this.§49§ = 0;
         this.§7!=§ = 0;
         this.§'m§ = 0;
         this.§<!B§ = 0;
         this.motorSpeed = 0;
         this.§ c§ = false;
         this.§32§ = false;
      }
      
      public function §#!O§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §-'§ = param1;
         §<!L§ = param2;
         this.§!!U§ = §-'§.GetLocalPoint(param3);
         this.§"!'§ = §<!L§.GetLocalPoint(param3);
         this.§49§ = §<!L§.GetAngle() - §-'§.GetAngle();
      }
   }
}
