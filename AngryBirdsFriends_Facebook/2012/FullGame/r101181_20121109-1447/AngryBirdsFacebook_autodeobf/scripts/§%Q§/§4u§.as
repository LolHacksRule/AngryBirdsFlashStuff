package §%Q§
{
   import §0!R§.Texture;
   import §9"!§.§9"3§;
   import §<a§.§9U§;
   import §]!A§.;
   
   public class §4u§
   {
      
      public static const §1!B§:int = 0;
      
      public static const §,"8§:int = 6;
      
      public static const §%!l§:int = 7;
      
      public static const §0!o§:int = 8;
      
      public static const §[!`§:int = 3;
      
      public static const §0!q§:int = 5;
      
      public static const §<!q§:int = 2;
      
      public static const §%"D§:int = 1;
       
      
      public var §2!>§:String;
      
      public var §7[§:int;
      
      protected var §0!-§:§9U§;
      
      public var §@!l§:Number;
      
      public var §[C§:String;
      
      public var §>-§:Number = 1;
      
      public var §@!h§:Number;
      
      private var §'4§:Boolean = false;
      
      private var § R§:String;
      
      private var §9"B§:int;
      
      private var §&1§:§@d§;
      
      private var §+!u§:§9!n§;
      
      private var §4"C§:§;!y§;
      
      public function §4u§(param1:String, param2:int, param3:§9!n§, param4:§;!y§, param5:§@d§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§2!>§ = param1;
         this.§7[§ = param2;
         this.§+!u§ = param3;
         this.§ R§ = param12;
         this.§9"B§ = param13;
         this.§'4§ = param11;
         this.§4"C§ = param4;
         this.§&1§ = param5;
         this.§0!-§ = new §9U§(param6);
         this.§[C§ = param7;
         this.§>-§ = param8;
         if(this.§>-§ <= 0)
         {
            this.§>-§ = 1;
         }
         this.§@!h§ = param9;
         this.§@!l§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§'4§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§ R§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§9"B§;
      }
      
      public function § !B§() : int
      {
         return this.shape.§4"1§();
      }
      
      public function §-!S§() : int
      {
         return this.shape.§<j§();
      }
      
      public function §]!0§() : int
      {
         return this.shape.§`G§();
      }
      
      public function §5A§() : Number
      {
         return this.§+!u§.getValue(§9!n§.§4!,§);
      }
      
      public function §^"9§() : Number
      {
         return Number(this.§+!u§.getValue(§9!n§.§+t§));
      }
      
      public function §3!l§() : Number
      {
         return Number(this.§+!u§.getValue(§9!n§.§3!g§));
      }
      
      public function §2"1§() : Number
      {
         return Number(this.§+!u§.getValue(§9!n§.§ &§));
      }
      
      public function §+r§() : Number
      {
         return Number(this.§+!u§.getValue(§9!n§.§#!_§));
      }
      
      public function §;!H§() : Number
      {
         return Number(this.§+!u§.getValue(§9!n§.§5"-§));
      }
      
      public function §[",§() : Number
      {
         return Number(this.§+!u§.getValue(§9!n§.§^!L§));
      }
      
      public function §!!k§() : int
      {
         return this.§@!l§;
      }
      
      public function get material() : §9!n§
      {
         return this.§+!u§;
      }
      
      public function get shape() : §@d§
      {
         var _loc1_:Texture = null;
         if(!this.§&1§)
         {
            _loc1_ = §#6§.§6!z§.animationManager.getAnimation(this.§2!>§).getFrame(0).texture;
            this.§&1§ = new §@d§(this.§2!>§,"Rectangle",_loc1_.width * §9"3§.§'"F§ / 2,_loc1_.height * §9"3§.§'"F§ / 2);
         }
         return this.§&1§;
      }
      
      public function get §2+§() : §;!y§
      {
         return this.§4"C§;
      }
      
      public function get score() : int
      {
         return this.§0!-§.getValue();
      }
   }
}
