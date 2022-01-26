package §@!]§
{
   import §,!3§.b2Vec2;
   import §3'§.b2internal;
   import §?!F§.b2Body;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §&!0§:b2Vec2;
      
      public var §,%§:b2Vec2;
      
      public var §@F§:b2Vec2;
      
      public var §!P§:Number;
      
      public var §8!&§:Boolean;
      
      public var §!s§:Number;
      
      public var §7h§:Number;
      
      public var §`!Y§:Boolean;
      
      public var §7![§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§&!0§ = new b2Vec2();
         this.§,%§ = new b2Vec2();
         this.§@F§ = new b2Vec2();
         super();
         type = b2Joint.§!-§;
         this.§@F§.Set(1,0);
         this.§!P§ = 0;
         this.§8!&§ = false;
         this.§!s§ = 0;
         this.§7h§ = 0;
         this.§`!Y§ = false;
         this.§7![§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §^!R§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §<!&§ = param1;
         §!8§ = param2;
         this.§&!0§ = §<!&§.GetLocalPoint(param3);
         this.§,%§ = §!8§.GetLocalPoint(param3);
         this.§@F§ = §<!&§.GetLocalVector(param4);
         this.§!P§ = §!8§.GetAngle() - §<!&§.GetAngle();
      }
   }
}
