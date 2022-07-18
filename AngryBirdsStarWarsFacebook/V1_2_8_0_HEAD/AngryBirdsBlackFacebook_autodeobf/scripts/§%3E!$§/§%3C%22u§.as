package §>!$§
{
   import §^V§.§8F§;
   import §^V§.Logging;
   
   public final class §<"u§
   {
      
      private static const L:§8F§ = Logging.§,S§(§<"u§);
       
      
      private var §>#6§:§%l§;
      
      public var §<"q§:§%l§;
      
      public function §<"u§(param1:§%l§ = null)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         this.§4"T§ = param1;
      }
      
      public function §]!D§() : *
      {
         if(this.§<"q§ == null)
         {
            return null;
         }
         this.§<"q§ = this.§<"q§.§]!D§;
         if(this.§<"q§ == null)
         {
            return null;
         }
         return this.§<"q§.data;
      }
      
      public function get data() : *
      {
         if(this.§<"q§ == null)
         {
            return null;
         }
         return this.§<"q§.data;
      }
      
      public function set §4"T§(param1:§%l§) : void
      {
         this.§>#6§ = param1;
         this.§<"q§ = param1.§["4§();
      }
      
      public function §>"k§() : *
      {
         this.§<"q§.§>"k§();
      }
      
      public function get §4"T§() : §%l§
      {
         return this.§>#6§;
      }
   }
}
