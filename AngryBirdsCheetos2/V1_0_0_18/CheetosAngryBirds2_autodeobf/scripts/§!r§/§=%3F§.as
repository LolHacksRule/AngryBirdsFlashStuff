package §!r§
{
   import §!V§.§!!i§;
   import §,§.§ p§;
   import §]!a§.Texture;
   import §`h§.§@!Z§;
   
   public class §=?§
   {
      
      public static const §[b§:int = 0;
      
      public static const §&H§:int = 6;
      
      public static const §<P§:int = 7;
      
      public static const §6M§:int = 8;
      
      public static const §=K§:int = 3;
      
      public static const §!!"§:int = 5;
      
      public static const §<![§:int = 2;
      
      public static const §7![§:int = 1;
       
      
      public var §>p§:String;
      
      public var §=J§:int;
      
      protected var §6!1§:§!!i§;
      
      public var §4;§:Number;
      
      public var §if §:String;
      
      public var §2R§:Number = 1;
      
      public var § !G§:Number;
      
      private var §5!%§:Boolean = false;
      
      private var §]'§:String;
      
      private var §+W§:int;
      
      private var §4`§:§2k§;
      
      private var §9`§:§9!,§;
      
      private var §+`§:§"B§;
      
      public function §=?§(param1:String, param2:int, param3:§9!,§, param4:§"B§, param5:§2k§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§>p§ = param1;
         this.§=J§ = param2;
         this.§9`§ = param3;
         this.§]'§ = param12;
         this.§+W§ = param13;
         this.§5!%§ = param11;
         this.§+`§ = param4;
         this.§4`§ = param5;
         this.§6!1§ = new §!!i§(param6);
         this.§if § = param7;
         this.§2R§ = param8;
         if(this.§2R§ <= 0)
         {
            this.§2R§ = 1;
         }
         this.§ !G§ = param9;
         this.§4;§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§5!%§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§]'§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§+W§;
      }
      
      public function §@W§() : int
      {
         return this.shape.§'!3§();
      }
      
      public function §&!0§() : int
      {
         return this.shape.§[k§();
      }
      
      public function §]!?§() : int
      {
         return this.shape.§>;§();
      }
      
      public function §!!_§() : Number
      {
         return this.§9`§.getValue(§9!,§.§?!=§);
      }
      
      public function §4!?§() : Number
      {
         return Number(this.§9`§.getValue(§9!,§.§7!$§));
      }
      
      public function §3!B§() : Number
      {
         return Number(this.§9`§.getValue(§9!,§.§;S§));
      }
      
      public function §,!c§() : Number
      {
         return Number(this.§9`§.getValue(§9!,§.§ !0§));
      }
      
      public function §"Q§() : Number
      {
         return Number(this.§9`§.getValue(§9!,§.§&b§));
      }
      
      public function §2!#§() : Number
      {
         return Number(this.§9`§.getValue(§9!,§.§3z§));
      }
      
      public function §#!,§() : Number
      {
         return Number(this.§9`§.getValue(§9!,§.§^y§));
      }
      
      public function §2_§() : int
      {
         return this.§4;§;
      }
      
      public function get material() : §9!,§
      {
         return this.§9`§;
      }
      
      public function get shape() : §2k§
      {
         var _loc1_:Texture = null;
         if(!this.§4`§)
         {
            _loc1_ = §@!Z§.§;!,§.§#U§.§;5§(this.§>p§).getFrame(0).texture;
            this.§4`§ = new §2k§(this.§>p§,"Rectangle",_loc1_.width * § p§.§]!E§ / 2,_loc1_.height * § p§.§]!E§ / 2);
         }
         return this.§4`§;
      }
      
      public function get §7=§() : §"B§
      {
         return this.§+`§;
      }
      
      public function get score() : int
      {
         return this.§6!1§.getValue();
      }
   }
}
