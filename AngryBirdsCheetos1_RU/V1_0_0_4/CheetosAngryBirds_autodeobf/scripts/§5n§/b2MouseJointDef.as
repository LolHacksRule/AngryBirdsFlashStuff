package §5n§
{
   import §"v§.b2internal;
   import §5!K§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §2!B§:Number;
      
      public var §+!§:Number;
      
      public var §1!J§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§=!=§;
         this.§2!B§ = 0;
         this.§+!§ = 5;
         this.§1!J§ = 0.7;
      }
   }
}
