package §%n§
{
   import §'O§.§>q§;
   import §1!§.§@!Q§;
   import §8!`§.§4J§;
   import §]p§.Texture;
   
   public class §<>§
   {
      
      public static const §7Y§:int = 0;
      
      public static const §>!#§:int = 6;
      
      public static const §3B§:int = 7;
      
      public static const §+i§:int = 8;
      
      public static const §-!F§:int = 3;
      
      public static const §2V§:int = 5;
      
      public static const §'I§:int = 2;
      
      public static const §>!'§:int = 1;
       
      
      public var §4u§:String;
      
      public var §;&§:int;
      
      protected var §;!;§:§>q§;
      
      public var §!!U§:Number;
      
      public var §%l§:String;
      
      public var §0!-§:Number = 1;
      
      public var §!e§:Number;
      
      private var §+v§:Boolean = false;
      
      private var §@G§:String;
      
      private var §0g§:int;
      
      private var §3F§:§"!;§;
      
      private var §,!#§:§4Q§;
      
      private var §+g§:§3!A§;
      
      public function §<>§(param1:String, param2:int, param3:§4Q§, param4:§3!A§, param5:§"!;§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§4u§ = param1;
         this.§;&§ = param2;
         this.§,!#§ = param3;
         this.§@G§ = param12;
         this.§0g§ = param13;
         this.§+v§ = param11;
         this.§+g§ = param4;
         this.§3F§ = param5;
         this.§;!;§ = new §>q§(param6);
         this.§%l§ = param7;
         this.§0!-§ = param8;
         if(this.§0!-§ <= 0)
         {
            this.§0!-§ = 1;
         }
         this.§!e§ = param9;
         this.§!!U§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§+v§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§@G§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§0g§;
      }
      
      public function § &§() : int
      {
         return this.shape.§"!-§();
      }
      
      public function §0^§() : int
      {
         return this.shape.§-6§();
      }
      
      public function §^%§() : int
      {
         return this.shape.§>!2§();
      }
      
      public function §5&§() : Number
      {
         return this.§,!#§.getValue(§4Q§.§6!%§);
      }
      
      public function §&v§() : Number
      {
         return Number(this.§,!#§.getValue(§4Q§.§3g§));
      }
      
      public function §6![§() : Number
      {
         return Number(this.§,!#§.getValue(§4Q§.§+!!§));
      }
      
      public function §+!Z§() : Number
      {
         return Number(this.§,!#§.getValue(§4Q§.§@t§));
      }
      
      public function §05§() : Number
      {
         return Number(this.§,!#§.getValue(§4Q§.§``§));
      }
      
      public function §^f§() : Number
      {
         return Number(this.§,!#§.getValue(§4Q§.§<K§));
      }
      
      public function §]!'§() : Number
      {
         return Number(this.§,!#§.getValue(§4Q§.§];§));
      }
      
      public function §,!T§() : int
      {
         return this.§!!U§;
      }
      
      public function get material() : §4Q§
      {
         return this.§,!#§;
      }
      
      public function get shape() : §"!;§
      {
         var _loc1_:Texture = null;
         if(!this.§3F§)
         {
            _loc1_ = §@!Q§.§7l§.§+!a§.§-!J§(this.§4u§).getFrame(0).texture;
            this.§3F§ = new §"!;§(this.§4u§,"Rectangle",_loc1_.width * §4J§.§<W§ / 2,_loc1_.height * §4J§.§<W§ / 2);
         }
         return this.§3F§;
      }
      
      public function get §76§() : §3!A§
      {
         return this.§+g§;
      }
      
      public function get score() : int
      {
         return this.§;!;§.getValue();
      }
   }
}
