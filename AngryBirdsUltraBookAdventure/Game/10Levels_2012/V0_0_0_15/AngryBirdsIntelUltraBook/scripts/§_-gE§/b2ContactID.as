package §_-gE§
{
   import §_-5§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §_-9h§:§_-FL§;
      
      b2internal var §_-Tb§:uint;
      
      public function b2ContactID()
      {
         this.§_-9h§ = new §_-FL§();
         super();
         this.§_-9h§.§_-Vs§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§_-Tb§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§_-Tb§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§_-Tb§ = param1;
         this.§_-9h§.§_-m9§ = this.§_-Tb§ & 255;
         this.§_-9h§.§_-08u§ = (this.§_-Tb§ & 65280) >> 8 & 255;
         this.§_-9h§.§_-0Cg§ = (this.§_-Tb§ & 16711680) >> 16 & 255;
         this.§_-9h§.§_-000§ = (this.§_-Tb§ & 4278190080) >> 24 & 255;
      }
   }
}
