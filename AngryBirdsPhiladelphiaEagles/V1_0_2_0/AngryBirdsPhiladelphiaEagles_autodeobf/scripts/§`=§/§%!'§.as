package §`=§
{
   import §%"§.§ do§;
   import §9!0§.§3!2§;
   import §<!F§.§5!+§;
   import §@M§.Texture;
   
   public class §%!'§
   {
      
      public static const §^!+§:int = 0;
      
      public static const §#l§:int = 6;
      
      public static const §<6§:int = 7;
      
      public static const §%!K§:int = 8;
      
      public static const §`!4§:int = 3;
      
      public static const §-J§:int = 5;
      
      public static const §=4§:int = 2;
      
      public static const §8!1§:int = 1;
       
      
      public var §8!I§:String;
      
      public var §>!L§:int;
      
      protected var §42§:§3!2§;
      
      public var §]5§:Number;
      
      public var §94§:String;
      
      public var §]`§:Number = 1;
      
      public var §`!O§:Number;
      
      private var §?!3§:Boolean = false;
      
      private var §<@§:String;
      
      private var §1V§:int;
      
      private var §4!%§:§24§;
      
      private var §&!<§:§`P§;
      
      private var §&e§:§?!E§;
      
      public function §%!'§(param1:String, param2:int, param3:§`P§, param4:§?!E§, param5:§24§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§8!I§ = param1;
         this.§>!L§ = param2;
         this.§&!<§ = param3;
         this.§<@§ = param12;
         this.§1V§ = param13;
         this.§?!3§ = param11;
         this.§&e§ = param4;
         this.§4!%§ = param5;
         this.§42§ = new §3!2§(param6);
         this.§94§ = param7;
         this.§]`§ = param8;
         if(this.§]`§ <= 0)
         {
            this.§]`§ = 1;
         }
         this.§`!O§ = param9;
         this.§]5§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§?!3§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§<@§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§1V§;
      }
      
      public function §1w§() : int
      {
         return this.shape.§8§();
      }
      
      public function § !F§() : int
      {
         return this.shape.§6!?§();
      }
      
      public function §5z§() : int
      {
         return this.shape.§,m§();
      }
      
      public function §-,§() : Number
      {
         return this.§&!<§.getValue(§`P§.§-a§);
      }
      
      public function §-!F§() : Number
      {
         return Number(this.§&!<§.getValue(§`P§.§!i§));
      }
      
      public function §'%§() : Number
      {
         return Number(this.§&!<§.getValue(§`P§.§%!N§));
      }
      
      public function §-!>§() : Number
      {
         return Number(this.§&!<§.getValue(§`P§.§?e§));
      }
      
      public function §!n§() : Number
      {
         return Number(this.§&!<§.getValue(§`P§.§;4§));
      }
      
      public function §^!!§() : Number
      {
         return Number(this.§&!<§.getValue(§`P§.§?!?§));
      }
      
      public function §8#§() : Number
      {
         return Number(this.§&!<§.getValue(§`P§.§7X§));
      }
      
      public function §!,§() : int
      {
         return this.§]5§;
      }
      
      public function get material() : §`P§
      {
         return this.§&!<§;
      }
      
      public function get shape() : §24§
      {
         var _loc1_:Texture = null;
         if(!this.§4!%§)
         {
            _loc1_ = §5!+§.§6!§.§4i§.getAnimation(this.§8!I§).getFrame(0).texture;
            this.§4!%§ = new §24§(this.§8!I§,"Rectangle",_loc1_.width * § do§.§^!I§ / 2,_loc1_.height * § do§.§^!I§ / 2);
         }
         return this.§4!%§;
      }
      
      public function get §1`§() : §?!E§
      {
         return this.§&e§;
      }
      
      public function get score() : int
      {
         return this.§42§.getValue();
      }
   }
}
