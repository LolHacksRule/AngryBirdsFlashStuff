package §[h§
{
   import §<!B§.b2Vec2;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §%!$§:Number;
      
      public var §4,§:Number;
      
      public var §>!k§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§ !D§;
         this.§%!$§ = 0;
         this.§4,§ = 5;
         this.§>!k§ = 0.7;
      }
   }
}
