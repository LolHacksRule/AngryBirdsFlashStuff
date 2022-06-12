package §9@§
{
   public class §99§
   {
      
      private static const §%!u§:uint = 2147483646;
      
      private static const §-j§:int = 16807;
       
      
      private var §^5§:uint;
      
      public function §99§(param1:int = 1)
      {
         super();
         this.§"O§ = param1;
      }
      
      public function set §"O§(param1:uint) : void
      {
         if(param1 < 1 || param1 > §%!u§)
         {
            throw new Error("Invalid seed value. Seed must be between 1 and " + §%!u§);
         }
         this.§^5§ = param1;
      }
      
      public function get §"O§() : uint
      {
         return this.§^5§;
      }
      
      public function get §#g§() : uint
      {
         return this.§%j§();
      }
      
      public function get §@"&§() : Number
      {
         return this.§%j§() / int.MAX_VALUE;
      }
      
      private function §%j§() : uint
      {
         this.§"O§ = this.§^5§ * §-j§ % int.MAX_VALUE;
         return this.§^5§;
      }
   }
}
