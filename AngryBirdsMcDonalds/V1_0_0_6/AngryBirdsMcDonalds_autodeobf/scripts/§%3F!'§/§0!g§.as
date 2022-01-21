package §?!'§
{
   import § !^§.Texture;
   import § e§.§62§;
   import §#M§.§+!Z§;
   import §<L§.§!!G§;
   
   public class §0!g§
   {
      
      public static const §>!P§:int = 0;
      
      public static const §5!&§:int = 6;
      
      public static const §;!C§:int = 7;
      
      public static const §]d§:int = 8;
      
      public static const §'0§:int = 3;
      
      public static const §7-§:int = 5;
      
      public static const §9!h§:int = 2;
      
      public static const §1h§:int = 1;
       
      
      public var §%!O§:String;
      
      public var §4x§:int;
      
      protected var §4'§:§62§;
      
      public var §9!"§:Number;
      
      public var §6+§:String;
      
      public var §#!4§:Number = 1;
      
      public var §'6§:Number;
      
      private var §&2§:Boolean = false;
      
      private var §?3§:String;
      
      private var §null §:int;
      
      private var §8!3§:§-M§;
      
      private var §8I§:§ 8§;
      
      private var §&$§:§3!^§;
      
      public function §0!g§(param1:String, param2:int, param3:§ 8§, param4:§3!^§, param5:§-M§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§%!O§ = param1;
         this.§4x§ = param2;
         this.§8I§ = param3;
         this.§?3§ = param12;
         this.§null § = param13;
         this.§&2§ = param11;
         this.§&$§ = param4;
         this.§8!3§ = param5;
         this.§4'§ = new §62§(param6);
         this.§6+§ = param7;
         this.§#!4§ = param8;
         if(this.§#!4§ <= 0)
         {
            this.§#!4§ = 1;
         }
         this.§'6§ = param9;
         this.§9!"§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§&2§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§?3§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§null §;
      }
      
      public function §&!c§() : int
      {
         return this.shape.§,_§();
      }
      
      public function §4!]§() : int
      {
         return this.shape.§+!J§();
      }
      
      public function §!i§() : int
      {
         return this.shape.§%!U§();
      }
      
      public function §`!l§() : Number
      {
         return this.§8I§.getValue(§ 8§.§!!,§);
      }
      
      public function §=9§() : Number
      {
         return Number(this.§8I§.getValue(§ 8§.§-!R§));
      }
      
      public function §3!;§() : Number
      {
         return Number(this.§8I§.getValue(§ 8§.§ J§));
      }
      
      public function §<!C§() : Number
      {
         return Number(this.§8I§.getValue(§ 8§.§1Q§));
      }
      
      public function §<!-§() : Number
      {
         return Number(this.§8I§.getValue(§ 8§.§&!`§));
      }
      
      public function §&L§() : Number
      {
         return Number(this.§8I§.getValue(§ 8§.§+!3§));
      }
      
      public function §@!<§() : Number
      {
         return Number(this.§8I§.getValue(§ 8§.§=!D§));
      }
      
      public function §@!O§() : int
      {
         return this.§9!"§;
      }
      
      public function get material() : § 8§
      {
         return this.§8I§;
      }
      
      public function get shape() : §-M§
      {
         var _loc1_:Texture = null;
         if(!this.§8!3§)
         {
            _loc1_ = §+!Z§.§?!<§.animationManager.getAnimation(this.§%!O§).getFrame(0).texture;
            this.§8!3§ = new §-M§(this.§%!O§,"Rectangle",_loc1_.width * §!!G§.§ !E§ / 2,_loc1_.height * §!!G§.§ !E§ / 2);
         }
         return this.§8!3§;
      }
      
      public function get §1D§() : §3!^§
      {
         return this.§&$§;
      }
      
      public function get score() : int
      {
         return this.§4'§.getValue();
      }
   }
}
