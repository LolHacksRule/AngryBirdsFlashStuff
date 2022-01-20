package §!!M§
{
   import §+S§.b2Vec2;
   import §?!n§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §0!Y§:Number;
      
      public var §"j§:Number;
      
      public var §%6§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§&"§;
         this.§0!Y§ = 0;
         this.§"j§ = 5;
         this.§%6§ = 0.7;
      }
   }
}
