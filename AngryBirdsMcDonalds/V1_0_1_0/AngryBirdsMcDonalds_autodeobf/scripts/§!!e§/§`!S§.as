package §!!e§
{
   import §1!D§.§<!;§;
   import §2o§.§<H§;
   import §@!b§.§@!k§;
   import §@j§.Texture;
   
   public class §`!S§
   {
      
      public static const § 1§:int = 0;
      
      public static const §#!@§:int = 6;
      
      public static const §>!G§:int = 7;
      
      public static const §6L§:int = 8;
      
      public static const §3o§:int = 3;
      
      public static const §@Q§:int = 5;
      
      public static const §?I§:int = 2;
      
      public static const §=!f§:int = 1;
       
      
      public var §@!i§:String;
      
      public var §]b§:int;
      
      protected var §;!l§:§<!;§;
      
      public var §5_§:Number;
      
      public var §]Z§:String;
      
      public var §%!B§:Number = 1;
      
      public var §#!2§:Number;
      
      private var §extends§:Boolean = false;
      
      private var §1&§:String;
      
      private var §31§:int;
      
      private var §68§:§5!%§;
      
      private var §2=§:§,!§;
      
      private var §[X§:§]!S§;
      
      public function §`!S§(param1:String, param2:int, param3:§,!§, param4:§]!S§, param5:§5!%§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§@!i§ = param1;
         this.§]b§ = param2;
         this.§2=§ = param3;
         this.§1&§ = param12;
         this.§31§ = param13;
         this.§extends§ = param11;
         this.§[X§ = param4;
         this.§68§ = param5;
         this.§;!l§ = new §<!;§(param6);
         this.§]Z§ = param7;
         this.§%!B§ = param8;
         if(this.§%!B§ <= 0)
         {
            this.§%!B§ = 1;
         }
         this.§#!2§ = param9;
         this.§5_§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§extends§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§1&§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§31§;
      }
      
      public function §@$§() : int
      {
         return this.shape.§;!&§();
      }
      
      public function §<!0§() : int
      {
         return this.shape.§2!B§();
      }
      
      public function §=w§() : int
      {
         return this.shape.§@!N§();
      }
      
      public function §7P§() : Number
      {
         return this.§2=§.getValue(§,!§.§9!3§);
      }
      
      public function §^!,§() : Number
      {
         return Number(this.§2=§.getValue(§,!§.§^!7§));
      }
      
      public function §;X§() : Number
      {
         return Number(this.§2=§.getValue(§,!§.§9!A§));
      }
      
      public function §`!6§() : Number
      {
         return Number(this.§2=§.getValue(§,!§.§`§));
      }
      
      public function §4e§() : Number
      {
         return Number(this.§2=§.getValue(§,!§.§;a§));
      }
      
      public function §]! §() : Number
      {
         return Number(this.§2=§.getValue(§,!§.§4!B§));
      }
      
      public function §&b§() : Number
      {
         return Number(this.§2=§.getValue(§,!§.§7!P§));
      }
      
      public function §"!i§() : int
      {
         return this.§5_§;
      }
      
      public function get material() : §,!§
      {
         return this.§2=§;
      }
      
      public function get shape() : §5!%§
      {
         var _loc1_:Texture = null;
         if(!this.§68§)
         {
            _loc1_ = §<H§.§=3§.animationManager.getAnimation(this.§@!i§).getFrame(0).texture;
            this.§68§ = new §5!%§(this.§@!i§,"Rectangle",_loc1_.width * §@!k§.§2!J§ / 2,_loc1_.height * §@!k§.§2!J§ / 2);
         }
         return this.§68§;
      }
      
      public function get §1!h§() : §]!S§
      {
         return this.§[X§;
      }
      
      public function get score() : int
      {
         return this.§;!l§.getValue();
      }
   }
}
