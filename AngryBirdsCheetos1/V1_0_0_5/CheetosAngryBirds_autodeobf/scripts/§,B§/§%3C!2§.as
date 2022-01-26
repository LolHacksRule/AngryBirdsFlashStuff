package §,B§
{
   import §!J§.§[&§;
   import §&! §.§3!§;
   import §2k§.Texture;
   import §?'§.§9N§;
   
   public class §<!2§
   {
      
      public static const §2#§:int = 0;
      
      public static const §&J§:int = 6;
      
      public static const §?T§:int = 7;
      
      public static const §"!V§:int = 8;
      
      public static const §"A§:int = 3;
      
      public static const §&!Q§:int = 5;
      
      public static const §@!%§:int = 2;
      
      public static const §!?§:int = 1;
       
      
      public var §,!§:String;
      
      public var § h§:int;
      
      protected var §5x§:§3!§;
      
      public var §3t§:Number;
      
      public var §finally§:String;
      
      public var §=z§:Number = 1;
      
      public var §]p§:Number;
      
      private var §,>§:Boolean = false;
      
      private var §8!X§:§;V§;
      
      private var §>!B§:§9x§;
      
      private var §7I§:§1F§;
      
      public function §<!2§(param1:String, param2:int, param3:§9x§, param4:§1F§, param5:§;V§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super();
         this.§,!§ = param1;
         this.§ h§ = param2;
         this.§>!B§ = param3;
         this.§,>§ = param11;
         this.§7I§ = param4;
         this.§8!X§ = param5;
         this.§5x§ = new §3!§(param6);
         this.§finally§ = param7;
         this.§=z§ = param8;
         if(this.§=z§ <= 0)
         {
            this.§=z§ = 1;
         }
         this.§]p§ = param9;
         this.§3t§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§,>§;
      }
      
      public function §;!H§() : int
      {
         return this.shape.§^@§();
      }
      
      public function §?!P§() : int
      {
         return this.shape.§6>§();
      }
      
      public function §8!H§() : int
      {
         return this.shape.§7!A§();
      }
      
      public function §^!Q§() : Number
      {
         return this.§>!B§.getValue(§9x§.§import§);
      }
      
      public function §>E§() : Number
      {
         return Number(this.§>!B§.getValue(§9x§.§-f§));
      }
      
      public function § s§() : Number
      {
         return Number(this.§>!B§.getValue(§9x§.§^!C§));
      }
      
      public function §%f§() : Number
      {
         return Number(this.§>!B§.getValue(§9x§.§[!V§));
      }
      
      public function §45§() : Number
      {
         return Number(this.§>!B§.getValue(§9x§.§]!?§));
      }
      
      public function §#=§() : Number
      {
         return Number(this.§>!B§.getValue(§9x§.§4!V§));
      }
      
      public function §0G§() : Number
      {
         return Number(this.§>!B§.getValue(§9x§.§7x§));
      }
      
      public function §^!;§() : int
      {
         return this.§3t§;
      }
      
      public function get material() : §9x§
      {
         return this.§>!B§;
      }
      
      public function get shape() : §;V§
      {
         var _loc1_:Texture = null;
         if(!this.§8!X§)
         {
            _loc1_ = §[&§.§&!'§.§+S§.§3Z§(this.§,!§).getFrame(0).texture;
            this.§8!X§ = new §;V§(this.§,!§,"Rectangle",_loc1_.width * §9N§.§8!5§ / 2,_loc1_.height * §9N§.§8!5§ / 2);
         }
         return this.§8!X§;
      }
      
      public function get §%b§() : §1F§
      {
         return this.§7I§;
      }
      
      public function get score() : int
      {
         return this.§5x§.getValue();
      }
   }
}
