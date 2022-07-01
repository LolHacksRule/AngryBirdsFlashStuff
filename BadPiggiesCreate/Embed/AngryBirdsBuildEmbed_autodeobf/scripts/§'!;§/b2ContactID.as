package §'!;§
{
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §8!Y§:§7y§;
      
      b2internal var _key:uint;
      
      public function b2ContactID()
      {
         this.§8!Y§ = new §7y§();
         super();
         this.§8!Y§.§6i§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1._key;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this._key;
      }
      
      public function set key(param1:uint) : void
      {
         this._key = param1;
         this.§8!Y§.§+7§ = this._key & 255;
         this.§8!Y§.§#C§ = (this._key & 65280) >> 8 & 255;
         this.§8!Y§.§9Q§ = (this._key & 16711680) >> 16 & 255;
         this.§8!Y§.§+3§ = (this._key & 4278190080) >> 24 & 255;
      }
   }
}
