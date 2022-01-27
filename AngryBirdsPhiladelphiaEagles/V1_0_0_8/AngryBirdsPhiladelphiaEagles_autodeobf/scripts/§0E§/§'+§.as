package §0E§
{
   import §,T§.§[-§;
   import §,]§.Texture;
   import §=z§.§0!E§;
   import §`!8§.§7!G§;
   
   public class §'+§
   {
      
      public static const §]!C§:int = 0;
      
      public static const §+9§:int = 6;
      
      public static const §0c§:int = 7;
      
      public static const §'!C§:int = 8;
      
      public static const §0S§:int = 3;
      
      public static const §[#§:int = 5;
      
      public static const §-<§:int = 2;
      
      public static const §0i§:int = 1;
       
      
      public var §8!J§:String;
      
      public var §?!8§:int;
      
      protected var §0!&§:§7!G§;
      
      public var §4#§:Number;
      
      public var §,t§:String;
      
      public var §!4§:Number = 1;
      
      public var § !L§:Number;
      
      private var §^!@§:Boolean = false;
      
      private var §?!1§:String;
      
      private var §9t§:int;
      
      private var §[i§:§<=§;
      
      private var §#y§:§,@§;
      
      private var §4E§:§7u§;
      
      public function §'+§(param1:String, param2:int, param3:§,@§, param4:§7u§, param5:§<=§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§8!J§ = param1;
         this.§?!8§ = param2;
         this.§#y§ = param3;
         this.§?!1§ = param12;
         this.§9t§ = param13;
         this.§^!@§ = param11;
         this.§4E§ = param4;
         this.§[i§ = param5;
         this.§0!&§ = new §7!G§(param6);
         this.§,t§ = param7;
         this.§!4§ = param8;
         if(this.§!4§ <= 0)
         {
            this.§!4§ = 1;
         }
         this.§ !L§ = param9;
         this.§4#§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§^!@§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§?!1§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§9t§;
      }
      
      public function §'!K§() : int
      {
         return this.shape.§ K§();
      }
      
      public function §]K§() : int
      {
         return this.shape.§8!;§();
      }
      
      public function §3k§() : int
      {
         return this.shape.§`!B§();
      }
      
      public function §-R§() : Number
      {
         return this.§#y§.getValue(§,@§.§]<§);
      }
      
      public function §`r§() : Number
      {
         return Number(this.§#y§.getValue(§,@§.§=!$§));
      }
      
      public function § Q§() : Number
      {
         return Number(this.§#y§.getValue(§,@§.§--§));
      }
      
      public function §[!#§() : Number
      {
         return Number(this.§#y§.getValue(§,@§.§-!I§));
      }
      
      public function §!z§() : Number
      {
         return Number(this.§#y§.getValue(§,@§.§&k§));
      }
      
      public function §%n§() : Number
      {
         return Number(this.§#y§.getValue(§,@§.§2a§));
      }
      
      public function §>u§() : Number
      {
         return Number(this.§#y§.getValue(§,@§.§05§));
      }
      
      public function §35§() : int
      {
         return this.§4#§;
      }
      
      public function get material() : §,@§
      {
         return this.§#y§;
      }
      
      public function get shape() : §<=§
      {
         var _loc1_:Texture = null;
         if(!this.§[i§)
         {
            _loc1_ = §0!E§.§9!B§.§,F§.getAnimation(this.§8!J§).getFrame(0).texture;
            this.§[i§ = new §<=§(this.§8!J§,"Rectangle",_loc1_.width * §[-§.§;5§ / 2,_loc1_.height * §[-§.§;5§ / 2);
         }
         return this.§[i§;
      }
      
      public function get § !@§() : §7u§
      {
         return this.§4E§;
      }
      
      public function get score() : int
      {
         return this.§0!&§.getValue();
      }
   }
}
