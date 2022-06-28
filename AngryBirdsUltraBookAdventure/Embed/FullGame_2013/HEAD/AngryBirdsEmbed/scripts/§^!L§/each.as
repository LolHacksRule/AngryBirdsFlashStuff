package §^!L§
{
   import §+!B§.§<!M§;
   import §0! §.Texture;
   import §5!L§.§=w§;
   import §6A§.§ !§;
   
   public class each
   {
      
      public static const §@i§:int = 0;
      
      public static const §=7§:int = 6;
      
      public static const §=!'§:int = 7;
      
      public static const §!!N§:int = 8;
      
      public static const §`V§:int = 3;
      
      public static const §,U§:int = 5;
      
      public static const §9R§:int = 2;
      
      public static const §6Z§:int = 1;
       
      
      public var §1>§:String;
      
      public var §@%§:int;
      
      protected var §2!§:§<!M§;
      
      public var §13§:Number;
      
      public var §8H§:String;
      
      public var §&!4§:Number = 1;
      
      public var §@!§:Number;
      
      private var §6n§:Boolean = false;
      
      private var §4N§:String;
      
      private var §0!>§:int;
      
      private var §3<§:§"c§;
      
      private var § %§:§5b§;
      
      private var §6s§:§%h§;
      
      public function each(param1:String, param2:int, param3:§5b§, param4:§%h§, param5:§"c§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§1>§ = param1;
         this.§@%§ = param2;
         this.§ %§ = param3;
         this.§4N§ = param12;
         this.§0!>§ = param13;
         this.§6n§ = param11;
         this.§6s§ = param4;
         this.§3<§ = param5;
         this.§2!§ = new §<!M§(param6);
         this.§8H§ = param7;
         this.§&!4§ = param8;
         if(this.§&!4§ <= 0)
         {
            this.§&!4§ = 1;
         }
         this.§@!§ = param9;
         this.§13§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§6n§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§4N§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§0!>§;
      }
      
      public function § 4§() : int
      {
         return this.shape.§3@§();
      }
      
      public function §1o§() : int
      {
         return this.shape.§&1§();
      }
      
      public function §<!;§() : int
      {
         return this.shape.§'6§();
      }
      
      public function §^!?§() : Number
      {
         return this.§ %§.getValue(§5b§.§>!2§);
      }
      
      public function §"7§() : Number
      {
         return Number(this.§ %§.getValue(§5b§.§'!1§));
      }
      
      public function §9`§() : Number
      {
         return Number(this.§ %§.getValue(§5b§.§-3§));
      }
      
      public function §+u§() : Number
      {
         return Number(this.§ %§.getValue(§5b§.§`@§));
      }
      
      public function §9l§() : Number
      {
         return Number(this.§ %§.getValue(§5b§.§^!0§));
      }
      
      public function §9k§() : Number
      {
         return Number(this.§ %§.getValue(§5b§.§0!,§));
      }
      
      public function § "§() : Number
      {
         return Number(this.§ %§.getValue(§5b§.§<!I§));
      }
      
      public function §3m§() : int
      {
         return this.§13§;
      }
      
      public function get material() : §5b§
      {
         return this.§ %§;
      }
      
      public function get shape() : §"c§
      {
         var _loc1_:Texture = null;
         if(!this.§3<§)
         {
            _loc1_ = §=w§.§ o§.§;!L§.§8!0§(this.§1>§).getFrame(0).texture;
            this.§3<§ = new §"c§(this.§1>§,"Rectangle",_loc1_.width * § !§.§`J§ / 2,_loc1_.height * § !§.§`J§ / 2);
         }
         return this.§3<§;
      }
      
      public function get §2;§() : §%h§
      {
         return this.§6s§;
      }
      
      public function get score() : int
      {
         return this.§2!§.getValue();
      }
   }
}
