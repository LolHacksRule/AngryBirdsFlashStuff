package § 6§
{
   import §^+§.b2internal;
   
   use namespace b2internal;
   
   public class §`! §
   {
       
      
      b2internal var §#t§:int;
      
      b2internal var §+!5§:int;
      
      b2internal var §2" §:int;
      
      b2internal var §"!P§:int;
      
      b2internal var §#!'§:b2ContactID;
      
      public function §`! §()
      {
         super();
      }
      
      public function get §+!a§() : int
      {
         return this.§#t§;
      }
      
      public function set §+!a§(param1:int) : void
      {
         this.§#t§ = param1;
         this.§#!'§.§%!W§ = this.§#!'§.§%!W§ & 4294967040 | this.§#t§ & 255;
      }
      
      public function get §'!i§() : int
      {
         return this.§+!5§;
      }
      
      public function set §'!i§(param1:int) : void
      {
         this.§+!5§ = param1;
         this.§#!'§.§%!W§ = this.§#!'§.§%!W§ & 4294902015 | this.§+!5§ << 8 & 65280;
      }
      
      public function get §4&§() : int
      {
         return this.§2" §;
      }
      
      public function set §4&§(param1:int) : void
      {
         this.§2" § = param1;
         this.§#!'§.§%!W§ = this.§#!'§.§%!W§ & 4278255615 | this.§2" § << 16 & 16711680;
      }
      
      public function get §2!k§() : int
      {
         return this.§"!P§;
      }
      
      public function set §2!k§(param1:int) : void
      {
         this.§"!P§ = param1;
         this.§#!'§.§%!W§ = this.§#!'§.§%!W§ & 16777215 | this.§"!P§ << 24 & 4278190080;
      }
   }
}
