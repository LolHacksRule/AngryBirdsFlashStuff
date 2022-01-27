package §2",§
{
   import §9!s§.b2internal;
   import §^>§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §0"l§:Number;
      
      public var §&"C§:Number;
      
      public var dampingRatio:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§4!P§;
         this.§0"l§ = 0;
         this.§&"C§ = 5;
         this.dampingRatio = 0.7;
      }
   }
}
