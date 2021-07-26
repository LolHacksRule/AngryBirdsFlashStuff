package § ! §
{
   import § "%§.b2Vec2;
   import §,!s§.b2internal;
   import §4"O§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §#"z§:b2Vec2;
      
      public var §>#C§:b2Vec2;
      
      public var §=#I§:Number;
      
      public var §?$&§:Boolean;
      
      public var §6c§:Number;
      
      public var § # §:Number;
      
      public var §!#6§:Boolean;
      
      public var motorSpeed:Number;
      
      public var set:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§#"z§ = new b2Vec2();
         this.§>#C§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§#"z§.Set(0,0);
         this.§>#C§.Set(0,0);
         this.§=#I§ = 0;
         this.§6c§ = 0;
         this.§ # § = 0;
         this.set = 0;
         this.motorSpeed = 0;
         this.§?$&§ = false;
         this.§!#6§ = false;
      }
      
      public function §?#W§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §'§ = param1;
         §>!2§ = param2;
         this.§#"z§ = §'§.GetLocalPoint(param3);
         this.§>#C§ = §>!2§.GetLocalPoint(param3);
         this.§=#I§ = §>!2§.GetAngle() - §'§.GetAngle();
      }
   }
}
