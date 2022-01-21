package §#!K§
{
   import §-0§.b2Body;
   import §@g§.b2internal;
   import §^!%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §0'§:b2Vec2;
      
      public var §;!b§:b2Vec2;
      
      public var §4k§:b2Vec2;
      
      public var §=c§:Boolean;
      
      public var §;!$§:Number;
      
      public var §<!>§:Number;
      
      public var §4=§:Boolean;
      
      public var §9#§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§0'§ = new b2Vec2();
         this.§;!b§ = new b2Vec2();
         this.§4k§ = new b2Vec2();
         super();
         type = b2Joint.§"!c§;
         this.§4k§.Set(1,0);
         this.§=c§ = false;
         this.§;!$§ = 0;
         this.§<!>§ = 0;
         this.§4=§ = false;
         this.§9#§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §08§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §>!k§ = param1;
         §<u§ = param2;
         this.§0'§ = §>!k§.GetLocalPoint(param3);
         this.§;!b§ = §<u§.GetLocalPoint(param3);
         this.§4k§ = §>!k§.GetLocalVector(param4);
      }
   }
}
