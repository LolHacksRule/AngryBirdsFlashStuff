package § ^§
{
   import §-!H§.§0!]§;
   import §^^§.StateLevelEditor;
   
   public class §0c§
   {
      
      private static var §`!z§:§0c§;
       
      
      private var §=7§:StateLevelEditor;
      
      private var §`v§:§,!,§;
      
      private var §=!O§:§9"?§;
      
      private var §#!J§:§0";§;
      
      private var §0!4§:§`""§;
      
      private var §91§:§<!#§;
      
      private var §=S§:§&! §;
      
      private var §1e§:§%!4§;
      
      private var §?t§:§>M§;
      
      private var §4&§:§2";§;
      
      private var §#!]§:Vector.<§-!"§>;
      
      public function §0c§(param1:StateLevelEditor)
      {
         var _loc2_:§-!"§ = null;
         this.§#!]§ = new Vector.<§-!"§>();
         super();
         §`!z§ = this;
         this.§=7§ = param1;
         this.§1e§ = new §%!4§(this);
         this.§`v§ = new §,!,§(this);
         this.§?t§ = new §>M§();
         this.§0!4§ = new §`""§(this);
         this.§=S§ = new §&! §(this);
         this.§#!J§ = new §0";§(this);
         this.§=!O§ = new §9"?§(this);
         this.§91§ = new §<!#§(this);
         this.§4&§ = new §2";§(this);
         (AngryBirdsFP11.§"!c§ as §0!]§).§;!6§(this.§4&§);
         this.§#!]§.push(this.§1e§);
         this.§#!]§.push(this.§=S§);
         this.§#!]§.push(this.§91§);
         this.§#!]§.push(this.§=!O§);
         this.§#!]§.push(this.§#!J§);
         this.§#!]§.push(this.§`v§);
         this.§#!]§.push(this.§0!4§);
         this.§#!]§.push(this.§?t§);
         this.§#!]§.push(this.§4&§);
         for each(_loc2_ in this.§#!]§)
         {
            _loc2_.initialize();
         }
      }
      
      public static function get §7!?§() : §0c§
      {
         return §`!z§;
      }
      
      public function activate() : void
      {
         var _loc1_:§-!"§ = null;
         for each(_loc1_ in this.§#!]§)
         {
            _loc1_.activate();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§-!"§ = null;
         for each(_loc2_ in this.§#!]§)
         {
            _loc2_.update(param1);
         }
      }
      
      public function get §!A§() : StateLevelEditor
      {
         return this.§=7§;
      }
      
      public function get §0!Y§() : §,!,§
      {
         return this.§`v§;
      }
      
      public function get §6%§() : §%!4§
      {
         return this.§1e§;
      }
      
      public function get §8!9§() : §9"?§
      {
         return this.§=!O§;
      }
      
      public function get §[c§() : §0";§
      {
         return this.§#!J§;
      }
      
      public function get §^!'§() : §`""§
      {
         return this.§0!4§;
      }
      
      public function get §+"9§() : §<!#§
      {
         return this.§91§;
      }
      
      public function get §[s§() : §>M§
      {
         return this.§?t§;
      }
      
      public function get §8j§() : §&! §
      {
         return this.§=S§;
      }
      
      public function get §-h§() : §2";§
      {
         return this.§4&§;
      }
   }
}
