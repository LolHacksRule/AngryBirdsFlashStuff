package §'!;§
{
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class §7y§
   {
       
      
      b2internal var §+7§:int;
      
      b2internal var §#C§:int;
      
      b2internal var §9Q§:int;
      
      b2internal var §+3§:int;
      
      b2internal var §6i§:b2ContactID;
      
      public function §7y§()
      {
         super();
      }
      
      public function get §5!3§() : int
      {
         return this.§+7§;
      }
      
      public function set §5!3§(param1:int) : void
      {
         this.§+7§ = param1;
         this.§6i§._key = this.§6i§._key & 4294967040 | this.§+7§ & 255;
      }
      
      public function get §`J§() : int
      {
         return this.§#C§;
      }
      
      public function set §`J§(param1:int) : void
      {
         this.§#C§ = param1;
         this.§6i§._key = this.§6i§._key & 4294902015 | this.§#C§ << 8 & 65280;
      }
      
      public function get §'!P§() : int
      {
         return this.§9Q§;
      }
      
      public function set §'!P§(param1:int) : void
      {
         this.§9Q§ = param1;
         this.§6i§._key = this.§6i§._key & 4278255615 | this.§9Q§ << 16 & 16711680;
      }
      
      public function get §=p§() : int
      {
         return this.§+3§;
      }
      
      public function set §=p§(param1:int) : void
      {
         this.§+3§ = param1;
         this.§6i§._key = this.§6i§._key & 16777215 | this.§+3§ << 24 & 4278190080;
      }
   }
}
