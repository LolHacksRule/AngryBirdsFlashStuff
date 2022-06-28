package §<!1§
{
   import §,!5§.§^g§;
   import §0X§.§&'§;
   import §^!+§.Texture;
   import §true§.§ _§;
   
   public class §9B§
   {
      
      public static const §%!>§:int = 0;
      
      public static const §]!=§:int = 6;
      
      public static const §+!]§:int = 7;
      
      public static const §;!r§:int = 8;
      
      public static const §=!%§:int = 3;
      
      public static const §#!s§:int = 5;
      
      public static const §4x§:int = 2;
      
      public static const §<I§:int = 1;
       
      
      public var §<!]§:String;
      
      public var §6K§:int;
      
      protected var §#!%§:§&'§;
      
      public var §>j§:Number;
      
      public var §@§:String;
      
      public var §"g§:Number = 1;
      
      public var §-!!§:Number;
      
      private var §"n§:Boolean = false;
      
      private var §4!c§:String;
      
      private var §!!?§:int;
      
      private var §6r§:§2!W§;
      
      private var §!T§:§0"§;
      
      private var §]4§:§<!R§;
      
      public function §9B§(param1:String, param2:int, param3:§0"§, param4:§<!R§, param5:§2!W§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§<!]§ = param1;
         this.§6K§ = param2;
         this.§!T§ = param3;
         this.§4!c§ = param12;
         this.§!!?§ = param13;
         this.§"n§ = param11;
         this.§]4§ = param4;
         this.§6r§ = param5;
         this.§#!%§ = new §&'§(param6);
         this.§@§ = param7;
         this.§"g§ = param8;
         if(this.§"g§ <= 0)
         {
            this.§"g§ = 1;
         }
         this.§-!!§ = param9;
         this.§>j§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§"n§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§4!c§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§!!?§;
      }
      
      public function §'!5§() : int
      {
         return this.shape.§@!P§();
      }
      
      public function §#]§() : int
      {
         return this.shape.§#g§();
      }
      
      public function §4_§() : int
      {
         return this.shape.§=!q§();
      }
      
      public function §`!E§() : Number
      {
         return this.§!T§.getValue(§0"§.§+!7§);
      }
      
      public function §#!N§() : Number
      {
         return Number(this.§!T§.getValue(§0"§.§5"§));
      }
      
      public function §?!Y§() : Number
      {
         return Number(this.§!T§.getValue(§0"§.§@![§));
      }
      
      public function §]>§() : Number
      {
         return Number(this.§!T§.getValue(§0"§.§;!j§));
      }
      
      public function §7E§() : Number
      {
         return Number(this.§!T§.getValue(§0"§.§#H§));
      }
      
      public function §`!B§() : Number
      {
         return Number(this.§!T§.getValue(§0"§.§-b§));
      }
      
      public function §]8§() : Number
      {
         return Number(this.§!T§.getValue(§0"§.§for §));
      }
      
      public function §[!q§() : int
      {
         return this.§>j§;
      }
      
      public function get material() : §0"§
      {
         return this.§!T§;
      }
      
      public function get shape() : §2!W§
      {
         var _loc1_:Texture = null;
         if(!this.§6r§)
         {
            _loc1_ = § _§.§!6§.animationManager.getAnimation(this.§<!]§).getFrame(0).texture;
            this.§6r§ = new §2!W§(this.§<!]§,"Rectangle",_loc1_.width * §^g§.§^!S§ / 2,_loc1_.height * §^g§.§^!S§ / 2);
         }
         return this.§6r§;
      }
      
      public function get §!9§() : §<!R§
      {
         return this.§]4§;
      }
      
      public function get score() : int
      {
         return this.§#!%§.getValue();
      }
   }
}
