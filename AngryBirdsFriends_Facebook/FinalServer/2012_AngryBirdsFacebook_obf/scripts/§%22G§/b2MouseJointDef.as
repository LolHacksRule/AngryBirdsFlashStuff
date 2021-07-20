package §"G§
{
   import §7F§.b2Vec2;
   import §@!a§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §#9§:Number;
      
      public var §[!p§:Number;
      
      public var §<!7§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§in§;
         this.§#9§ = 0;
         this.§[!p§ = 5;
         this.§<!7§ = 0.7;
      }
   }
}
