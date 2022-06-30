package §@!]§
{
   import §,!3§.b2Vec2;
   import §3'§.b2internal;
   import §?!F§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §&!0§:b2Vec2;
      
      public var §,%§:b2Vec2;
      
      public var §!P§:Number;
      
      public var §8!&§:Boolean;
      
      public var §>A§:Number;
      
      public var §'S§:Number;
      
      public var §`!Y§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §5z§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§&!0§ = new b2Vec2();
         this.§,%§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§&!0§.Set(0,0);
         this.§,%§.Set(0,0);
         this.§!P§ = 0;
         this.§>A§ = 0;
         this.§'S§ = 0;
         this.§5z§ = 0;
         this.motorSpeed = 0;
         this.§8!&§ = false;
         this.§`!Y§ = false;
      }
      
      public function §^!R§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §<!&§ = param1;
         §!8§ = param2;
         this.§&!0§ = §<!&§.GetLocalPoint(param3);
         this.§,%§ = §!8§.GetLocalPoint(param3);
         this.§!P§ = §!8§.GetAngle() - §<!&§.GetAngle();
      }
   }
}
