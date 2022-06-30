package §"d§
{
   import §6A§.b2Vec2;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var § N§:Number;
      
      public var §&!a§:Number;
      
      public var §0J§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§^a§;
         this.§ N§ = 0;
         this.§&!a§ = 5;
         this.§0J§ = 0.7;
      }
   }
}
