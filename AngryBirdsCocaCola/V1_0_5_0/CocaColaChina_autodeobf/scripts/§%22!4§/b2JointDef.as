package §"!4§
{
   import § y§.b2Body;
   import §54§.b2internal;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §^!V§;
      
      public var §8L§:b2Body;
      
      public var §4!H§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§5!A§;
         this.§^!V§ = null;
         this.§8L§ = null;
         this.§4!H§ = null;
         this.collideConnected = false;
      }
   }
}
