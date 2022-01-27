package §%!#§
{
   import §9!s§.b2internal;
   
   use namespace b2internal;
   
   public class §#3§
   {
       
      
      b2internal var §5"w§:int;
      
      b2internal var §'!C§:int;
      
      b2internal var §;n§:int;
      
      b2internal var §;#6§:int;
      
      b2internal var §[U§:b2ContactID;
      
      public function §#3§()
      {
         super();
      }
      
      public function get §8!8§() : int
      {
         return this.§5"w§;
      }
      
      public function set §8!8§(param1:int) : void
      {
         this.§5"w§ = param1;
         this.§[U§.§!"r§ = this.§[U§.§!"r§ & 4294967040 | this.§5"w§ & 255;
      }
      
      public function get §!;§() : int
      {
         return this.§'!C§;
      }
      
      public function set §!;§(param1:int) : void
      {
         this.§'!C§ = param1;
         this.§[U§.§!"r§ = this.§[U§.§!"r§ & 4294902015 | this.§'!C§ << 8 & 65280;
      }
      
      public function get §]x§() : int
      {
         return this.§;n§;
      }
      
      public function set §]x§(param1:int) : void
      {
         this.§;n§ = param1;
         this.§[U§.§!"r§ = this.§[U§.§!"r§ & 4278255615 | this.§;n§ << 16 & 16711680;
      }
      
      public function get §5B§() : int
      {
         return this.§;#6§;
      }
      
      public function set §5B§(param1:int) : void
      {
         this.§;#6§ = param1;
         this.§[U§.§!"r§ = this.§[U§.§!"r§ & 16777215 | this.§;#6§ << 24 & 4278190080;
      }
   }
}
