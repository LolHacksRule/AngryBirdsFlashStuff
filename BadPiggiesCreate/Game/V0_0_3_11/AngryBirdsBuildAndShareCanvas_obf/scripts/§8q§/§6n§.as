package §8q§
{
   import §'x§.§?z§;
   import §1!v§.§@%§;
   import §2i§.§%!+§;
   import §^i§.Texture;
   
   public class §6n§
   {
      
      public static const §5!1§:int = 0;
      
      public static const §,]§:int = 6;
      
      public static const §!6§:int = 7;
      
      public static const §,!D§:int = 8;
      
      public static const §3x§:int = 3;
      
      public static const §@z§:int = 5;
      
      public static const §9]§:int = 2;
      
      public static const §=!v§:int = 1;
       
      
      public var §"g§:String;
      
      public var §"W§:int;
      
      protected var § !p§:§%!+§;
      
      public var §6!f§:Number;
      
      public var §-A§:String;
      
      public var §8!]§:Number = 1;
      
      public var §,!f§:Number;
      
      private var §1!c§:Boolean = false;
      
      private var §5]§:String;
      
      private var §5"-§:int;
      
      private var §'m§:§!g§;
      
      private var §&!I§:§=Y§;
      
      private var §,!N§:§+P§;
      
      public function §6n§(param1:String, param2:int, param3:§=Y§, param4:§+P§, param5:§!g§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§"g§ = param1;
         this.§"W§ = param2;
         this.§&!I§ = param3;
         this.§5]§ = param12;
         this.§5"-§ = param13;
         this.§1!c§ = param11;
         this.§,!N§ = param4;
         this.§'m§ = param5;
         this.§ !p§ = new §%!+§(param6);
         this.§-A§ = param7;
         this.§8!]§ = param8;
         if(this.§8!]§ <= 0)
         {
            this.§8!]§ = 1;
         }
         this.§,!f§ = param9;
         this.§6!f§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§1!c§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§5]§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§5"-§;
      }
      
      public function §>!U§() : int
      {
         return this.shape.§&r§();
      }
      
      public function §>!Z§() : int
      {
         return this.shape.§1!§();
      }
      
      public function §=k§() : int
      {
         return this.shape.§[S§();
      }
      
      public function §9,§() : Number
      {
         return this.§&!I§.getValue(§=Y§.§3"%§);
      }
      
      public function §!!6§() : Number
      {
         return Number(this.§&!I§.getValue(§=Y§.§9"5§));
      }
      
      public function §]G§() : Number
      {
         return Number(this.§&!I§.getValue(§=Y§.§`l§));
      }
      
      public function §"! §() : Number
      {
         return Number(this.§&!I§.getValue(§=Y§.§6T§));
      }
      
      public function §+g§() : Number
      {
         return Number(this.§&!I§.getValue(§=Y§.§+!]§));
      }
      
      public function §,!-§() : Number
      {
         return Number(this.§&!I§.getValue(§=Y§.§^<§));
      }
      
      public function § !V§() : Number
      {
         return Number(this.§&!I§.getValue(§=Y§.§=!+§));
      }
      
      public function §?N§() : int
      {
         return this.§6!f§;
      }
      
      public function get material() : §=Y§
      {
         return this.§&!I§;
      }
      
      public function get shape() : §!g§
      {
         var _loc1_:Texture = null;
         if(!this.§'m§)
         {
            _loc1_ = §?z§.§=7§.§%w§.§5m§(this.§"g§).getFrame(0).texture;
            this.§'m§ = new §!g§(this.§"g§,"Rectangle",_loc1_.width * §@%§.§?k§ / 2,_loc1_.height * §@%§.§?k§ / 2);
         }
         return this.§'m§;
      }
      
      public function get §2!_§() : §+P§
      {
         return this.§,!N§;
      }
      
      public function get score() : int
      {
         return this.§ !p§.getValue();
      }
   }
}
