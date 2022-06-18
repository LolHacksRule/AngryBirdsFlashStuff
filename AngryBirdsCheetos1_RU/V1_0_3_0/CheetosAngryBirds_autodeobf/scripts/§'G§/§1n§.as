package §'G§
{
   import §+!^§.§'Y§;
   import §+a§.Texture;
   import §+d§.§!F§;
   import §9T§.§=!^§;
   
   public class §1n§
   {
      
      public static const §3Q§:int = 0;
      
      public static const §[E§:int = 6;
      
      public static const §"!Z§:int = 7;
      
      public static const §8!T§:int = 8;
      
      public static const §1w§:int = 3;
      
      public static const §!!S§:int = 5;
      
      public static const §;!H§:int = 2;
      
      public static const §&!#§:int = 1;
       
      
      public var §@!]§:String;
      
      public var §!!&§:int;
      
      protected var §4T§:§!F§;
      
      public var §[!O§:Number;
      
      public var §1!Q§:String;
      
      public var §?F§:Number = 1;
      
      public var §6!_§:Number;
      
      private var §%!@§:Boolean = false;
      
      private var §<v§:String;
      
      private var §!"§:int;
      
      private var §[I§:§2!]§;
      
      private var §1!"§:§?[§;
      
      private var §4!D§:§5e§;
      
      public function §1n§(param1:String, param2:int, param3:§?[§, param4:§5e§, param5:§2!]§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§@!]§ = param1;
         this.§!!&§ = param2;
         this.§1!"§ = param3;
         this.§<v§ = param12;
         this.§!"§ = param13;
         this.§%!@§ = param11;
         this.§4!D§ = param4;
         this.§[I§ = param5;
         this.§4T§ = new §!F§(param6);
         this.§1!Q§ = param7;
         this.§?F§ = param8;
         if(this.§?F§ <= 0)
         {
            this.§?F§ = 1;
         }
         this.§6!_§ = param9;
         this.§[!O§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§%!@§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§<v§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§!"§;
      }
      
      public function §[!'§() : int
      {
         return this.shape.§8+§();
      }
      
      public function §4!S§() : int
      {
         return this.shape.§'?§();
      }
      
      public function §%x§() : int
      {
         return this.shape.§0K§();
      }
      
      public function §%t§() : Number
      {
         return this.§1!"§.getValue(§?[§.§1d§);
      }
      
      public function §%j§() : Number
      {
         return Number(this.§1!"§.getValue(§?[§.§^7§));
      }
      
      public function §60§() : Number
      {
         return Number(this.§1!"§.getValue(§?[§.§;!D§));
      }
      
      public function §@!8§() : Number
      {
         return Number(this.§1!"§.getValue(§?[§.§?!X§));
      }
      
      public function §else §() : Number
      {
         return Number(this.§1!"§.getValue(§?[§.§;!V§));
      }
      
      public function §5=§() : Number
      {
         return Number(this.§1!"§.getValue(§?[§.§]Y§));
      }
      
      public function §+!@§() : Number
      {
         return Number(this.§1!"§.getValue(§?[§.§4!C§));
      }
      
      public function §&!5§() : int
      {
         return this.§[!O§;
      }
      
      public function get material() : §?[§
      {
         return this.§1!"§;
      }
      
      public function get shape() : §2!]§
      {
         var _loc1_:Texture = null;
         if(!this.§[I§)
         {
            _loc1_ = §'Y§.§@j§.§'!;§.§#!E§(this.§@!]§).getFrame(0).texture;
            this.§[I§ = new §2!]§(this.§@!]§,"Rectangle",_loc1_.width * §=!^§.§4#§ / 2,_loc1_.height * §=!^§.§4#§ / 2);
         }
         return this.§[I§;
      }
      
      public function get §]_§() : §5e§
      {
         return this.§4!D§;
      }
      
      public function get score() : int
      {
         return this.§4T§.getValue();
      }
   }
}
