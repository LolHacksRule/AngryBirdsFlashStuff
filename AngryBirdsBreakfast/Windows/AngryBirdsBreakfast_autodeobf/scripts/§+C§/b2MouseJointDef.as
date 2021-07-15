package §+C§
{
   import §'F§.b2internal;
   import §6Z§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §&l§:Number;
      
      public var §;l§:Number;
      
      public var §,8§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§6!+§;
         this.§&l§ = 0;
         this.§;l§ = 5;
         this.§,8§ = 0.7;
      }
   }
}
