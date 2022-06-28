package §9!"§
{
   import §7!u§.b2internal;
   import §>H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §`z§:Number;
      
      public var § y§:Number;
      
      public var §`!X§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§#F§;
         this.§`z§ = 0;
         this.§ y§ = 5;
         this.§`!X§ = 0.7;
      }
   }
}
