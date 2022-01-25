package §"!4§
{
   import §54§.b2internal;
   import §;h§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §4!d§:Number;
      
      public var §^!,§:Number;
      
      public var §1z§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§?$§;
         this.§4!d§ = 0;
         this.§^!,§ = 5;
         this.§1z§ = 0.7;
      }
   }
}
