package §,#E§
{
   import §&$+§.b2internal;
   
   use namespace b2internal;
   
   public class §`!9§
   {
       
      
      b2internal var §7!s§:int;
      
      b2internal var §-!#§:int;
      
      b2internal var §!$-§:int;
      
      b2internal var §5!1§:int;
      
      b2internal var §'#E§:b2ContactID;
      
      public function §`!9§()
      {
         super();
      }
      
      public function get §;#J§() : int
      {
         return this.§7!s§;
      }
      
      public function set §;#J§(param1:int) : void
      {
         this.§7!s§ = param1;
         this.§'#E§.§"$?§ = this.§'#E§.§"$?§ & 4294967040 | this.§7!s§ & 255;
      }
      
      public function get §=!e§() : int
      {
         return this.§-!#§;
      }
      
      public function set §=!e§(param1:int) : void
      {
         this.§-!#§ = param1;
         this.§'#E§.§"$?§ = this.§'#E§.§"$?§ & 4294902015 | this.§-!#§ << 8 & 65280;
      }
      
      public function get §7#!§() : int
      {
         return this.§!$-§;
      }
      
      public function set §7#!§(param1:int) : void
      {
         this.§!$-§ = param1;
         this.§'#E§.§"$?§ = this.§'#E§.§"$?§ & 4278255615 | this.§!$-§ << 16 & 16711680;
      }
      
      public function get §8#0§() : int
      {
         return this.§5!1§;
      }
      
      public function set §8#0§(param1:int) : void
      {
         this.§5!1§ = param1;
         this.§'#E§.§"$?§ = this.§'#E§.§"$?§ & 16777215 | this.§5!1§ << 24 & 4278190080;
      }
   }
}
