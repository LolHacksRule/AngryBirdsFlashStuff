package §'d§
{
   import §"^§.§9=§;
   import §"`§.Texture;
   import §,!F§.§#§;
   import §4!6§.§use§;
   
   public class §;"§
   {
      
      public static const §7!O§:int = 0;
      
      public static const §?!P§:int = 6;
      
      public static const §2s§:int = 7;
      
      public static const §9_§:int = 8;
      
      public static const §9!C§:int = 3;
      
      public static const §]n§:int = 5;
      
      public static const §78§:int = 2;
      
      public static const §%S§:int = 1;
       
      
      public var §!Z§:String;
      
      public var §5a§:int;
      
      protected var §?u§:§use§;
      
      public var §6`§:Number;
      
      public var §9!G§:String;
      
      public var §`i§:Number = 1;
      
      public var §`t§:Number;
      
      private var § !'§:Boolean = false;
      
      private var §]s§:String;
      
      private var §9S§:int;
      
      private var §-$§:§?+§;
      
      private var §@X§:§4v§;
      
      private var §]P§:§>N§;
      
      public function §;"§(param1:String, param2:int, param3:§4v§, param4:§>N§, param5:§?+§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§!Z§ = param1;
         this.§5a§ = param2;
         this.§@X§ = param3;
         this.§]s§ = param12;
         this.§9S§ = param13;
         this.§ !'§ = param11;
         this.§]P§ = param4;
         this.§-$§ = param5;
         this.§?u§ = new §use§(param6);
         this.§9!G§ = param7;
         this.§`i§ = param8;
         if(this.§`i§ <= 0)
         {
            this.§`i§ = 1;
         }
         this.§`t§ = param9;
         this.§6`§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§ !'§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§]s§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§9S§;
      }
      
      public function §,X§() : int
      {
         return this.shape.§%3§();
      }
      
      public function §-w§() : int
      {
         return this.shape.§%v§();
      }
      
      public function §>!'§() : int
      {
         return this.shape.§0s§();
      }
      
      public function §&=§() : Number
      {
         return this.§@X§.getValue(§4v§.§>!@§);
      }
      
      public function §^h§() : Number
      {
         return Number(this.§@X§.getValue(§4v§.§^!M§));
      }
      
      public function §+@§() : Number
      {
         return Number(this.§@X§.getValue(§4v§.§>I§));
      }
      
      public function §'§() : Number
      {
         return Number(this.§@X§.getValue(§4v§.§`H§));
      }
      
      public function §%!@§() : Number
      {
         return Number(this.§@X§.getValue(§4v§.§>!3§));
      }
      
      public function §!t§() : Number
      {
         return Number(this.§@X§.getValue(§4v§.§`A§));
      }
      
      public function §1t§() : Number
      {
         return Number(this.§@X§.getValue(§4v§.§1!8§));
      }
      
      public function §-!M§() : int
      {
         return this.§6`§;
      }
      
      public function get material() : §4v§
      {
         return this.§@X§;
      }
      
      public function get shape() : §?+§
      {
         var _loc1_:Texture = null;
         if(!this.§-$§)
         {
            _loc1_ = §9=§.§<!@§.§94§.getAnimation(this.§!Z§).getFrame(0).texture;
            this.§-$§ = new §?+§(this.§!Z§,"Rectangle",_loc1_.width * §#§.§67§ / 2,_loc1_.height * §#§.§67§ / 2);
         }
         return this.§-$§;
      }
      
      public function get §"!0§() : §>N§
      {
         return this.§]P§;
      }
      
      public function get score() : int
      {
         return this.§?u§.getValue();
      }
   }
}
