package §#m§
{
   import §+!S§.Texture;
   import §-v§.§,!1§;
   import §4A§.§&_§;
   import §9I§.§ n§;
   
   public class §34§
   {
      
      public static const §;"§:int = 0;
      
      public static const §^C§:int = 6;
      
      public static const §'g§:int = 7;
      
      public static const §8!3§:int = 8;
      
      public static const §^[§:int = 3;
      
      public static const §^c§:int = 5;
      
      public static const §&!'§:int = 2;
      
      public static const §=l§:int = 1;
       
      
      public var §!I§:String;
      
      public var §#r§:int;
      
      protected var §72§:§ n§;
      
      public var §6h§:Number;
      
      public var §-9§:String;
      
      public var §0g§:Number = 1;
      
      public var §&=§:Number;
      
      private var §'!D§:Boolean = false;
      
      private var §9!c§:String;
      
      private var §1T§:int;
      
      private var §[w§:§;N§;
      
      private var §0!1§:§&r§;
      
      private var §9p§:§`5§;
      
      public function §34§(param1:String, param2:int, param3:§&r§, param4:§`5§, param5:§;N§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§!I§ = param1;
         this.§#r§ = param2;
         this.§0!1§ = param3;
         this.§9!c§ = param12;
         this.§1T§ = param13;
         this.§'!D§ = param11;
         this.§9p§ = param4;
         this.§[w§ = param5;
         this.§72§ = new § n§(param6);
         this.§-9§ = param7;
         this.§0g§ = param8;
         if(this.§0g§ <= 0)
         {
            this.§0g§ = 1;
         }
         this.§&=§ = param9;
         this.§6h§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§'!D§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§9!c§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§1T§;
      }
      
      public function §!!4§() : int
      {
         return this.shape.§<!>§();
      }
      
      public function §?L§() : int
      {
         return this.shape.§4I§();
      }
      
      public function §=_§() : int
      {
         return this.shape.§#q§();
      }
      
      public function §2!'§() : Number
      {
         return this.§0!1§.getValue(§&r§.§#$§);
      }
      
      public function §>u§() : Number
      {
         return Number(this.§0!1§.getValue(§&r§.§?+§));
      }
      
      public function §=]§() : Number
      {
         return Number(this.§0!1§.getValue(§&r§.§%j§));
      }
      
      public function §%!P§() : Number
      {
         return Number(this.§0!1§.getValue(§&r§.§4Q§));
      }
      
      public function §0§() : Number
      {
         return Number(this.§0!1§.getValue(§&r§.§4!8§));
      }
      
      public function §7G§() : Number
      {
         return Number(this.§0!1§.getValue(§&r§.§;<§));
      }
      
      public function §^!K§() : Number
      {
         return Number(this.§0!1§.getValue(§&r§.§4! §));
      }
      
      public function §?!7§() : int
      {
         return this.§6h§;
      }
      
      public function get material() : §&r§
      {
         return this.§0!1§;
      }
      
      public function get shape() : §;N§
      {
         var _loc1_:Texture = null;
         if(!this.§[w§)
         {
            _loc1_ = §,!1§.§2T§.§0!+§.§set §(this.§!I§).getFrame(0).texture;
            this.§[w§ = new §;N§(this.§!I§,"Rectangle",_loc1_.width * §&_§.§5-§ / 2,_loc1_.height * §&_§.§5-§ / 2);
         }
         return this.§[w§;
      }
      
      public function get §?b§() : §`5§
      {
         return this.§9p§;
      }
      
      public function get score() : int
      {
         return this.§72§.getValue();
      }
   }
}
