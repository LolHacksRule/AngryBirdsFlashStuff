package §[o§
{
   import §#!a§.Texture;
   import §5!?§.§>"§;
   import §=F§.§"n§;
   import §>P§.§2!U§;
   
   public class §9n§
   {
      
      public static const §continue§:int = 0;
      
      public static const §&!A§:int = 6;
      
      public static const §5i§:int = 7;
      
      public static const §"!Y§:int = 8;
      
      public static const §5j§:int = 3;
      
      public static const §?P§:int = 5;
      
      public static const dynamic:int = 2;
      
      public static const § !<§:int = 1;
       
      
      public var §7!0§:String;
      
      public var §,d§:int;
      
      protected var §-§:§2!U§;
      
      public var §<!G§:Number;
      
      public var §]f§:String;
      
      public var §][§:Number = 1;
      
      public var §6!N§:Number;
      
      private var §^m§:Boolean = false;
      
      private var §class§:§4C§;
      
      private var §3!Y§:§@N§;
      
      private var § H§:§3!M§;
      
      public function §9n§(param1:String, param2:int, param3:§@N§, param4:§3!M§, param5:§4C§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super();
         this.§7!0§ = param1;
         this.§,d§ = param2;
         this.§3!Y§ = param3;
         this.§^m§ = param11;
         this.§ H§ = param4;
         this.§class§ = param5;
         this.§-§ = new §2!U§(param6);
         this.§]f§ = param7;
         this.§][§ = param8;
         if(this.§][§ <= 0)
         {
            this.§][§ = 1;
         }
         this.§6!N§ = param9;
         this.§<!G§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§^m§;
      }
      
      public function §[!&§() : int
      {
         return this.shape.§7M§();
      }
      
      public function §,"§() : int
      {
         return this.shape.§'g§();
      }
      
      public function §1!=§() : int
      {
         return this.shape.§#O§();
      }
      
      public function §38§() : Number
      {
         return this.§3!Y§.getValue(§@N§.§5!F§);
      }
      
      public function §8!#§() : Number
      {
         return Number(this.§3!Y§.getValue(§@N§.§"`§));
      }
      
      public function §;f§() : Number
      {
         return Number(this.§3!Y§.getValue(§@N§.§7!,§));
      }
      
      public function §>!]§() : Number
      {
         return Number(this.§3!Y§.getValue(§@N§.§0>§));
      }
      
      public function §>W§() : Number
      {
         return Number(this.§3!Y§.getValue(§@N§.§"1§));
      }
      
      public function include() : Number
      {
         return Number(this.§3!Y§.getValue(§@N§.§7S§));
      }
      
      public function §=v§() : Number
      {
         return Number(this.§3!Y§.getValue(§@N§.§;_§));
      }
      
      public function §<Q§() : int
      {
         return this.§<!G§;
      }
      
      public function get material() : §@N§
      {
         return this.§3!Y§;
      }
      
      public function get shape() : §4C§
      {
         var _loc1_:Texture = null;
         if(!this.§class§)
         {
            _loc1_ = §"n§.§[b§.§6!M§.§8T§(this.§7!0§).getFrame(0).texture;
            this.§class§ = new §4C§(this.§7!0§,"Rectangle",_loc1_.width * §>"§.§'!S§ / 2,_loc1_.height * §>"§.§'!S§ / 2);
         }
         return this.§class§;
      }
      
      public function get §#J§() : §3!M§
      {
         return this.§ H§;
      }
      
      public function get score() : int
      {
         return this.§-§.getValue();
      }
   }
}
