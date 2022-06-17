package §0"=§
{
   import §[!3§.b2internal;
   import §`# §.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §5$8§:Number;
      
      public var §;$4§:Number;
      
      public var dampingRatio:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§?#z§;
         this.§5$8§ = 0;
         this.§;$4§ = 5;
         this.dampingRatio = 0.7;
      }
   }
}
