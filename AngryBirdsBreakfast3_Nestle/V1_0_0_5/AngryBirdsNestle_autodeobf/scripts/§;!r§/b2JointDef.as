package §;!r§
{
   import §,v§.b2Body;
   import §@h§.b2internal;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var userData;
      
      public var §@!`§:b2Body;
      
      public var §@$§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§46§;
         this.userData = null;
         this.§@!`§ = null;
         this.§@$§ = null;
         this.collideConnected = false;
      }
   }
}
