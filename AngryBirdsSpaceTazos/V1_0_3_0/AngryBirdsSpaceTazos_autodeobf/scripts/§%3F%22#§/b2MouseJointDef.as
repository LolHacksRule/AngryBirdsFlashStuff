package §?"#§
{
   import §8K§.b2internal;
   import §[!f§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §&"1§:Number;
      
      public var §#!X§:Number;
      
      public var dampingRatio:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§]e§;
         this.§&"1§ = 0;
         this.§#!X§ = 5;
         this.dampingRatio = 0.7;
      }
   }
}
