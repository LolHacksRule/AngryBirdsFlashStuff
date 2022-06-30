package §6>§
{
   import §4x§.b2internal;
   import §=i§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §7"§:Number;
      
      public var §<!F§:Number;
      
      public var §%z§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§5!Y§;
         this.§7"§ = 0;
         this.§<!F§ = 5;
         this.§%z§ = 0.7;
      }
   }
}
