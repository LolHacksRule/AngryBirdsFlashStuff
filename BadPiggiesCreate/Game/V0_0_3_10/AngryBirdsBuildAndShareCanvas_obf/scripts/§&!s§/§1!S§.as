package §&!s§
{
   import §&!&§.§1"7§;
   import §1U§.§"!V§;
   import §4!S§.Texture;
   import §4!s§.§%I§;
   
   public class §1!S§
   {
      
      public static const §^$§:int = 0;
      
      public static const §%Y§:int = 6;
      
      public static const §8"4§:int = 7;
      
      public static const §>!g§:int = 8;
      
      public static const §=^§:int = 3;
      
      public static const §?8§:int = 5;
      
      public static const §,!G§:int = 2;
      
      public static const §<J§:int = 1;
       
      
      public var §'!l§:String;
      
      public var §`!A§:int;
      
      protected var §<_§:§1"7§;
      
      public var §3w§:Number;
      
      public var §%"9§:String;
      
      public var §<#§:Number = 1;
      
      public var §4>§:Number;
      
      private var §92§:Boolean = false;
      
      private var §^Z§:String;
      
      private var §+7§:int;
      
      private var §3X§:§,!c§;
      
      private var §3!J§:§=!E§;
      
      private var §[%§:§!m§;
      
      public function §1!S§(param1:String, param2:int, param3:§=!E§, param4:§!m§, param5:§,!c§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§'!l§ = param1;
         this.§`!A§ = param2;
         this.§3!J§ = param3;
         this.§^Z§ = param12;
         this.§+7§ = param13;
         this.§92§ = param11;
         this.§[%§ = param4;
         this.§3X§ = param5;
         this.§<_§ = new §1"7§(param6);
         this.§%"9§ = param7;
         this.§<#§ = param8;
         if(this.§<#§ <= 0)
         {
            this.§<#§ = 1;
         }
         this.§4>§ = param9;
         this.§3w§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§92§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§^Z§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§+7§;
      }
      
      public function §-!O§() : int
      {
         return this.shape.§>!!§();
      }
      
      public function §0E§() : int
      {
         return this.shape.§>"#§();
      }
      
      public function §4"7§() : int
      {
         return this.shape.§,Z§();
      }
      
      public function §3m§() : Number
      {
         return this.§3!J§.getValue(§=!E§.§;x§);
      }
      
      public function §3!I§() : Number
      {
         return Number(this.§3!J§.getValue(§=!E§.§0! §));
      }
      
      public function §]w§() : Number
      {
         return Number(this.§3!J§.getValue(§=!E§.§'!c§));
      }
      
      public function §>g§() : Number
      {
         return Number(this.§3!J§.getValue(§=!E§.§@T§));
      }
      
      public function §-!k§() : Number
      {
         return Number(this.§3!J§.getValue(§=!E§.§?<§));
      }
      
      public function §`!D§() : Number
      {
         return Number(this.§3!J§.getValue(§=!E§.§&!6§));
      }
      
      public function §,!V§() : Number
      {
         return Number(this.§3!J§.getValue(§=!E§.§`I§));
      }
      
      public function §!!T§() : int
      {
         return this.§3w§;
      }
      
      public function get material() : §=!E§
      {
         return this.§3!J§;
      }
      
      public function get shape() : §,!c§
      {
         var _loc1_:Texture = null;
         if(!this.§3X§)
         {
            _loc1_ = §"!V§.§!j§.§^d§.§5!7§(this.§'!l§).getFrame(0).texture;
            this.§3X§ = new §,!c§(this.§'!l§,"Rectangle",_loc1_.width * §%I§.§9"4§ / 2,_loc1_.height * §%I§.§9"4§ / 2);
         }
         return this.§3X§;
      }
      
      public function get §%!m§() : §!m§
      {
         return this.§[%§;
      }
      
      public function get score() : int
      {
         return this.§<_§.getValue();
      }
   }
}
