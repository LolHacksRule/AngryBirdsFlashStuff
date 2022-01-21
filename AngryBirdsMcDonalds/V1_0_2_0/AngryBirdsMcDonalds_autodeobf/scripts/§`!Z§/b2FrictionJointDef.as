package §`!Z§
{
   import §"U§.b2Vec2;
   import §3!g§.b2Body;
   import §=!X§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §<4§:b2Vec2;
      
      public var §2§:b2Vec2;
      
      public var §@P§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§<4§ = new b2Vec2();
         this.§2§ = new b2Vec2();
         super();
         type = b2Joint.§1!5§;
         this.§@P§ = 0;
         this.maxTorque = 0;
      }
      
      public function §6!_§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §+!#§ = param1;
         §1!K§ = param2;
         this.§<4§.SetV(§+!#§.GetLocalPoint(param3));
         this.§2§.SetV(§1!K§.GetLocalPoint(param3));
      }
   }
}
