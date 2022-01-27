package §?"#§
{
   import §8K§.b2internal;
   import §;`§.b2Body;
   import §[!f§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §5";§:b2Vec2;
      
      public var §["%§:b2Vec2;
      
      public var §,x§:b2Vec2;
      
      public var §"9§:Number;
      
      public var §?!h§:Boolean;
      
      public var §9"?§:Number;
      
      public var §'!g§:Number;
      
      public var §9!"§:Boolean;
      
      public var §3"#§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         this.§5";§ = new b2Vec2();
         this.§["%§ = new b2Vec2();
         this.§,x§ = new b2Vec2();
         super();
         type = b2Joint.§;G§;
         this.§,x§.Set(1,0);
         this.§"9§ = 0;
         this.§?!h§ = false;
         this.§9"?§ = 0;
         this.§'!g§ = 0;
         this.§9!"§ = false;
         this.§3"#§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §'m§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §>!&§ = param1;
         §^!r§ = param2;
         this.§5";§ = §>!&§.GetLocalPoint(param3);
         this.§["%§ = §^!r§.GetLocalPoint(param3);
         this.§,x§ = §>!&§.GetLocalVector(param4);
         this.§"9§ = §^!r§.GetAngle() - §>!&§.GetAngle();
      }
   }
}
