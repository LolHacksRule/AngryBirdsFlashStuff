package §5x§
{
   import §7z§.§]!-§;
   import §;!X§.§7`§;
   import §^3§.§6Y§;
   import §^n§.Texture;
   
   public class §6T§
   {
      
      public static const §-j§:int = 0;
      
      public static const § g§:int = 6;
      
      public static const §7!V§:int = 7;
      
      public static const §#P§:int = 8;
      
      public static const §]b§:int = 3;
      
      public static const §&8§:int = 5;
      
      public static const §^q§:int = 2;
      
      public static const §"!!§:int = 1;
       
      
      public var §9@§:String;
      
      public var §#!%§:int;
      
      protected var §=&§:§6Y§;
      
      public var §2!T§:Number;
      
      public var §4!Z§:String;
      
      public var §@!'§:Number = 1;
      
      public var §get §:Number;
      
      private var §]!^§:Boolean = false;
      
      private var §>!Y§:String;
      
      private var §0F§:int;
      
      private var §#!Z§:override;
      
      private var §6_§:§<!8§;
      
      private var §4!F§:§&o§;
      
      public function §6T§(param1:String, param2:int, param3:§<!8§, param4:§&o§, param5:override, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§9@§ = param1;
         this.§#!%§ = param2;
         this.§6_§ = param3;
         this.§>!Y§ = param12;
         this.§0F§ = param13;
         this.§]!^§ = param11;
         this.§4!F§ = param4;
         this.§#!Z§ = param5;
         this.§=&§ = new §6Y§(param6);
         this.§4!Z§ = param7;
         this.§@!'§ = param8;
         if(this.§@!'§ <= 0)
         {
            this.§@!'§ = 1;
         }
         this.§get § = param9;
         this.§2!T§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§]!^§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§>!Y§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§0F§;
      }
      
      public function §7v§() : int
      {
         return this.shape.§,!S§();
      }
      
      public function § 9§() : int
      {
         return this.shape.§[!2§();
      }
      
      public function §6v§() : int
      {
         return this.shape.§>j§();
      }
      
      public function §,W§() : Number
      {
         return this.§6_§.getValue(§<!8§.§,'§);
      }
      
      public function §=!@§() : Number
      {
         return Number(this.§6_§.getValue(§<!8§.§ o§));
      }
      
      public function §%!2§() : Number
      {
         return Number(this.§6_§.getValue(§<!8§.§!!'§));
      }
      
      public function §?>§() : Number
      {
         return Number(this.§6_§.getValue(§<!8§.§"![§));
      }
      
      public function §9C§() : Number
      {
         return Number(this.§6_§.getValue(§<!8§.§,M§));
      }
      
      public function §;V§() : Number
      {
         return Number(this.§6_§.getValue(§<!8§.§`-§));
      }
      
      public function §9D§() : Number
      {
         return Number(this.§6_§.getValue(§<!8§.§6g§));
      }
      
      public function §0s§() : int
      {
         return this.§2!T§;
      }
      
      public function get material() : §<!8§
      {
         return this.§6_§;
      }
      
      public function get shape() : override
      {
         var _loc1_:Texture = null;
         if(!this.§#!Z§)
         {
            _loc1_ = §7`§.§2'§.§]]§.§<]§(this.§9@§).getFrame(0).texture;
            this.§#!Z§ = new override(this.§9@§,"Rectangle",_loc1_.width * §]!-§.§>C§ / 2,_loc1_.height * §]!-§.§>C§ / 2);
         }
         return this.§#!Z§;
      }
      
      public function get §8c§() : §&o§
      {
         return this.§4!F§;
      }
      
      public function get score() : int
      {
         return this.§=&§.getValue();
      }
   }
}
