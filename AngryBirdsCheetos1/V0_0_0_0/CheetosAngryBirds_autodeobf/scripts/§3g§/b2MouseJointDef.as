package §3g§
{
   import §9"§.b2Vec2;
   import §>!@§.b2internal;
   
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
