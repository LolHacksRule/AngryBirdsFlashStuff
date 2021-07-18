package §?7§
{
   import §!J§.§[&§;
   import §&! §.§3!§;
   import §2!-§.Texture;
   import §9N§.§9!%§;
   
   public class §,!§
   {
      
      public static const §&J§:int = 0;
      
      public static const §?T§:int = 6;
      
      public static const §"!V§:int = 7;
      
      public static const §"A§:int = 8;
      
      public static const §&!Q§:int = 3;
      
      public static const §@!%§:int = 5;
      
      public static const §!?§:int = 2;
      
      public static const §^!J§:int = 1;
       
      
      public var § h§:String;
      
      public var §5x§:int;
      
      protected var §finally§:§3!§;
      
      public var §3t§:Number;
      
      public var §=z§:String;
      
      public var §]p§:Number = 1;
      
      public var §,>§:Number;
      
      private var §8!X§:Boolean = false;
      
      private var §>!B§:§!S§;
      
      private var §7I§:§#!+§;
      
      private var §;!H§:§=!5§;
      
      public function §,!§(param1:String, param2:int, param3:§#!+§, param4:§=!5§, param5:§!S§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super();
         this.§ h§ = param1;
         this.§5x§ = param2;
         this.§7I§ = param3;
         this.§8!X§ = param11;
         this.§;!H§ = param4;
         this.§>!B§ = param5;
         this.§finally§ = new §3!§(param6);
         this.§=z§ = param7;
         this.§]p§ = param8;
         if(this.§]p§ <= 0)
         {
            this.§]p§ = 1;
         }
         this.§,>§ = param9;
         this.§3t§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§8!X§;
      }
      
      public function §?!P§() : int
      {
         return this.shape.§^6§();
      }
      
      public function §8!H§() : int
      {
         return this.shape.§7!A§();
      }
      
      public function §^!Q§() : int
      {
         return this.shape.§]$§();
      }
      
      public function §>E§() : Number
      {
         return this.§7I§.getValue(§#!+§.§]!?§);
      }
      
      public function § s§() : Number
      {
         return Number(this.§7I§.getValue(§#!+§.§"!Q§));
      }
      
      public function §%f§() : Number
      {
         return Number(this.§7I§.getValue(§#!+§.§?!X§));
      }
      
      public function §45§() : Number
      {
         return Number(this.§7I§.getValue(§#!+§.§^!C§));
      }
      
      public function §#=§() : Number
      {
         return Number(this.§7I§.getValue(§#!+§.§4!V§));
      }
      
      public function §0G§() : Number
      {
         return Number(this.§7I§.getValue(§#!+§.§7x§));
      }
      
      public function §^!;§() : Number
      {
         return Number(this.§7I§.getValue(§#!+§.§[!V§));
      }
      
      public function §%b§() : int
      {
         return this.§3t§;
      }
      
      public function get material() : §#!+§
      {
         return this.§7I§;
      }
      
      public function get shape() : §!S§
      {
         var _loc1_:Texture = null;
         if(!this.§>!B§)
         {
            _loc1_ = §[&§.§&!'§.§"B§.§2!'§(this.§ h§).getFrame(0).texture;
            this.§>!B§ = new §!S§(this.§ h§,"Rectangle",_loc1_.width * §9!%§.§catch§ / 2,_loc1_.height * §9!%§.§catch§ / 2);
         }
         return this.§>!B§;
      }
      
      public function get §2#§() : §=!5§
      {
         return this.§;!H§;
      }
      
      public function get score() : int
      {
         return this.§finally§.getValue();
      }
   }
}
