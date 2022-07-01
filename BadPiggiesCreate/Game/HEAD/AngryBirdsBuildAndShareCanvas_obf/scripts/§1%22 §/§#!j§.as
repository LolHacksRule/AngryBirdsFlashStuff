package §1" §
{
   import §7!@§.§+`§;
   import §;b§.StateLevelEditor;
   
   public class §#!j§
   {
      
      private static var §+!u§:§#!j§;
       
      
      private var §5"&§:StateLevelEditor;
      
      private var §0!M§:§^"&§;
      
      private var §6!F§:§<!,§;
      
      private var §>!B§:§0"$§;
      
      private var §-G§:§`!]§;
      
      private var §;8§:§4"?§;
      
      private var §3B§:§1!,§;
      
      private var §+">§:§6!2§;
      
      private var §'"'§:§@"?§;
      
      private var §87§:§%&§;
      
      private var §="-§:Vector.<§4!x§>;
      
      public function §#!j§(param1:StateLevelEditor)
      {
         var _loc2_:§4!x§ = null;
         this.§="-§ = new Vector.<§4!x§>();
         super();
         §+!u§ = this;
         this.§5"&§ = param1;
         this.§+">§ = new §6!2§(this);
         this.§0!M§ = new §^"&§(this);
         this.§'"'§ = new §@"?§();
         this.§-G§ = new §`!]§(this);
         this.§3B§ = new §1!,§(this);
         this.§>!B§ = new §0"$§(this);
         this.§6!F§ = new §<!,§(this);
         this.§;8§ = new §4"?§(this);
         this.§87§ = new §%&§(this);
         (AngryBirdsFP11.§>!7§ as §+`§).§!!F§(this.§87§);
         this.§="-§.push(this.§+">§);
         this.§="-§.push(this.§3B§);
         this.§="-§.push(this.§;8§);
         this.§="-§.push(this.§6!F§);
         this.§="-§.push(this.§>!B§);
         this.§="-§.push(this.§0!M§);
         this.§="-§.push(this.§-G§);
         this.§="-§.push(this.§'"'§);
         this.§="-§.push(this.§87§);
         for each(_loc2_ in this.§="-§)
         {
            _loc2_.initialize();
         }
      }
      
      public static function get §[E§() : §#!j§
      {
         return §+!u§;
      }
      
      public function activate() : void
      {
         var _loc1_:§4!x§ = null;
         for each(_loc1_ in this.§="-§)
         {
            _loc1_.activate();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§4!x§ = null;
         for each(_loc2_ in this.§="-§)
         {
            _loc2_.update(param1);
         }
      }
      
      public function get §<!_§() : StateLevelEditor
      {
         return this.§5"&§;
      }
      
      public function get §"L§() : §^"&§
      {
         return this.§0!M§;
      }
      
      public function get §0"!§() : §6!2§
      {
         return this.§+">§;
      }
      
      public function get §3d§() : §<!,§
      {
         return this.§6!F§;
      }
      
      public function get §^!b§() : §0"$§
      {
         return this.§>!B§;
      }
      
      public function get §%8§() : §`!]§
      {
         return this.§-G§;
      }
      
      public function get §9L§() : §4"?§
      {
         return this.§;8§;
      }
      
      public function get §5l§() : §@"?§
      {
         return this.§'"'§;
      }
      
      public function get §&!F§() : §1!,§
      {
         return this.§3B§;
      }
      
      public function get §0!;§() : §%&§
      {
         return this.§87§;
      }
   }
}
