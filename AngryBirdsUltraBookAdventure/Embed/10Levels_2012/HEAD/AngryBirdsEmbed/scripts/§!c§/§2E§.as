package §!c§
{
   import § !;§.§`! §;
   import §"!5§.§,!!§;
   import §%x§.§#;§;
   import §?!"§.Texture;
   
   public class §2E§
   {
      
      public static const §6!6§:int = 0;
      
      public static const §!!@§:int = 6;
      
      public static const §35§:int = 7;
      
      public static const §'+§:int = 8;
      
      public static const § k§:int = 3;
      
      public static const §]D§:int = 5;
      
      public static const §try§:int = 2;
      
      public static const §+^§:int = 1;
       
      
      public var §+i§:String;
      
      public var §'!,§:int;
      
      protected var §'F§:§`! §;
      
      public var §22§:Number;
      
      public var §';§:String;
      
      public var §,m§:Number = 1;
      
      public var §`9§:Number;
      
      private var §8!,§:Boolean = false;
      
      private var §32§:String;
      
      private var §2!1§:int;
      
      private var § !B§:§<q§;
      
      private var §;!3§:§4F§;
      
      private var §!1§:§8M§;
      
      public function §2E§(param1:String, param2:int, param3:§4F§, param4:§8M§, param5:§<q§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§+i§ = param1;
         this.§'!,§ = param2;
         this.§;!3§ = param3;
         this.§32§ = param12;
         this.§2!1§ = param13;
         this.§8!,§ = param11;
         this.§!1§ = param4;
         this.§ !B§ = param5;
         this.§'F§ = new §`! §(param6);
         this.§';§ = param7;
         this.§,m§ = param8;
         if(this.§,m§ <= 0)
         {
            this.§,m§ = 1;
         }
         this.§`9§ = param9;
         this.§22§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§8!,§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§32§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§2!1§;
      }
      
      public function §``§() : int
      {
         return this.shape.§@!H§();
      }
      
      public function §-!F§() : int
      {
         return this.shape.§`2§();
      }
      
      public function §&+§() : int
      {
         return this.shape.§[h§();
      }
      
      public function §7!9§() : Number
      {
         return this.§;!3§.getValue(§4F§.§4!8§);
      }
      
      public function §<!E§() : Number
      {
         return Number(this.§;!3§.getValue(§4F§.§@]§));
      }
      
      public function §+!9§() : Number
      {
         return Number(this.§;!3§.getValue(§4F§.§+n§));
      }
      
      public function §]!,§() : Number
      {
         return Number(this.§;!3§.getValue(§4F§.§8!@§));
      }
      
      public function §;F§() : Number
      {
         return Number(this.§;!3§.getValue(§4F§.§0^§));
      }
      
      public function §^!5§() : Number
      {
         return Number(this.§;!3§.getValue(§4F§.§5X§));
      }
      
      public function §9'§() : Number
      {
         return Number(this.§;!3§.getValue(§4F§.§;!"§));
      }
      
      public function §@!>§() : int
      {
         return this.§22§;
      }
      
      public function get material() : §4F§
      {
         return this.§;!3§;
      }
      
      public function get shape() : §<q§
      {
         var _loc1_:Texture = null;
         if(!this.§ !B§)
         {
            _loc1_ = §,!!§.§;4§.§+!!§.§3H§(this.§+i§).getFrame(0).texture;
            this.§ !B§ = new §<q§(this.§+i§,"Rectangle",_loc1_.width * §#;§.§`!2§ / 2,_loc1_.height * §#;§.§`!2§ / 2);
         }
         return this.§ !B§;
      }
      
      public function get §=!8§() : §8M§
      {
         return this.§!1§;
      }
      
      public function get score() : int
      {
         return this.§'F§.getValue();
      }
   }
}
