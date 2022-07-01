package §2!5§
{
   import § J§.StateLevelEditor;
   import §"!2§.§>9§;
   
   public class §0!X§
   {
      
      private static var §;A§:§0!X§;
       
      
      private var §;!m§:StateLevelEditor;
      
      private var §6#§:§ m§;
      
      private var §]!H§:§-!c§;
      
      private var §?"#§:§?j§;
      
      private var §1!M§:§^$§;
      
      private var §?l§:§!r§;
      
      private var §?"6§:§;p§;
      
      private var §0!8§:§"^§;
      
      private var §1!6§:§9!3§;
      
      private var §7]§:§7[§;
      
      private var §,!Z§:Vector.<§4!]§>;
      
      public function §0!X§(param1:StateLevelEditor)
      {
         var _loc2_:§4!]§ = null;
         this.§,!Z§ = new Vector.<§4!]§>();
         super();
         this.§;!m§ = param1;
         this.§0!8§ = new §"^§(this);
         this.§6#§ = new § m§(this);
         this.§1!6§ = new §9!3§(this);
         this.§1!M§ = new §^$§(this);
         this.§?"6§ = new §;p§(this);
         this.§?"#§ = new §?j§(this);
         this.§]!H§ = new §-!c§(this);
         this.§?l§ = new §!r§(this);
         this.§7]§ = new §7[§(this);
         (AngryBirdsFP11.§8!I§ as §>9§).§2!>§(this.§7]§);
         this.§,!Z§.push(this.§0!8§);
         this.§,!Z§.push(this.§?"6§);
         this.§,!Z§.push(this.§?l§);
         this.§,!Z§.push(this.§]!H§);
         this.§,!Z§.push(this.§?"#§);
         this.§,!Z§.push(this.§6#§);
         this.§,!Z§.push(this.§1!M§);
         this.§,!Z§.push(this.§1!6§);
         this.§,!Z§.push(this.§7]§);
         for each(_loc2_ in this.§,!Z§)
         {
            _loc2_.initialize();
         }
         §;A§ = this;
      }
      
      public static function get §if §() : §0!X§
      {
         return §;A§;
      }
      
      public function activate() : void
      {
         var _loc1_:§4!]§ = null;
         for each(_loc1_ in this.§,!Z§)
         {
            _loc1_.activate();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§4!]§ = null;
         for each(_loc2_ in this.§,!Z§)
         {
            _loc2_.update(param1);
         }
      }
      
      public function get §!e§() : StateLevelEditor
      {
         return this.§;!m§;
      }
      
      public function get §&8§() : § m§
      {
         return this.§6#§;
      }
      
      public function get §@s§() : §"^§
      {
         return this.§0!8§;
      }
      
      public function get § 5§() : §-!c§
      {
         return this.§]!H§;
      }
      
      public function get §,A§() : §?j§
      {
         return this.§?"#§;
      }
      
      public function get §0!y§() : §^$§
      {
         return this.§1!M§;
      }
      
      public function get §2s§() : §!r§
      {
         return this.§?l§;
      }
      
      public function get §>!0§() : §9!3§
      {
         return this.§1!6§;
      }
      
      public function get §;d§() : §;p§
      {
         return this.§?"6§;
      }
      
      public function get §="'§() : §7[§
      {
         return this.§7]§;
      }
   }
}
