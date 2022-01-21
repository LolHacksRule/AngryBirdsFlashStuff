package §;N§
{
   import §!R§.b2Vec2;
   import §9i§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §@!_§:Number;
      
      public var §'!X§:Number;
      
      public var §7a§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§0!f§;
         this.§@!_§ = 0;
         this.§'!X§ = 5;
         this.§7a§ = 0.7;
      }
   }
}
