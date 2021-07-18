package §>!#§
{
   public class §&"z§
   {
      
      private static const §'!e§:uint = 2147483646;
      
      private static const §1"C§:int = 16807;
       
      
      private var §@#n§:uint;
      
      public function §&"z§(param1:int = 1)
      {
         super();
         this.§'!C§ = param1;
      }
      
      public function set §'!C§(param1:uint) : void
      {
         if(param1 < 1 || param1 > §'!e§)
         {
            throw new Error("Invalid seed value. Seed must be between 1 and " + §'!e§);
         }
         this.§@#n§ = param1;
      }
      
      public function get §'!C§() : uint
      {
         return this.§@#n§;
      }
      
      public function get §]"9§() : uint
      {
         return this.§'!%§();
      }
      
      public function get §?!8§() : Number
      {
         return this.§'!%§() / int.MAX_VALUE;
      }
      
      private function §'!%§() : uint
      {
         this.§'!C§ = this.§@#n§ * §1"C§ % int.MAX_VALUE;
         return this.§@#n§;
      }
   }
}
