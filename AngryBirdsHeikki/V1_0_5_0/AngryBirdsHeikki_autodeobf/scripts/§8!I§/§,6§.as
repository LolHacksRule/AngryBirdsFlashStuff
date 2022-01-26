package §8!I§
{
   import § !9§.Texture;
   import §+D§.§5!P§;
   import §3-§.§1L§;
   import §=!S§.§#!K§;
   
   public class §,6§
   {
      
      public static const §+!$§:int = 0;
      
      public static const §0=§:int = 6;
      
      public static const §!$§:int = 7;
      
      public static const §5!M§:int = 8;
      
      public static const §%G§:int = 3;
      
      public static const §4v§:int = 5;
      
      public static const §'V§:int = 2;
      
      public static const §-B§:int = 1;
       
      
      public var §%!1§:String;
      
      public var §9?§:int;
      
      protected var § in§:§#!K§;
      
      public var §`! §:Number;
      
      public var §=q§:String;
      
      public var §`I§:Number = 1;
      
      public var §0!a§:Number;
      
      private var §"!b§:Boolean = false;
      
      private var §=W§:String;
      
      private var §?!G§:int;
      
      private var §89§:§0!^§;
      
      private var §`D§:§1!_§;
      
      private var §;!!§:§4A§;
      
      public function §,6§(param1:String, param2:int, param3:§1!_§, param4:§4A§, param5:§0!^§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§%!1§ = param1;
         this.§9?§ = param2;
         this.§`D§ = param3;
         this.§=W§ = param12;
         this.§?!G§ = param13;
         this.§"!b§ = param11;
         this.§;!!§ = param4;
         this.§89§ = param5;
         this.§ in§ = new §#!K§(param6);
         this.§=q§ = param7;
         this.§`I§ = param8;
         if(this.§`I§ <= 0)
         {
            this.§`I§ = 1;
         }
         this.§0!a§ = param9;
         this.§`! § = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§"!b§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§=W§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§?!G§;
      }
      
      public function §;!>§() : int
      {
         return this.shape.§'m§();
      }
      
      public function §>^§() : int
      {
         return this.shape.§'1§();
      }
      
      public function §"x§() : int
      {
         return this.shape.§<!^§();
      }
      
      public function §8M§() : Number
      {
         return this.§`D§.getValue(§1!_§.§!!O§);
      }
      
      public function §%!D§() : Number
      {
         return Number(this.§`D§.getValue(§1!_§.§6!2§));
      }
      
      public function §2C§() : Number
      {
         return Number(this.§`D§.getValue(§1!_§.§-o§));
      }
      
      public function §,s§() : Number
      {
         return Number(this.§`D§.getValue(§1!_§.§+!6§));
      }
      
      public function §+!!§() : Number
      {
         return Number(this.§`D§.getValue(§1!_§.§+!§));
      }
      
      public function §%!`§() : Number
      {
         return Number(this.§`D§.getValue(§1!_§.§"!H§));
      }
      
      public function §#!F§() : Number
      {
         return Number(this.§`D§.getValue(§1!_§.§?!`§));
      }
      
      public function §]q§() : int
      {
         return this.§`! §;
      }
      
      public function get material() : §1!_§
      {
         return this.§`D§;
      }
      
      public function get shape() : §0!^§
      {
         var _loc1_:Texture = null;
         if(!this.§89§)
         {
            _loc1_ = §1L§.§"f§.§]!%§.§3![§(this.§%!1§).getFrame(0).texture;
            this.§89§ = new §0!^§(this.§%!1§,"Rectangle",_loc1_.width * §5!P§.§>M§ / 2,_loc1_.height * §5!P§.§>M§ / 2);
         }
         return this.§89§;
      }
      
      public function get § !N§() : §4A§
      {
         return this.§;!!§;
      }
      
      public function get score() : int
      {
         return this.§ in§.getValue();
      }
   }
}
