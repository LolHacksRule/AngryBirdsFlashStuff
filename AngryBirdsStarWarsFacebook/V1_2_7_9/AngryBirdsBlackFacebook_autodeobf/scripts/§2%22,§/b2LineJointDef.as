package §2",§
{
   import §1x§.b2Body;
   import §9!s§.b2internal;
   import §^>§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §2"g§:b2Vec2;
      
      public var §#l§:b2Vec2;
      
      public var §4z§:b2Vec2;
      
      public var §@"a§:Boolean;
      
      public var §8!n§:Number;
      
      public var §,"J§:Number;
      
      public var §<!l§:Boolean;
      
      public var §8!!§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§2"g§ = new b2Vec2();
         this.§#l§ = new b2Vec2();
         this.§4z§ = new b2Vec2();
         super();
         type = b2Joint.§1" §;
         this.§4z§.Set(1,0);
         this.§@"a§ = false;
         this.§8!n§ = 0;
         this.§,"J§ = 0;
         this.§<!l§ = false;
         this.§8!!§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §8!s§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §!!x§ = param1;
         §%!x§ = param2;
         this.§2"g§ = §!!x§.GetLocalPoint(param3);
         this.§#l§ = §%!x§.GetLocalPoint(param3);
         this.§4z§ = §!!x§.GetLocalVector(param4);
      }
   }
}
