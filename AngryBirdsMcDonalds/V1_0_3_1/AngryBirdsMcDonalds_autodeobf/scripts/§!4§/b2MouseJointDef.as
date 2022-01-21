package §!4§
{
   import §0,§.b2Vec2;
   import §3o§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §54§:Number;
      
      public var §+m§:Number;
      
      public var §3Q§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§&b§;
         this.§54§ = 0;
         this.§+m§ = 5;
         this.§3Q§ = 0.7;
      }
   }
}
