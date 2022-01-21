package §%!n§
{
   import § !Y§.§2#§;
   import §&Y§.Texture;
   import §3!@§.§ s§;
   import §?I§.§'e§;
   
   public class §7!+§
   {
      
      public static const §,"§:int = 0;
      
      public static const §^n§:int = 6;
      
      public static const §96§:int = 7;
      
      public static const §>!0§:int = 8;
      
      public static const §&!f§:int = 3;
      
      public static const §6!n§:int = 5;
      
      public static const §2g§:int = 2;
      
      public static const §'Q§:int = 1;
       
      
      public var §3!G§:String;
      
      public var §&F§:int;
      
      protected var §1!<§:§'e§;
      
      public var §'!g§:Number;
      
      public var § !l§:String;
      
      public var §"2§:Number = 1;
      
      public var §5!]§:Number;
      
      private var §`![§:Boolean = false;
      
      private var §=!f§:String;
      
      private var §&C§:int;
      
      private var §2!&§:§%X§;
      
      private var §'o§:§;%§;
      
      private var §5-§:§,Y§;
      
      public function §7!+§(param1:String, param2:int, param3:§;%§, param4:§,Y§, param5:§%X§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§3!G§ = param1;
         this.§&F§ = param2;
         this.§'o§ = param3;
         this.§=!f§ = param12;
         this.§&C§ = param13;
         this.§`![§ = param11;
         this.§5-§ = param4;
         this.§2!&§ = param5;
         this.§1!<§ = new §'e§(param6);
         this.§ !l§ = param7;
         this.§"2§ = param8;
         if(this.§"2§ <= 0)
         {
            this.§"2§ = 1;
         }
         this.§5!]§ = param9;
         this.§'!g§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§`![§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§=!f§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§&C§;
      }
      
      public function §,!K§() : int
      {
         return this.shape.§ !`§();
      }
      
      public function §!!8§() : int
      {
         return this.shape.§``§();
      }
      
      public function §<f§() : int
      {
         return this.shape.§^!h§();
      }
      
      public function §3!A§() : Number
      {
         return this.§'o§.getValue(§;%§.§;h§);
      }
      
      public function §2[§() : Number
      {
         return Number(this.§'o§.getValue(§;%§.§"!U§));
      }
      
      public function §!@§() : Number
      {
         return Number(this.§'o§.getValue(§;%§.§@c§));
      }
      
      public function §[!+§() : Number
      {
         return Number(this.§'o§.getValue(§;%§.§[B§));
      }
      
      public function §[v§() : Number
      {
         return Number(this.§'o§.getValue(§;%§.§&!e§));
      }
      
      public function §5O§() : Number
      {
         return Number(this.§'o§.getValue(§;%§.§&!Z§));
      }
      
      public function § O§() : Number
      {
         return Number(this.§'o§.getValue(§;%§.§"X§));
      }
      
      public function §1!;§() : int
      {
         return this.§'!g§;
      }
      
      public function get material() : §;%§
      {
         return this.§'o§;
      }
      
      public function get shape() : §%X§
      {
         var _loc1_:Texture = null;
         if(!this.§2!&§)
         {
            _loc1_ = §2#§.§"@§.animationManager.getAnimation(this.§3!G§).getFrame(0).texture;
            this.§2!&§ = new §%X§(this.§3!G§,"Rectangle",_loc1_.width * § s§.§<!h§ / 2,_loc1_.height * § s§.§<!h§ / 2);
         }
         return this.§2!&§;
      }
      
      public function get §0$§() : §,Y§
      {
         return this.§5-§;
      }
      
      public function get score() : int
      {
         return this.§1!<§.getValue();
      }
   }
}
