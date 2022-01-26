package §_-Kz§
{
   import §_-Jf§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §_-Wp§:§_-6J§;
      
      b2internal var §_-Gv§:uint;
      
      public function b2ContactID()
      {
         this.§_-Wp§ = new §_-6J§();
         super();
         this.§_-Wp§.§_-7L§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§_-Gv§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§_-Gv§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§_-Gv§ = param1;
         this.§_-Wp§.§_-N0§ = this.§_-Gv§ & 255;
         this.§_-Wp§.§_-NT§ = (this.§_-Gv§ & 65280) >> 8 & 255;
         this.§_-Wp§.§_-zf§ = (this.§_-Gv§ & 16711680) >> 16 & 255;
         this.§_-Wp§.§_-j9§ = (this.§_-Gv§ & 4278190080) >> 24 & 255;
      }
   }
}
