package §_-yI§
{
   import §_-b4§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §_-nh§:§_-Lf§;
      
      b2internal var §_-gq§:uint;
      
      public function b2ContactID()
      {
         this.§_-nh§ = new §_-Lf§();
         super();
         this.§_-nh§.§_-6D§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§_-gq§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§_-gq§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§_-gq§ = param1;
         this.§_-nh§.§_-A3§ = this.§_-gq§ & 255;
         this.§_-nh§.§_-3M§ = (this.§_-gq§ & 65280) >> 8 & 255;
         this.§_-nh§.§_-Cg§ = (this.§_-gq§ & 16711680) >> 16 & 255;
         this.§_-nh§.§_-py§ = (this.§_-gq§ & 4278190080) >> 24 & 255;
      }
   }
}
