package §_-WH§
{
   import §_-mc§.§_-TP§;
   
   public class §_-r5§
   {
      
      public static const §_-T4§:int = 0;
      
      public static const §_-gP§:int = 6;
      
      public static const §_-Qb§:int = 7;
      
      public static const §_-wM§:int = 8;
      
      public static const §_-7W§:int = 3;
      
      public static const §_-pe§:int = 5;
      
      public static const §_-jY§:int = 2;
      
      public static const §_-wL§:int = 1;
       
      
      public var §_-FK§:String;
      
      public var §_-FB§:int;
      
      protected var §_-eJ§:§_-TP§;
      
      public var §_-Kk§:Number;
      
      public var §_-8c§:String;
      
      public var §_-Yk§:Number = 1;
      
      public var §_-t6§:Number;
      
      private var §_-jG§:§_-ce§;
      
      private var §_-0x§:§_-Yj§;
      
      private var §_-fK§:§_-YE§;
      
      public function §_-r5§(param1:String, param2:int, param3:§_-Yj§, param4:§_-YE§, param5:§_-ce§, param6:int, param7:String, param8:Number, param9:Number, param10:Number)
      {
         super();
         this.§_-FK§ = param1;
         this.§_-FB§ = param2;
         this.§_-0x§ = param3;
         this.§_-fK§ = param4;
         this.§_-jG§ = param5;
         this.§_-eJ§ = new §_-TP§(param6);
         this.§_-8c§ = param7;
         this.§_-Yk§ = param8;
         if(this.§_-Yk§ <= 0)
         {
            this.§_-Yk§ = 1;
         }
         this.§_-t6§ = param9;
         this.§_-Kk§ = param10;
      }
      
      public function §_-AZ§() : int
      {
         return this.§_-jG§.§_-im§();
      }
      
      public function §_-YC§() : int
      {
         return this.§_-jG§.§_-aj§();
      }
      
      public function §_-t0§() : int
      {
         return this.§_-jG§.§_-vb§();
      }
      
      public function §_-AF§() : Number
      {
         return this.§_-0x§.getValue(§_-Yj§.§_-6p§);
      }
      
      public function §_-Rq§() : Number
      {
         return Number(this.§_-0x§.getValue(§_-Yj§.§_-av§));
      }
      
      public function §_-sX§() : Number
      {
         return Number(this.§_-0x§.getValue(§_-Yj§.§_-Vm§));
      }
      
      public function §_-4G§() : Number
      {
         return Number(this.§_-0x§.getValue(§_-Yj§.§_-cw§));
      }
      
      public function §_-8S§() : Number
      {
         return Number(this.§_-0x§.getValue(§_-Yj§.§_-wd§));
      }
      
      public function §_-P-§() : Number
      {
         return Number(this.§_-0x§.getValue(§_-Yj§.§_-SZ§));
      }
      
      public function §_-6r§() : Number
      {
         return Number(this.§_-0x§.getValue(§_-Yj§.§_-§));
      }
      
      public function §_-dh§() : int
      {
         return this.§_-Kk§;
      }
      
      public function get material() : §_-Yj§
      {
         return this.§_-0x§;
      }
      
      public function get shape() : §_-ce§
      {
         return this.§_-jG§;
      }
      
      public function get §_-aa§() : §_-YE§
      {
         return this.§_-fK§;
      }
      
      public function get score() : int
      {
         return this.§_-eJ§.getValue();
      }
   }
}
