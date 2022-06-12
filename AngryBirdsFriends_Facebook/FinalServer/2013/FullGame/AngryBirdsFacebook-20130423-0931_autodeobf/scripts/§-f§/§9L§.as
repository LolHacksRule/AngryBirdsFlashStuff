package §-f§
{
   import §4!<§.§'!S§;
   import §9@§.§9!D§;
   import §<5§.Texture;
   import §@!"§.§?l§;
   
   public class §9L§
   {
      
      public static const §7O§:int = 0;
      
      public static const §7!V§:int = 6;
      
      public static const §=8§:int = 7;
      
      public static const §6!y§:int = 8;
      
      public static const §'!8§:int = 3;
      
      public static const §["-§:int = 5;
      
      public static const §+"W§:int = 2;
      
      public static const §"!-§:int = 1;
       
      
      public var §@x§:String;
      
      public var §<!G§:int;
      
      protected var §9"8§:§9!D§;
      
      public var §8"4§:Number;
      
      public var §;"V§:String;
      
      public var §-!@§:Number = 1;
      
      public var §^!2§:Number;
      
      private var §>2§:Boolean = false;
      
      private var §0"9§:String;
      
      private var §!"F§:int;
      
      private var §]!k§:§+"R§;
      
      private var §;a§:§@!M§;
      
      private var §""I§:§[!J§;
      
      public function §9L§(param1:String, param2:int, param3:§@!M§, param4:§[!J§, param5:§+"R§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§@x§ = param1;
         this.§<!G§ = param2;
         this.§;a§ = param3;
         this.§0"9§ = param12;
         this.§!"F§ = param13;
         this.§>2§ = param11;
         this.§""I§ = param4;
         this.§]!k§ = param5;
         this.§9"8§ = new §9!D§(param6);
         this.§;"V§ = param7;
         this.§-!@§ = param8;
         if(this.§-!@§ <= 0)
         {
            this.§-!@§ = 1;
         }
         this.§^!2§ = param9;
         this.§8"4§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§>2§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§0"9§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§!"F§;
      }
      
      public function §9C§() : int
      {
         return this.shape.§&"A§();
      }
      
      public function §6d§() : int
      {
         return this.shape.§`"V§();
      }
      
      public function §&"'§() : int
      {
         return this.shape.§0a§();
      }
      
      public function §%o§() : Number
      {
         return this.§;a§.getValue(§@!M§.§4r§);
      }
      
      public function §`!§() : Number
      {
         return Number(this.§;a§.getValue(§@!M§.§>"3§));
      }
      
      public function §9!+§() : Number
      {
         return Number(this.§;a§.getValue(§@!M§.§1!4§));
      }
      
      public function §3"M§() : Number
      {
         return Number(this.§;a§.getValue(§@!M§.§4!n§));
      }
      
      public function §'"3§() : Number
      {
         return Number(this.§;a§.getValue(§@!M§.§>a§));
      }
      
      public function §3"@§() : Number
      {
         return Number(this.§;a§.getValue(§@!M§.§1$§));
      }
      
      public function §>!b§() : Number
      {
         return Number(this.§;a§.getValue(§@!M§.§8!$§));
      }
      
      public function §<!5§() : int
      {
         return this.§8"4§;
      }
      
      public function get material() : §@!M§
      {
         return this.§;a§;
      }
      
      public function get shape() : §+"R§
      {
         var _loc1_:Texture = null;
         if(!this.§]!k§)
         {
            _loc1_ = §?l§.§'h§.animationManager.getAnimation(this.§@x§).getFrame(0).texture;
            this.§]!k§ = new §+"R§(this.§@x§,"Rectangle",_loc1_.width * §'!S§.§2"<§ / 2,_loc1_.height * §'!S§.§2"<§ / 2);
         }
         return this.§]!k§;
      }
      
      public function get §!j§() : §[!J§
      {
         return this.§""I§;
      }
      
      public function get score() : int
      {
         return this.§9"8§.getValue();
      }
   }
}
