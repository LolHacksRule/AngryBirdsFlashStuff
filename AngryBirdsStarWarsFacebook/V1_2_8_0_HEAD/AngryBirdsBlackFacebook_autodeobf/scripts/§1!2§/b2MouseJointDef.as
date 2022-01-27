package §1!2§
{
   import §5"i§.b2internal;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §8!i§:Number;
      
      public var §""u§:Number;
      
      public var dampingRatio:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§4#T§;
         this.§8!i§ = 0;
         this.§""u§ = 5;
         this.dampingRatio = 0.7;
      }
   }
}
