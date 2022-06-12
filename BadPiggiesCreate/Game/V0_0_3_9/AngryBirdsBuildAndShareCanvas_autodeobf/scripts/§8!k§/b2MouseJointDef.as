package §8!k§
{
   import §-!G§.b2Vec2;
   import §7"'§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §@,§:Number;
      
      public var §-"%§:Number;
      
      public var §0"3§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§9;§;
         this.§@,§ = 0;
         this.§-"%§ = 5;
         this.§0"3§ = 0.7;
      }
   }
}
