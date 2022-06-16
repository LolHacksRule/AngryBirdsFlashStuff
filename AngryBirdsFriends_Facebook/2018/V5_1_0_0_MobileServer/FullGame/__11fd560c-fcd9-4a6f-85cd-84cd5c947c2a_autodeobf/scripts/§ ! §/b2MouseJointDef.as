package § ! §
{
   import § "%§.b2Vec2;
   import §,!s§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §'!@§:Number;
      
      public var §!Q§:Number;
      
      public var dampingRatio:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§<#d§;
         this.§'!@§ = 0;
         this.§!Q§ = 5;
         this.dampingRatio = 0.7;
      }
   }
}
