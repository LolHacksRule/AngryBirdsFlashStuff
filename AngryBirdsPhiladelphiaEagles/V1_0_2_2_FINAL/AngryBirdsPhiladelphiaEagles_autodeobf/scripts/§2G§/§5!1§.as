package §2G§
{
   import §0!E§.§;!D§;
   import §8!B§.§#! §;
   import §8z§.Texture;
   import §9T§.§1r§;
   
   public class §5!1§
   {
      
      public static const §2!M§:int = 0;
      
      public static const §5J§:int = 6;
      
      public static const §#p§:int = 7;
      
      public static const §0z§:int = 8;
      
      public static const §?m§:int = 3;
      
      public static const §4!,§:int = 5;
      
      public static const §9D§:int = 2;
      
      public static const §[!2§:int = 1;
       
      
      public var §4V§:String;
      
      public var §]^§:int;
      
      protected var §1#§:§;!D§;
      
      public var §8X§:Number;
      
      public var §"9§:String;
      
      public var §'z§:Number = 1;
      
      public var §53§:Number;
      
      private var §^!-§:Boolean = false;
      
      private var §7!H§:String;
      
      private var §8!O§:int;
      
      private var §6H§:§+b§;
      
      private var §+!9§:§,6§;
      
      private var §#!Q§:§0Z§;
      
      public function §5!1§(param1:String, param2:int, param3:§,6§, param4:§0Z§, param5:§+b§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§4V§ = param1;
         this.§]^§ = param2;
         this.§+!9§ = param3;
         this.§7!H§ = param12;
         this.§8!O§ = param13;
         this.§^!-§ = param11;
         this.§#!Q§ = param4;
         this.§6H§ = param5;
         this.§1#§ = new §;!D§(param6);
         this.§"9§ = param7;
         this.§'z§ = param8;
         if(this.§'z§ <= 0)
         {
            this.§'z§ = 1;
         }
         this.§53§ = param9;
         this.§8X§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§^!-§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§7!H§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§8!O§;
      }
      
      public function §]!Q§() : int
      {
         return this.shape.§5L§();
      }
      
      public function §@!&§() : int
      {
         return this.shape.§[k§();
      }
      
      public function §7!!§() : int
      {
         return this.shape.§-I§();
      }
      
      public function §9!O§() : Number
      {
         return this.§+!9§.getValue(§,6§.§?!A§);
      }
      
      public function §&'§() : Number
      {
         return Number(this.§+!9§.getValue(§,6§.§ "§));
      }
      
      public function §2!>§() : Number
      {
         return Number(this.§+!9§.getValue(§,6§.§1I§));
      }
      
      public function §4r§() : Number
      {
         return Number(this.§+!9§.getValue(§,6§.§0P§));
      }
      
      public function §'!@§() : Number
      {
         return Number(this.§+!9§.getValue(§,6§.§ !>§));
      }
      
      public function §!F§() : Number
      {
         return Number(this.§+!9§.getValue(§,6§.§']§));
      }
      
      public function §<m§() : Number
      {
         return Number(this.§+!9§.getValue(§,6§.§!!!§));
      }
      
      public function §@i§() : int
      {
         return this.§8X§;
      }
      
      public function get material() : §,6§
      {
         return this.§+!9§;
      }
      
      public function get shape() : §+b§
      {
         var _loc1_:Texture = null;
         if(!this.§6H§)
         {
            _loc1_ = §#! §.§`'§.§<'§.getAnimation(this.§4V§).getFrame(0).texture;
            this.§6H§ = new §+b§(this.§4V§,"Rectangle",_loc1_.width * §1r§.§[M§ / 2,_loc1_.height * §1r§.§[M§ / 2);
         }
         return this.§6H§;
      }
      
      public function get §1h§() : §0Z§
      {
         return this.§#!Q§;
      }
      
      public function get score() : int
      {
         return this.§1#§.getValue();
      }
   }
}
