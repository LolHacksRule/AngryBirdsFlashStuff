package §,-§
{
   import §'!^§.§4!2§;
   import §2!G§.§2!V§;
   import §;A§.§7!K§;
   import §@'§.Texture;
   
   public class §7i§
   {
      
      public static const §#]§:int = 0;
      
      public static const §`!L§:int = 6;
      
      public static const §-!b§:int = 7;
      
      public static const §]d§:int = 8;
      
      public static const include:int = 3;
      
      public static const §]4§:int = 5;
      
      public static const § !d§:int = 2;
      
      public static const §-W§:int = 1;
       
      
      public var §3a§:String;
      
      public var §+=§:int;
      
      protected var §+!_§:§4!2§;
      
      public var §0!U§:Number;
      
      public var §8!+§:String;
      
      public var §!7§:Number = 1;
      
      public var §?G§:Number;
      
      private var §>N§:Boolean = false;
      
      private var §]!,§:§;!F§;
      
      private var §5I§:§ q§;
      
      private var §<L§:§#o§;
      
      public function §7i§(param1:String, param2:int, param3:§ q§, param4:§#o§, param5:§;!F§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super();
         this.§3a§ = param1;
         this.§+=§ = param2;
         this.§5I§ = param3;
         this.§>N§ = param11;
         this.§<L§ = param4;
         this.§]!,§ = param5;
         this.§+!_§ = new §4!2§(param6);
         this.§8!+§ = param7;
         this.§!7§ = param8;
         if(this.§!7§ <= 0)
         {
            this.§!7§ = 1;
         }
         this.§?G§ = param9;
         this.§0!U§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§>N§;
      }
      
      public function §]!2§() : int
      {
         return this.shape.§57§();
      }
      
      public function §5L§() : int
      {
         return this.shape.§&#§();
      }
      
      public function §6!5§() : int
      {
         return this.shape.§!O§();
      }
      
      public function §0w§() : Number
      {
         return this.§5I§.getValue(§ q§.§+!$§);
      }
      
      public function §?!0§() : Number
      {
         return Number(this.§5I§.getValue(§ q§.§+R§));
      }
      
      public function §&!"§() : Number
      {
         return Number(this.§5I§.getValue(§ q§.§6G§));
      }
      
      public function §%?§() : Number
      {
         return Number(this.§5I§.getValue(§ q§.§^!Q§));
      }
      
      public function §2&§() : Number
      {
         return Number(this.§5I§.getValue(§ q§.§#!,§));
      }
      
      public function §;O§() : Number
      {
         return Number(this.§5I§.getValue(§ q§.§1!7§));
      }
      
      public function §0!!§() : Number
      {
         return Number(this.§5I§.getValue(§ q§.§,!,§));
      }
      
      public function §%!A§() : int
      {
         return this.§0!U§;
      }
      
      public function get material() : § q§
      {
         return this.§5I§;
      }
      
      public function get shape() : §;!F§
      {
         var _loc1_:Texture = null;
         if(!this.§]!,§)
         {
            _loc1_ = §7!K§.§=j§.§%S§.§<+§(this.§3a§).getFrame(0).texture;
            this.§]!,§ = new §;!F§(this.§3a§,"Rectangle",_loc1_.width * §2!V§.§-!3§ / 2,_loc1_.height * §2!V§.§-!3§ / 2);
         }
         return this.§]!,§;
      }
      
      public function get §-!1§() : §#o§
      {
         return this.§<L§;
      }
      
      public function get score() : int
      {
         return this.§+!_§.getValue();
      }
   }
}
