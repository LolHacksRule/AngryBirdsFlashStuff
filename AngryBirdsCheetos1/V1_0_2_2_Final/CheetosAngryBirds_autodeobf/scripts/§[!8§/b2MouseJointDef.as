package §[!8§
{
   import §0!G§.b2Vec2;
   import §2!F§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §[!A§:Number;
      
      public var §!k§:Number;
      
      public var §-C§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§7q§;
         this.§[!A§ = 0;
         this.§!k§ = 5;
         this.§-C§ = 0.7;
      }
   }
}
