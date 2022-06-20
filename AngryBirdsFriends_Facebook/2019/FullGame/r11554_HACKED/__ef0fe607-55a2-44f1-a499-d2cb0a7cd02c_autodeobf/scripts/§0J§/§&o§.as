package §0J§
{
   import §[!3§.b2internal;
   
   use namespace b2internal;
   
   public class §&o§
   {
       
      
      b2internal var §4$3§:int;
      
      b2internal var § i§:int;
      
      b2internal var §1$1§:int;
      
      b2internal var §+x§:int;
      
      b2internal var §5$4§:b2ContactID;
      
      public function §&o§()
      {
         super();
      }
      
      public function get §7[§() : int
      {
         return this.§4$3§;
      }
      
      public function set §7[§(param1:int) : void
      {
         this.§4$3§ = param1;
         this.§5$4§.§9s§ = this.§5$4§.§9s§ & 4294967040 | this.§4$3§ & 255;
      }
      
      public function get §%#B§() : int
      {
         return this.§ i§;
      }
      
      public function set §%#B§(param1:int) : void
      {
         this.§ i§ = param1;
         this.§5$4§.§9s§ = this.§5$4§.§9s§ & 4294902015 | this.§ i§ << 8 & 65280;
      }
      
      public function get § 6§() : int
      {
         return this.§1$1§;
      }
      
      public function set § 6§(param1:int) : void
      {
         this.§1$1§ = param1;
         this.§5$4§.§9s§ = this.§5$4§.§9s§ & 4278255615 | this.§1$1§ << 16 & 16711680;
      }
      
      public function get §0e§() : int
      {
         return this.§+x§;
      }
      
      public function set §0e§(param1:int) : void
      {
         this.§+x§ = param1;
         this.§5$4§.§9s§ = this.§5$4§.§9s§ & 16777215 | this.§+x§ << 24 & 4278190080;
      }
   }
}
