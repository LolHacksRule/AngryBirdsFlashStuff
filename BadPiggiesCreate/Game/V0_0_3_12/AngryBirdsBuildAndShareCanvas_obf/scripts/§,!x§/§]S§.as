package §,!x§
{
   import §7N§.StateLevelEditor;
   import §>";§.§#§;
   
   public class §]S§
   {
      
      private static var §%!Y§:§]S§;
       
      
      private var §=!<§:StateLevelEditor;
      
      private var §7H§:§'!"§;
      
      private var §#T§:§^[§;
      
      private var §3!2§:§9I§;
      
      private var §^!N§:§,a§;
      
      private var §"!P§:§%?§;
      
      private var §=!M§:§9V§;
      
      private var §^"7§:§1g§;
      
      private var §3!K§:§ !a§;
      
      private var §72§:§!U§;
      
      private var § D§:Vector.<§]!'§>;
      
      public function §]S§(param1:StateLevelEditor)
      {
         var _loc2_:§]!'§ = null;
         this.§ D§ = new Vector.<§]!'§>();
         super();
         §%!Y§ = this;
         this.§=!<§ = param1;
         this.§^"7§ = new §1g§(this);
         this.§7H§ = new §'!"§(this);
         this.§3!K§ = new § !a§();
         this.§^!N§ = new §,a§(this);
         this.§=!M§ = new §9V§(this);
         this.§3!2§ = new §9I§(this);
         this.§#T§ = new §^[§(this);
         this.§"!P§ = new §%?§(this);
         this.§72§ = new §!U§(this);
         (AngryBirdsFP11.§`!j§ as §#§).§3m§(this.§72§);
         this.§ D§.push(this.§^"7§);
         this.§ D§.push(this.§=!M§);
         this.§ D§.push(this.§"!P§);
         this.§ D§.push(this.§#T§);
         this.§ D§.push(this.§3!2§);
         this.§ D§.push(this.§7H§);
         this.§ D§.push(this.§^!N§);
         this.§ D§.push(this.§3!K§);
         this.§ D§.push(this.§72§);
         for each(_loc2_ in this.§ D§)
         {
            _loc2_.initialize();
         }
      }
      
      public static function get § "!§() : §]S§
      {
         return §%!Y§;
      }
      
      public function activate() : void
      {
         var _loc1_:§]!'§ = null;
         for each(_loc1_ in this.§ D§)
         {
            _loc1_.activate();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§]!'§ = null;
         for each(_loc2_ in this.§ D§)
         {
            _loc2_.update(param1);
         }
      }
      
      public function get §]!c§() : StateLevelEditor
      {
         return this.§=!<§;
      }
      
      public function get §7I§() : §'!"§
      {
         return this.§7H§;
      }
      
      public function get §<" §() : §1g§
      {
         return this.§^"7§;
      }
      
      public function get §<!z§() : §^[§
      {
         return this.§#T§;
      }
      
      public function get §;o§() : §9I§
      {
         return this.§3!2§;
      }
      
      public function get §;!]§() : §,a§
      {
         return this.§^!N§;
      }
      
      public function get §3!V§() : §%?§
      {
         return this.§"!P§;
      }
      
      public function get §3<§() : § !a§
      {
         return this.§3!K§;
      }
      
      public function get §=!P§() : §9V§
      {
         return this.§=!M§;
      }
      
      public function get §^"9§() : §!U§
      {
         return this.§72§;
      }
   }
}
