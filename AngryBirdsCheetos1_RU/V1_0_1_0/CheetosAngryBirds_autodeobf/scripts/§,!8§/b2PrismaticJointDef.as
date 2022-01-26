package §,!8§
{
   import §&!B§.b2Vec2;
   import §[x§.b2Body;
   import §^<§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §'s§:b2Vec2;
      
      public var §5%§:b2Vec2;
      
      public var §`!>§:b2Vec2;
      
      public var §-,§:Number;
      
      public var §!O§:Boolean;
      
      public var §'A§:Number;
      
      public var §>!M§:Number;
      
      public var §3!@§:Boolean;
      
      public var §0d§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§'s§ = new b2Vec2();
         this.§5%§ = new b2Vec2();
         this.§`!>§ = new b2Vec2();
         super();
         type = b2Joint.§%!3§;
         this.§`!>§.Set(1,0);
         this.§-,§ = 0;
         this.§!O§ = false;
         this.§'A§ = 0;
         this.§>!M§ = 0;
         this.§3!@§ = false;
         this.§0d§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §8#§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §^!<§ = param1;
         §!E§ = param2;
         this.§'s§ = §^!<§.GetLocalPoint(param3);
         this.§5%§ = §!E§.GetLocalPoint(param3);
         this.§`!>§ = §^!<§.GetLocalVector(param4);
         this.§-,§ = §!E§.GetAngle() - §^!<§.GetAngle();
      }
   }
}
