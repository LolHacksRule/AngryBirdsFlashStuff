package §,a§
{
   import §%c§.§=!X§;
   import §'@§.§^J§;
   import §5!V§.§!w§;
   import §7R§.Texture;
   
   public class §]!>§
   {
      
      public static const §=!a§:int = 0;
      
      public static const §&j§:int = 6;
      
      public static const §%q§:int = 7;
      
      public static const §;!B§:int = 8;
      
      public static const §-"?§:int = 3;
      
      public static const §9!K§:int = 5;
      
      public static const §,"9§:int = 2;
      
      public static const §&;§:int = 1;
       
      
      public var §!F§:String;
      
      public var §,!E§:int;
      
      protected var §@!8§:§^J§;
      
      public var §7!]§:Number;
      
      public var §=!_§:String;
      
      public var § !u§:Number = 1;
      
      public var §'">§:Number;
      
      private var §#">§:Boolean = false;
      
      private var §'K§:String;
      
      private var §0V§:int;
      
      private var §#z§:§^7§;
      
      private var §]L§:§+!Z§;
      
      private var §9S§:§+"&§;
      
      public function §]!>§(param1:String, param2:int, param3:§+!Z§, param4:§+"&§, param5:§^7§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§!F§ = param1;
         this.§,!E§ = param2;
         this.§]L§ = param3;
         this.§'K§ = param12;
         this.§0V§ = param13;
         this.§#">§ = param11;
         this.§9S§ = param4;
         this.§#z§ = param5;
         this.§@!8§ = new §^J§(param6);
         this.§=!_§ = param7;
         this.§ !u§ = param8;
         if(this.§ !u§ <= 0)
         {
            this.§ !u§ = 1;
         }
         this.§'">§ = param9;
         this.§7!]§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§#">§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§'K§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§0V§;
      }
      
      public function §9!§() : int
      {
         return this.shape.§7!U§();
      }
      
      public function §3[§() : int
      {
         return this.shape.§=y§();
      }
      
      public function §=B§() : int
      {
         return this.shape.§-p§();
      }
      
      public function §5g§() : Number
      {
         return this.§]L§.getValue(§+!Z§.§8";§);
      }
      
      public function §7"8§() : Number
      {
         return Number(this.§]L§.getValue(§+!Z§.§-!#§));
      }
      
      public function §^!?§() : Number
      {
         return Number(this.§]L§.getValue(§+!Z§.§,A§));
      }
      
      public function §[">§() : Number
      {
         return Number(this.§]L§.getValue(§+!Z§.§%"'§));
      }
      
      public function §-!I§() : Number
      {
         return Number(this.§]L§.getValue(§+!Z§.§,!>§));
      }
      
      public function §0i§() : Number
      {
         return Number(this.§]L§.getValue(§+!Z§.§9",§));
      }
      
      public function §=r§() : Number
      {
         return Number(this.§]L§.getValue(§+!Z§.§@!T§));
      }
      
      public function §,!,§() : int
      {
         return this.§7!]§;
      }
      
      public function get material() : §+!Z§
      {
         return this.§]L§;
      }
      
      public function get shape() : §^7§
      {
         var _loc1_:Texture = null;
         if(!this.§#z§)
         {
            _loc1_ = §=!X§.§!'§.§<"%§.§@7§(this.§!F§).getFrame(0).texture;
            this.§#z§ = new §^7§(this.§!F§,"Rectangle",_loc1_.width * §!w§.§4!-§ / 2,_loc1_.height * §!w§.§4!-§ / 2);
         }
         return this.§#z§;
      }
      
      public function get §3k§() : §+"&§
      {
         return this.§9S§;
      }
      
      public function get score() : int
      {
         return this.§@!8§.getValue();
      }
   }
}
