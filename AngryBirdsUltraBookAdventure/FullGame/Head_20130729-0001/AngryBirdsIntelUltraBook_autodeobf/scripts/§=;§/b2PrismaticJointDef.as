package §=;§
{
   import §+!g§.b2internal;
   import §>!8§.b2Vec2;
   import §>!L§.b2Body;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §>!g§:b2Vec2;
      
      public var §&1§:b2Vec2;
      
      public var §0?§:b2Vec2;
      
      public var §6![§:Number;
      
      public var §0$§:Boolean;
      
      public var §[9§:Number;
      
      public var §@!f§:Number;
      
      public var § in§:Boolean;
      
      public var each:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§>!g§ = new b2Vec2();
         this.§&1§ = new b2Vec2();
         this.§0?§ = new b2Vec2();
         super();
         type = b2Joint.§2!V§;
         this.§0?§.Set(1,0);
         this.§6![§ = 0;
         this.§0$§ = false;
         this.§[9§ = 0;
         this.§@!f§ = 0;
         this.§ in§ = false;
         this.each = 0;
         this.motorSpeed = 0;
      }
      
      public function §2@§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §7l§ = param1;
         §<H§ = param2;
         this.§>!g§ = §7l§.GetLocalPoint(param3);
         this.§&1§ = §<H§.GetLocalPoint(param3);
         this.§0?§ = §7l§.GetLocalVector(param4);
         this.§6![§ = §<H§.GetAngle() - §7l§.GetAngle();
      }
   }
}
