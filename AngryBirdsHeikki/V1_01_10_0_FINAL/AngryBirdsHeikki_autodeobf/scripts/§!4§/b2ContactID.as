package §!4§
{
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §`!8§:§%W§;
      
      b2internal var §0k§:uint;
      
      public function b2ContactID()
      {
         this.§`!8§ = new §%W§();
         super();
         this.§`!8§.§=D§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§0k§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§0k§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§0k§ = param1;
         this.§`!8§.§ ?§ = this.§0k§ & 255;
         this.§`!8§.§+S§ = (this.§0k§ & 65280) >> 8 & 255;
         this.§`!8§.§9g§ = (this.§0k§ & 16711680) >> 16 & 255;
         this.§`!8§.§]Z§ = (this.§0k§ & 4278190080) >> 24 & 255;
      }
   }
}
