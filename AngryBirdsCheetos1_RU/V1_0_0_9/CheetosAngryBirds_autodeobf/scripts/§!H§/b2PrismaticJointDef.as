package §!H§
{
   import §!!B§.b2Body;
   import §;0§.b2internal;
   import §;U§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §7p§:b2Vec2;
      
      public var §"!C§:b2Vec2;
      
      public var §56§:b2Vec2;
      
      public var §#!V§:Number;
      
      public var §^+§:Boolean;
      
      public var §^h§:Number;
      
      public var §`!;§:Number;
      
      public var §+!6§:Boolean;
      
      public var §+!0§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§7p§ = new b2Vec2();
         this.§"!C§ = new b2Vec2();
         this.§56§ = new b2Vec2();
         super();
         type = b2Joint.§+=§;
         this.§56§.Set(1,0);
         this.§#!V§ = 0;
         this.§^+§ = false;
         this.§^h§ = 0;
         this.§`!;§ = 0;
         this.§+!6§ = false;
         this.§+!0§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §`!0§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §1U§ = param1;
         §"=§ = param2;
         this.§7p§ = §1U§.GetLocalPoint(param3);
         this.§"!C§ = §"=§.GetLocalPoint(param3);
         this.§56§ = §1U§.GetLocalVector(param4);
         this.§#!V§ = §"=§.GetAngle() - §1U§.GetAngle();
      }
   }
}
