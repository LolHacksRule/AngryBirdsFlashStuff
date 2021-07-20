package §_-HU§
{
   import §_-IV§.§_-dW§;
   
   public class §_-Pq§
   {
      
      public static const §_-J-§:int = 0;
      
      public static const §_-EE§:int = 6;
      
      public static const §_-NH§:int = 7;
      
      public static const §_-FT§:int = 8;
      
      public static const §_-pV§:int = 3;
      
      public static const §_-B9§:int = 5;
      
      public static const §_-dH§:int = 2;
      
      public static const §_-Le§:int = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-J-§ = 0;
            §_-EE§ = 6;
            §_-NH§ = 7;
            if(!(_loc1_ && _loc2_))
            {
               §_-FT§ = 8;
               §_-pV§ = 3;
            }
            §_-B9§ = 5;
         }
      }
      
      public var §_-L1§:String;
      
      public var §_-1n§:int;
      
      protected var §_-QH§:§_-dW§;
      
      public var § in§:Number;
      
      public var §_-nE§:String;
      
      public var §_-At§:Number = 1;
      
      public var §_-FF§:Number;
      
      private var §_-zU§:§_-Ju§;
      
      private var §_-XN§:§_-gs§;
      
      private var §_-PZ§:§_-6n§;
      
      public function §_-Pq§(param1:String, param2:int, param3:§_-gs§, param4:§_-6n§, param5:§_-Ju§, param6:int, param7:String, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(_loc11_)
         {
            super();
            this.§_-L1§ = param1;
            this.§_-1n§ = param2;
         }
         this.§_-XN§ = param3;
         if(_loc11_ || param2)
         {
            this.§_-PZ§ = param4;
            this.§_-zU§ = param5;
            this.§_-QH§ = new §_-dW§(param6);
            this.§_-nE§ = param7;
            this.§_-At§ = param8;
            if(this.§_-At§ <= 0)
            {
               addr61:
               this.§_-At§ = 1;
            }
            this.§_-FF§ = param9;
            if(!(_loc12_ && param2))
            {
               this.§ in§ = param10;
            }
            return;
         }
         §§goto(addr61);
      }
      
      public function §_-NI§() : int
      {
         return this.§_-zU§.§_-9B§();
      }
      
      public function §_-ff§() : int
      {
         return this.§_-zU§.§while§();
      }
      
      public function §_-zE§() : int
      {
         return this.§_-zU§.§_-YY§();
      }
      
      public function §_-eG§() : Number
      {
         return this.§_-XN§.getValue(§_-gs§.§_-en§);
      }
      
      public function §_-gz§() : Number
      {
         return Number(this.§_-XN§.getValue(§_-gs§.§_-9b§));
      }
      
      public function §_-zH§() : Number
      {
         return Number(this.§_-XN§.getValue(§_-gs§.§_-ki§));
      }
      
      public function §_-3j§() : Number
      {
         return Number(this.§_-XN§.getValue(§_-gs§.§_-wQ§));
      }
      
      public function §_-gJ§() : Number
      {
         return Number(this.§_-XN§.getValue(§_-gs§.§_-bc§));
      }
      
      public function §_-sA§() : Number
      {
         return Number(this.§_-XN§.getValue(§_-gs§.§_-4o§));
      }
      
      public function §_-yd§() : Number
      {
         return Number(this.§_-XN§.getValue(§_-gs§.§_-Zy§));
      }
      
      public function §_-DT§() : int
      {
         return this.§ in§;
      }
      
      public function get material() : §_-gs§
      {
         return this.§_-XN§;
      }
      
      public function get shape() : §_-Ju§
      {
         return this.§_-zU§;
      }
      
      public function get §_-Ie§() : §_-6n§
      {
         return this.§_-PZ§;
      }
      
      public function get score() : int
      {
         return this.§_-QH§.getValue();
      }
   }
}
