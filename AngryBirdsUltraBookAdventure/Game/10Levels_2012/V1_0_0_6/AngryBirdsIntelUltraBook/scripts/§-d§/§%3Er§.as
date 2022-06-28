package §-d§
{
   import §2_§.§'u§;
   import §4>§.Texture;
   import §>! §.§^!c§;
   import §]+§.§=E§;
   
   public class §>r§
   {
      
      public static const §&"§:int = 0;
      
      public static const §;!?§:int = 6;
      
      public static const §+P§:int = 7;
      
      public static const §0=§:int = 8;
      
      public static const §7b§:int = 3;
      
      public static const §`!s§:int = 5;
      
      public static const §@!g§:int = 2;
      
      public static const §>t§:int = 1;
       
      
      public var §^r§:String;
      
      public var §]!g§:int;
      
      protected var §>!X§:§=E§;
      
      public var §'!u§:Number;
      
      public var §0!R§:String;
      
      public var §7!N§:Number = 1;
      
      public var §]l§:Number;
      
      private var §,!p§:Boolean = false;
      
      private var §&;§:String;
      
      private var §7#§:int;
      
      private var §]n§:§7]§;
      
      private var §]!l§:§3!F§;
      
      private var §[!K§:§-C§;
      
      public function §>r§(param1:String, param2:int, param3:§3!F§, param4:§-C§, param5:§7]§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§^r§ = param1;
         this.§]!g§ = param2;
         this.§]!l§ = param3;
         this.§&;§ = param12;
         this.§7#§ = param13;
         this.§,!p§ = param11;
         this.§[!K§ = param4;
         this.§]n§ = param5;
         this.§>!X§ = new §=E§(param6);
         this.§0!R§ = param7;
         this.§7!N§ = param8;
         if(this.§7!N§ <= 0)
         {
            this.§7!N§ = 1;
         }
         this.§]l§ = param9;
         this.§'!u§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§,!p§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§&;§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§7#§;
      }
      
      public function §0E§() : int
      {
         return this.shape.§8X§();
      }
      
      public function §29§() : int
      {
         return this.shape.§2p§();
      }
      
      public function §=!F§() : int
      {
         return this.shape.§#!L§();
      }
      
      public function §!!r§() : Number
      {
         return this.§]!l§.getValue(§3!F§.§5C§);
      }
      
      public function §7i§() : Number
      {
         return Number(this.§]!l§.getValue(§3!F§.§]!,§));
      }
      
      public function §#h§() : Number
      {
         return Number(this.§]!l§.getValue(§3!F§.§%!z§));
      }
      
      public function §<!A§() : Number
      {
         return Number(this.§]!l§.getValue(§3!F§.§!x§));
      }
      
      public function §5!v§() : Number
      {
         return Number(this.§]!l§.getValue(§3!F§.§"!E§));
      }
      
      public function §[!d§() : Number
      {
         return Number(this.§]!l§.getValue(§3!F§.§+!Q§));
      }
      
      public function §9!!§() : Number
      {
         return Number(this.§]!l§.getValue(§3!F§.§[!=§));
      }
      
      public function §7!I§() : int
      {
         return this.§'!u§;
      }
      
      public function get material() : §3!F§
      {
         return this.§]!l§;
      }
      
      public function get shape() : §7]§
      {
         var _loc1_:Texture = null;
         if(!this.§]n§)
         {
            _loc1_ = §^!c§.§5!Y§.animationManager.getAnimation(this.§^r§).getFrame(0).texture;
            this.§]n§ = new §7]§(this.§^r§,"Rectangle",_loc1_.width * §'u§.§18§ / 2,_loc1_.height * §'u§.§18§ / 2);
         }
         return this.§]n§;
      }
      
      public function get §;!"§() : §-C§
      {
         return this.§[!K§;
      }
      
      public function get score() : int
      {
         return this.§>!X§.getValue();
      }
   }
}
