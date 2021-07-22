package §"G§
{
   import §&!Y§.b2Body;
   import §@!a§.b2internal;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §5!R§;
      
      public var §4"?§:b2Body;
      
      public var §+H§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§ !q§;
         this.§5!R§ = null;
         this.§4"?§ = null;
         this.§+H§ = null;
         this.collideConnected = false;
      }
   }
}
