package §=!P§
{
   import §4! §.b2internal;
   import §9t§.b2Body;
   import §^q§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §;I§:b2Vec2;
      
      public var §-!&§:b2Vec2;
      
      public var §5!5§:Number;
      
      public var §'!`§:Boolean;
      
      public var §^!]§:Number;
      
      public var §>K§:Number;
      
      public var §@<§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §^!Y§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§;I§ = new b2Vec2();
         this.§-!&§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§;I§.Set(0,0);
         this.§-!&§.Set(0,0);
         this.§5!5§ = 0;
         this.§^!]§ = 0;
         this.§>K§ = 0;
         this.§^!Y§ = 0;
         this.motorSpeed = 0;
         this.§'!`§ = false;
         this.§@<§ = false;
      }
      
      public function §in §(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         § !,§ = param1;
         §]z§ = param2;
         this.§;I§ = § !,§.GetLocalPoint(param3);
         this.§-!&§ = §]z§.GetLocalPoint(param3);
         this.§5!5§ = §]z§.GetAngle() - § !,§.GetAngle();
      }
   }
}
