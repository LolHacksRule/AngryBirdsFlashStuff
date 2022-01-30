package §!q§
{
   import §!!+§.StateLevelEditor;
   import §1!p§.§`!#§;
   
   public class §84§
   {
      
      private static var §,5§:§84§;
       
      
      private var §!T§:StateLevelEditor;
      
      private var §+2§:§"@§;
      
      private var §7! §:§!"6§;
      
      private var §-<§:§9!F§;
      
      private var §@!4§:§!E§;
      
      private var §6!<§:§3f§;
      
      private var §@k§:§<m§;
      
      private var §0H§:§;@§;
      
      private var §6!D§:§-7§;
      
      private var §1L§:§5$§;
      
      private var §8!z§:Vector.<§2j§>;
      
      public function §84§(param1:StateLevelEditor)
      {
         var _loc2_:§2j§ = null;
         this.§8!z§ = new Vector.<§2j§>();
         super();
         this.§!T§ = param1;
         this.§0H§ = new §;@§(this);
         this.§+2§ = new §"@§(this);
         this.§6!D§ = new §-7§(this);
         this.§@!4§ = new §!E§(this);
         this.§@k§ = new §<m§(this);
         this.§-<§ = new §9!F§(this);
         this.§7! § = new §!"6§(this);
         this.§6!<§ = new §3f§(this);
         this.§1L§ = new §5$§(this);
         (AngryBirdsFP11.§<U§ as §`!#§).§8P§(this.§1L§);
         this.§8!z§.push(this.§0H§);
         this.§8!z§.push(this.§@k§);
         this.§8!z§.push(this.§6!<§);
         this.§8!z§.push(this.§7! §);
         this.§8!z§.push(this.§-<§);
         this.§8!z§.push(this.§+2§);
         this.§8!z§.push(this.§@!4§);
         this.§8!z§.push(this.§6!D§);
         this.§8!z§.push(this.§1L§);
         for each(_loc2_ in this.§8!z§)
         {
            _loc2_.initialize();
         }
         §,5§ = this;
      }
      
      public static function get §,l§() : §84§
      {
         return §,5§;
      }
      
      public function activate() : void
      {
         var _loc1_:§2j§ = null;
         for each(_loc1_ in this.§8!z§)
         {
            _loc1_.activate();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§2j§ = null;
         for each(_loc2_ in this.§8!z§)
         {
            _loc2_.update(param1);
         }
      }
      
      public function get §<B§() : StateLevelEditor
      {
         return this.§!T§;
      }
      
      public function get §>s§() : §"@§
      {
         return this.§+2§;
      }
      
      public function get §"j§() : §;@§
      {
         return this.§0H§;
      }
      
      public function get §02§() : §!"6§
      {
         return this.§7! §;
      }
      
      public function get §9"3§() : §9!F§
      {
         return this.§-<§;
      }
      
      public function get §4!v§() : §!E§
      {
         return this.§@!4§;
      }
      
      public function get §@"0§() : §3f§
      {
         return this.§6!<§;
      }
      
      public function get §'_§() : §-7§
      {
         return this.§6!D§;
      }
      
      public function get §05§() : §<m§
      {
         return this.§@k§;
      }
      
      public function get §!"1§() : §5$§
      {
         return this.§1L§;
      }
   }
}
