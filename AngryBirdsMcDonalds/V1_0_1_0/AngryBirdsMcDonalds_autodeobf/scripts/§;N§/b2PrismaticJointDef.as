package §;N§
{
   import §!R§.b2Vec2;
   import §1B§.b2Body;
   import §9i§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §4D§:b2Vec2;
      
      public var §@@§:b2Vec2;
      
      public var §&!G§:b2Vec2;
      
      public var §'P§:Number;
      
      public var §'#§:Boolean;
      
      public var §^!C§:Number;
      
      public var §-$§:Number;
      
      public var §8%§:Boolean;
      
      public var §';§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§4D§ = new b2Vec2();
         this.§@@§ = new b2Vec2();
         this.§&!G§ = new b2Vec2();
         super();
         type = b2Joint.§'!,§;
         this.§&!G§.Set(1,0);
         this.§'P§ = 0;
         this.§'#§ = false;
         this.§^!C§ = 0;
         this.§-$§ = 0;
         this.§8%§ = false;
         this.§';§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §4G§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §-6§ = param1;
         §?w§ = param2;
         this.§4D§ = §-6§.GetLocalPoint(param3);
         this.§@@§ = §?w§.GetLocalPoint(param3);
         this.§&!G§ = §-6§.GetLocalVector(param4);
         this.§'P§ = §?w§.GetAngle() - §-6§.GetAngle();
      }
   }
}
