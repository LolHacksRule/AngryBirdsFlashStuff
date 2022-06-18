package §=!P§
{
   import §4! §.b2internal;
   import §9t§.b2Body;
   import §^q§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §;I§:b2Vec2;
      
      public var §-!&§:b2Vec2;
      
      public var §]2§:b2Vec2;
      
      public var §'!`§:Boolean;
      
      public var § 0§:Number;
      
      public var §%,§:Number;
      
      public var §@<§:Boolean;
      
      public var §7[§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§;I§ = new b2Vec2();
         this.§-!&§ = new b2Vec2();
         this.§]2§ = new b2Vec2();
         super();
         type = b2Joint.§7!-§;
         this.§]2§.Set(1,0);
         this.§'!`§ = false;
         this.§ 0§ = 0;
         this.§%,§ = 0;
         this.§@<§ = false;
         this.§7[§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §in §(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         § !,§ = param1;
         §]z§ = param2;
         this.§;I§ = § !,§.GetLocalPoint(param3);
         this.§-!&§ = §]z§.GetLocalPoint(param3);
         this.§]2§ = § !,§.GetLocalVector(param4);
      }
   }
}
