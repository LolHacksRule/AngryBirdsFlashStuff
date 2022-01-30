package §%!<§
{
   import §%h§.§5X§;
   import §,E§.§ t§;
   import §3!U§.Texture;
   import §`%§.§8!0§;
   
   public class §,6§
   {
      
      public static const §;^§:int = 0;
      
      public static const §`!v§:int = 6;
      
      public static const §^§:int = 7;
      
      public static const §2!+§:int = 8;
      
      public static const §[K§:int = 3;
      
      public static const §-"#§:int = 5;
      
      public static const §<!m§:int = 2;
      
      public static const §9!4§:int = 1;
       
      
      public var §6u§:String;
      
      public var §9E§:int;
      
      protected var §+W§:§ t§;
      
      public var §""%§:Number;
      
      public var §4!4§:String;
      
      public var §<!R§:Number = 1;
      
      public var §?!`§:Number;
      
      private var §6!T§:Boolean = false;
      
      private var §0!5§:String;
      
      private var §6!4§:int;
      
      private var §?X§:§`f§;
      
      private var §;#§:§ !6§;
      
      private var §38§:§=!j§;
      
      public function §,6§(param1:String, param2:int, param3:§ !6§, param4:§=!j§, param5:§`f§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§6u§ = param1;
         this.§9E§ = param2;
         this.§;#§ = param3;
         this.§0!5§ = param12;
         this.§6!4§ = param13;
         this.§6!T§ = param11;
         this.§38§ = param4;
         this.§?X§ = param5;
         this.§+W§ = new § t§(param6);
         this.§4!4§ = param7;
         this.§<!R§ = param8;
         if(this.§<!R§ <= 0)
         {
            this.§<!R§ = 1;
         }
         this.§?!`§ = param9;
         this.§""%§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§6!T§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§0!5§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§6!4§;
      }
      
      public function §-k§() : int
      {
         return this.shape.§9,§();
      }
      
      public function §;i§() : int
      {
         return this.shape.§%!Y§();
      }
      
      public function §7!"§() : int
      {
         return this.shape.§0!R§();
      }
      
      public function §#!I§() : Number
      {
         return this.§;#§.getValue(§ !6§.§6&§);
      }
      
      public function §4?§() : Number
      {
         return Number(this.§;#§.getValue(§ !6§.§[d§));
      }
      
      public function §8X§() : Number
      {
         return Number(this.§;#§.getValue(§ !6§.§="1§));
      }
      
      public function §?K§() : Number
      {
         return Number(this.§;#§.getValue(§ !6§.§<!§));
      }
      
      public function §9`§() : Number
      {
         return Number(this.§;#§.getValue(§ !6§.§4'§));
      }
      
      public function §1x§() : Number
      {
         return Number(this.§;#§.getValue(§ !6§.§;!l§));
      }
      
      public function §9"'§() : Number
      {
         return Number(this.§;#§.getValue(§ !6§.§,T§));
      }
      
      public function §8Z§() : int
      {
         return this.§""%§;
      }
      
      public function get material() : § !6§
      {
         return this.§;#§;
      }
      
      public function get shape() : §`f§
      {
         var _loc1_:Texture = null;
         if(!this.§?X§)
         {
            _loc1_ = §8!0§.§?2§.§1!U§.§%!^§(this.§6u§).getFrame(0).texture;
            this.§?X§ = new §`f§(this.§6u§,"Rectangle",_loc1_.width * §5X§.§,!m§ / 2,_loc1_.height * §5X§.§,!m§ / 2);
         }
         return this.§?X§;
      }
      
      public function get §'a§() : §=!j§
      {
         return this.§38§;
      }
      
      public function get score() : int
      {
         return this.§+W§.getValue();
      }
   }
}
