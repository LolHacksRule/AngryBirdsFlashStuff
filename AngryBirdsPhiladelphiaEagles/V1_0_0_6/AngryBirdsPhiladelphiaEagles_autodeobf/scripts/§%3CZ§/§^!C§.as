package §<Z§
{
   import §&b§.§[F§;
   import §4!-§.§%o§;
   import §;!B§.§;f§;
   import §[!A§.Texture;
   
   public class §^!C§
   {
      
      public static const §7>§:int = 0;
      
      public static const § 1§:int = 6;
      
      public static const §`q§:int = 7;
      
      public static const §&W§:int = 8;
      
      public static const §%!C§:int = 3;
      
      public static const §1n§:int = 5;
      
      public static const §'I§:int = 2;
      
      public static const §[V§:int = 1;
       
      
      public var §]q§:String;
      
      public var §5u§:int;
      
      protected var §^d§:§;f§;
      
      public var §^H§:Number;
      
      public var §6!N§:String;
      
      public var §<§:Number = 1;
      
      public var §72§:Number;
      
      private var §+E§:Boolean = false;
      
      private var §&X§:String;
      
      private var §50§:int;
      
      private var §!"§:§ P§;
      
      private var §&&§:§>!!§;
      
      private var §^C§:§5!G§;
      
      public function §^!C§(param1:String, param2:int, param3:§>!!§, param4:§5!G§, param5:§ P§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§]q§ = param1;
         this.§5u§ = param2;
         this.§&&§ = param3;
         this.§&X§ = param12;
         this.§50§ = param13;
         this.§+E§ = param11;
         this.§^C§ = param4;
         this.§!"§ = param5;
         this.§^d§ = new §;f§(param6);
         this.§6!N§ = param7;
         this.§<§ = param8;
         if(this.§<§ <= 0)
         {
            this.§<§ = 1;
         }
         this.§72§ = param9;
         this.§^H§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§+E§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§&X§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§50§;
      }
      
      public function §6!2§() : int
      {
         return this.shape.§!j§();
      }
      
      public function §76§() : int
      {
         return this.shape.§;O§();
      }
      
      public function §[!2§() : int
      {
         return this.shape.§-!K§();
      }
      
      public function §+G§() : Number
      {
         return this.§&&§.getValue(§>!!§.§+R§);
      }
      
      public function § !N§() : Number
      {
         return Number(this.§&&§.getValue(§>!!§.§6_§));
      }
      
      public function §"!§() : Number
      {
         return Number(this.§&&§.getValue(§>!!§.§=^§));
      }
      
      public function §9!$§() : Number
      {
         return Number(this.§&&§.getValue(§>!!§.§!F§));
      }
      
      public function §,!8§() : Number
      {
         return Number(this.§&&§.getValue(§>!!§.§&o§));
      }
      
      public function §6K§() : Number
      {
         return Number(this.§&&§.getValue(§>!!§.§%!$§));
      }
      
      public function § 2§() : Number
      {
         return Number(this.§&&§.getValue(§>!!§.§]i§));
      }
      
      public function §]J§() : int
      {
         return this.§^H§;
      }
      
      public function get material() : §>!!§
      {
         return this.§&&§;
      }
      
      public function get shape() : § P§
      {
         var _loc1_:Texture = null;
         if(!this.§!"§)
         {
            _loc1_ = §[F§.§9u§.§>"§.getAnimation(this.§]q§).getFrame(0).texture;
            this.§!"§ = new § P§(this.§]q§,"Rectangle",_loc1_.width * §%o§.§]!?§ / 2,_loc1_.height * §%o§.§]!?§ / 2);
         }
         return this.§!"§;
      }
      
      public function get §<M§() : §5!G§
      {
         return this.§^C§;
      }
      
      public function get score() : int
      {
         return this.§^d§.getValue();
      }
   }
}
