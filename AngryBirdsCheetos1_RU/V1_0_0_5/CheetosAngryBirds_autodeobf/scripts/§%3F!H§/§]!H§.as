package §?!H§
{
   import §!%§.§1m§;
   import §%b§.§0!Z§;
   import §'d§.§3>§;
   import §-A§.Texture;
   
   public class §]!H§
   {
      
      public static const § !-§:int = 0;
      
      public static const §=!$§:int = 6;
      
      public static const §?P§:int = 7;
      
      public static const §3]§:int = 8;
      
      public static const §6!K§:int = 3;
      
      public static const §7!?§:int = 5;
      
      public static const §>!;§:int = 2;
      
      public static const §'"§:int = 1;
       
      
      public var §]!W§:String;
      
      public var §<l§:int;
      
      protected var §;!&§:§1m§;
      
      public var §<!E§:Number;
      
      public var §&r§:String;
      
      public var §,!5§:Number = 1;
      
      public var §-#§:Number;
      
      private var §-!8§:Boolean = false;
      
      private var §"&§:String;
      
      private var §1N§:int;
      
      private var §-d§:§?U§;
      
      private var §;!%§:§+e§;
      
      private var §"f§:§=!D§;
      
      public function §]!H§(param1:String, param2:int, param3:§+e§, param4:§=!D§, param5:§?U§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§]!W§ = param1;
         this.§<l§ = param2;
         this.§;!%§ = param3;
         this.§"&§ = param12;
         this.§1N§ = param13;
         this.§-!8§ = param11;
         this.§"f§ = param4;
         this.§-d§ = param5;
         this.§;!&§ = new §1m§(param6);
         this.§&r§ = param7;
         this.§,!5§ = param8;
         if(this.§,!5§ <= 0)
         {
            this.§,!5§ = 1;
         }
         this.§-#§ = param9;
         this.§<!E§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§-!8§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§"&§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§1N§;
      }
      
      public function §#S§() : int
      {
         return this.shape.§<!7§();
      }
      
      public function §=d§() : int
      {
         return this.shape.§73§();
      }
      
      public function §+q§() : int
      {
         return this.shape.§=!V§();
      }
      
      public function §5!G§() : Number
      {
         return this.§;!%§.getValue(§+e§.§+r§);
      }
      
      public function §[!]§() : Number
      {
         return Number(this.§;!%§.getValue(§+e§.§0V§));
      }
      
      public function §6!P§() : Number
      {
         return Number(this.§;!%§.getValue(§+e§.§-1§));
      }
      
      public function §6!%§() : Number
      {
         return Number(this.§;!%§.getValue(§+e§.§1P§));
      }
      
      public function §'b§() : Number
      {
         return Number(this.§;!%§.getValue(§+e§.§=W§));
      }
      
      public function §,! §() : Number
      {
         return Number(this.§;!%§.getValue(§+e§.§?>§));
      }
      
      public function §1!E§() : Number
      {
         return Number(this.§;!%§.getValue(§+e§.§>!$§));
      }
      
      public function §4K§() : int
      {
         return this.§<!E§;
      }
      
      public function get material() : §+e§
      {
         return this.§;!%§;
      }
      
      public function get shape() : §?U§
      {
         var _loc1_:Texture = null;
         if(!this.§-d§)
         {
            _loc1_ = §3>§.§8!$§.§%!P§.§0g§(this.§]!W§).getFrame(0).texture;
            this.§-d§ = new §?U§(this.§]!W§,"Rectangle",_loc1_.width * §0!Z§.§+n§ / 2,_loc1_.height * §0!Z§.§+n§ / 2);
         }
         return this.§-d§;
      }
      
      public function get §[x§() : §=!D§
      {
         return this.§"f§;
      }
      
      public function get score() : int
      {
         return this.§;!&§.getValue();
      }
   }
}
