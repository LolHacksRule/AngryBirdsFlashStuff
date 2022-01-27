package §?"#§
{
   import §8K§.b2internal;
   import §;`§.b2Body;
   import §[!f§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §5";§:b2Vec2;
      
      public var §["%§:b2Vec2;
      
      public var §"9§:Number;
      
      public function b2WeldJointDef()
      {
         this.§5";§ = new b2Vec2();
         this.§["%§ = new b2Vec2();
         super();
         type = b2Joint.§&"5§;
         this.§"9§ = 0;
      }
      
      public function §'m§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §>!&§ = param1;
         §^!r§ = param2;
         this.§5";§.SetV(§>!&§.GetLocalPoint(param3));
         this.§["%§.SetV(§^!r§.GetLocalPoint(param3));
         this.§"9§ = §^!r§.GetAngle() - §>!&§.GetAngle();
      }
   }
}
