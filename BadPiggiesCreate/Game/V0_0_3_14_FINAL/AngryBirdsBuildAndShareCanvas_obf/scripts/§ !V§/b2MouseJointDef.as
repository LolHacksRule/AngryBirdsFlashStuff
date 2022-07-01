package § !V§
{
   import §2"=§.b2Vec2;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §0!`§:Number;
      
      public var §2!5§:Number;
      
      public var §9!J§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§=J§;
         this.§0!`§ = 0;
         this.§2!5§ = 5;
         this.§9!J§ = 0.7;
      }
   }
}
