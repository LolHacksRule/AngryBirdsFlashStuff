package §&!n§
{
   import §8,§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §]l§:§'R§;
      
      b2internal var §7"3§:uint;
      
      public function b2ContactID()
      {
         this.§]l§ = new §'R§();
         super();
         this.§]l§.§'0§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§7"3§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§7"3§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§7"3§ = param1;
         this.§]l§.§7,§ = this.§7"3§ & 255;
         this.§]l§.§55§ = (this.§7"3§ & 65280) >> 8 & 255;
         this.§]l§.§;x§ = (this.§7"3§ & 16711680) >> 16 & 255;
         this.§]l§.§9!h§ = (this.§7"3§ & 4278190080) >> 24 & 255;
      }
   }
}
