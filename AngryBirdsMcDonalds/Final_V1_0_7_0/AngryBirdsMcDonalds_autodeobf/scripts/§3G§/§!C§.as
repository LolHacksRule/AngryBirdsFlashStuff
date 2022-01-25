package §3G§
{
   import §#!q§.§6!I§;
   import §%!5§.§7;§;
   import §&!9§.Texture;
   import §55§.§>![§;
   
   public class §!C§
   {
      
      public static const §]X§:int = 0;
      
      public static const §>!6§:int = 6;
      
      public static const §3!q§:int = 7;
      
      public static const §continue§:int = 8;
      
      public static const § W§:int = 3;
      
      public static const §^!p§:int = 5;
      
      public static const §%!8§:int = 2;
      
      public static const §&!c§:int = 1;
       
      
      public var §8+§:String;
      
      public var §=4§:int;
      
      protected var §^>§:§6!I§;
      
      public var §]!#§:Number;
      
      public var §1M§:String;
      
      public var §9w§:Number = 1;
      
      public var §6w§:Number;
      
      private var §!N§:Boolean = false;
      
      private var §8!8§:String;
      
      private var §1G§:int;
      
      private var §9c§:§9!g§;
      
      private var §2p§:§9!S§;
      
      private var §5K§:§9! §;
      
      public function §!C§(param1:String, param2:int, param3:§9!S§, param4:§9! §, param5:§9!g§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§8+§ = param1;
         this.§=4§ = param2;
         this.§2p§ = param3;
         this.§8!8§ = param12;
         this.§1G§ = param13;
         this.§!N§ = param11;
         this.§5K§ = param4;
         this.§9c§ = param5;
         this.§^>§ = new §6!I§(param6);
         this.§1M§ = param7;
         this.§9w§ = param8;
         if(this.§9w§ <= 0)
         {
            this.§9w§ = 1;
         }
         this.§6w§ = param9;
         this.§]!#§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§!N§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§8!8§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§1G§;
      }
      
      public function §+!9§() : int
      {
         return this.shape.§4E§();
      }
      
      public function §#! §() : int
      {
         return this.shape.§6!%§();
      }
      
      public function §%Z§() : int
      {
         return this.shape.§[V§();
      }
      
      public function §4x§() : Number
      {
         return this.§2p§.getValue(§9!S§.§!4§);
      }
      
      public function §8Q§() : Number
      {
         return Number(this.§2p§.getValue(§9!S§.§!!O§));
      }
      
      public function §`!o§() : Number
      {
         return Number(this.§2p§.getValue(§9!S§.§,!A§));
      }
      
      public function §;a§() : Number
      {
         return Number(this.§2p§.getValue(§9!S§.§'!@§));
      }
      
      public function §?!D§() : Number
      {
         return Number(this.§2p§.getValue(§9!S§.§'!E§));
      }
      
      public function § !h§() : Number
      {
         return Number(this.§2p§.getValue(§9!S§.§^h§));
      }
      
      public function §[,§() : Number
      {
         return Number(this.§2p§.getValue(§9!S§.§"Q§));
      }
      
      public function §]!+§() : int
      {
         return this.§]!#§;
      }
      
      public function get material() : §9!S§
      {
         return this.§2p§;
      }
      
      public function get shape() : §9!g§
      {
         var _loc1_:Texture = null;
         if(!this.§9c§)
         {
            _loc1_ = §7;§.§1h§.animationManager.getAnimation(this.§8+§).getFrame(0).texture;
            this.§9c§ = new §9!g§(this.§8+§,"Rectangle",_loc1_.width * §>![§.§%!k§ / 2,_loc1_.height * §>![§.§%!k§ / 2);
         }
         return this.§9c§;
      }
      
      public function get §[u§() : §9! §
      {
         return this.§5K§;
      }
      
      public function get score() : int
      {
         return this.§^>§.getValue();
      }
   }
}
