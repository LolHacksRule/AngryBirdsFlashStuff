package §]";§
{
   import §%!0§.§,4§;
   import §,P§.§'_§;
   import §0!%§.Texture;
   import §<!1§.§9!=§;
   
   public class §4!p§
   {
      
      public static const §>_§:int = 0;
      
      public static const §8!§:int = 6;
      
      public static const §?!$§:int = 7;
      
      public static const §?!o§:int = 8;
      
      public static const §#!U§:int = 3;
      
      public static const §^"0§:int = 5;
      
      public static const §+Q§:int = 2;
      
      public static const § z§:int = 1;
       
      
      public var §+!A§:String;
      
      public var §@F§:int;
      
      protected var §[Y§:§9!=§;
      
      public var §6!i§:Number;
      
      public var §=!S§:String;
      
      public var §77§:Number = 1;
      
      public var §%5§:Number;
      
      private var §!%§:Boolean = false;
      
      private var §,H§:String;
      
      private var §'"$§:int;
      
      private var §^!^§:§1Y§;
      
      private var §!!Y§:§0A§;
      
      private var § @§:§34§;
      
      public function §4!p§(param1:String, param2:int, param3:§0A§, param4:§34§, param5:§1Y§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§+!A§ = param1;
         this.§@F§ = param2;
         this.§!!Y§ = param3;
         this.§,H§ = param12;
         this.§'"$§ = param13;
         this.§!%§ = param11;
         this.§ @§ = param4;
         this.§^!^§ = param5;
         this.§[Y§ = new §9!=§(param6);
         this.§=!S§ = param7;
         this.§77§ = param8;
         if(this.§77§ <= 0)
         {
            this.§77§ = 1;
         }
         this.§%5§ = param9;
         this.§6!i§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§!%§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§,H§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§'"$§;
      }
      
      public function §6!3§() : int
      {
         return this.shape.§0! §();
      }
      
      public function §6c§() : int
      {
         return this.shape.§;,§();
      }
      
      public function §<!A§() : int
      {
         return this.shape.§=7§();
      }
      
      public function §9!-§() : Number
      {
         return this.§!!Y§.getValue(§0A§.§3U§);
      }
      
      public function §0-§() : Number
      {
         return Number(this.§!!Y§.getValue(§0A§.§!"3§));
      }
      
      public function §<&§() : Number
      {
         return Number(this.§!!Y§.getValue(§0A§.§`!l§));
      }
      
      public function §2"3§() : Number
      {
         return Number(this.§!!Y§.getValue(§0A§.§1a§));
      }
      
      public function §-!m§() : Number
      {
         return Number(this.§!!Y§.getValue(§0A§.§8!@§));
      }
      
      public function §+!F§() : Number
      {
         return Number(this.§!!Y§.getValue(§0A§.§4&§));
      }
      
      public function §#h§() : Number
      {
         return Number(this.§!!Y§.getValue(§0A§.§'>§));
      }
      
      public function §`!c§() : int
      {
         return this.§6!i§;
      }
      
      public function get material() : §0A§
      {
         return this.§!!Y§;
      }
      
      public function get shape() : §1Y§
      {
         var _loc1_:Texture = null;
         if(!this.§^!^§)
         {
            _loc1_ = §'_§.§=M§.§00§.§`" §(this.§+!A§).getFrame(0).texture;
            this.§^!^§ = new §1Y§(this.§+!A§,"Rectangle",_loc1_.width * §,4§.§,^§ / 2,_loc1_.height * §,4§.§,^§ / 2);
         }
         return this.§^!^§;
      }
      
      public function get §9Y§() : §34§
      {
         return this.§ @§;
      }
      
      public function get score() : int
      {
         return this.§[Y§.getValue();
      }
   }
}
