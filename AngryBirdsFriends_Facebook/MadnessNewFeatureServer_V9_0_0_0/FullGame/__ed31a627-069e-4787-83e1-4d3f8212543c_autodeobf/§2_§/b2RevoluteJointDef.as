package §2_§
{
   import §?!C§.b2Vec2;
   import §?N§.b2internal;
   import §@!S§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §0$&§:b2Vec2;
      
      public var §=#I§:b2Vec2;
      
      public var §`#,§:Number;
      
      public var §8!R§:Boolean;
      
      public var §`#F§:Number;
      
      public var §;"D§:Number;
      
      public var §2`§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §@!o§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§0$&§ = new b2Vec2();
         this.§=#I§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§0$&§.Set(0,0);
         this.§=#I§.Set(0,0);
         this.§`#,§ = 0;
         this.§`#F§ = 0;
         this.§;"D§ = 0;
         this.§@!o§ = 0;
         this.motorSpeed = 0;
         this.§8!R§ = false;
         this.§2`§ = false;
      }
      
      public function §1!W§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §;#X§ = param1;
         §`7§ = param2;
         this.§0$&§ = §;#X§.GetLocalPoint(param3);
         this.§=#I§ = §`7§.GetLocalPoint(param3);
         this.§`#,§ = §`7§.GetAngle() - §;#X§.GetAngle();
      }
   }
}
