package §!6§
{
   import § !5§.b2internal;
   import §+,§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §`=§:Number;
      
      public var §6!+§:Number;
      
      public var §&!U§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§4R§;
         this.§`=§ = 0;
         this.§6!+§ = 5;
         this.§&!U§ = 0.7;
      }
   }
}
