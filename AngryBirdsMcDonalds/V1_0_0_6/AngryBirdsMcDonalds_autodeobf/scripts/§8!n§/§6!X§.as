package §8!n§
{
   import §7!Y§.b2internal;
   
   use namespace b2internal;
   
   public class §6!X§
   {
       
      
      b2internal var §^X§:int;
      
      b2internal var §'!Y§:int;
      
      b2internal var §[!P§:int;
      
      b2internal var §2!b§:int;
      
      b2internal var §1n§:b2ContactID;
      
      public function §6!X§()
      {
         super();
      }
      
      public function get §'!A§() : int
      {
         return this.§^X§;
      }
      
      public function set §'!A§(param1:int) : void
      {
         this.§^X§ = param1;
         this.§1n§.native = this.§1n§.native & 4294967040 | this.§^X§ & 255;
      }
      
      public function get § try§() : int
      {
         return this.§'!Y§;
      }
      
      public function set § try§(param1:int) : void
      {
         this.§'!Y§ = param1;
         this.§1n§.native = this.§1n§.native & 4294902015 | this.§'!Y§ << 8 & 65280;
      }
      
      public function get §,!N§() : int
      {
         return this.§[!P§;
      }
      
      public function set §,!N§(param1:int) : void
      {
         this.§[!P§ = param1;
         this.§1n§.native = this.§1n§.native & 4278255615 | this.§[!P§ << 16 & 16711680;
      }
      
      public function get §>y§() : int
      {
         return this.§2!b§;
      }
      
      public function set §>y§(param1:int) : void
      {
         this.§2!b§ = param1;
         this.§1n§.native = this.§1n§.native & 16777215 | this.§2!b§ << 24 & 4278190080;
      }
   }
}
