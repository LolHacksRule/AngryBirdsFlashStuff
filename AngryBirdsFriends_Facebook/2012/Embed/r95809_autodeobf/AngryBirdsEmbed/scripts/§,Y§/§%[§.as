package §,Y§
{
   import §&!7§.Texture;
   import §+!%§.§'!"§;
   import §-l§.§?'§;
   import §while§.§03§;
   
   public class §%[§
   {
      
      public static const §;G§:int = 0;
      
      public static const §!h§:int = 6;
      
      public static const §%=§:int = 7;
      
      public static const §>7§:int = 8;
      
      public static const §"!8§:int = 3;
      
      public static const §`r§:int = 5;
      
      public static const §@@§:int = 2;
      
      public static const §-!§:int = 1;
       
      
      public var §5!#§:String;
      
      public var §?B§:int;
      
      protected var §,!H§:§03§;
      
      public var §@-§:Number;
      
      public var §4h§:String;
      
      public var §@x§:Number = 1;
      
      public var §&?§:Number;
      
      private var §%8§:Boolean = false;
      
      private var § 5§:§^!1§;
      
      private var §-"§:§]b§;
      
      private var §&b§:§5F§;
      
      public function §%[§(param1:String, param2:int, param3:§]b§, param4:§5F§, param5:§^!1§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super();
         this.§5!#§ = param1;
         this.§?B§ = param2;
         this.§-"§ = param3;
         this.§%8§ = param11;
         this.§&b§ = param4;
         this.§ 5§ = param5;
         this.§,!H§ = new §03§(param6);
         this.§4h§ = param7;
         this.§@x§ = param8;
         if(this.§@x§ <= 0)
         {
            this.§@x§ = 1;
         }
         this.§&?§ = param9;
         this.§@-§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§%8§;
      }
      
      public function §5@§() : int
      {
         return this.shape.§^u§();
      }
      
      public function §0L§() : int
      {
         return this.shape.§#!C§();
      }
      
      public function §+4§() : int
      {
         return this.shape.§"R§();
      }
      
      public function §8J§() : Number
      {
         return this.§-"§.getValue(§]b§.§"]§);
      }
      
      public function §^H§() : Number
      {
         return Number(this.§-"§.getValue(§]b§.§8O§));
      }
      
      public function §]!9§() : Number
      {
         return Number(this.§-"§.getValue(§]b§.§7!=§));
      }
      
      public function §+!+§() : Number
      {
         return Number(this.§-"§.getValue(§]b§.§-'§));
      }
      
      public function §;6§() : Number
      {
         return Number(this.§-"§.getValue(§]b§.§"!A§));
      }
      
      public function §,!#§() : Number
      {
         return Number(this.§-"§.getValue(§]b§.§;!3§));
      }
      
      public function §3f§() : Number
      {
         return Number(this.§-"§.getValue(§]b§.§%H§));
      }
      
      public function §'!C§() : int
      {
         return this.§@-§;
      }
      
      public function get material() : §]b§
      {
         return this.§-"§;
      }
      
      public function get shape() : §^!1§
      {
         var _loc1_:Texture = null;
         if(!this.§ 5§)
         {
            _loc1_ = §?'§.§5!§.§@!5§.§`!-§(this.§5!#§).getFrame(0).texture;
            this.§ 5§ = new §^!1§(this.§5!#§,"Rectangle",_loc1_.width * §'!"§.§%!8§ / 2,_loc1_.height * §'!"§.§%!8§ / 2);
         }
         return this.§ 5§;
      }
      
      public function get §9!+§() : §5F§
      {
         return this.§&b§;
      }
      
      public function get score() : int
      {
         return this.§,!H§.getValue();
      }
   }
}
