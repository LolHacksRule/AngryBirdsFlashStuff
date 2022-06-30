package §"d§
{
   import §3!R§.b2Body;
   import §6A§.b2Vec2;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §@b§:b2Vec2;
      
      public var §=i§:b2Vec2;
      
      public var §^>§:b2Vec2;
      
      public var §;w§:Number;
      
      public var §3L§:Boolean;
      
      public var §<T§:Number;
      
      public var §[g§:Number;
      
      public var §;`§:Boolean;
      
      public var include:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§@b§ = new b2Vec2();
         this.§=i§ = new b2Vec2();
         this.§^>§ = new b2Vec2();
         super();
         type = b2Joint.§=x§;
         this.§^>§.Set(1,0);
         this.§;w§ = 0;
         this.§3L§ = false;
         this.§<T§ = 0;
         this.§[g§ = 0;
         this.§;`§ = false;
         this.include = 0;
         this.motorSpeed = 0;
      }
      
      public function §';§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §&]§ = param1;
         §+0§ = param2;
         this.§@b§ = §&]§.GetLocalPoint(param3);
         this.§=i§ = §+0§.GetLocalPoint(param3);
         this.§^>§ = §&]§.GetLocalVector(param4);
         this.§;w§ = §+0§.GetAngle() - §&]§.GetAngle();
      }
   }
}
