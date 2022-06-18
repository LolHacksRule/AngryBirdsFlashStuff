package §5!$§
{
   import §!!V§.§&I§;
   import §"!S§.§"_§;
   import §`!@§.§^v§;
   import §switch§.Texture;
   
   public class §!!H§
   {
      
      public static const §5k§:int = 0;
      
      public static const §4E§:int = 6;
      
      public static const §7h§:int = 7;
      
      public static const §+!5§:int = 8;
      
      public static const §6!B§:int = 3;
      
      public static const §25§:int = 5;
      
      public static const §-I§:int = 2;
      
      public static const §[L§:int = 1;
       
      
      public var §+!J§:String;
      
      public var §@!$§:int;
      
      protected var §[!I§:§^v§;
      
      public var §6![§:Number;
      
      public var §&!,§:String;
      
      public var §0"§:Number = 1;
      
      public var §6!;§:Number;
      
      private var §0!O§:Boolean = false;
      
      private var §,v§:String;
      
      private var §7!T§:int;
      
      private var § <§:§!`§;
      
      private var §=!X§:§@$§;
      
      private var §^H§:§1!8§;
      
      public function §!!H§(param1:String, param2:int, param3:§@$§, param4:§1!8§, param5:§!`§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§+!J§ = param1;
         this.§@!$§ = param2;
         this.§=!X§ = param3;
         this.§,v§ = param12;
         this.§7!T§ = param13;
         this.§0!O§ = param11;
         this.§^H§ = param4;
         this.§ <§ = param5;
         this.§[!I§ = new §^v§(param6);
         this.§&!,§ = param7;
         this.§0"§ = param8;
         if(this.§0"§ <= 0)
         {
            this.§0"§ = 1;
         }
         this.§6!;§ = param9;
         this.§6![§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§0!O§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§,v§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§7!T§;
      }
      
      public function §"W§() : int
      {
         return this.shape.§4!0§();
      }
      
      public function §9!1§() : int
      {
         return this.shape.§"e§();
      }
      
      public function § !E§() : int
      {
         return this.shape.§'1§();
      }
      
      public function §4P§() : Number
      {
         return this.§=!X§.getValue(§@$§.§ i§);
      }
      
      public function §"!D§() : Number
      {
         return Number(this.§=!X§.getValue(§@$§.§%P§));
      }
      
      public function §7$§() : Number
      {
         return Number(this.§=!X§.getValue(§@$§.§<!V§));
      }
      
      public function §%;§() : Number
      {
         return Number(this.§=!X§.getValue(§@$§.§4!4§));
      }
      
      public function §9J§() : Number
      {
         return Number(this.§=!X§.getValue(§@$§.§^§));
      }
      
      public function §<!U§() : Number
      {
         return Number(this.§=!X§.getValue(§@$§.§%Y§));
      }
      
      public function §`!4§() : Number
      {
         return Number(this.§=!X§.getValue(§@$§.§]!_§));
      }
      
      public function §0#§() : int
      {
         return this.§6![§;
      }
      
      public function get material() : §@$§
      {
         return this.§=!X§;
      }
      
      public function get shape() : §!`§
      {
         var _loc1_:Texture = null;
         if(!this.§ <§)
         {
            _loc1_ = §"_§.§+!^§.§&"§.§@T§(this.§+!J§).getFrame(0).texture;
            this.§ <§ = new §!`§(this.§+!J§,"Rectangle",_loc1_.width * §&I§.§]!H§ / 2,_loc1_.height * §&I§.§]!H§ / 2);
         }
         return this.§ <§;
      }
      
      public function get §=!#§() : §1!8§
      {
         return this.§^H§;
      }
      
      public function get score() : int
      {
         return this.§[!I§.getValue();
      }
   }
}
