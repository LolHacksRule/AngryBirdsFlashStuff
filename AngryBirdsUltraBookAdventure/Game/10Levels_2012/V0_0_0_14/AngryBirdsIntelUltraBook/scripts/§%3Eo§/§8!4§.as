package §>o§
{
   import §!!9§.Texture;
   import §&!h§.§?!K§;
   import §+&§.§-!7§;
   import §5i§.§4!]§;
   
   public class §8!4§
   {
      
      public static const §`!N§:int = 0;
      
      public static const §0!1§:int = 6;
      
      public static const §%u§:int = 7;
      
      public static const §9!%§:int = 8;
      
      public static const §97§:int = 3;
      
      public static const §+!§:int = 5;
      
      public static const §+!#§:int = 2;
      
      public static const §,!?§:int = 1;
       
      
      public var §@!p§:String;
      
      public var § W§:int;
      
      protected var §@!q§:§?!K§;
      
      public var §5!1§:Number;
      
      public var §5H§:String;
      
      public var §7!T§:Number = 1;
      
      public var §0K§:Number;
      
      private var § >§:Boolean = false;
      
      private var §`r§:String;
      
      private var §`!b§:int;
      
      private var §;N§:§0!N§;
      
      private var §]!v§:§"!e§;
      
      private var §5!k§:§'y§;
      
      public function §8!4§(param1:String, param2:int, param3:§"!e§, param4:§'y§, param5:§0!N§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§@!p§ = param1;
         this.§ W§ = param2;
         this.§]!v§ = param3;
         this.§`r§ = param12;
         this.§`!b§ = param13;
         this.§ >§ = param11;
         this.§5!k§ = param4;
         this.§;N§ = param5;
         this.§@!q§ = new §?!K§(param6);
         this.§5H§ = param7;
         this.§7!T§ = param8;
         if(this.§7!T§ <= 0)
         {
            this.§7!T§ = 1;
         }
         this.§0K§ = param9;
         this.§5!1§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§ >§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§`r§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§`!b§;
      }
      
      public function §2g§() : int
      {
         return this.shape.§>1§();
      }
      
      public function §'!"§() : int
      {
         return this.shape.§9^§();
      }
      
      public function §3!9§() : int
      {
         return this.shape.§+!k§();
      }
      
      public function §'a§() : Number
      {
         return this.§]!v§.getValue(§"!e§.§4!T§);
      }
      
      public function §"5§() : Number
      {
         return Number(this.§]!v§.getValue(§"!e§.§-R§));
      }
      
      public function §6!V§() : Number
      {
         return Number(this.§]!v§.getValue(§"!e§.§71§));
      }
      
      public function §3!T§() : Number
      {
         return Number(this.§]!v§.getValue(§"!e§.§@U§));
      }
      
      public function §;!<§() : Number
      {
         return Number(this.§]!v§.getValue(§"!e§.§7_§));
      }
      
      public function §#h§() : Number
      {
         return Number(this.§]!v§.getValue(§"!e§.§@v§));
      }
      
      public function §`!Q§() : Number
      {
         return Number(this.§]!v§.getValue(§"!e§.§^!2§));
      }
      
      public function §0n§() : int
      {
         return this.§5!1§;
      }
      
      public function get material() : §"!e§
      {
         return this.§]!v§;
      }
      
      public function get shape() : §0!N§
      {
         var _loc1_:Texture = null;
         if(!this.§;N§)
         {
            _loc1_ = §4!]§.§8C§.animationManager.getAnimation(this.§@!p§).getFrame(0).texture;
            this.§;N§ = new §0!N§(this.§@!p§,"Rectangle",_loc1_.width * §-!7§.§8!r§ / 2,_loc1_.height * §-!7§.§8!r§ / 2);
         }
         return this.§;N§;
      }
      
      public function get §8!p§() : §'y§
      {
         return this.§5!k§;
      }
      
      public function get score() : int
      {
         return this.§@!q§.getValue();
      }
   }
}
