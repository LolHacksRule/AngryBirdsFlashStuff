package §default§
{
   import §!X§.§86§;
   import §#!F§.§78§;
   import §?m§.§7?§;
   import §]!B§.Texture;
   
   public class §-r§
   {
      
      public static const §#!]§:int = 0;
      
      public static const §@j§:int = 6;
      
      public static const §9N§:int = 7;
      
      public static const §5o§:int = 8;
      
      public static const §"!1§:int = 3;
      
      public static const §`T§:int = 5;
      
      public static const §+!S§:int = 2;
      
      public static const §^9§:int = 1;
       
      
      public var §2!1§:String;
      
      public var §?n§:int;
      
      protected var §;[§:§78§;
      
      public var § ! §:Number;
      
      public var §,N§:String;
      
      public var §1>§:Number = 1;
      
      public var §+?§:Number;
      
      private var §use§:Boolean = false;
      
      private var § !+§:§<A§;
      
      private var §"!;§:§-g§;
      
      private var §6!%§:§!A§;
      
      public function §-r§(param1:String, param2:int, param3:§-g§, param4:§!A§, param5:§<A§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super();
         this.§2!1§ = param1;
         this.§?n§ = param2;
         this.§"!;§ = param3;
         this.§use§ = param11;
         this.§6!%§ = param4;
         this.§ !+§ = param5;
         this.§;[§ = new §78§(param6);
         this.§,N§ = param7;
         this.§1>§ = param8;
         if(this.§1>§ <= 0)
         {
            this.§1>§ = 1;
         }
         this.§+?§ = param9;
         this.§ ! § = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§use§;
      }
      
      public function §=![§() : int
      {
         return this.shape.§<!"§();
      }
      
      public function §6N§() : int
      {
         return this.shape.§"@§();
      }
      
      public function §-v§() : int
      {
         return this.shape.§,7§();
      }
      
      public function §0e§() : Number
      {
         return this.§"!;§.getValue(§-g§.§&q§);
      }
      
      public function §2C§() : Number
      {
         return Number(this.§"!;§.getValue(§-g§.§ !H§));
      }
      
      public function § Z§() : Number
      {
         return Number(this.§"!;§.getValue(§-g§.§;!]§));
      }
      
      public function §5!J§() : Number
      {
         return Number(this.§"!;§.getValue(§-g§.§1n§));
      }
      
      public function §%$§() : Number
      {
         return Number(this.§"!;§.getValue(§-g§.§>!I§));
      }
      
      public function §0Q§() : Number
      {
         return Number(this.§"!;§.getValue(§-g§.§[B§));
      }
      
      public function §^i§() : Number
      {
         return Number(this.§"!;§.getValue(§-g§.§+!,§));
      }
      
      public function §get §() : int
      {
         return this.§ ! §;
      }
      
      public function get material() : §-g§
      {
         return this.§"!;§;
      }
      
      public function get shape() : §<A§
      {
         var _loc1_:Texture = null;
         if(!this.§ !+§)
         {
            _loc1_ = §7?§.§4!H§.§true§.§>f§(this.§2!1§).getFrame(0).texture;
            this.§ !+§ = new §<A§(this.§2!1§,"Rectangle",_loc1_.width * §86§.§7!4§ / 2,_loc1_.height * §86§.§7!4§ / 2);
         }
         return this.§ !+§;
      }
      
      public function get §-p§() : §!A§
      {
         return this.§6!%§;
      }
      
      public function get score() : int
      {
         return this.§;[§.getValue();
      }
   }
}
