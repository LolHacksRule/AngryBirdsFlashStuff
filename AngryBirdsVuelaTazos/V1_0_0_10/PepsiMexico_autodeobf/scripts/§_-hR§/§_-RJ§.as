package §_-hR§
{
   import §_-HJ§.§_-SG§;
   
   public class §_-RJ§
   {
      
      public static const §_-Zo§:int = 0;
      
      public static const §_-hz§:int = 6;
      
      public static const §_-t6§:int = 7;
      
      public static const §_-o4§:int = 8;
      
      public static const §_-K§:int = 3;
      
      public static const §_-3i§:int = 5;
      
      public static const §_-UV§:int = 2;
      
      public static const §_-MQ§:int = 1;
       
      
      public var §_-TR§:String;
      
      public var §_-OQ§:int;
      
      protected var §_-N7§:§_-SG§;
      
      public var §_-tq§:Number;
      
      public var §_-7g§:String;
      
      public var §_-DJ§:Number = 1;
      
      public var §_-8S§:Number;
      
      private var §_-DD§:§_-bZ§;
      
      private var §_-Li§:§_-X9§;
      
      private var §_-gt§:§_-c§;
      
      public function §_-RJ§(param1:String, param2:int, param3:§_-X9§, param4:§_-c§, param5:§_-bZ§, param6:int, param7:String, param8:Number, param9:Number, param10:Number)
      {
         super();
         this.§_-TR§ = param1;
         this.§_-OQ§ = param2;
         this.§_-Li§ = param3;
         this.§_-gt§ = param4;
         this.§_-DD§ = param5;
         this.§_-N7§ = new §_-SG§(param6);
         this.§_-7g§ = param7;
         this.§_-DJ§ = param8;
         if(this.§_-DJ§ <= 0)
         {
            this.§_-DJ§ = 1;
         }
         this.§_-8S§ = param9;
         this.§_-tq§ = param10;
      }
      
      public function §_-Nm§() : int
      {
         return this.§_-DD§.§_-lk§();
      }
      
      public function §_-W§() : int
      {
         return this.§_-DD§.§_-Mw§();
      }
      
      public function §_-Bq§() : int
      {
         return this.§_-DD§.§_-PD§();
      }
      
      public function §_-Lt§() : Number
      {
         return this.§_-Li§.getValue(§_-X9§.§_-Qm§);
      }
      
      public function §_-Xc§() : Number
      {
         return Number(this.§_-Li§.getValue(§_-X9§.§_-bx§));
      }
      
      public function §_-LZ§() : Number
      {
         return Number(this.§_-Li§.getValue(§_-X9§.§_-IC§));
      }
      
      public function §_-RF§() : Number
      {
         return Number(this.§_-Li§.getValue(§_-X9§.§_-44§));
      }
      
      public function §_-Zc§() : Number
      {
         return Number(this.§_-Li§.getValue(§_-X9§.§_-b1§));
      }
      
      public function §_-IK§() : Number
      {
         return Number(this.§_-Li§.getValue(§_-X9§.§_-Qg§));
      }
      
      public function §_-M-§() : Number
      {
         return Number(this.§_-Li§.getValue(§_-X9§.§_-aW§));
      }
      
      public function §_-US§() : int
      {
         return this.§_-tq§;
      }
      
      public function get material() : §_-X9§
      {
         return this.§_-Li§;
      }
      
      public function get shape() : §_-bZ§
      {
         return this.§_-DD§;
      }
      
      public function get §_-fj§() : §_-c§
      {
         return this.§_-gt§;
      }
      
      public function get score() : int
      {
         return this.§_-N7§.getValue();
      }
   }
}
