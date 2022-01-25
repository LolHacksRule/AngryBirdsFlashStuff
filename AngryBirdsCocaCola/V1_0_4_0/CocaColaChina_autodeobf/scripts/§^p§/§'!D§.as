package §^p§
{
   import §"![§.Texture;
   import §-v§.§,!1§;
   import §4A§.§&_§;
   import §;m§.§6!U§;
   
   public class §'!D§
   {
      
      public static const §&!'§:int = 0;
      
      public static const §=l§:int = 6;
      
      public static const §&r§:int = 7;
      
      public static const §0!N§:int = 8;
      
      public static const §?!C§:int = 3;
      
      public static const §5[§:int = 5;
      
      public static const §&!>§:int = 2;
      
      public static const §;!,§:int = 1;
       
      
      public var §1T§:String;
      
      public var §[w§:int;
      
      protected var §0!1§:§6!U§;
      
      public var §6h§:Number;
      
      public var §9p§:String;
      
      public var §!!4§:Number = 1;
      
      public var §?L§:Number;
      
      private var §=_§:Boolean = false;
      
      private var §2!'§:§!!U§;
      
      private var §>u§:§=!3§;
      
      private var §=]§:§0u§;
      
      public function §'!D§(param1:String, param2:int, param3:§=!3§, param4:§0u§, param5:§!!U§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super();
         this.§1T§ = param1;
         this.§[w§ = param2;
         this.§>u§ = param3;
         this.§=_§ = param11;
         this.§=]§ = param4;
         this.§2!'§ = param5;
         this.§0!1§ = new §6!U§(param6);
         this.§9p§ = param7;
         this.§!!4§ = param8;
         if(this.§!!4§ <= 0)
         {
            this.§!!4§ = 1;
         }
         this.§?L§ = param9;
         this.§6h§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§=_§;
      }
      
      public function §%!P§() : int
      {
         return this.shape.§;N§();
      }
      
      public function §0§() : int
      {
         return this.shape.§+o§();
      }
      
      public function §7G§() : int
      {
         return this.shape.§!o§();
      }
      
      public function §^!K§() : Number
      {
         return this.§>u§.getValue(§=!3§.§'!P§);
      }
      
      public function §?!7§() : Number
      {
         return Number(this.§>u§.getValue(§=!3§.§;<§));
      }
      
      public function §?b§() : Number
      {
         return Number(this.§>u§.getValue(§=!3§.§2k§));
      }
      
      public function §;"§() : Number
      {
         return Number(this.§>u§.getValue(§=!3§.§'y§));
      }
      
      public function §^C§() : Number
      {
         return Number(this.§>u§.getValue(§=!3§.§8!#§));
      }
      
      public function §'g§() : Number
      {
         return Number(this.§>u§.getValue(§=!3§.§'>§));
      }
      
      public function §8!3§() : Number
      {
         return Number(this.§>u§.getValue(§=!3§.§;!_§));
      }
      
      public function §^[§() : int
      {
         return this.§6h§;
      }
      
      public function get material() : §=!3§
      {
         return this.§>u§;
      }
      
      public function get shape() : §!!U§
      {
         var _loc1_:Texture = null;
         if(!this.§2!'§)
         {
            _loc1_ = §,!1§.§2T§.§0!+§.§ !Z§(this.§1T§).getFrame(0).texture;
            this.§2!'§ = new §!!U§(this.§1T§,"Rectangle",_loc1_.width * §&_§.§5-§ / 2,_loc1_.height * §&_§.§5-§ / 2);
         }
         return this.§2!'§;
      }
      
      public function get §^c§() : §0u§
      {
         return this.§=]§;
      }
      
      public function get score() : int
      {
         return this.§0!1§.getValue();
      }
   }
}
