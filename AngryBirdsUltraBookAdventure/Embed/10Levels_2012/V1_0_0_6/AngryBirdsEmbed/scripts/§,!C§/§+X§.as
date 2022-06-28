package §,!C§
{
   import §%!6§.§'[§;
   import §+!?§.§"h§;
   import §3G§.§!E§;
   import §7!=§.Texture;
   
   public class §+X§
   {
      
      public static const §9?§:int = 0;
      
      public static const §1!C§:int = 6;
      
      public static const §!q§:int = 7;
      
      public static const §2p§:int = 8;
      
      public static const § !'§:int = 3;
      
      public static const §92§:int = 5;
      
      public static const § >§:int = 2;
      
      public static const § 2§:int = 1;
       
      
      public var §>!"§:String;
      
      public var §!U§:int;
      
      protected var §2m§:§'[§;
      
      public var §'U§:Number;
      
      public var §4!§:String;
      
      public var §"r§:Number = 1;
      
      public var §%!J§:Number;
      
      private var §?"§:Boolean = false;
      
      private var §+M§:String;
      
      private var §?!I§:int;
      
      private var §#!+§:§6m§;
      
      private var §]!<§:§8!3§;
      
      private var §class§:§implements§;
      
      public function §+X§(param1:String, param2:int, param3:§8!3§, param4:§implements§, param5:§6m§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§>!"§ = param1;
         this.§!U§ = param2;
         this.§]!<§ = param3;
         this.§+M§ = param12;
         this.§?!I§ = param13;
         this.§?"§ = param11;
         this.§class§ = param4;
         this.§#!+§ = param5;
         this.§2m§ = new §'[§(param6);
         this.§4!§ = param7;
         this.§"r§ = param8;
         if(this.§"r§ <= 0)
         {
            this.§"r§ = 1;
         }
         this.§%!J§ = param9;
         this.§'U§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§?"§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§+M§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§?!I§;
      }
      
      public function §7a§() : int
      {
         return this.shape.§,W§();
      }
      
      public function §;r§() : int
      {
         return this.shape.§9$§();
      }
      
      public function §#G§() : int
      {
         return this.shape.§8'§();
      }
      
      public function override() : Number
      {
         return this.§]!<§.getValue(§8!3§.§4!=§);
      }
      
      public function §1]§() : Number
      {
         return Number(this.§]!<§.getValue(§8!3§.§"!I§));
      }
      
      public function §![§() : Number
      {
         return Number(this.§]!<§.getValue(§8!3§.§'!0§));
      }
      
      public function §<<§() : Number
      {
         return Number(this.§]!<§.getValue(§8!3§.§,0§));
      }
      
      public function §6S§() : Number
      {
         return Number(this.§]!<§.getValue(§8!3§.§default§));
      }
      
      public function §-U§() : Number
      {
         return Number(this.§]!<§.getValue(§8!3§.§%i§));
      }
      
      public function §9>§() : Number
      {
         return Number(this.§]!<§.getValue(§8!3§.§8!9§));
      }
      
      public function §1!%§() : int
      {
         return this.§'U§;
      }
      
      public function get material() : §8!3§
      {
         return this.§]!<§;
      }
      
      public function get shape() : §6m§
      {
         var _loc1_:Texture = null;
         if(!this.§#!+§)
         {
            _loc1_ = §"h§.§1C§.§ use§.§,!;§(this.§>!"§).getFrame(0).texture;
            this.§#!+§ = new §6m§(this.§>!"§,"Rectangle",_loc1_.width * §!E§.§#N§ / 2,_loc1_.height * §!E§.§#N§ / 2);
         }
         return this.§#!+§;
      }
      
      public function get §#T§() : §implements§
      {
         return this.§class§;
      }
      
      public function get score() : int
      {
         return this.§2m§.getValue();
      }
   }
}
