package § ""§
{
   import §,!!§.§0"!§;
   import §8!E§.§?!X§;
   import §=!<§.§5!U§;
   import §@!#§.Texture;
   
   public class §]k§
   {
      
      public static const §9O§:int = 0;
      
      public static const §%!5§:int = 6;
      
      public static const §>U§:int = 7;
      
      public static const §%"9§:int = 8;
      
      public static const §8"$§:int = 3;
      
      public static const §'!o§:int = 5;
      
      public static const §%!A§:int = 2;
      
      public static const §'U§:int = 1;
       
      
      public var §=!+§:String;
      
      public var §!"3§:int;
      
      protected var §!v§:§0"!§;
      
      public var §0!E§:Number;
      
      public var §1P§:String;
      
      public var § 4§:Number = 1;
      
      public var §&<§:Number;
      
      private var §=6§:Boolean = false;
      
      private var §,#§:String;
      
      private var §]o§:int;
      
      private var §;"3§:§["?§;
      
      private var §4!D§:§7Q§;
      
      private var §",§:§<9§;
      
      public function §]k§(param1:String, param2:int, param3:§7Q§, param4:§<9§, param5:§["?§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§=!+§ = param1;
         this.§!"3§ = param2;
         this.§4!D§ = param3;
         this.§,#§ = param12;
         this.§]o§ = param13;
         this.§=6§ = param11;
         this.§",§ = param4;
         this.§;"3§ = param5;
         this.§!v§ = new §0"!§(param6);
         this.§1P§ = param7;
         this.§ 4§ = param8;
         if(this.§ 4§ <= 0)
         {
            this.§ 4§ = 1;
         }
         this.§&<§ = param9;
         this.§0!E§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§=6§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§,#§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§]o§;
      }
      
      public function §="?§() : int
      {
         return this.shape.§%!N§();
      }
      
      public function §2W§() : int
      {
         return this.shape.§ "=§();
      }
      
      public function §8">§() : int
      {
         return this.shape.§>!F§();
      }
      
      public function §-"<§() : Number
      {
         return this.§4!D§.getValue(§7Q§.§[i§);
      }
      
      public function §!!9§() : Number
      {
         return Number(this.§4!D§.getValue(§7Q§.§'!Q§));
      }
      
      public function §;,§() : Number
      {
         return Number(this.§4!D§.getValue(§7Q§.§ !,§));
      }
      
      public function §]+§() : Number
      {
         return Number(this.§4!D§.getValue(§7Q§.§!G§));
      }
      
      public function § !Z§() : Number
      {
         return Number(this.§4!D§.getValue(§7Q§.§ S§));
      }
      
      public function §,6§() : Number
      {
         return Number(this.§4!D§.getValue(§7Q§.§4!q§));
      }
      
      public function §&!R§() : Number
      {
         return Number(this.§4!D§.getValue(§7Q§.§3W§));
      }
      
      public function §^d§() : int
      {
         return this.§0!E§;
      }
      
      public function get material() : §7Q§
      {
         return this.§4!D§;
      }
      
      public function get shape() : §["?§
      {
         var _loc1_:Texture = null;
         if(!this.§;"3§)
         {
            _loc1_ = §5!U§.§,!E§.§1!,§.§ "1§(this.§=!+§).getFrame(0).texture;
            this.§;"3§ = new §["?§(this.§=!+§,"Rectangle",_loc1_.width * §?!X§.§57§ / 2,_loc1_.height * §?!X§.§57§ / 2);
         }
         return this.§;"3§;
      }
      
      public function get §@X§() : §<9§
      {
         return this.§",§;
      }
      
      public function get score() : int
      {
         return this.§!v§.getValue();
      }
   }
}
