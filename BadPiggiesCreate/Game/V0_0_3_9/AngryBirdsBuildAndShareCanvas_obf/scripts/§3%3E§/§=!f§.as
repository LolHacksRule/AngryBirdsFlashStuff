package §3>§
{
   import §!!A§.§""5§;
   import §3!S§.§%s§;
   import §8Y§.Texture;
   import §=b§.§-!K§;
   
   public class §=!f§
   {
      
      public static const §"!g§:int = 0;
      
      public static const §[O§:int = 6;
      
      public static const §!#§:int = 7;
      
      public static const § in§:int = 8;
      
      public static const §;n§:int = 3;
      
      public static const §0-§:int = 5;
      
      public static const §[Y§:int = 2;
      
      public static const §3"3§:int = 1;
       
      
      public var §@!'§:String;
      
      public var §4!J§:int;
      
      protected var §^!X§:§""5§;
      
      public var §[!J§:Number;
      
      public var §+!5§:String;
      
      public var §"=§:Number = 1;
      
      public var §@!#§:Number;
      
      private var §3B§:Boolean = false;
      
      private var §3a§:String;
      
      private var §6!V§:int;
      
      private var §7!6§:§4D§;
      
      private var §+"!§:§>!y§;
      
      private var §>"'§:§>!&§;
      
      public function §=!f§(param1:String, param2:int, param3:§>!y§, param4:§>!&§, param5:§4D§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§@!'§ = param1;
         this.§4!J§ = param2;
         this.§+"!§ = param3;
         this.§3a§ = param12;
         this.§6!V§ = param13;
         this.§3B§ = param11;
         this.§>"'§ = param4;
         this.§7!6§ = param5;
         this.§^!X§ = new §""5§(param6);
         this.§+!5§ = param7;
         this.§"=§ = param8;
         if(this.§"=§ <= 0)
         {
            this.§"=§ = 1;
         }
         this.§@!#§ = param9;
         this.§[!J§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§3B§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§3a§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§6!V§;
      }
      
      public function §&_§() : int
      {
         return this.shape.§6i§();
      }
      
      public function §?L§() : int
      {
         return this.shape.§4!d§();
      }
      
      public function § #§() : int
      {
         return this.shape.§4!<§();
      }
      
      public function §%!b§() : Number
      {
         return this.§+"!§.getValue(§>!y§.§?"4§);
      }
      
      public function §0!g§() : Number
      {
         return Number(this.§+"!§.getValue(§>!y§.§"!o§));
      }
      
      public function §[9§() : Number
      {
         return Number(this.§+"!§.getValue(§>!y§.§>!$§));
      }
      
      public function §#F§() : Number
      {
         return Number(this.§+"!§.getValue(§>!y§.§6!e§));
      }
      
      public function §6&§() : Number
      {
         return Number(this.§+"!§.getValue(§>!y§.§''§));
      }
      
      public function §?!'§() : Number
      {
         return Number(this.§+"!§.getValue(§>!y§.§ !Q§));
      }
      
      public function §'!`§() : Number
      {
         return Number(this.§+"!§.getValue(§>!y§.§04§));
      }
      
      public function §!!L§() : int
      {
         return this.§[!J§;
      }
      
      public function get material() : §>!y§
      {
         return this.§+"!§;
      }
      
      public function get shape() : §4D§
      {
         var _loc1_:Texture = null;
         if(!this.§7!6§)
         {
            _loc1_ = §%s§.§`!f§.§"!i§.§]@§(this.§@!'§).getFrame(0).texture;
            this.§7!6§ = new §4D§(this.§@!'§,"Rectangle",_loc1_.width * §-!K§.§"!C§ / 2,_loc1_.height * §-!K§.§"!C§ / 2);
         }
         return this.§7!6§;
      }
      
      public function get §8"+§() : §>!&§
      {
         return this.§>"'§;
      }
      
      public function get score() : int
      {
         return this.§^!X§.getValue();
      }
   }
}
