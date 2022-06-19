package §[!8§
{
   import §2!F§.b2internal;
   import §`j§.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §4!E§;
      
      public var §8!5§:b2Body;
      
      public var §0n§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§>!?§;
         this.§4!E§ = null;
         this.§8!5§ = null;
         this.§0n§ = null;
         this.collideConnected = false;
      }
   }
}
