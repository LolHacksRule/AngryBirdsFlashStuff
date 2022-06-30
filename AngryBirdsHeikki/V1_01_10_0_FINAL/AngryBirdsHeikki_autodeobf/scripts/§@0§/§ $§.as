package §@0§
{
   import §"!I§.§^!2§;
   import §9b§.§"!S§;
   import §=! §.§[2§;
   
   public class § $§
   {
      
      public static const §[!W§:int = 0;
      
      public static const §try §:int = 6;
      
      public static const §!!$§:int = 7;
      
      public static const §<!O§:int = 8;
      
      public static const §2G§:int = 3;
      
      public static const §?r§:int = 5;
      
      public static const §#J§:int = 2;
      
      public static const §2C§:int = 1;
       
      
      public var §>R§:String;
      
      public var §7!?§:int;
      
      protected var §!K§:§[2§;
      
      public var §[!!§:Number;
      
      public var §>! §:String;
      
      public var §9d§:Number = 1;
      
      public var §'!V§:Number;
      
      private var §class§:Boolean = false;
      
      private var §<b§:String;
      
      private var §"$§:int;
      
      private var §&!>§:§3U§;
      
      private var §4!]§:§56§;
      
      private var §-M§:§!k§;
      
      public function § $§(param1:String, param2:int, param3:§56§, param4:§!k§, param5:§3U§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§>R§ = param1;
         this.§7!?§ = param2;
         this.§4!]§ = param3;
         this.§<b§ = param12;
         this.§"$§ = param13;
         this.§class§ = param11;
         this.§-M§ = param4;
         this.§&!>§ = param5;
         this.§!K§ = new §[2§(param6);
         this.§>! § = param7;
         this.§9d§ = param8;
         if(this.§9d§ <= 0)
         {
            this.§9d§ = 1;
         }
         this.§'!V§ = param9;
         this.§[!!§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§class§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§<b§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§"$§;
      }
      
      public function §2!N§() : int
      {
         return this.shape.§7!P§();
      }
      
      public function §9"§() : int
      {
         return this.shape.§[3§();
      }
      
      public function §2!&§() : int
      {
         return this.shape.§ !7§();
      }
      
      public function §try§() : Number
      {
         return this.§4!]§.getValue(§56§.§get §);
      }
      
      public function §`K§() : Number
      {
         return Number(this.§4!]§.getValue(§56§.§=!W§));
      }
      
      public function §2!1§() : Number
      {
         return Number(this.§4!]§.getValue(§56§.§1x§));
      }
      
      public function §,!U§() : Number
      {
         return Number(this.§4!]§.getValue(§56§.§"![§));
      }
      
      public function §'B§() : Number
      {
         return Number(this.§4!]§.getValue(§56§.§<D§));
      }
      
      public function §]E§() : Number
      {
         return Number(this.§4!]§.getValue(§56§.§#>§));
      }
      
      public function §=W§() : Number
      {
         return Number(this.§4!]§.getValue(§56§.§`![§));
      }
      
      public function §?=§() : int
      {
         return this.§[!!§;
      }
      
      public function get material() : §56§
      {
         return this.§4!]§;
      }
      
      public function get shape() : §3U§
      {
         var _loc1_:Texture = null;
         if(!this.§&!>§)
         {
            _loc1_ = §"!S§.§-!7§.§?!O§.§!5§(this.§>R§).getFrame(0).texture;
            this.§&!>§ = new §3U§(this.§>R§,"Rectangle",_loc1_.width * §^!2§.§3!S§ / 2,_loc1_.height * §^!2§.§3!S§ / 2);
         }
         return this.§&!>§;
      }
      
      public function get §[v§() : §!k§
      {
         return this.§-M§;
      }
      
      public function get score() : int
      {
         return this.§!K§.getValue();
      }
   }
}
