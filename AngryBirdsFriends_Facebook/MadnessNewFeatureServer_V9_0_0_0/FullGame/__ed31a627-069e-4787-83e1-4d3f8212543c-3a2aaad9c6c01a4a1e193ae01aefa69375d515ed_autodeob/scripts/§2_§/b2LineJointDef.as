package §2_§
{
   import §?!C§.b2Vec2;
   import §?N§.b2internal;
   import §@!S§.b2Body;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §0$&§:b2Vec2;
      
      public var §=#I§:b2Vec2;
      
      public var §&F§:b2Vec2;
      
      public var §8!R§:Boolean;
      
      public var §5#8§:Number;
      
      public var §'!Q§:Number;
      
      public var §2`§:Boolean;
      
      public var §;w§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§0$&§ = new b2Vec2();
         this.§=#I§ = new b2Vec2();
         this.§&F§ = new b2Vec2();
         super();
         type = b2Joint.§8f§;
         this.§&F§.Set(1,0);
         this.§8!R§ = false;
         this.§5#8§ = 0;
         this.§'!Q§ = 0;
         this.§2`§ = false;
         this.§;w§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §1!W§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §;#X§ = param1;
         §`7§ = param2;
         this.§0$&§ = §;#X§.GetLocalPoint(param3);
         this.§=#I§ = §`7§.GetLocalPoint(param3);
         this.§&F§ = §;#X§.GetLocalVector(param4);
      }
   }
}
