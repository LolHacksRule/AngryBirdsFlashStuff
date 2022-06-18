package §;!'§
{
   import §1#§.Texture;
   import §3V§.§9p§;
   import §6h§.§[!4§;
   import §9s§.§^9§;
   
   public class §;l§
   {
      
      public static const §<I§:int = 0;
      
      public static const §]&§:int = 6;
      
      public static const §'W§:int = 7;
      
      public static const §1! §:int = 8;
      
      public static const §2$§:int = 3;
      
      public static const §@Z§:int = 5;
      
      public static const §!!<§:int = 2;
      
      public static const §'G§:int = 1;
       
      
      public var §#+§:String;
      
      public var §3E§:int;
      
      protected var §#!;§:§9p§;
      
      public var §^G§:Number;
      
      public var §+Z§:String;
      
      public var §-!M§:Number = 1;
      
      public var §!d§:Number;
      
      private var §&!3§:Boolean = false;
      
      private var §-a§:String;
      
      private var §5]§:int;
      
      private var § D§:§'_§;
      
      private var §%!J§:§3!6§;
      
      private var §;!!§:§4&§;
      
      public function §;l§(param1:String, param2:int, param3:§3!6§, param4:§4&§, param5:§'_§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§#+§ = param1;
         this.§3E§ = param2;
         this.§%!J§ = param3;
         this.§-a§ = param12;
         this.§5]§ = param13;
         this.§&!3§ = param11;
         this.§;!!§ = param4;
         this.§ D§ = param5;
         this.§#!;§ = new §9p§(param6);
         this.§+Z§ = param7;
         this.§-!M§ = param8;
         if(this.§-!M§ <= 0)
         {
            this.§-!M§ = 1;
         }
         this.§!d§ = param9;
         this.§^G§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§&!3§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§-a§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§5]§;
      }
      
      public function § [§() : int
      {
         return this.shape.§4r§();
      }
      
      public function §5L§() : int
      {
         return this.shape.§6!B§();
      }
      
      public function §]!?§() : int
      {
         return this.shape.§ E§();
      }
      
      public function §[!$§() : Number
      {
         return this.§%!J§.getValue(§3!6§.§4I§);
      }
      
      public function §8E§() : Number
      {
         return Number(this.§%!J§.getValue(§3!6§.§1X§));
      }
      
      public function §3!G§() : Number
      {
         return Number(this.§%!J§.getValue(§3!6§.§'m§));
      }
      
      public function §-X§() : Number
      {
         return Number(this.§%!J§.getValue(§3!6§.§7-§));
      }
      
      public function §4s§() : Number
      {
         return Number(this.§%!J§.getValue(§3!6§.§;!2§));
      }
      
      public function §@!F§() : Number
      {
         return Number(this.§%!J§.getValue(§3!6§.§6!H§));
      }
      
      public function §8!>§() : Number
      {
         return Number(this.§%!J§.getValue(§3!6§.§ Z§));
      }
      
      public function §4C§() : int
      {
         return this.§^G§;
      }
      
      public function get material() : §3!6§
      {
         return this.§%!J§;
      }
      
      public function get shape() : §'_§
      {
         var _loc1_:Texture = null;
         if(!this.§ D§)
         {
            _loc1_ = §[!4§.§continue§.§%F§.§ +§(this.§#+§).getFrame(0).texture;
            this.§ D§ = new §'_§(this.§#+§,"Rectangle",_loc1_.width * §^9§.§5T§ / 2,_loc1_.height * §^9§.§5T§ / 2);
         }
         return this.§ D§;
      }
      
      public function get §[i§() : §4&§
      {
         return this.§;!!§;
      }
      
      public function get score() : int
      {
         return this.§#!;§.getValue();
      }
   }
}
