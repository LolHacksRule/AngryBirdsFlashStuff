package §0J§
{
   import §[!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §>!+§:§&o§;
      
      b2internal var §9s§:uint;
      
      public function b2ContactID()
      {
         this.§>!+§ = new §&o§();
         super();
         this.§>!+§.§5$4§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§9s§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§9s§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§9s§ = param1;
         this.§>!+§.§4$3§ = this.§9s§ & 255;
         this.§>!+§.§ i§ = (this.§9s§ & 65280) >> 8 & 255;
         this.§>!+§.§1$1§ = (this.§9s§ & 16711680) >> 16 & 255;
         this.§>!+§.§+x§ = (this.§9s§ & 4278190080) >> 24 & 255;
      }
   }
}
