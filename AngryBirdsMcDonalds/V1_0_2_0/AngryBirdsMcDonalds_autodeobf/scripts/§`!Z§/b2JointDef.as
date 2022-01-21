package §`!Z§
{
   import §3!g§.b2Body;
   import §=!X§.b2internal;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §,3§;
      
      public var §+!#§:b2Body;
      
      public var §1!K§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§@;§;
         this.§,3§ = null;
         this.§+!#§ = null;
         this.§1!K§ = null;
         this.collideConnected = false;
      }
   }
}
