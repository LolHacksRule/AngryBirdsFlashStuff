package §<%§
{
   import §+I§.§9!%§;
   import §3,§.§[!;§;
   import §<!<§.§,V§;
   import §<L§.Texture;
   
   public class §<`§
   {
      
      public static const §+!5§:int = 0;
      
      public static const §8s§:int = 6;
      
      public static const §1"@§:int = 7;
      
      public static const §5!s§:int = 8;
      
      public static const §+!l§:int = 3;
      
      public static const §,"+§:int = 5;
      
      public static const §+!E§:int = 2;
      
      public static const §?!C§:int = 1;
       
      
      public var §+%§:String;
      
      public var §;!D§:int;
      
      protected var §0!l§:§,V§;
      
      public var §each §:Number;
      
      public var §;F§:String;
      
      public var §,a§:Number = 1;
      
      public var § i§:Number;
      
      private var §=!S§:Boolean = false;
      
      private var §"!$§:String;
      
      private var §+!N§:int;
      
      private var §<!Q§:§=!D§;
      
      private var §4!+§:§[p§;
      
      private var §3!k§:§9q§;
      
      public function §<`§(param1:String, param2:int, param3:§[p§, param4:§9q§, param5:§=!D§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§+%§ = param1;
         this.§;!D§ = param2;
         this.§4!+§ = param3;
         this.§"!$§ = param12;
         this.§+!N§ = param13;
         this.§=!S§ = param11;
         this.§3!k§ = param4;
         this.§<!Q§ = param5;
         this.§0!l§ = new §,V§(param6);
         this.§;F§ = param7;
         this.§,a§ = param8;
         if(this.§,a§ <= 0)
         {
            this.§,a§ = 1;
         }
         this.§ i§ = param9;
         this.§each § = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§=!S§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§"!$§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§+!N§;
      }
      
      public function §[!R§() : int
      {
         return this.shape.§ _§();
      }
      
      public function §!!W§() : int
      {
         return this.shape.§-"&§();
      }
      
      public function §';§() : int
      {
         return this.shape.§2<§();
      }
      
      public function §@v§() : Number
      {
         return this.§4!+§.getValue(§[p§.§``§);
      }
      
      public function §?<§() : Number
      {
         return Number(this.§4!+§.getValue(§[p§.§1!$§));
      }
      
      public function §`!,§() : Number
      {
         return Number(this.§4!+§.getValue(§[p§.§3-§));
      }
      
      public function §-!k§() : Number
      {
         return Number(this.§4!+§.getValue(§[p§.§>V§));
      }
      
      public function §&!6§() : Number
      {
         return Number(this.§4!+§.getValue(§[p§.§8!y§));
      }
      
      public function §0"%§() : Number
      {
         return Number(this.§4!+§.getValue(§[p§.§6!e§));
      }
      
      public function §-!2§() : Number
      {
         return Number(this.§4!+§.getValue(§[p§.§8";§));
      }
      
      public function §<!i§() : int
      {
         return this.§each §;
      }
      
      public function get material() : §[p§
      {
         return this.§4!+§;
      }
      
      public function get shape() : §=!D§
      {
         var _loc1_:Texture = null;
         if(!this.§<!Q§)
         {
            _loc1_ = §9!%§.§!!M§.animationManager.getAnimation(this.§+%§).getFrame(0).texture;
            this.§<!Q§ = new §=!D§(this.§+%§,"Rectangle",_loc1_.width * §[!;§.§4!O§ / 2,_loc1_.height * §[!;§.§4!O§ / 2);
         }
         return this.§<!Q§;
      }
      
      public function get §#t§() : §9q§
      {
         return this.§3!k§;
      }
      
      public function get score() : int
      {
         return this.§0!l§.getValue();
      }
   }
}
