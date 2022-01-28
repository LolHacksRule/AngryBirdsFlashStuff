package §'i§
{
   import § "@§.StateLevelEditor;
   import §^!y§.§'"#§;
   
   public class §'!;§
   {
      
      private static var §1%§:§'!;§;
       
      
      private var §3H§:StateLevelEditor;
      
      private var §8!S§:§<"!§;
      
      private var §[u§:§2!4§;
      
      private var §[!a§:§+!^§;
      
      private var § !6§:§0!u§;
      
      private var §3<§:§6y§;
      
      private var §^9§:§,"%§;
      
      private var §8"4§:§ "+§;
      
      private var §,o§:§6-§;
      
      private var §8!`§:§5A§;
      
      private var §[!b§:Vector.<§8p§>;
      
      public function §'!;§(param1:StateLevelEditor)
      {
         var _loc2_:§8p§ = null;
         this.§[!b§ = new Vector.<§8p§>();
         super();
         §1%§ = this;
         this.§3H§ = param1;
         this.§8"4§ = new § "+§(this);
         this.§8!S§ = new §<"!§(this);
         this.§,o§ = new §6-§();
         this.§ !6§ = new §0!u§(this);
         this.§^9§ = new §,"%§(this);
         this.§[!a§ = new §+!^§(this);
         this.§[u§ = new §2!4§(this);
         this.§3<§ = new §6y§(this);
         this.§8!`§ = new §5A§(this);
         (AngryBirdsFP11.§>" § as §'"#§).§>!D§(this.§8!`§);
         this.§[!b§.push(this.§8"4§);
         this.§[!b§.push(this.§^9§);
         this.§[!b§.push(this.§3<§);
         this.§[!b§.push(this.§[u§);
         this.§[!b§.push(this.§[!a§);
         this.§[!b§.push(this.§8!S§);
         this.§[!b§.push(this.§ !6§);
         this.§[!b§.push(this.§,o§);
         this.§[!b§.push(this.§8!`§);
         for each(_loc2_ in this.§[!b§)
         {
            _loc2_.initialize();
         }
      }
      
      public static function get §2=§() : §'!;§
      {
         return §1%§;
      }
      
      public function activate() : void
      {
         var _loc1_:§8p§ = null;
         for each(_loc1_ in this.§[!b§)
         {
            _loc1_.activate();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§8p§ = null;
         for each(_loc2_ in this.§[!b§)
         {
            _loc2_.update(param1);
         }
      }
      
      public function get §+"2§() : StateLevelEditor
      {
         return this.§3H§;
      }
      
      public function get §?!W§() : §<"!§
      {
         return this.§8!S§;
      }
      
      public function get §8#§() : § "+§
      {
         return this.§8"4§;
      }
      
      public function get §`!]§() : §2!4§
      {
         return this.§[u§;
      }
      
      public function get §>k§() : §+!^§
      {
         return this.§[!a§;
      }
      
      public function get §1?§() : §0!u§
      {
         return this.§ !6§;
      }
      
      public function get §4!4§() : §6y§
      {
         return this.§3<§;
      }
      
      public function get §<!B§() : §6-§
      {
         return this.§,o§;
      }
      
      public function get §4p§() : §,"%§
      {
         return this.§^9§;
      }
      
      public function get §<J§() : §5A§
      {
         return this.§8!`§;
      }
   }
}
