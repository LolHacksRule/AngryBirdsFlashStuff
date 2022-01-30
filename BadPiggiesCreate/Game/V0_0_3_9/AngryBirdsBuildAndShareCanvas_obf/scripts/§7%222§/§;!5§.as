package §7"2§
{
   import § !%§.§^2§;
   import §%!n§.§7P§;
   import §=;§.StateLevelEditor;
   
   public class §;!5§
   {
      
      private static var §,!X§:§;!5§;
       
      
      private var § ^§:StateLevelEditor;
      
      private var §#d§:§+u§;
      
      private var §!!G§:§8!m§;
      
      private var §=!`§:§5f§;
      
      private var §]!h§:§>!w§;
      
      private var §`!U§:§;!2§;
      
      private var §;"+§:§#!a§;
      
      private var §^3§:§ 2§;
      
      private var §?@§:§[n§;
      
      private var §<!r§:§&!w§;
      
      private var §55§:Vector.<§!"1§>;
      
      public function §;!5§(param1:StateLevelEditor)
      {
         var _loc2_:§!"1§ = null;
         this.§55§ = new Vector.<§!"1§>();
         super();
         this.§ ^§ = param1;
         this.§^3§ = new § 2§(this);
         this.§#d§ = new §+u§(this);
         this.§?@§ = new §[n§(this);
         this.§]!h§ = new §>!w§(this);
         this.§;"+§ = new §#!a§(this);
         this.§=!`§ = new §5f§(this);
         this.§!!G§ = new §8!m§(this);
         this.§`!U§ = new §;!2§(this);
         this.§<!r§ = new §&!w§(this);
         (AngryBirdsFP11.§5!c§ as §^2§).§'D§(this.§<!r§);
         this.§55§.push(this.§^3§);
         this.§55§.push(this.§;"+§);
         this.§55§.push(this.§`!U§);
         this.§55§.push(this.§!!G§);
         this.§55§.push(this.§=!`§);
         this.§55§.push(this.§#d§);
         this.§55§.push(this.§]!h§);
         this.§55§.push(this.§?@§);
         this.§55§.push(this.§<!r§);
         for each(_loc2_ in this.§55§)
         {
            _loc2_.initialize();
         }
         §,!X§ = this;
      }
      
      public static function get §'!o§() : §;!5§
      {
         return §,!X§;
      }
      
      public function activate() : void
      {
         var _loc1_:§!"1§ = null;
         for each(_loc1_ in this.§55§)
         {
            §7P§.§'!o§.§7b§(_loc1_);
         }
         for each(_loc1_ in this.§55§)
         {
            _loc1_.activate();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§!"1§ = null;
         for each(_loc2_ in this.§55§)
         {
            _loc2_.update(param1);
         }
      }
      
      public function get §[U§() : StateLevelEditor
      {
         return this.§ ^§;
      }
      
      public function get §%&§() : §+u§
      {
         return this.§#d§;
      }
      
      public function get §94§() : § 2§
      {
         return this.§^3§;
      }
      
      public function get §,!%§() : §8!m§
      {
         return this.§!!G§;
      }
      
      public function get §#9§() : §5f§
      {
         return this.§=!`§;
      }
      
      public function get §!!7§() : §>!w§
      {
         return this.§]!h§;
      }
      
      public function get §<!B§() : §;!2§
      {
         return this.§`!U§;
      }
      
      public function get §@=§() : §[n§
      {
         return this.§?@§;
      }
      
      public function get §=$§() : §#!a§
      {
         return this.§;"+§;
      }
      
      public function get §%V§() : §&!w§
      {
         return this.§<!r§;
      }
   }
}
