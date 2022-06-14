package §8k§
{
   import §#]§.b2Vec2;
   import §4!!§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §"#§:Number;
      
      public var §>"9§:Number;
      
      public var §""2§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§ !0§;
         this.§"#§ = 0;
         this.§>"9§ = 5;
         this.§""2§ = 0.7;
      }
   }
}
