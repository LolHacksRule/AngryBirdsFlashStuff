package §?"#§
{
   import §8K§.b2internal;
   import §;`§.b2Body;
   import §[!f§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §5";§:b2Vec2;
      
      public var §["%§:b2Vec2;
      
      public var §"9§:Number;
      
      public var §?!h§:Boolean;
      
      public var §&"§:Number;
      
      public var §]"E§:Number;
      
      public var §9!"§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §]]§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§5";§ = new b2Vec2();
         this.§["%§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§5";§.Set(0,0);
         this.§["%§.Set(0,0);
         this.§"9§ = 0;
         this.§&"§ = 0;
         this.§]"E§ = 0;
         this.§]]§ = 0;
         this.motorSpeed = 0;
         this.§?!h§ = false;
         this.§9!"§ = false;
      }
      
      public function §'m§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §>!&§ = param1;
         §^!r§ = param2;
         this.§5";§ = §>!&§.GetLocalPoint(param3);
         this.§["%§ = §^!r§.GetLocalPoint(param3);
         this.§"9§ = §^!r§.GetAngle() - §>!&§.GetAngle();
      }
   }
}
