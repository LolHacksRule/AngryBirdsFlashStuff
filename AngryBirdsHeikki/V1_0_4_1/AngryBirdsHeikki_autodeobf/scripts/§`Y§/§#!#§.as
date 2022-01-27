package §`Y§
{
   import §"!<§.Texture;
   import §4!9§.§5O§;
   import §?!P§.§@@§;
   import §^!7§.§^A§;
   
   public class §#!#§
   {
      
      public static const §5!_§:int = 0;
      
      public static const §<0§:int = 6;
      
      public static const §-! §:int = 7;
      
      public static const §="§:int = 8;
      
      public static const § >§:int = 3;
      
      public static const §;!1§:int = 5;
      
      public static const §0!+§:int = 2;
      
      public static const §;!-§:int = 1;
       
      
      public var §7=§:String;
      
      public var §3!P§:int;
      
      protected var §0U§:§5O§;
      
      public var §?!8§:Number;
      
      public var §@!%§:String;
      
      public var §=F§:Number = 1;
      
      public var §'!M§:Number;
      
      private var §-j§:Boolean = false;
      
      private var §05§:String;
      
      private var §0!@§:int;
      
      private var §[R§:§[!'§;
      
      private var §+K§:§^@§;
      
      private var §5!#§:§3!M§;
      
      public function §#!#§(param1:String, param2:int, param3:§^@§, param4:§3!M§, param5:§[!'§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§7=§ = param1;
         this.§3!P§ = param2;
         this.§+K§ = param3;
         this.§05§ = param12;
         this.§0!@§ = param13;
         this.§-j§ = param11;
         this.§5!#§ = param4;
         this.§[R§ = param5;
         this.§0U§ = new §5O§(param6);
         this.§@!%§ = param7;
         this.§=F§ = param8;
         if(this.§=F§ <= 0)
         {
            this.§=F§ = 1;
         }
         this.§'!M§ = param9;
         this.§?!8§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§-j§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§05§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§0!@§;
      }
      
      public function §#_§() : int
      {
         return this.shape.§&!`§();
      }
      
      public function §;q§() : int
      {
         return this.shape.§%Y§();
      }
      
      public function §<!a§() : int
      {
         return this.shape.§%=§();
      }
      
      public function §%!A§() : Number
      {
         return this.§+K§.getValue(§^@§.§1!M§);
      }
      
      public function §^!0§() : Number
      {
         return Number(this.§+K§.getValue(§^@§.§>l§));
      }
      
      public function §&a§() : Number
      {
         return Number(this.§+K§.getValue(§^@§.§^!1§));
      }
      
      public function §'>§() : Number
      {
         return Number(this.§+K§.getValue(§^@§.§>2§));
      }
      
      public function §"L§() : Number
      {
         return Number(this.§+K§.getValue(§^@§.§ !R§));
      }
      
      public function §0!Q§() : Number
      {
         return Number(this.§+K§.getValue(§^@§.§-Q§));
      }
      
      public function §@!,§() : Number
      {
         return Number(this.§+K§.getValue(§^@§.§4!P§));
      }
      
      public function §9a§() : int
      {
         return this.§?!8§;
      }
      
      public function get material() : §^@§
      {
         return this.§+K§;
      }
      
      public function get shape() : §[!'§
      {
         var _loc1_:Texture = null;
         if(!this.§[R§)
         {
            _loc1_ = §@@§.§ !8§.§7p§.§=!B§(this.§7=§).getFrame(0).texture;
            this.§[R§ = new §[!'§(this.§7=§,"Rectangle",_loc1_.width * §^A§.§<U§ / 2,_loc1_.height * §^A§.§<U§ / 2);
         }
         return this.§[R§;
      }
      
      public function get §6;§() : §3!M§
      {
         return this.§5!#§;
      }
      
      public function get score() : int
      {
         return this.§0U§.getValue();
      }
   }
}
