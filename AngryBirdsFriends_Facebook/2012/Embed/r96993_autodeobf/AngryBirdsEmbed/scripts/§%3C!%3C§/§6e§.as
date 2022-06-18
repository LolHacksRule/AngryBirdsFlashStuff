package §<!<§
{
   import §4!'§.§#,§;
   import §>%§.§]3§;
   import §>u§.Texture;
   import §`i§.§2W§;
   
   public class §6e§
   {
      
      public static const §#M§:int = 0;
      
      public static const §%f§:int = 6;
      
      public static const §<K§:int = 7;
      
      public static const §>!7§:int = 8;
      
      public static const §-!1§:int = 3;
      
      public static const §[>§:int = 5;
      
      public static const §4!<§:int = 2;
      
      public static const §1X§:int = 1;
       
      
      public var §=p§:String;
      
      public var §+!<§:int;
      
      protected var §;e§:§#,§;
      
      public var §6!4§:Number;
      
      public var §;0§:String;
      
      public var §#]§:Number = 1;
      
      public var §?!+§:Number;
      
      private var §;!H§:Boolean = false;
      
      private var §=!H§:String;
      
      private var §[W§:int;
      
      private var §9J§:§2!@§;
      
      private var §1!C§:§>2§;
      
      private var §>-§:§>'§;
      
      public function §6e§(param1:String, param2:int, param3:§>2§, param4:§>'§, param5:§2!@§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§=p§ = param1;
         this.§+!<§ = param2;
         this.§1!C§ = param3;
         this.§=!H§ = param12;
         this.§[W§ = param13;
         this.§;!H§ = param11;
         this.§>-§ = param4;
         this.§9J§ = param5;
         this.§;e§ = new §#,§(param6);
         this.§;0§ = param7;
         this.§#]§ = param8;
         if(this.§#]§ <= 0)
         {
            this.§#]§ = 1;
         }
         this.§?!+§ = param9;
         this.§6!4§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§;!H§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§=!H§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§[W§;
      }
      
      public function §6!5§() : int
      {
         return this.shape.§3!A§();
      }
      
      public function §^!9§() : int
      {
         return this.shape.§+G§();
      }
      
      public function §49§() : int
      {
         return this.shape.§4+§();
      }
      
      public function §?!G§() : Number
      {
         return this.§1!C§.getValue(§>2§.§9d§);
      }
      
      public function §[!@§() : Number
      {
         return Number(this.§1!C§.getValue(§>2§.§,N§));
      }
      
      public function §+E§() : Number
      {
         return Number(this.§1!C§.getValue(§>2§.§]!#§));
      }
      
      public function §<Y§() : Number
      {
         return Number(this.§1!C§.getValue(§>2§.§9!1§));
      }
      
      public function §9[§() : Number
      {
         return Number(this.§1!C§.getValue(§>2§.§ if§));
      }
      
      public function §5T§() : Number
      {
         return Number(this.§1!C§.getValue(§>2§.§0`§));
      }
      
      public function §"!!§() : Number
      {
         return Number(this.§1!C§.getValue(§>2§.§7]§));
      }
      
      public function §`K§() : int
      {
         return this.§6!4§;
      }
      
      public function get material() : §>2§
      {
         return this.§1!C§;
      }
      
      public function get shape() : §2!@§
      {
         var _loc1_:Texture = null;
         if(!this.§9J§)
         {
            _loc1_ = §]3§.§;v§.§9V§.§`Y§(this.§=p§).getFrame(0).texture;
            this.§9J§ = new §2!@§(this.§=p§,"Rectangle",_loc1_.width * §2W§.§0;§ / 2,_loc1_.height * §2W§.§0;§ / 2);
         }
         return this.§9J§;
      }
      
      public function get §]!,§() : §>'§
      {
         return this.§>-§;
      }
      
      public function get score() : int
      {
         return this.§;e§.getValue();
      }
   }
}
