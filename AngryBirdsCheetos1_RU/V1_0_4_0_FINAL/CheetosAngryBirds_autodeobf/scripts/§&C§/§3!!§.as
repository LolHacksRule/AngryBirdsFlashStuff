package §&C§
{
   import §+![§.Texture;
   import §,+§.§@!E§;
   import §0V§.§`!O§;
   import §^Q§.§,^§;
   
   public class §3!!§
   {
      
      public static const §0!Y§:int = 0;
      
      public static const §<z§:int = 6;
      
      public static const §>!G§:int = 7;
      
      public static const §@!5§:int = 8;
      
      public static const §'2§:int = 3;
      
      public static const §^!4§:int = 5;
      
      public static const §,M§:int = 2;
      
      public static const §<C§:int = 1;
       
      
      public var §6O§:String;
      
      public var §,$§:int;
      
      protected var §&!L§:§@!E§;
      
      public var §'V§:Number;
      
      public var §^!§:String;
      
      public var §6S§:Number = 1;
      
      public var §,!,§:Number;
      
      private var §'!;§:Boolean = false;
      
      private var §6j§:String;
      
      private var §6!,§:int;
      
      private var §>B§:§![§;
      
      private var §^!P§:§`=§;
      
      private var §#!L§:§7!1§;
      
      public function §3!!§(param1:String, param2:int, param3:§`=§, param4:§7!1§, param5:§![§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§6O§ = param1;
         this.§,$§ = param2;
         this.§^!P§ = param3;
         this.§6j§ = param12;
         this.§6!,§ = param13;
         this.§'!;§ = param11;
         this.§#!L§ = param4;
         this.§>B§ = param5;
         this.§&!L§ = new §@!E§(param6);
         this.§^!§ = param7;
         this.§6S§ = param8;
         if(this.§6S§ <= 0)
         {
            this.§6S§ = 1;
         }
         this.§,!,§ = param9;
         this.§'V§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§'!;§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§6j§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§6!,§;
      }
      
      public function §2!c§() : int
      {
         return this.shape.§1_§();
      }
      
      public function §"%§() : int
      {
         return this.shape.§else §();
      }
      
      public function §8!7§() : int
      {
         return this.shape.§"P§();
      }
      
      public function §>Y§() : Number
      {
         return this.§^!P§.getValue(§`=§.§'e§);
      }
      
      public function §01§() : Number
      {
         return Number(this.§^!P§.getValue(§`=§.§2!M§));
      }
      
      public function §9;§() : Number
      {
         return Number(this.§^!P§.getValue(§`=§.§%!U§));
      }
      
      public function §1c§() : Number
      {
         return Number(this.§^!P§.getValue(§`=§.§%!I§));
      }
      
      public function §95§() : Number
      {
         return Number(this.§^!P§.getValue(§`=§.§5$§));
      }
      
      public function §3G§() : Number
      {
         return Number(this.§^!P§.getValue(§`=§.§[e§));
      }
      
      public function §1!H§() : Number
      {
         return Number(this.§^!P§.getValue(§`=§.§@d§));
      }
      
      public function §&I§() : int
      {
         return this.§'V§;
      }
      
      public function get material() : §`=§
      {
         return this.§^!P§;
      }
      
      public function get shape() : §![§
      {
         var _loc1_:Texture = null;
         if(!this.§>B§)
         {
            _loc1_ = §,^§.§0K§.§2!N§.§7!<§(this.§6O§).getFrame(0).texture;
            this.§>B§ = new §![§(this.§6O§,"Rectangle",_loc1_.width * §`!O§.§?!O§ / 2,_loc1_.height * §`!O§.§?!O§ / 2);
         }
         return this.§>B§;
      }
      
      public function get §0y§() : §7!1§
      {
         return this.§#!L§;
      }
      
      public function get score() : int
      {
         return this.§&!L§.getValue();
      }
   }
}
