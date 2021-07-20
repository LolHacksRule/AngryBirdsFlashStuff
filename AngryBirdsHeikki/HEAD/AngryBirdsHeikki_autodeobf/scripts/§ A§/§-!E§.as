package § A§
{
   import §!!S§.Texture;
   import §8O§.§&#§;
   import §9!'§.§0!%§;
   import §9!Q§.§5!!§;
   
   public class §-!E§
   {
      
      public static const §2!V§:int = 0;
      
      public static const §80§:int = 6;
      
      public static const §9!A§:int = 7;
      
      public static const §%H§:int = 8;
      
      public static const §<!G§:int = 3;
      
      public static const §;S§:int = 5;
      
      public static const §8<§:int = 2;
      
      public static const §`N§:int = 1;
       
      
      public var § [§:String;
      
      public var §]5§:int;
      
      protected var §'!$§:§5!!§;
      
      public var §5!X§:Number;
      
      public var §7s§:String;
      
      public var §1!`§:Number = 1;
      
      public var §1D§:Number;
      
      private var §8!$§:Boolean = false;
      
      private var §"v§:String;
      
      private var §4!1§:int;
      
      private var §87§:§9c§;
      
      private var §0N§:§&!#§;
      
      private var §9!&§:§68§;
      
      public function §-!E§(param1:String, param2:int, param3:§&!#§, param4:§68§, param5:§9c§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§ [§ = param1;
         this.§]5§ = param2;
         this.§0N§ = param3;
         this.§"v§ = param12;
         this.§4!1§ = param13;
         this.§8!$§ = param11;
         this.§9!&§ = param4;
         this.§87§ = param5;
         this.§'!$§ = new §5!!§(param6);
         this.§7s§ = param7;
         this.§1!`§ = param8;
         if(this.§1!`§ <= 0)
         {
            this.§1!`§ = 1;
         }
         this.§1D§ = param9;
         this.§5!X§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§8!$§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§"v§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§4!1§;
      }
      
      public function §-`§() : int
      {
         return this.shape.§40§();
      }
      
      public function § !,§() : int
      {
         return this.shape.§%T§();
      }
      
      public function §4T§() : int
      {
         return this.shape.§@!a§();
      }
      
      public function §8!'§() : Number
      {
         return this.§0N§.getValue(§&!#§.§?R§);
      }
      
      public function § !Z§() : Number
      {
         return Number(this.§0N§.getValue(§&!#§.§]a§));
      }
      
      public function §,C§() : Number
      {
         return Number(this.§0N§.getValue(§&!#§.§7!4§));
      }
      
      public function §^&§() : Number
      {
         return Number(this.§0N§.getValue(§&!#§.§6!?§));
      }
      
      public function §class§() : Number
      {
         return Number(this.§0N§.getValue(§&!#§.§ 7§));
      }
      
      public function §#&§() : Number
      {
         return Number(this.§0N§.getValue(§&!#§.§>t§));
      }
      
      public function §1!2§() : Number
      {
         return Number(this.§0N§.getValue(§&!#§.§@!S§));
      }
      
      public function §<!!§() : int
      {
         return this.§5!X§;
      }
      
      public function get material() : §&!#§
      {
         return this.§0N§;
      }
      
      public function get shape() : §9c§
      {
         var _loc1_:Texture = null;
         if(!this.§87§)
         {
            _loc1_ = §&#§.§3!D§.§2!]§.§>n§(this.§ [§).getFrame(0).texture;
            this.§87§ = new §9c§(this.§ [§,"Rectangle",_loc1_.width * §0!%§.§"m§ / 2,_loc1_.height * §0!%§.§"m§ / 2);
         }
         return this.§87§;
      }
      
      public function get §<f§() : §68§
      {
         return this.§9!&§;
      }
      
      public function get score() : int
      {
         return this.§'!$§.getValue();
      }
   }
}
