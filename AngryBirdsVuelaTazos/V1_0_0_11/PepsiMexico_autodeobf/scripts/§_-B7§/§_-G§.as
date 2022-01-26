package §_-B7§
{
   import §_-4R§.§_-kz§;
   
   public class §_-G§
   {
      
      public static const §case §:int = 0;
      
      public static const §_-hP§:int = 6;
      
      public static const §_-Cw§:int = 7;
      
      public static const §_-Tk§:int = 8;
      
      public static const §_-5M§:int = 3;
      
      public static const §_-EJ§:int = 5;
      
      public static const §_-TO§:int = 2;
      
      public static const §_-hJ§:int = 1;
       
      
      public var §_-Pd§:String;
      
      public var §_-iw§:int;
      
      protected var §_-cD§:§_-kz§;
      
      public var §_-AK§:Number;
      
      public var §_-9J§:String;
      
      public var §_-Wg§:Number = 1;
      
      public var §_-JQ§:Number;
      
      private var §_-qU§:§_-pl§;
      
      private var §_-Sn§:§_-7Y§;
      
      private var §_-I3§:§_-TP§;
      
      public function §_-G§(param1:String, param2:int, param3:§_-7Y§, param4:§_-TP§, param5:§_-pl§, param6:int, param7:String, param8:Number, param9:Number, param10:Number)
      {
         super();
         this.§_-Pd§ = param1;
         this.§_-iw§ = param2;
         this.§_-Sn§ = param3;
         this.§_-I3§ = param4;
         this.§_-qU§ = param5;
         this.§_-cD§ = new §_-kz§(param6);
         this.§_-9J§ = param7;
         this.§_-Wg§ = param8;
         if(this.§_-Wg§ <= 0)
         {
            this.§_-Wg§ = 1;
         }
         this.§_-JQ§ = param9;
         this.§_-AK§ = param10;
      }
      
      public function §_-vw§() : int
      {
         return this.§_-qU§.§_-pN§();
      }
      
      public function §_-Oi§() : int
      {
         return this.§_-qU§.§_-F9§();
      }
      
      public function §_-xR§() : int
      {
         return this.§_-qU§.§_-dO§();
      }
      
      public function §_-hD§() : Number
      {
         return this.§_-Sn§.getValue(§_-7Y§.§_-8m§);
      }
      
      public function §_-Dx§() : Number
      {
         return Number(this.§_-Sn§.getValue(§_-7Y§.§_-kX§));
      }
      
      public function §_-OQ§() : Number
      {
         return Number(this.§_-Sn§.getValue(§_-7Y§.§_-cc§));
      }
      
      public function §_-Yc§() : Number
      {
         return Number(this.§_-Sn§.getValue(§_-7Y§.§_-CZ§));
      }
      
      public function §_-tD§() : Number
      {
         return Number(this.§_-Sn§.getValue(§_-7Y§.§_-Bj§));
      }
      
      public function §_-1z§() : Number
      {
         return Number(this.§_-Sn§.getValue(§_-7Y§.§_-Ru§));
      }
      
      public function §_-bz§() : Number
      {
         return Number(this.§_-Sn§.getValue(§_-7Y§.§_-7h§));
      }
      
      public function §_-cC§() : int
      {
         return this.§_-AK§;
      }
      
      public function get material() : §_-7Y§
      {
         return this.§_-Sn§;
      }
      
      public function get shape() : §_-pl§
      {
         return this.§_-qU§;
      }
      
      public function get §_-Rn§() : §_-TP§
      {
         return this.§_-I3§;
      }
      
      public function get score() : int
      {
         return this.§_-cD§.getValue();
      }
   }
}
