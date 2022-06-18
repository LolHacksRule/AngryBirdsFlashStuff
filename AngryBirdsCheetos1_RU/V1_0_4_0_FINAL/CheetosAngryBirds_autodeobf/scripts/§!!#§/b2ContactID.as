package §!!#§
{
   import §4! §.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §&i§:§!!Y§;
      
      b2internal var §@x§:uint;
      
      public function b2ContactID()
      {
         this.§&i§ = new §!!Y§();
         super();
         this.§&i§.§=`§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§@x§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§@x§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§@x§ = param1;
         this.§&i§.§-!N§ = this.§@x§ & 255;
         this.§&i§.§!!N§ = (this.§@x§ & 65280) >> 8 & 255;
         this.§&i§.§;M§ = (this.§@x§ & 16711680) >> 16 & 255;
         this.§&i§.§"!W§ = (this.§@x§ & 4278190080) >> 24 & 255;
      }
   }
}
