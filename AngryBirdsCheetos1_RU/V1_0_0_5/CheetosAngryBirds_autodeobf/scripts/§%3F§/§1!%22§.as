package §?§
{
   import § !5§.b2internal;
   
   use namespace b2internal;
   
   public class §1!"§
   {
       
      
      b2internal var §7!A§:int;
      
      b2internal var §]M§:int;
      
      b2internal var §&!H§:int;
      
      b2internal var §>[§:int;
      
      b2internal var §6E§:b2ContactID;
      
      public function §1!"§()
      {
         super();
      }
      
      public function get §2!H§() : int
      {
         return this.§7!A§;
      }
      
      public function set §2!H§(param1:int) : void
      {
         this.§7!A§ = param1;
         this.§6E§.§8d§ = this.§6E§.§8d§ & 4294967040 | this.§7!A§ & 255;
      }
      
      public function get §@q§() : int
      {
         return this.§]M§;
      }
      
      public function set §@q§(param1:int) : void
      {
         this.§]M§ = param1;
         this.§6E§.§8d§ = this.§6E§.§8d§ & 4294902015 | this.§]M§ << 8 & 65280;
      }
      
      public function get §;i§() : int
      {
         return this.§&!H§;
      }
      
      public function set §;i§(param1:int) : void
      {
         this.§&!H§ = param1;
         this.§6E§.§8d§ = this.§6E§.§8d§ & 4278255615 | this.§&!H§ << 16 & 16711680;
      }
      
      public function get §,?§() : int
      {
         return this.§>[§;
      }
      
      public function set §,?§(param1:int) : void
      {
         this.§>[§ = param1;
         this.§6E§.§8d§ = this.§6E§.§8d§ & 16777215 | this.§>[§ << 24 & 4278190080;
      }
   }
}
