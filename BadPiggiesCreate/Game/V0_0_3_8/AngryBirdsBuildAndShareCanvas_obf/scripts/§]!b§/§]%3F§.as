package §]!b§
{
   import §!",§.StateLevelEditor;
   import §4!7§.§]!1§;
   import §9e§.§"!e§;
   
   public class §]?§
   {
      
      private static var §'!t§:§]?§;
       
      
      private var § !=§:StateLevelEditor;
      
      private var §1"1§:§0!6§;
      
      private var §-!s§:§;D§;
      
      private var §&!5§:§?8§;
      
      private var §7!!§:§4A§;
      
      private var §2I§:§#Z§;
      
      private var §>!J§:§0<§;
      
      private var §]! §:§40§;
      
      private var §%B§:§&!f§;
      
      private var §"!d§:§0!'§;
      
      private var §,!f§:Vector.<§9h§>;
      
      public function §]?§(param1:StateLevelEditor)
      {
         var _loc2_:§9h§ = null;
         this.§,!f§ = new Vector.<§9h§>();
         super();
         this.§ !=§ = param1;
         this.§]! § = new §40§(this);
         this.§1"1§ = new §0!6§(this);
         this.§%B§ = new §&!f§(this);
         this.§7!!§ = new §4A§(this);
         this.§>!J§ = new §0<§(this);
         this.§&!5§ = new §?8§(this);
         this.§-!s§ = new §;D§(this);
         this.§2I§ = new §#Z§(this);
         this.§"!d§ = new §0!'§(this);
         (AngryBirdsFP11.§8!v§ as §"!e§).§<!3§(this.§"!d§);
         this.§,!f§.push(this.§]! §);
         this.§,!f§.push(this.§>!J§);
         this.§,!f§.push(this.§2I§);
         this.§,!f§.push(this.§-!s§);
         this.§,!f§.push(this.§&!5§);
         this.§,!f§.push(this.§1"1§);
         this.§,!f§.push(this.§7!!§);
         this.§,!f§.push(this.§%B§);
         this.§,!f§.push(this.§"!d§);
         for each(_loc2_ in this.§,!f§)
         {
            _loc2_.initialize();
         }
         §'!t§ = this;
      }
      
      public static function get §9j§() : §]?§
      {
         return §'!t§;
      }
      
      public function activate() : void
      {
         var _loc1_:§9h§ = null;
         for each(_loc1_ in this.§,!f§)
         {
            §]!1§.§9j§.§+!n§(_loc1_);
         }
         for each(_loc1_ in this.§,!f§)
         {
            _loc1_.activate();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§9h§ = null;
         for each(_loc2_ in this.§,!f§)
         {
            _loc2_.update(param1);
         }
      }
      
      public function get §%H§() : StateLevelEditor
      {
         return this.§ !=§;
      }
      
      public function get §!!@§() : §0!6§
      {
         return this.§1"1§;
      }
      
      public function get §4+§() : §40§
      {
         return this.§]! §;
      }
      
      public function get §["§() : §;D§
      {
         return this.§-!s§;
      }
      
      public function get §6!A§() : §?8§
      {
         return this.§&!5§;
      }
      
      public function get §5;§() : §4A§
      {
         return this.§7!!§;
      }
      
      public function get §>f§() : §#Z§
      {
         return this.§2I§;
      }
      
      public function get §"!#§() : §&!f§
      {
         return this.§%B§;
      }
      
      public function get §&!m§() : §0<§
      {
         return this.§>!J§;
      }
      
      public function get §7!>§() : §0!'§
      {
         return this.§"!d§;
      }
   }
}
