package §0S§
{
   import §40§.§5G§;
   import §;!y§.§,!s§;
   import §<-§.§2B§;
   import §?]§.Texture;
   
   public class §4K§
   {
      
      public static const §&!8§:int = 0;
      
      public static const §6r§:int = 6;
      
      public static const §,<§:int = 7;
      
      public static const §5-§:int = 8;
      
      public static const §^!Q§:int = 3;
      
      public static const §8!J§:int = 5;
      
      public static const §!!U§:int = 2;
      
      public static const §9A§:int = 1;
       
      
      public var §-!>§:String;
      
      public var §-!o§:int;
      
      protected var §`!x§:§2B§;
      
      public var §?!$§:Number;
      
      public var §^w§:String;
      
      public var §'!§:Number = 1;
      
      public var §]!3§:Number;
      
      private var §4!!§:Boolean = false;
      
      private var §?!T§:String;
      
      private var §&!-§:int;
      
      private var §0>§:§6R§;
      
      private var §"7§:§ L§;
      
      private var §5!q§:§6!D§;
      
      public function §4K§(param1:String, param2:int, param3:§ L§, param4:§6!D§, param5:§6R§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§-!>§ = param1;
         this.§-!o§ = param2;
         this.§"7§ = param3;
         this.§?!T§ = param12;
         this.§&!-§ = param13;
         this.§4!!§ = param11;
         this.§5!q§ = param4;
         this.§0>§ = param5;
         this.§`!x§ = new §2B§(param6);
         this.§^w§ = param7;
         this.§'!§ = param8;
         if(this.§'!§ <= 0)
         {
            this.§'!§ = 1;
         }
         this.§]!3§ = param9;
         this.§?!$§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§4!!§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§?!T§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§&!-§;
      }
      
      public function §7!X§() : int
      {
         return this.shape.§%!>§();
      }
      
      public function §%!Q§() : int
      {
         return this.shape.§]k§();
      }
      
      public function §]§() : int
      {
         return this.shape.§%"#§();
      }
      
      public function §7"§() : Number
      {
         return this.§"7§.getValue(§ L§.§@q§);
      }
      
      public function §4!a§() : Number
      {
         return Number(this.§"7§.getValue(§ L§.§<"$§));
      }
      
      public function §-l§() : Number
      {
         return Number(this.§"7§.getValue(§ L§.§+>§));
      }
      
      public function §@!`§() : Number
      {
         return Number(this.§"7§.getValue(§ L§.§?L§));
      }
      
      public function §4Z§() : Number
      {
         return Number(this.§"7§.getValue(§ L§.§82§));
      }
      
      public function §]!&§() : Number
      {
         return Number(this.§"7§.getValue(§ L§.§'!x§));
      }
      
      public function §2!H§() : Number
      {
         return Number(this.§"7§.getValue(§ L§.§'n§));
      }
      
      public function §>x§() : int
      {
         return this.§?!$§;
      }
      
      public function get material() : § L§
      {
         return this.§"7§;
      }
      
      public function get shape() : §6R§
      {
         var _loc1_:Texture = null;
         if(!this.§0>§)
         {
            _loc1_ = §,!s§.§=!I§.animationManager.getAnimation(this.§-!>§).getFrame(0).texture;
            this.§0>§ = new §6R§(this.§-!>§,"Rectangle",_loc1_.width * §5G§.§6+§ / 2,_loc1_.height * §5G§.§6+§ / 2);
         }
         return this.§0>§;
      }
      
      public function get §9!M§() : §6!D§
      {
         return this.§5!q§;
      }
      
      public function get score() : int
      {
         return this.§`!x§.getValue();
      }
   }
}
