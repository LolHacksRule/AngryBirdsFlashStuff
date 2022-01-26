package §,!8§
{
   import §&!B§.b2Vec2;
   import §^<§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §;R§:Number;
      
      public var §5![§:Number;
      
      public var §-?§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§+3§;
         this.§;R§ = 0;
         this.§5![§ = 5;
         this.§-?§ = 0.7;
      }
   }
}
