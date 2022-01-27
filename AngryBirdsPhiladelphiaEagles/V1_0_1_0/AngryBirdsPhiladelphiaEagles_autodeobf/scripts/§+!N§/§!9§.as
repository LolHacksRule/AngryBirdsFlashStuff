package §+!N§
{
   import §"I§.§,&§;
   import §0l§.Texture;
   import §>2§.§4h§;
   import §@w§.§2G§;
   
   public class §!9§
   {
      
      public static const §%#§:int = 0;
      
      public static const §'!7§:int = 6;
      
      public static const § 0§:int = 7;
      
      public static const §47§:int = 8;
      
      public static const §!!%§:int = 3;
      
      public static const §2!A§:int = 5;
      
      public static const §3!H§:int = 2;
      
      public static const §&!3§:int = 1;
       
      
      public var §9E§:String;
      
      public var §>!-§:int;
      
      protected var §[!K§:§,&§;
      
      public var §`t§:Number;
      
      public var §9y§:String;
      
      public var §?!B§:Number = 1;
      
      public var §0-§:Number;
      
      private var §3f§:Boolean = false;
      
      private var §,=§:String;
      
      private var §`N§:int;
      
      private var §9o§:§-!H§;
      
      private var §1H§:§[8§;
      
      private var §,!F§:§=!2§;
      
      public function §!9§(param1:String, param2:int, param3:§[8§, param4:§=!2§, param5:§-!H§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§9E§ = param1;
         this.§>!-§ = param2;
         this.§1H§ = param3;
         this.§,=§ = param12;
         this.§`N§ = param13;
         this.§3f§ = param11;
         this.§,!F§ = param4;
         this.§9o§ = param5;
         this.§[!K§ = new §,&§(param6);
         this.§9y§ = param7;
         this.§?!B§ = param8;
         if(this.§?!B§ <= 0)
         {
            this.§?!B§ = 1;
         }
         this.§0-§ = param9;
         this.§`t§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§3f§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§,=§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§`N§;
      }
      
      public function §`!4§() : int
      {
         return this.shape.§?x§();
      }
      
      public function §[]§() : int
      {
         return this.shape.§+!P§();
      }
      
      public function §0m§() : int
      {
         return this.shape.§[m§();
      }
      
      public function §<C§() : Number
      {
         return this.§1H§.getValue(§[8§.§=!I§);
      }
      
      public function §?M§() : Number
      {
         return Number(this.§1H§.getValue(§[8§.§<!0§));
      }
      
      public function §+E§() : Number
      {
         return Number(this.§1H§.getValue(§[8§.§9S§));
      }
      
      public function § r§() : Number
      {
         return Number(this.§1H§.getValue(§[8§.§2f§));
      }
      
      public function §"V§() : Number
      {
         return Number(this.§1H§.getValue(§[8§.§"!B§));
      }
      
      public function §-!'§() : Number
      {
         return Number(this.§1H§.getValue(§[8§.§%x§));
      }
      
      public function §+@§() : Number
      {
         return Number(this.§1H§.getValue(§[8§.§#!'§));
      }
      
      public function §9!G§() : int
      {
         return this.§`t§;
      }
      
      public function get material() : §[8§
      {
         return this.§1H§;
      }
      
      public function get shape() : §-!H§
      {
         var _loc1_:Texture = null;
         if(!this.§9o§)
         {
            _loc1_ = §2G§.§7!,§.§4!C§.getAnimation(this.§9E§).getFrame(0).texture;
            this.§9o§ = new §-!H§(this.§9E§,"Rectangle",_loc1_.width * §4h§.§-9§ / 2,_loc1_.height * §4h§.§-9§ / 2);
         }
         return this.§9o§;
      }
      
      public function get §3!O§() : §=!2§
      {
         return this.§,!F§;
      }
      
      public function get score() : int
      {
         return this.§[!K§.getValue();
      }
   }
}
