package §2E§
{
   import §21§.Texture;
   import §3y§.§"!G§;
   import §>!O§.§[+§;
   import §`!4§.§6l§;
   
   public class §%-§
   {
      
      public static const §'8§:int = 0;
      
      public static const §3!5§:int = 6;
      
      public static const §1!9§:int = 7;
      
      public static const §]G§:int = 8;
      
      public static const §^!9§:int = 3;
      
      public static const §&L§:int = 5;
      
      public static const §6!5§:int = 2;
      
      public static const §^-§:int = 1;
       
      
      public var §4h§:String;
      
      public var §^s§:int;
      
      protected var §'!K§:§"!G§;
      
      public var §finally§:Number;
      
      public var §5v§:String;
      
      public var §3!'§:Number = 1;
      
      public var §+D§:Number;
      
      private var §?F§:Boolean = false;
      
      private var §"!?§:String;
      
      private var §#0§:int;
      
      private var §?!I§:§`u§;
      
      private var §6T§:§5!8§;
      
      private var §2;§:§96§;
      
      public function §%-§(param1:String, param2:int, param3:§5!8§, param4:§96§, param5:§`u§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§4h§ = param1;
         this.§^s§ = param2;
         this.§6T§ = param3;
         this.§"!?§ = param12;
         this.§#0§ = param13;
         this.§?F§ = param11;
         this.§2;§ = param4;
         this.§?!I§ = param5;
         this.§'!K§ = new §"!G§(param6);
         this.§5v§ = param7;
         this.§3!'§ = param8;
         if(this.§3!'§ <= 0)
         {
            this.§3!'§ = 1;
         }
         this.§+D§ = param9;
         this.§finally§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§?F§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§"!?§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§#0§;
      }
      
      public function §@M§() : int
      {
         return this.shape.§@Y§();
      }
      
      public function §=-§() : int
      {
         return this.shape.§&!<§();
      }
      
      public function §7,§() : int
      {
         return this.shape.§13§();
      }
      
      public function § r§() : Number
      {
         return this.§6T§.getValue(§5!8§.§+e§);
      }
      
      public function get() : Number
      {
         return Number(this.§6T§.getValue(§5!8§.§4!4§));
      }
      
      public function §7!"§() : Number
      {
         return Number(this.§6T§.getValue(§5!8§.§[>§));
      }
      
      public function § n§() : Number
      {
         return Number(this.§6T§.getValue(§5!8§.§12§));
      }
      
      public function §%!!§() : Number
      {
         return Number(this.§6T§.getValue(§5!8§.§<A§));
      }
      
      public function §!l§() : Number
      {
         return Number(this.§6T§.getValue(§5!8§.§?i§));
      }
      
      public function §&B§() : Number
      {
         return Number(this.§6T§.getValue(§5!8§.§]z§));
      }
      
      public function §`0§() : int
      {
         return this.§finally§;
      }
      
      public function get material() : §5!8§
      {
         return this.§6T§;
      }
      
      public function get shape() : §`u§
      {
         var _loc1_:Texture = null;
         if(!this.§?!I§)
         {
            _loc1_ = §[+§.§,!&§.§7g§.§"!$§(this.§4h§).getFrame(0).texture;
            this.§?!I§ = new §`u§(this.§4h§,"Rectangle",_loc1_.width * §6l§.§%!<§ / 2,_loc1_.height * §6l§.§%!<§ / 2);
         }
         return this.§?!I§;
      }
      
      public function get §%d§() : §96§
      {
         return this.§2;§;
      }
      
      public function get score() : int
      {
         return this.§'!K§.getValue();
      }
   }
}
