package §=;§
{
   import §+!g§.b2internal;
   import §>!L§.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §+!f§;
      
      public var §7l§:b2Body;
      
      public var §<H§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§?!>§;
         this.§+!f§ = null;
         this.§7l§ = null;
         this.§<H§ = null;
         this.collideConnected = false;
      }
   }
}
