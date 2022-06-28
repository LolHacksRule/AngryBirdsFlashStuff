package §`K§
{
   import § !;§.§`! §;
   import §"!5§.§,!!§;
   import §%x§.§#;§;
   import each.Texture;
   
   public class §+i§
   {
      
      public static const §!!@§:int = 0;
      
      public static const §35§:int = 6;
      
      public static const §'+§:int = 7;
      
      public static const § k§:int = 8;
      
      public static const §]D§:int = 3;
      
      public static const §try§:int = 5;
      
      public static const §+^§:int = 2;
      
      public static const §5!+§:int = 1;
       
      
      public var §'!,§:String;
      
      public var §'F§:int;
      
      protected var §';§:§`! §;
      
      public var §22§:Number;
      
      public var §,m§:String;
      
      public var §`9§:Number = 1;
      
      public var §8!,§:Number;
      
      private var §2!1§:Boolean = false;
      
      private var §32§:String;
      
      private var § !B§:int;
      
      private var §;!3§:§2z§;
      
      private var §!1§:§7g§;
      
      private var §``§:§0r§;
      
      public function §+i§(param1:String, param2:int, param3:§7g§, param4:§0r§, param5:§2z§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§'!,§ = param1;
         this.§'F§ = param2;
         this.§!1§ = param3;
         this.§32§ = param12;
         this.§ !B§ = param13;
         this.§2!1§ = param11;
         this.§``§ = param4;
         this.§;!3§ = param5;
         this.§';§ = new §`! §(param6);
         this.§,m§ = param7;
         this.§`9§ = param8;
         if(this.§`9§ <= 0)
         {
            this.§`9§ = 1;
         }
         this.§8!,§ = param9;
         this.§22§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§2!1§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§32§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§ !B§;
      }
      
      public function §-!F§() : int
      {
         return this.shape.§'4§();
      }
      
      public function §&+§() : int
      {
         return this.shape.§`2§();
      }
      
      public function §7!9§() : int
      {
         return this.shape.§[h§();
      }
      
      public function §<!E§() : Number
      {
         return this.§!1§.getValue(§7g§.§0^§);
      }
      
      public function §+!9§() : Number
      {
         return Number(this.§!1§.getValue(§7g§.§7i§));
      }
      
      public function §]!,§() : Number
      {
         return Number(this.§!1§.getValue(§7g§.§<L§));
      }
      
      public function §;F§() : Number
      {
         return Number(this.§!1§.getValue(§7g§.§+n§));
      }
      
      public function §^!5§() : Number
      {
         return Number(this.§!1§.getValue(§7g§.§5X§));
      }
      
      public function §9'§() : Number
      {
         return Number(this.§!1§.getValue(§7g§.§;!"§));
      }
      
      public function §@!>§() : Number
      {
         return Number(this.§!1§.getValue(§7g§.§8!@§));
      }
      
      public function §=!8§() : int
      {
         return this.§22§;
      }
      
      public function get material() : §7g§
      {
         return this.§!1§;
      }
      
      public function get shape() : §2z§
      {
         var _loc1_:Texture = null;
         if(!this.§;!3§)
         {
            _loc1_ = §,!!§.§;4§.§+!!§.§,V§(this.§'!,§).getFrame(0).texture;
            this.§;!3§ = new §2z§(this.§'!,§,"Rectangle",_loc1_.width * §#;§.§`!2§ / 2,_loc1_.height * §#;§.§`!2§ / 2);
         }
         return this.§;!3§;
      }
      
      public function get §6!6§() : §0r§
      {
         return this.§``§;
      }
      
      public function get score() : int
      {
         return this.§';§.getValue();
      }
   }
}
