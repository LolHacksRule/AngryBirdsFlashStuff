package §"P§
{
   import §#[§.§3#§;
   import §,Y§.Texture;
   import §-A§.§%9§;
   import §@!W§.§8!W§;
   
   public class §]5§
   {
      
      public static const §,,§:int = 0;
      
      public static const §0!1§:int = 6;
      
      public static const §;! §:int = 7;
      
      public static const §2o§:int = 8;
      
      public static const §`1§:int = 3;
      
      public static const §[j§:int = 5;
      
      public static const §,5§:int = 2;
      
      public static const §3K§:int = 1;
       
      
      public var §10§:String;
      
      public var §<s§:int;
      
      protected var §0!6§:§3#§;
      
      public var §?-§:Number;
      
      public var §"R§:String;
      
      public var §-!X§:Number = 1;
      
      public var §[!,§:Number;
      
      private var §-!9§:Boolean = false;
      
      private var §<N§:String;
      
      private var §9!#§:int;
      
      private var §!T§:§^s§;
      
      private var §2G§:§,!I§;
      
      private var §74§:§%w§;
      
      public function §]5§(param1:String, param2:int, param3:§,!I§, param4:§%w§, param5:§^s§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§10§ = param1;
         this.§<s§ = param2;
         this.§2G§ = param3;
         this.§<N§ = param12;
         this.§9!#§ = param13;
         this.§-!9§ = param11;
         this.§74§ = param4;
         this.§!T§ = param5;
         this.§0!6§ = new §3#§(param6);
         this.§"R§ = param7;
         this.§-!X§ = param8;
         if(this.§-!X§ <= 0)
         {
            this.§-!X§ = 1;
         }
         this.§[!,§ = param9;
         this.§?-§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§-!9§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§<N§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§9!#§;
      }
      
      public function §?1§() : int
      {
         return this.shape.§&U§();
      }
      
      public function §2C§() : int
      {
         return this.shape.§'?§();
      }
      
      public function §#6§() : int
      {
         return this.shape.§"7§();
      }
      
      public function §1!=§() : Number
      {
         return this.§2G§.getValue(§,!I§.§[!'§);
      }
      
      public function §>G§() : Number
      {
         return Number(this.§2G§.getValue(§,!I§.§!x§));
      }
      
      public function §!!-§() : Number
      {
         return Number(this.§2G§.getValue(§,!I§.§;6§));
      }
      
      public function §4!@§() : Number
      {
         return Number(this.§2G§.getValue(§,!I§.§3p§));
      }
      
      public function §^!4§() : Number
      {
         return Number(this.§2G§.getValue(§,!I§.§7>§));
      }
      
      public function §8a§() : Number
      {
         return Number(this.§2G§.getValue(§,!I§.§';§));
      }
      
      public function §[D§() : Number
      {
         return Number(this.§2G§.getValue(§,!I§.§[!&§));
      }
      
      public function §`!M§() : int
      {
         return this.§?-§;
      }
      
      public function get material() : §,!I§
      {
         return this.§2G§;
      }
      
      public function get shape() : §^s§
      {
         var _loc1_:Texture = null;
         if(!this.§!T§)
         {
            _loc1_ = §8!W§.§=X§.§"y§.§ !2§(this.§10§).getFrame(0).texture;
            this.§!T§ = new §^s§(this.§10§,"Rectangle",_loc1_.width * §%9§.§1[§ / 2,_loc1_.height * §%9§.§1[§ / 2);
         }
         return this.§!T§;
      }
      
      public function get §`!0§() : §%w§
      {
         return this.§74§;
      }
      
      public function get score() : int
      {
         return this.§0!6§.getValue();
      }
   }
}
