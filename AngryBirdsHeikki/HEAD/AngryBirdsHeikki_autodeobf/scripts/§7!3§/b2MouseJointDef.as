package §7!3§
{
   import §6%§.b2internal;
   import §`!^§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §0!L§:Number;
      
      public var §^!e§:Number;
      
      public var §4!G§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§'!I§;
         this.§0!L§ = 0;
         this.§^!e§ = 5;
         this.§4!G§ = 0.7;
      }
   }
}
