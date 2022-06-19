package §;!#§
{
   import §"0§.b2internal;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §4d§:Number;
      
      public var §7!=§:Number;
      
      public var §'m§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§`!U§;
         this.§4d§ = 0;
         this.§7!=§ = 5;
         this.§'m§ = 0.7;
      }
   }
}
