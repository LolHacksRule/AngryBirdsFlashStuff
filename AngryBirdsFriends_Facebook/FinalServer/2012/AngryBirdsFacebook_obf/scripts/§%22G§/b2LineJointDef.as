package §"G§
{
   import §&!Y§.b2Body;
   import §7F§.b2Vec2;
   import §@!a§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §!d§:b2Vec2;
      
      public var §;!9§:b2Vec2;
      
      public var §,"L§:b2Vec2;
      
      public var §5a§:Boolean;
      
      public var §'?§:Number;
      
      public var §=j§:Number;
      
      public var §-q§:Boolean;
      
      public var §<"+§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§!d§ = new b2Vec2();
         this.§;!9§ = new b2Vec2();
         this.§,"L§ = new b2Vec2();
         super();
         type = b2Joint.§&!w§;
         this.§,"L§.Set(1,0);
         this.§5a§ = false;
         this.§'?§ = 0;
         this.§=j§ = 0;
         this.§-q§ = false;
         this.§<"+§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §,!9§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §4"?§ = param1;
         §+H§ = param2;
         this.§!d§ = §4"?§.GetLocalPoint(param3);
         this.§;!9§ = §+H§.GetLocalPoint(param3);
         this.§,"L§ = §4"?§.GetLocalVector(param4);
      }
   }
}
