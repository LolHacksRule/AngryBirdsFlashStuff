package §4"$§
{
   import §&!M§.b2Body;
   import §3!t§.b2Vec2;
   import §6!`§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var § 3§:b2Vec2;
      
      public var § '§:b2Vec2;
      
      public var § -§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§ 3§ = new b2Vec2();
         this.§ '§ = new b2Vec2();
         super();
         type = b2Joint.§1C§;
         this.§ -§ = 0;
         this.maxTorque = 0;
      }
      
      public function §[z§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §>"$§ = param1;
         §%"1§ = param2;
         this.§ 3§.SetV(§>"$§.GetLocalPoint(param3));
         this.§ '§.SetV(§%"1§.GetLocalPoint(param3));
      }
   }
}
