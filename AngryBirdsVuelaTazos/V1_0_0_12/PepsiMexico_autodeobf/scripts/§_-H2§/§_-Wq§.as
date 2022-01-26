package §_-H2§
{
   import §_-Xr§.§_-mU§;
   
   public class §_-Wq§
   {
      
      public static const §_-x7§:int = 0;
      
      public static const §_-AU§:int = 6;
      
      public static const §_-Lm§:int = 7;
      
      public static const §_-dp§:int = 8;
      
      public static const §_-aF§:int = 3;
      
      public static const §_-BI§:int = 5;
      
      public static const §_-uC§:int = 2;
      
      public static const §_-Z8§:int = 1;
       
      
      public var §_-s7§:String;
      
      public var §_-i§:int;
      
      protected var §_-m5§:§_-mU§;
      
      public var §_-Vh§:Number;
      
      public var §_-f8§:String;
      
      public var §_-BM§:Number = 1;
      
      public var §_-gA§:Number;
      
      private var §_-mu§:§_-fm§;
      
      private var §_-n4§:§_-pd§;
      
      private var §_-GN§:§_-i7§;
      
      public function §_-Wq§(param1:String, param2:int, param3:§_-pd§, param4:§_-i7§, param5:§_-fm§, param6:int, param7:String, param8:Number, param9:Number, param10:Number)
      {
         super();
         this.§_-s7§ = param1;
         this.§_-i§ = param2;
         this.§_-n4§ = param3;
         this.§_-GN§ = param4;
         this.§_-mu§ = param5;
         this.§_-m5§ = new §_-mU§(param6);
         this.§_-f8§ = param7;
         this.§_-BM§ = param8;
         if(this.§_-BM§ <= 0)
         {
            this.§_-BM§ = 1;
         }
         this.§_-gA§ = param9;
         this.§_-Vh§ = param10;
      }
      
      public function §_-W6§() : int
      {
         return this.§_-mu§.§_-6L§();
      }
      
      public function §_-F-§() : int
      {
         return this.§_-mu§.§_-4a§();
      }
      
      public function §_-OO§() : int
      {
         return this.§_-mu§.§_-Ws§();
      }
      
      public function §_-7s§() : Number
      {
         return this.§_-n4§.getValue(§_-pd§.§_-hi§);
      }
      
      public function §_-6N§() : Number
      {
         return Number(this.§_-n4§.getValue(§_-pd§.§_-B2§));
      }
      
      public function §_-OZ§() : Number
      {
         return Number(this.§_-n4§.getValue(§_-pd§.§_-wh§));
      }
      
      public function §_-kz§() : Number
      {
         return Number(this.§_-n4§.getValue(§_-pd§.§_-Np§));
      }
      
      public function §_-wW§() : Number
      {
         return Number(this.§_-n4§.getValue(§_-pd§.§_-6V§));
      }
      
      public function §_-G8§() : Number
      {
         return Number(this.§_-n4§.getValue(§_-pd§.§_-bN§));
      }
      
      public function §_-TV§() : Number
      {
         return Number(this.§_-n4§.getValue(§_-pd§.§_-Va§));
      }
      
      public function §_-JM§() : int
      {
         return this.§_-Vh§;
      }
      
      public function get material() : §_-pd§
      {
         return this.§_-n4§;
      }
      
      public function get shape() : §_-fm§
      {
         return this.§_-mu§;
      }
      
      public function get §_-FB§() : §_-i7§
      {
         return this.§_-GN§;
      }
      
      public function get score() : int
      {
         return this.§_-m5§.getValue();
      }
   }
}
