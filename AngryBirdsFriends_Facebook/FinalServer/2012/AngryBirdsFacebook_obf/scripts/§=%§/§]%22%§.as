package §=%§
{
   import §%!'§.§-§;
   import §0!2§.§5"L§;
   import §5!G§.§&2§;
   import §?7§.Texture;
   
   public class §]"%§
   {
      
      public static const §,!S§:int = 0;
      
      public static const §6"2§:int = 6;
      
      public static const §<o§:int = 7;
      
      public static const §^z§:int = 8;
      
      public static const §%"#§:int = 3;
      
      public static const §]T§:int = 5;
      
      public static const §;1§:int = 2;
      
      public static const §8!-§:int = 1;
       
      
      public var §=-§:String;
      
      public var §^!E§:int;
      
      protected var §^"9§:§-§;
      
      public var §?"'§:Number;
      
      public var §;!g§:String;
      
      public var §4"=§:Number = 1;
      
      public var §3!A§:Number;
      
      private var §@!@§:Boolean = false;
      
      private var §2!L§:String;
      
      private var §5![§:int;
      
      private var §79§:§&-§;
      
      private var §,q§:§=!C§;
      
      private var §^3§:§7!g§;
      
      public function §]"%§(param1:String, param2:int, param3:§=!C§, param4:§7!g§, param5:§&-§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§=-§ = param1;
         this.§^!E§ = param2;
         this.§,q§ = param3;
         this.§2!L§ = param12;
         this.§5![§ = param13;
         this.§@!@§ = param11;
         this.§^3§ = param4;
         this.§79§ = param5;
         this.§^"9§ = new §-§(param6);
         this.§;!g§ = param7;
         this.§4"=§ = param8;
         if(this.§4"=§ <= 0)
         {
            this.§4"=§ = 1;
         }
         this.§3!A§ = param9;
         this.§?"'§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§@!@§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§2!L§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§5![§;
      }
      
      public function §9Y§() : int
      {
         return this.shape.§<L§();
      }
      
      public function §'"=§() : int
      {
         return this.shape.§9!T§();
      }
      
      public function §#=§() : int
      {
         return this.shape.§`n§();
      }
      
      public function §=W§() : Number
      {
         return this.§,q§.getValue(§=!C§.§"T§);
      }
      
      public function §=!6§() : Number
      {
         return Number(this.§,q§.getValue(§=!C§.§,N§));
      }
      
      public function § b§() : Number
      {
         return Number(this.§,q§.getValue(§=!C§.§1,§));
      }
      
      public function §5V§() : Number
      {
         return Number(this.§,q§.getValue(§=!C§.§ !L§));
      }
      
      public function §="2§() : Number
      {
         return Number(this.§,q§.getValue(§=!C§.§[,§));
      }
      
      public function §'J§() : Number
      {
         return Number(this.§,q§.getValue(§=!C§.§1"$§));
      }
      
      public function §2!9§() : Number
      {
         return Number(this.§,q§.getValue(§=!C§.§#"D§));
      }
      
      public function §1!0§() : int
      {
         return this.§?"'§;
      }
      
      public function get material() : §=!C§
      {
         return this.§,q§;
      }
      
      public function get shape() : §&-§
      {
         var _loc1_:Texture = null;
         if(!this.§79§)
         {
            _loc1_ = §&2§.§],§.animationManager.getAnimation(this.§=-§).getFrame(0).texture;
            this.§79§ = new §&-§(this.§=-§,"Rectangle",_loc1_.width * §5"L§.§@>§ / 2,_loc1_.height * §5"L§.§@>§ / 2);
         }
         return this.§79§;
      }
      
      public function get §8d§() : §7!g§
      {
         return this.§^3§;
      }
      
      public function get score() : int
      {
         return this.§^"9§.getValue();
      }
   }
}
