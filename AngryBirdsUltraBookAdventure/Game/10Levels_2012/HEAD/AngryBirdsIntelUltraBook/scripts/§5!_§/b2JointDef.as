package §5!_§
{
   import §1%§.b2Body;
   import §8!H§.b2internal;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §#!`§;
      
      public var §7!K§:b2Body;
      
      public var §'P§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.dynamic;
         this.§#!`§ = null;
         this.§7!K§ = null;
         this.§'P§ = null;
         this.collideConnected = false;
      }
   }
}
