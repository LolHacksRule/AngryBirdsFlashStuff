package §'s§
{
   import §+!,§.b2internal;
   
   use namespace b2internal;
   
   public class §+n§
   {
       
      
      b2internal var § P§:int;
      
      b2internal var §switch§:int;
      
      b2internal var §?!3§:int;
      
      b2internal var §]<§:int;
      
      b2internal var §@!e§:b2ContactID;
      
      public function §+n§()
      {
         super();
      }
      
      public function get §^!F§() : int
      {
         return this.§ P§;
      }
      
      public function set §^!F§(param1:int) : void
      {
         this.§ P§ = param1;
         this.§@!e§.§ k§ = this.§@!e§.§ k§ & 4294967040 | this.§ P§ & 255;
      }
      
      public function get §[J§() : int
      {
         return this.§switch§;
      }
      
      public function set §[J§(param1:int) : void
      {
         this.§switch§ = param1;
         this.§@!e§.§ k§ = this.§@!e§.§ k§ & 4294902015 | this.§switch§ << 8 & 65280;
      }
      
      public function get §[O§() : int
      {
         return this.§?!3§;
      }
      
      public function set §[O§(param1:int) : void
      {
         this.§?!3§ = param1;
         this.§@!e§.§ k§ = this.§@!e§.§ k§ & 4278255615 | this.§?!3§ << 16 & 16711680;
      }
      
      public function get §8_§() : int
      {
         return this.§]<§;
      }
      
      public function set §8_§(param1:int) : void
      {
         this.§]<§ = param1;
         this.§@!e§.§ k§ = this.§@!e§.§ k§ & 16777215 | this.§]<§ << 24 & 4278190080;
      }
   }
}
