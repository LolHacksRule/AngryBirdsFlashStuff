package §8k§
{
   import §#]§.b2Vec2;
   import §4!!§.b2internal;
   import §48§.b2Body;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §#C§:b2Vec2;
      
      public var §^!J§:b2Vec2;
      
      public var §8"C§:b2Vec2;
      
      public var §3"%§:Boolean;
      
      public var §[!7§:Number;
      
      public var §<!T§:Number;
      
      public var §[!c§:Boolean;
      
      public var §22§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§#C§ = new b2Vec2();
         this.§^!J§ = new b2Vec2();
         this.§8"C§ = new b2Vec2();
         super();
         type = b2Joint.§7"<§;
         this.§8"C§.Set(1,0);
         this.§3"%§ = false;
         this.§[!7§ = 0;
         this.§<!T§ = 0;
         this.§[!c§ = false;
         this.§22§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §`!r§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §!!v§ = param1;
         §'!4§ = param2;
         this.§#C§ = §!!v§.GetLocalPoint(param3);
         this.§^!J§ = §'!4§.GetLocalPoint(param3);
         this.§8"C§ = §!!v§.GetLocalVector(param4);
      }
   }
}
