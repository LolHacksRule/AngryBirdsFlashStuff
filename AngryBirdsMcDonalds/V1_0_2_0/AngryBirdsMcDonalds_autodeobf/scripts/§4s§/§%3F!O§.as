package §4s§
{
   import §",§.Texture;
   import §'a§.§0!f§;
   import §9!W§.§=!@§;
   import §;!j§.§;M§;
   
   public class §?!O§
   {
      
      public static const §8!a§:int = 0;
      
      public static const §;!&§:int = 6;
      
      public static const §9f§:int = 7;
      
      public static const § 6§:int = 8;
      
      public static const §`5§:int = 3;
      
      public static const §#!4§:int = 5;
      
      public static const §4J§:int = 2;
      
      public static const §@F§:int = 1;
       
      
      public var §6!?§:String;
      
      public var §=!6§:int;
      
      protected var §7!k§:§;M§;
      
      public var §'!j§:Number;
      
      public var §^2§:String;
      
      public var §,!E§:Number = 1;
      
      public var §"!j§:Number;
      
      private var §]N§:Boolean = false;
      
      private var §9O§:String;
      
      private var §5!d§:int;
      
      private var §<!J§:§[!_§;
      
      private var §=!o§:§0R§;
      
      private var §%!R§:§[-§;
      
      public function §?!O§(param1:String, param2:int, param3:§0R§, param4:§[-§, param5:§[!_§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§6!?§ = param1;
         this.§=!6§ = param2;
         this.§=!o§ = param3;
         this.§9O§ = param12;
         this.§5!d§ = param13;
         this.§]N§ = param11;
         this.§%!R§ = param4;
         this.§<!J§ = param5;
         this.§7!k§ = new §;M§(param6);
         this.§^2§ = param7;
         this.§,!E§ = param8;
         if(this.§,!E§ <= 0)
         {
            this.§,!E§ = 1;
         }
         this.§"!j§ = param9;
         this.§'!j§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§]N§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§9O§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§5!d§;
      }
      
      public function §]!7§() : int
      {
         return this.shape.§3!!§();
      }
      
      public function §&s§() : int
      {
         return this.shape.§&!3§();
      }
      
      public function §<[§() : int
      {
         return this.shape.§9-§();
      }
      
      public function §0!^§() : Number
      {
         return this.§=!o§.getValue(§0R§.§5]§);
      }
      
      public function §#!a§() : Number
      {
         return Number(this.§=!o§.getValue(§0R§.§7!4§));
      }
      
      public function §=;§() : Number
      {
         return Number(this.§=!o§.getValue(§0R§.§]!8§));
      }
      
      public function §?6§() : Number
      {
         return Number(this.§=!o§.getValue(§0R§.§=!$§));
      }
      
      public function §[R§() : Number
      {
         return Number(this.§=!o§.getValue(§0R§.§1o§));
      }
      
      public function § N§() : Number
      {
         return Number(this.§=!o§.getValue(§0R§.§#,§));
      }
      
      public function § !@§() : Number
      {
         return Number(this.§=!o§.getValue(§0R§.§?=§));
      }
      
      public function §<T§() : int
      {
         return this.§'!j§;
      }
      
      public function get material() : §0R§
      {
         return this.§=!o§;
      }
      
      public function get shape() : §[!_§
      {
         var _loc1_:Texture = null;
         if(!this.§<!J§)
         {
            _loc1_ = §=!@§.§>!T§.animationManager.getAnimation(this.§6!?§).getFrame(0).texture;
            this.§<!J§ = new §[!_§(this.§6!?§,"Rectangle",_loc1_.width * §0!f§.§<C§ / 2,_loc1_.height * §0!f§.§<C§ / 2);
         }
         return this.§<!J§;
      }
      
      public function get §-!@§() : §[-§
      {
         return this.§%!R§;
      }
      
      public function get score() : int
      {
         return this.§7!k§.getValue();
      }
   }
}
