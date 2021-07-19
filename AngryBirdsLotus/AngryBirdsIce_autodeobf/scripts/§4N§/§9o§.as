package §4N§
{
   import §!Y§.§[o§;
   import §0!!§.§2N§;
   import §[P§.Texture;
   import §[x§.§2^§;
   
   public class §9o§
   {
      
      public static const §[H§:int = 0;
      
      public static const §%p§:int = 6;
      
      public static const §1!?§:int = 7;
      
      public static const §%k§:int = 8;
      
      public static const §'!<§:int = 3;
      
      public static const §2!§:int = 5;
      
      public static const §>]§:int = 2;
      
      public static const §51§:int = 1;
       
      
      public var §57§:String;
      
      public var §&!E§:int;
      
      protected var §<t§:§2N§;
      
      public var §,A§:Number;
      
      public var §<s§:String;
      
      public var §@t§:Number = 1;
      
      public var §[!3§:Number;
      
      private var §implements§:Boolean = false;
      
      private var §-'§:§2D§;
      
      private var §;R§:§`!%§;
      
      private var § case§:§7E§;
      
      public function §9o§(param1:String, param2:int, param3:§`!%§, param4:§7E§, param5:§2D§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super();
         this.§57§ = param1;
         this.§&!E§ = param2;
         this.§;R§ = param3;
         this.§implements§ = param11;
         this.§ case§ = param4;
         this.§-'§ = param5;
         this.§<t§ = new §2N§(param6);
         this.§<s§ = param7;
         this.§@t§ = param8;
         if(this.§@t§ <= 0)
         {
            this.§@t§ = 1;
         }
         this.§[!3§ = param9;
         this.§,A§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§implements§;
      }
      
      public function §1!3§() : int
      {
         return this.shape.§0V§();
      }
      
      public function §6Y§() : int
      {
         return this.shape.§5!E§();
      }
      
      public function §0!6§() : int
      {
         return this.shape.§^C§();
      }
      
      public function §@!A§() : Number
      {
         return this.§;R§.getValue(§`!%§.§08§);
      }
      
      public function §-7§() : Number
      {
         return Number(this.§;R§.getValue(§`!%§.§9n§));
      }
      
      public function §6!5§() : Number
      {
         return Number(this.§;R§.getValue(§`!%§.§&!4§));
      }
      
      public function §2!=§() : Number
      {
         return Number(this.§;R§.getValue(§`!%§.§&m§));
      }
      
      public function §"[§() : Number
      {
         return Number(this.§;R§.getValue(§`!%§.§"!1§));
      }
      
      public function §,;§() : Number
      {
         return Number(this.§;R§.getValue(§`!%§.§4!D§));
      }
      
      public function §&! §() : Number
      {
         return Number(this.§;R§.getValue(§`!%§.§-!4§));
      }
      
      public function §#=§() : int
      {
         return this.§,A§;
      }
      
      public function get material() : §`!%§
      {
         return this.§;R§;
      }
      
      public function get shape() : §2D§
      {
         var _loc1_:Texture = null;
         if(!this.§-'§)
         {
            _loc1_ = §[o§.§='§.§0!§.§9$§(this.§57§).getFrame(0).texture;
            this.§-'§ = new §2D§(this.§57§,"Rectangle",_loc1_.width * §2^§.§,]§ / 2,_loc1_.height * §2^§.§,]§ / 2);
         }
         return this.§-'§;
      }
      
      public function get §@,§() : §7E§
      {
         return this.§ case§;
      }
      
      public function get score() : int
      {
         return this.§<t§.getValue();
      }
   }
}
