package §with§
{
   import §_-XI§.§_-Er§;
   
   public class §_-y7§
   {
      
      public static const §_-KW§:int = 0;
      
      public static const §_-u3§:int = 6;
      
      public static const §_-rh§:int = 7;
      
      public static const §_-T0§:int = 8;
      
      public static const §_-zE§:int = 3;
      
      public static const §_-Ym§:int = 5;
      
      public static const §_-L7§:int = 2;
      
      public static const §_-XK§:int = 1;
       
      
      public var §true §:String;
      
      public var §_-bi§:int;
      
      protected var §_-Rd§:§_-Er§;
      
      public var §_-Ex§:Number;
      
      public var §_-cM§:String;
      
      public var §_-bU§:Number = 1;
      
      public var §_-jW§:Number;
      
      private var §_-Ts§:§_-fn§;
      
      private var §_-kP§:§_-pC§;
      
      private var §_-EU§:§_-AZ§;
      
      public function §_-y7§(param1:String, param2:int, param3:§_-pC§, param4:§_-AZ§, param5:§_-fn§, param6:int, param7:String, param8:Number, param9:Number, param10:Number)
      {
         super();
         this.§true § = param1;
         this.§_-bi§ = param2;
         this.§_-kP§ = param3;
         this.§_-EU§ = param4;
         this.§_-Ts§ = param5;
         this.§_-Rd§ = new §_-Er§(param6);
         this.§_-cM§ = param7;
         this.§_-bU§ = param8;
         if(this.§_-bU§ <= 0)
         {
            this.§_-bU§ = 1;
         }
         this.§_-jW§ = param9;
         this.§_-Ex§ = param10;
      }
      
      public function §_-3t§() : int
      {
         return this.§_-Ts§.§do§();
      }
      
      public function §_-G6§() : int
      {
         return this.§_-Ts§.§_-Gl§();
      }
      
      public function §_-Jv§() : int
      {
         return this.§_-Ts§.§_-6p§();
      }
      
      public function §_-ko§() : Number
      {
         return this.§_-kP§.getValue(§_-pC§.§_-Xa§);
      }
      
      public function §_-oo§() : Number
      {
         return Number(this.§_-kP§.getValue(§_-pC§.§_-RP§));
      }
      
      public function §_-Ei§() : Number
      {
         return Number(this.§_-kP§.getValue(§_-pC§.§_-dk§));
      }
      
      public function §_-xj§() : Number
      {
         return Number(this.§_-kP§.getValue(§_-pC§.§_-6Z§));
      }
      
      public function §_-nz§() : Number
      {
         return Number(this.§_-kP§.getValue(§_-pC§.§_-OP§));
      }
      
      public function §_-tb§() : Number
      {
         return Number(this.§_-kP§.getValue(§_-pC§.§_-4x§));
      }
      
      public function §_-29§() : Number
      {
         return Number(this.§_-kP§.getValue(§_-pC§.§_-tR§));
      }
      
      public function §_-9H§() : int
      {
         return this.§_-Ex§;
      }
      
      public function get material() : §_-pC§
      {
         return this.§_-kP§;
      }
      
      public function get shape() : §_-fn§
      {
         return this.§_-Ts§;
      }
      
      public function get §_-l2§() : §_-AZ§
      {
         return this.§_-EU§;
      }
      
      public function get score() : int
      {
         return this.§_-Rd§.getValue();
      }
   }
}
