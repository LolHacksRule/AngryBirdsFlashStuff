package §%!a§
{
   import §&$§.§!!R§;
   import §&F§.§>!2§;
   import §0!b§.§#!=§;
   import §6!4§.Texture;
   
   public class §?!9§
   {
      
      public static const §=!$§:int = 0;
      
      public static const §%!"§:int = 6;
      
      public static const §4!K§:int = 7;
      
      public static const §=!B§:int = 8;
      
      public static const §[!e§:int = 3;
      
      public static const §[!,§:int = 5;
      
      public static const §1K§:int = 2;
      
      public static const §&S§:int = 1;
       
      
      public var §=^§:String;
      
      public var §&y§:int;
      
      protected var §!!G§:§!!R§;
      
      public var §]F§:Number;
      
      public var §5!J§:String;
      
      public var §4%§:Number = 1;
      
      public var §>!`§:Number;
      
      private var §'E§:Boolean = false;
      
      private var §#]§:String;
      
      private var §?!=§:int;
      
      private var §=5§:§0m§;
      
      private var §!S§:§ !§;
      
      private var §%!W§:§^!=§;
      
      public function §?!9§(param1:String, param2:int, param3:§ !§, param4:§^!=§, param5:§0m§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§=^§ = param1;
         this.§&y§ = param2;
         this.§!S§ = param3;
         this.§#]§ = param12;
         this.§?!=§ = param13;
         this.§'E§ = param11;
         this.§%!W§ = param4;
         this.§=5§ = param5;
         this.§!!G§ = new §!!R§(param6);
         this.§5!J§ = param7;
         this.§4%§ = param8;
         if(this.§4%§ <= 0)
         {
            this.§4%§ = 1;
         }
         this.§>!`§ = param9;
         this.§]F§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§'E§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§#]§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§?!=§;
      }
      
      public function §import§() : int
      {
         return this.shape.§2!`§();
      }
      
      public function §&H§() : int
      {
         return this.shape.§6<§();
      }
      
      public function §`!>§() : int
      {
         return this.shape.§'!M§();
      }
      
      public function §&!4§() : Number
      {
         return this.§!S§.getValue(§ !§.§2,§);
      }
      
      public function §@7§() : Number
      {
         return Number(this.§!S§.getValue(§ !§.§#w§));
      }
      
      public function §-!9§() : Number
      {
         return Number(this.§!S§.getValue(§ !§.§3g§));
      }
      
      public function §,!d§() : Number
      {
         return Number(this.§!S§.getValue(§ !§.§3!-§));
      }
      
      public function §^;§() : Number
      {
         return Number(this.§!S§.getValue(§ !§.§"!e§));
      }
      
      public function §0P§() : Number
      {
         return Number(this.§!S§.getValue(§ !§.§1!!§));
      }
      
      public function §+!§() : Number
      {
         return Number(this.§!S§.getValue(§ !§.§&!2§));
      }
      
      public function §=F§() : int
      {
         return this.§]F§;
      }
      
      public function get material() : § !§
      {
         return this.§!S§;
      }
      
      public function get shape() : §0m§
      {
         var _loc1_:Texture = null;
         if(!this.§=5§)
         {
            _loc1_ = §#!=§.§&![§.§59§.§@d§(this.§=^§).getFrame(0).texture;
            this.§=5§ = new §0m§(this.§=^§,"Rectangle",_loc1_.width * §>!2§.§9d§ / 2,_loc1_.height * §>!2§.§9d§ / 2);
         }
         return this.§=5§;
      }
      
      public function get §%!P§() : §^!=§
      {
         return this.§%!W§;
      }
      
      public function get score() : int
      {
         return this.§!!G§.getValue();
      }
   }
}
