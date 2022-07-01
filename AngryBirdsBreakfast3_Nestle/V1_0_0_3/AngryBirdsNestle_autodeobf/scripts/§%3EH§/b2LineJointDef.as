package §>H§
{
   import § !%§.b2internal;
   import §,!k§.b2Vec2;
   import §;'§.b2Body;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §`!>§:b2Vec2;
      
      public var §0l§:b2Vec2;
      
      public var §!""§:b2Vec2;
      
      public var §^j§:Boolean;
      
      public var §%",§:Number;
      
      public var §>!o§:Number;
      
      public var §,u§:Boolean;
      
      public var §"]§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§`!>§ = new b2Vec2();
         this.§0l§ = new b2Vec2();
         this.§!""§ = new b2Vec2();
         super();
         type = b2Joint.§7'§;
         this.§!""§.Set(1,0);
         this.§^j§ = false;
         this.§%",§ = 0;
         this.§>!o§ = 0;
         this.§,u§ = false;
         this.§"]§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §2f§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §>q§ = param1;
         §6!,§ = param2;
         this.§`!>§ = §>q§.GetLocalPoint(param3);
         this.§0l§ = §6!,§.GetLocalPoint(param3);
         this.§!""§ = §>q§.GetLocalVector(param4);
      }
   }
}
