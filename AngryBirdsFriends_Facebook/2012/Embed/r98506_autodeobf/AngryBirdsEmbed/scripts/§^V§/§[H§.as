package §^V§
{
   import §#;§.§4!8§;
   import §5@§.Texture;
   import §>K§.§%H§;
   import §`t§.§^?§;
   
   public class §[H§
   {
      
      public static const § >§:int = 0;
      
      public static const §+!;§:int = 6;
      
      public static const §0l§:int = 7;
      
      public static const §[[§:int = 8;
      
      public static const §-@§:int = 3;
      
      public static const §'o§:int = 5;
      
      public static const §97§:int = 2;
      
      public static const §^4§:int = 1;
       
      
      public var §+!!§:String;
      
      public var §,'§:int;
      
      protected var §#8§:§%H§;
      
      public var §7-§:Number;
      
      public var §&h§:String;
      
      public var §&w§:Number = 1;
      
      public var §;u§:Number;
      
      private var §4?§:Boolean = false;
      
      private var §?D§:String;
      
      private var §>!"§:int;
      
      private var §=k§:§4a§;
      
      private var §'!§:§9K§;
      
      private var §"!I§:§<e§;
      
      public function §[H§(param1:String, param2:int, param3:§9K§, param4:§<e§, param5:§4a§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§+!!§ = param1;
         this.§,'§ = param2;
         this.§'!§ = param3;
         this.§?D§ = param12;
         this.§>!"§ = param13;
         this.§4?§ = param11;
         this.§"!I§ = param4;
         this.§=k§ = param5;
         this.§#8§ = new §%H§(param6);
         this.§&h§ = param7;
         this.§&w§ = param8;
         if(this.§&w§ <= 0)
         {
            this.§&w§ = 1;
         }
         this.§;u§ = param9;
         this.§7-§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§4?§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§?D§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§>!"§;
      }
      
      public function §73§() : int
      {
         return this.shape.§2m§();
      }
      
      public function §3F§() : int
      {
         return this.shape.§;!J§();
      }
      
      public function §`3§() : int
      {
         return this.shape.§9O§();
      }
      
      public function §-!7§() : Number
      {
         return this.§'!§.getValue(§9K§.§,%§);
      }
      
      public function §32§() : Number
      {
         return Number(this.§'!§.getValue(§9K§.§-H§));
      }
      
      public function §6=§() : Number
      {
         return Number(this.§'!§.getValue(§9K§.§&!=§));
      }
      
      public function §5O§() : Number
      {
         return Number(this.§'!§.getValue(§9K§.§9c§));
      }
      
      public function §4!G§() : Number
      {
         return Number(this.§'!§.getValue(§9K§.§&E§));
      }
      
      public function §5=§() : Number
      {
         return Number(this.§'!§.getValue(§9K§.§7!8§));
      }
      
      public function §9U§() : Number
      {
         return Number(this.§'!§.getValue(§9K§.§9!3§));
      }
      
      public function §?W§() : int
      {
         return this.§7-§;
      }
      
      public function get material() : §9K§
      {
         return this.§'!§;
      }
      
      public function get shape() : §4a§
      {
         var _loc1_:Texture = null;
         if(!this.§=k§)
         {
            _loc1_ = §^?§.§]!%§.§`,§.§12§(this.§+!!§).getFrame(0).texture;
            this.§=k§ = new §4a§(this.§+!!§,"Rectangle",_loc1_.width * §4!8§.§5+§ / 2,_loc1_.height * §4!8§.§5+§ / 2);
         }
         return this.§=k§;
      }
      
      public function get §9w§() : §<e§
      {
         return this.§"!I§;
      }
      
      public function get score() : int
      {
         return this.§#8§.getValue();
      }
   }
}
