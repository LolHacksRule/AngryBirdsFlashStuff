package §9!%§
{
   import §#!`§.Texture;
   import §0!F§.§8!;§;
   import §3E§.§6w§;
   import §7!U§.§2!7§;
   
   public class §-D§
   {
      
      public static const §"T§:int = 0;
      
      public static const §6!V§:int = 6;
      
      public static const §-S§:int = 7;
      
      public static const §8!&§:int = 8;
      
      public static const §#"§:int = 3;
      
      public static const §1_§:int = 5;
      
      public static const §8y§:int = 2;
      
      public static const §;M§:int = 1;
       
      
      public var §<Y§:String;
      
      public var §"!+§:int;
      
      protected var §"`§:§8!;§;
      
      public var §;,§:Number;
      
      public var §&Y§:String;
      
      public var §2<§:Number = 1;
      
      public var §!w§:Number;
      
      private var §[!-§:Boolean = false;
      
      private var §-X§:String;
      
      private var §#b§:int;
      
      private var §8<§:§0!B§;
      
      private var §'p§:§[!M§;
      
      private var §9!D§:§=A§;
      
      public function §-D§(param1:String, param2:int, param3:§[!M§, param4:§=A§, param5:§0!B§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§<Y§ = param1;
         this.§"!+§ = param2;
         this.§'p§ = param3;
         this.§-X§ = param12;
         this.§#b§ = param13;
         this.§[!-§ = param11;
         this.§9!D§ = param4;
         this.§8<§ = param5;
         this.§"`§ = new §8!;§(param6);
         this.§&Y§ = param7;
         this.§2<§ = param8;
         if(this.§2<§ <= 0)
         {
            this.§2<§ = 1;
         }
         this.§!w§ = param9;
         this.§;,§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§[!-§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§-X§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§#b§;
      }
      
      public function §=!#§() : int
      {
         return this.shape.§^9§();
      }
      
      public function §6s§() : int
      {
         return this.shape.§#f§();
      }
      
      public function §"+§() : int
      {
         return this.shape.§"!-§();
      }
      
      public function §7E§() : Number
      {
         return this.§'p§.getValue(§[!M§.§'4§);
      }
      
      public function §9<§() : Number
      {
         return Number(this.§'p§.getValue(§[!M§.§0K§));
      }
      
      public function §-1§() : Number
      {
         return Number(this.§'p§.getValue(§[!M§.§'!4§));
      }
      
      public function §>h§() : Number
      {
         return Number(this.§'p§.getValue(§[!M§.§#;§));
      }
      
      public function §9!&§() : Number
      {
         return Number(this.§'p§.getValue(§[!M§.§[!L§));
      }
      
      public function §,v§() : Number
      {
         return Number(this.§'p§.getValue(§[!M§.§0W§));
      }
      
      public function § !H§() : Number
      {
         return Number(this.§'p§.getValue(§[!M§.§`!K§));
      }
      
      public function §]]§() : int
      {
         return this.§;,§;
      }
      
      public function get material() : §[!M§
      {
         return this.§'p§;
      }
      
      public function get shape() : §0!B§
      {
         var _loc1_:Texture = null;
         if(!this.§8<§)
         {
            _loc1_ = §2!7§.§5G§.§]q§.§;!!§(this.§<Y§).getFrame(0).texture;
            this.§8<§ = new §0!B§(this.§<Y§,"Rectangle",_loc1_.width * §6w§.§?!^§ / 2,_loc1_.height * §6w§.§?!^§ / 2);
         }
         return this.§8<§;
      }
      
      public function get §#-§() : §=A§
      {
         return this.§9!D§;
      }
      
      public function get score() : int
      {
         return this.§"`§.getValue();
      }
   }
}
