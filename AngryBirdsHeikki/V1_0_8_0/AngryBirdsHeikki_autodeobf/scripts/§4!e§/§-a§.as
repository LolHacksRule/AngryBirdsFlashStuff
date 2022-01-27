package §4!e§
{
   import §#!6§.Texture;
   import §#!T§.§&2§;
   import §2z§.§2!U§;
   import §9!?§.§@!3§;
   
   public class §-a§
   {
      
      public static const §+H§:int = 0;
      
      public static const §]C§:int = 6;
      
      public static const §>x§:int = 7;
      
      public static const §8!V§:int = 8;
      
      public static const §&!@§:int = 3;
      
      public static const §%!Q§:int = 5;
      
      public static const §-!R§:int = 2;
      
      public static const §6h§:int = 1;
       
      
      public var §@c§:String;
      
      public var §@i§:int;
      
      protected var §"F§:§@!3§;
      
      public var §4!8§:Number;
      
      public var §5!W§:String;
      
      public var §[!;§:Number = 1;
      
      public var §+z§:Number;
      
      private var §7!T§:Boolean = false;
      
      private var §'H§:String;
      
      private var §9!L§:int;
      
      private var § !&§:§[l§;
      
      private var §,!O§:§ !'§;
      
      private var §23§:§ !0§;
      
      public function §-a§(param1:String, param2:int, param3:§ !'§, param4:§ !0§, param5:§[l§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§@c§ = param1;
         this.§@i§ = param2;
         this.§,!O§ = param3;
         this.§'H§ = param12;
         this.§9!L§ = param13;
         this.§7!T§ = param11;
         this.§23§ = param4;
         this.§ !&§ = param5;
         this.§"F§ = new §@!3§(param6);
         this.§5!W§ = param7;
         this.§[!;§ = param8;
         if(this.§[!;§ <= 0)
         {
            this.§[!;§ = 1;
         }
         this.§+z§ = param9;
         this.§4!8§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§7!T§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§'H§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§9!L§;
      }
      
      public function §>d§() : int
      {
         return this.shape.§81§();
      }
      
      public function §>a§() : int
      {
         return this.shape.§%Y§();
      }
      
      public function §;A§() : int
      {
         return this.shape.§2!O§();
      }
      
      public function §'!+§() : Number
      {
         return this.§,!O§.getValue(§ !'§.§%w§);
      }
      
      public function §]!=§() : Number
      {
         return Number(this.§,!O§.getValue(§ !'§.§ !J§));
      }
      
      public function §`!J§() : Number
      {
         return Number(this.§,!O§.getValue(§ !'§.§6"§));
      }
      
      public function §<!d§() : Number
      {
         return Number(this.§,!O§.getValue(§ !'§.§]![§));
      }
      
      public function §;!J§() : Number
      {
         return Number(this.§,!O§.getValue(§ !'§.§`!>§));
      }
      
      public function §+!S§() : Number
      {
         return Number(this.§,!O§.getValue(§ !'§.§"!]§));
      }
      
      public function §5!>§() : Number
      {
         return Number(this.§,!O§.getValue(§ !'§.§get §));
      }
      
      public function § k§() : int
      {
         return this.§4!8§;
      }
      
      public function get material() : § !'§
      {
         return this.§,!O§;
      }
      
      public function get shape() : §[l§
      {
         var _loc1_:Texture = null;
         if(!this.§ !&§)
         {
            _loc1_ = §&2§.§4!1§.§=_§.§7!0§(this.§@c§).getFrame(0).texture;
            this.§ !&§ = new §[l§(this.§@c§,"Rectangle",_loc1_.width * §2!U§.§&%§ / 2,_loc1_.height * §2!U§.§&%§ / 2);
         }
         return this.§ !&§;
      }
      
      public function get § var§() : § !0§
      {
         return this.§23§;
      }
      
      public function get score() : int
      {
         return this.§"F§.getValue();
      }
   }
}
