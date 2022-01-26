package §2!"§
{
   import §"o§.§ M§;
   import §%?§.Texture;
   import §;j§.§8[§;
   import §try§.§8!;§;
   
   public class § !A§
   {
      
      public static const §7!&§:int = 0;
      
      public static const §=!>§:int = 6;
      
      public static const §"z§:int = 7;
      
      public static const §;!>§:int = 8;
      
      public static const §+`§:int = 3;
      
      public static const §@F§:int = 5;
      
      public static const §2#§:int = 2;
      
      public static const §6Z§:int = 1;
       
      
      public var §5o§:String;
      
      public var §=&§:int;
      
      protected var §7!A§:§8!;§;
      
      public var §>!G§:Number;
      
      public var §5E§:String;
      
      public var §[a§:Number = 1;
      
      public var §3-§:Number;
      
      private var §;-§:Boolean = false;
      
      private var §>K§:§;,§;
      
      private var §=!3§:§ ^§;
      
      private var §%!&§:§8y§;
      
      public function § !A§(param1:String, param2:int, param3:§ ^§, param4:§8y§, param5:§;,§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super();
         this.§5o§ = param1;
         this.§=&§ = param2;
         this.§=!3§ = param3;
         this.§;-§ = param11;
         this.§%!&§ = param4;
         this.§>K§ = param5;
         this.§7!A§ = new §8!;§(param6);
         this.§5E§ = param7;
         this.§[a§ = param8;
         if(this.§[a§ <= 0)
         {
            this.§[a§ = 1;
         }
         this.§3-§ = param9;
         this.§>!G§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§;-§;
      }
      
      public function §9!B§() : int
      {
         return this.shape.§28§();
      }
      
      public function §#c§() : int
      {
         return this.shape.§'1§();
      }
      
      public function §!#§() : int
      {
         return this.shape.§0!>§();
      }
      
      public function §>+§() : Number
      {
         return this.§=!3§.getValue(§ ^§.§!H§);
      }
      
      public function § L§() : Number
      {
         return Number(this.§=!3§.getValue(§ ^§.§=T§));
      }
      
      public function §+a§() : Number
      {
         return Number(this.§=!3§.getValue(§ ^§.§ !#§));
      }
      
      public function §%`§() : Number
      {
         return Number(this.§=!3§.getValue(§ ^§.§6u§));
      }
      
      public function §;;§() : Number
      {
         return Number(this.§=!3§.getValue(§ ^§.§8I§));
      }
      
      public function §]=§() : Number
      {
         return Number(this.§=!3§.getValue(§ ^§.§^^§));
      }
      
      public function §[N§() : Number
      {
         return Number(this.§=!3§.getValue(§ ^§.§,Y§));
      }
      
      public function §2R§() : int
      {
         return this.§>!G§;
      }
      
      public function get material() : § ^§
      {
         return this.§=!3§;
      }
      
      public function get shape() : §;,§
      {
         var _loc1_:Texture = null;
         if(!this.§>K§)
         {
            _loc1_ = §8[§.§import§.§]P§.§!D§(this.§5o§).getFrame(0).texture;
            this.§>K§ = new §;,§(this.§5o§,"Rectangle",_loc1_.width * § M§.§%v§ / 2,_loc1_.height * § M§.§%v§ / 2);
         }
         return this.§>K§;
      }
      
      public function get §]!2§() : §8y§
      {
         return this.§%!&§;
      }
      
      public function get score() : int
      {
         return this.§7!A§.getValue();
      }
   }
}
