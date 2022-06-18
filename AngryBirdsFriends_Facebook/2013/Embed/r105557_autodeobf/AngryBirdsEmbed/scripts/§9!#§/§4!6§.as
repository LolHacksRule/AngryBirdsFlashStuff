package §9!#§
{
   import §"X§.Texture;
   import §#]§.§'5§;
   import §8!=§.§]Q§;
   import §;'§.§?!D§;
   
   public class §4!6§
   {
      
      public static const §?"§:int = 0;
      
      public static const §>!E§:int = 6;
      
      public static const §6!0§:int = 7;
      
      public static const §`G§:int = 8;
      
      public static const §>i§:int = 3;
      
      public static const §,b§:int = 5;
      
      public static const § !A§:int = 2;
      
      public static const §!]§:int = 1;
       
      
      public var §"!!§:String;
      
      public var §^x§:int;
      
      protected var §`A§:§]Q§;
      
      public var §^r§:Number;
      
      public var §5p§:String;
      
      public var §[!6§:Number = 1;
      
      public var §@g§:Number;
      
      private var §<!F§:Boolean = false;
      
      private var §-Q§:String;
      
      private var §;!0§:int;
      
      private var §^!H§:§8U§;
      
      private var §,!D§:§-!'§;
      
      private var §8e§:§+5§;
      
      public function §4!6§(param1:String, param2:int, param3:§-!'§, param4:§+5§, param5:§8U§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§"!!§ = param1;
         this.§^x§ = param2;
         this.§,!D§ = param3;
         this.§-Q§ = param12;
         this.§;!0§ = param13;
         this.§<!F§ = param11;
         this.§8e§ = param4;
         this.§^!H§ = param5;
         this.§`A§ = new §]Q§(param6);
         this.§5p§ = param7;
         this.§[!6§ = param8;
         if(this.§[!6§ <= 0)
         {
            this.§[!6§ = 1;
         }
         this.§@g§ = param9;
         this.§^r§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§<!F§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§-Q§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§;!0§;
      }
      
      public function §#!5§() : int
      {
         return this.shape.§9!6§();
      }
      
      public function § m§() : int
      {
         return this.shape.§[!3§();
      }
      
      public function §`]§() : int
      {
         return this.shape.§>S§();
      }
      
      public function §[=§() : Number
      {
         return this.§,!D§.getValue(§-!'§.§>"§);
      }
      
      public function §33§() : Number
      {
         return Number(this.§,!D§.getValue(§-!'§.§2s§));
      }
      
      public function §;U§() : Number
      {
         return Number(this.§,!D§.getValue(§-!'§.§-'§));
      }
      
      public function §=&§() : Number
      {
         return Number(this.§,!D§.getValue(§-!'§.§throw§));
      }
      
      public function §=!E§() : Number
      {
         return Number(this.§,!D§.getValue(§-!'§.§[-§));
      }
      
      public function §77§() : Number
      {
         return Number(this.§,!D§.getValue(§-!'§.§@!&§));
      }
      
      public function §19§() : Number
      {
         return Number(this.§,!D§.getValue(§-!'§.§2!7§));
      }
      
      public function §%W§() : int
      {
         return this.§^r§;
      }
      
      public function get material() : §-!'§
      {
         return this.§,!D§;
      }
      
      public function get shape() : §8U§
      {
         var _loc1_:Texture = null;
         if(!this.§^!H§)
         {
            _loc1_ = §'5§.§^;§.§6?§.§]C§(this.§"!!§).getFrame(0).texture;
            this.§^!H§ = new §8U§(this.§"!!§,"Rectangle",_loc1_.width * §?!D§.§@!I§ / 2,_loc1_.height * §?!D§.§@!I§ / 2);
         }
         return this.§^!H§;
      }
      
      public function get §?x§() : §+5§
      {
         return this.§8e§;
      }
      
      public function get score() : int
      {
         return this.§`A§.getValue();
      }
   }
}
