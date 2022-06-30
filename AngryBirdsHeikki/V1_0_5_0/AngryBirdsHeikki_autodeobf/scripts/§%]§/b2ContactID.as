package §%]§
{
   import §3'§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §^3§:§1[§;
      
      b2internal var §+!L§:uint;
      
      public function b2ContactID()
      {
         this.§^3§ = new §1[§();
         super();
         this.§^3§.§ !d§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§+!L§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§+!L§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§+!L§ = param1;
         this.§^3§.§0!3§ = this.§+!L§ & 255;
         this.§^3§.§1!5§ = (this.§+!L§ & 65280) >> 8 & 255;
         this.§^3§.§;p§ = (this.§+!L§ & 16711680) >> 16 & 255;
         this.§^3§.§1J§ = (this.§+!L§ & 4278190080) >> 24 & 255;
      }
   }
}
