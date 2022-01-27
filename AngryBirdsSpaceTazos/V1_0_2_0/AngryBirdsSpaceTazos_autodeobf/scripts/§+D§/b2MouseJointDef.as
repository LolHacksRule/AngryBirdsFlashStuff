package §+D§
{
   import §&!S§.b2Vec2;
   import §@!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §2"2§:Number;
      
      public var §,!h§:Number;
      
      public var dampingRatio:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§;m§;
         this.§2"2§ = 0;
         this.§,!h§ = 5;
         this.dampingRatio = 0.7;
      }
   }
}
