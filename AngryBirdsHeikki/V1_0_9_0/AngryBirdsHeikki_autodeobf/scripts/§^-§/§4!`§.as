package §^-§
{
   import § 0§.Texture;
   import § d§.§'!"§;
   import §3r§.§1S§;
   import §>!F§.§9!Z§;
   
   public class §4!`§
   {
      
      public static const § [§:int = 0;
      
      public static const §-Q§:int = 6;
      
      public static const §7@§:int = 7;
      
      public static const §,!#§:int = 8;
      
      public static const §?7§:int = 3;
      
      public static const §8V§:int = 5;
      
      public static const §&M§:int = 2;
      
      public static const §;w§:int = 1;
       
      
      public var §]D§:String;
      
      public var §`O§:int;
      
      protected var §^c§:§1S§;
      
      public var §^H§:Number;
      
      public var §6n§:String;
      
      public var §+!8§:Number = 1;
      
      public var §&J§:Number;
      
      private var §#!^§:Boolean = false;
      
      private var §&p§:String;
      
      private var §&!c§:int;
      
      private var §=!_§:§=!B§;
      
      private var §-%§:§#!3§;
      
      private var §>! §:§'!!§;
      
      public function §4!`§(param1:String, param2:int, param3:§#!3§, param4:§'!!§, param5:§=!B§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§]D§ = param1;
         this.§`O§ = param2;
         this.§-%§ = param3;
         this.§&p§ = param12;
         this.§&!c§ = param13;
         this.§#!^§ = param11;
         this.§>! § = param4;
         this.§=!_§ = param5;
         this.§^c§ = new §1S§(param6);
         this.§6n§ = param7;
         this.§+!8§ = param8;
         if(this.§+!8§ <= 0)
         {
            this.§+!8§ = 1;
         }
         this.§&J§ = param9;
         this.§^H§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§#!^§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§&p§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§&!c§;
      }
      
      public function §6W§() : int
      {
         return this.shape.§<!D§();
      }
      
      public function §!L§() : int
      {
         return this.shape.§^3§();
      }
      
      public function §=L§() : int
      {
         return this.shape.§57§();
      }
      
      public function §'R§() : Number
      {
         return this.§-%§.getValue(§#!3§.§!H§);
      }
      
      public function §%!3§() : Number
      {
         return Number(this.§-%§.getValue(§#!3§.§<J§));
      }
      
      public function §>!I§() : Number
      {
         return Number(this.§-%§.getValue(§#!3§.§ w§));
      }
      
      public function §3!9§() : Number
      {
         return Number(this.§-%§.getValue(§#!3§.§-!P§));
      }
      
      public function §@!_§() : Number
      {
         return Number(this.§-%§.getValue(§#!3§.§-!X§));
      }
      
      public function §&!1§() : Number
      {
         return Number(this.§-%§.getValue(§#!3§.§@!$§));
      }
      
      public function §"! §() : Number
      {
         return Number(this.§-%§.getValue(§#!3§.§;7§));
      }
      
      public function §1§() : int
      {
         return this.§^H§;
      }
      
      public function get material() : §#!3§
      {
         return this.§-%§;
      }
      
      public function get shape() : §=!B§
      {
         var _loc1_:Texture = null;
         if(!this.§=!_§)
         {
            _loc1_ = §9!Z§.§5!$§.§4!2§.§'k§(this.§]D§).getFrame(0).texture;
            this.§=!_§ = new §=!B§(this.§]D§,"Rectangle",_loc1_.width * §'!"§.§#3§ / 2,_loc1_.height * §'!"§.§#3§ / 2);
         }
         return this.§=!_§;
      }
      
      public function get §5n§() : §'!!§
      {
         return this.§>! §;
      }
      
      public function get score() : int
      {
         return this.§^c§.getValue();
      }
   }
}
