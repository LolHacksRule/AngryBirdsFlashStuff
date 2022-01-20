package §9!§
{
   import § !J§.§%M§;
   import §#!1§.§=?§;
   import §&7§.Texture;
   import §7F§.§2M§;
   
   public class §?g§
   {
      
      public static const §'r§:int = 0;
      
      public static const §9"§:int = 6;
      
      public static const §;f§:int = 7;
      
      public static const §[W§:int = 8;
      
      public static const § L§:int = 3;
      
      public static const §7n§:int = 5;
      
      public static const §+H§:int = 2;
      
      public static const §8!<§:int = 1;
       
      
      public var §`!p§:String;
      
      public var §^!U§:int;
      
      protected var §%!6§:§=?§;
      
      public var §8[§:Number;
      
      public var §6!n§:String;
      
      public var §8!G§:Number = 1;
      
      public var §%!^§:Number;
      
      private var §+7§:Boolean = false;
      
      private var §!!$§:String;
      
      private var § #§:int;
      
      private var §<a§:§4!j§;
      
      private var §1!o§:§']§;
      
      private var §+!j§:§9'§;
      
      public function §?g§(param1:String, param2:int, param3:§']§, param4:§9'§, param5:§4!j§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§`!p§ = param1;
         this.§^!U§ = param2;
         this.§1!o§ = param3;
         this.§!!$§ = param12;
         this.§ #§ = param13;
         this.§+7§ = param11;
         this.§+!j§ = param4;
         this.§<a§ = param5;
         this.§%!6§ = new §=?§(param6);
         this.§6!n§ = param7;
         this.§8!G§ = param8;
         if(this.§8!G§ <= 0)
         {
            this.§8!G§ = 1;
         }
         this.§%!^§ = param9;
         this.§8[§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§+7§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§!!$§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§ #§;
      }
      
      public function §>!0§() : int
      {
         return this.shape.§[!!§();
      }
      
      public function §3&§() : int
      {
         return this.shape.§^!]§();
      }
      
      public function §#!f§() : int
      {
         return this.shape.§&>§();
      }
      
      public function § !V§() : Number
      {
         return this.§1!o§.getValue(§']§.§<F§);
      }
      
      public function §;!#§() : Number
      {
         return Number(this.§1!o§.getValue(§']§.§^Z§));
      }
      
      public function §-v§() : Number
      {
         return Number(this.§1!o§.getValue(§']§.§"+§));
      }
      
      public function §70§() : Number
      {
         return Number(this.§1!o§.getValue(§']§.§=!'§));
      }
      
      public function §0!%§() : Number
      {
         return Number(this.§1!o§.getValue(§']§.§'>§));
      }
      
      public function § ! §() : Number
      {
         return Number(this.§1!o§.getValue(§']§.§4!§));
      }
      
      public function §1=§() : Number
      {
         return Number(this.§1!o§.getValue(§']§.§?!^§));
      }
      
      public function §;x§() : int
      {
         return this.§8[§;
      }
      
      public function get material() : §']§
      {
         return this.§1!o§;
      }
      
      public function get shape() : §4!j§
      {
         var _loc1_:Texture = null;
         if(!this.§<a§)
         {
            _loc1_ = §2M§.§1?§.animationManager.getAnimation(this.§`!p§).getFrame(0).texture;
            this.§<a§ = new §4!j§(this.§`!p§,"Rectangle",_loc1_.width * §%M§.§'!Y§ / 2,_loc1_.height * §%M§.§'!Y§ / 2);
         }
         return this.§<a§;
      }
      
      public function get §6!@§() : §9'§
      {
         return this.§+!j§;
      }
      
      public function get score() : int
      {
         return this.§%!6§.getValue();
      }
   }
}
