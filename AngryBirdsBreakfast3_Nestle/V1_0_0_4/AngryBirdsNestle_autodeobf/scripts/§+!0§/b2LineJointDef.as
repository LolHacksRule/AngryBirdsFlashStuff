package §+!0§
{
   import §-%§.b2Vec2;
   import §9"5§.b2Body;
   import §>!R§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §1"&§:b2Vec2;
      
      public var §-m§:b2Vec2;
      
      public var §,!`§:b2Vec2;
      
      public var §1[§:Boolean;
      
      public var §35§:Number;
      
      public var §8;§:Number;
      
      public var §!!Q§:Boolean;
      
      public var §;9§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§1"&§ = new b2Vec2();
         this.§-m§ = new b2Vec2();
         this.§,!`§ = new b2Vec2();
         super();
         type = b2Joint.§5!Z§;
         this.§,!`§.Set(1,0);
         this.§1[§ = false;
         this.§35§ = 0;
         this.§8;§ = 0;
         this.§!!Q§ = false;
         this.§;9§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §,n§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §6z§ = param1;
         §@! § = param2;
         this.§1"&§ = §6z§.GetLocalPoint(param3);
         this.§-m§ = §@! §.GetLocalPoint(param3);
         this.§,!`§ = §6z§.GetLocalVector(param4);
      }
   }
}
