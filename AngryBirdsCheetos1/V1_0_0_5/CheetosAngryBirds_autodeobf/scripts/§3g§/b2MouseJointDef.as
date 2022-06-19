package §3g§
{
   import §;]§.b2internal;
   import §=E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §5!-§:Number;
      
      public var §5X§:Number;
      
      public var §@N§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§-!2§;
         this.§5!-§ = 0;
         this.§5X§ = 5;
         this.§@N§ = 0.7;
      }
   }
}
