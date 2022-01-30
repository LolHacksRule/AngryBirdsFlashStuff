package §#?§
{
   import §-!^§.§<s§;
   import §7"1§.§%W§;
   import §[B§.§"d§;
   import §^Q§.Texture;
   
   public class §4">§
   {
      
      public static const §0"0§:int = 0;
      
      public static const §<!c§:int = 6;
      
      public static const §"! §:int = 7;
      
      public static const §@f§:int = 8;
      
      public static const §5>§:int = 3;
      
      public static const §;!z§:int = 5;
      
      public static const §@!X§:int = 2;
      
      public static const §2'§:int = 1;
       
      
      public var §%!t§:String;
      
      public var §#>§:int;
      
      protected var §%!§:§<s§;
      
      public var § !q§:Number;
      
      public var §^X§:String;
      
      public var §<!P§:Number = 1;
      
      public var §<e§:Number;
      
      private var §&p§:Boolean = false;
      
      private var §^4§:String;
      
      private var §^r§:int;
      
      private var §-5§:§+"5§;
      
      private var §;?§:§8!§;
      
      private var §<@§:§?![§;
      
      public function §4">§(param1:String, param2:int, param3:§8!§, param4:§?![§, param5:§+"5§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§%!t§ = param1;
         this.§#>§ = param2;
         this.§;?§ = param3;
         this.§^4§ = param12;
         this.§^r§ = param13;
         this.§&p§ = param11;
         this.§<@§ = param4;
         this.§-5§ = param5;
         this.§%!§ = new §<s§(param6);
         this.§^X§ = param7;
         this.§<!P§ = param8;
         if(this.§<!P§ <= 0)
         {
            this.§<!P§ = 1;
         }
         this.§<e§ = param9;
         this.§ !q§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§&p§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§^4§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§^r§;
      }
      
      public function §,!A§() : int
      {
         return this.shape.§4@§();
      }
      
      public function §&S§() : int
      {
         return this.shape.§,!w§();
      }
      
      public function §3!h§() : int
      {
         return this.shape.§'1§();
      }
      
      public function §'"<§() : Number
      {
         return this.§;?§.getValue(§8!§.§+S§);
      }
      
      public function §=0§() : Number
      {
         return Number(this.§;?§.getValue(§8!§.§<F§));
      }
      
      public function §6!?§() : Number
      {
         return Number(this.§;?§.getValue(§8!§.§#!Q§));
      }
      
      public function § ">§() : Number
      {
         return Number(this.§;?§.getValue(§8!§.§`!D§));
      }
      
      public function §2"1§() : Number
      {
         return Number(this.§;?§.getValue(§8!§.§`t§));
      }
      
      public function §&M§() : Number
      {
         return Number(this.§;?§.getValue(§8!§.§-"'§));
      }
      
      public function §2"&§() : Number
      {
         return Number(this.§;?§.getValue(§8!§.§54§));
      }
      
      public function §5H§() : int
      {
         return this.§ !q§;
      }
      
      public function get material() : §8!§
      {
         return this.§;?§;
      }
      
      public function get shape() : §+"5§
      {
         var _loc1_:Texture = null;
         if(!this.§-5§)
         {
            _loc1_ = §%W§.§5"8§.§]9§.§^e§(this.§%!t§).getFrame(0).texture;
            this.§-5§ = new §+"5§(this.§%!t§,"Rectangle",_loc1_.width * §"d§.§2!]§ / 2,_loc1_.height * §"d§.§2!]§ / 2);
         }
         return this.§-5§;
      }
      
      public function get §`_§() : §?![§
      {
         return this.§<@§;
      }
      
      public function get score() : int
      {
         return this.§%!§.getValue();
      }
   }
}
