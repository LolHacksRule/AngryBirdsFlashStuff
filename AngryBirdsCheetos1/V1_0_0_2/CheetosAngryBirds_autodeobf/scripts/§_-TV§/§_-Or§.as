package §_-TV§
{
   import §_-94§.§_-si§;
   import §_-Kz§.§_-c3§;
   import §_-Me§.§_-61§;
   import §_-yp§.Texture;
   
   public class §_-Or§
   {
      
      public static const §_-nI§:int = 0;
      
      public static const §_-x-§:int = 6;
      
      public static const §_-7P§:int = 7;
      
      public static const §_-Ep§:int = 8;
      
      public static const §_-ka§:int = 3;
      
      public static const §_-6n§:int = 5;
      
      public static const §_-0c§:int = 2;
      
      public static const §_-jT§:int = 1;
       
      
      public var §_-05§:String;
      
      public var §_-rV§:int;
      
      protected var §_-oC§:§_-61§;
      
      public var §_-If§:Number;
      
      public var §_-GN§:String;
      
      public var §_-oz§:Number = 1;
      
      public var §_-EU§:Number;
      
      private var §_-Ew§:Boolean = false;
      
      private var §_-Xm§:§_-KN§;
      
      private var §_-3j§:§_-m0§;
      
      private var §_-Gu§:§_-Sk§;
      
      public function §_-Or§(param1:String, param2:int, param3:§_-m0§, param4:§_-Sk§, param5:§_-KN§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super();
         this.§_-05§ = param1;
         this.§_-rV§ = param2;
         this.§_-3j§ = param3;
         this.§_-Ew§ = param11;
         this.§_-Gu§ = param4;
         this.§_-Xm§ = param5;
         this.§_-oC§ = new §_-61§(param6);
         this.§_-GN§ = param7;
         this.§_-oz§ = param8;
         if(this.§_-oz§ <= 0)
         {
            this.§_-oz§ = 1;
         }
         this.§_-EU§ = param9;
         this.§_-If§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§_-Ew§;
      }
      
      public function §_-5k§() : int
      {
         return this.shape.§_-NS§();
      }
      
      public function §_-Kx§() : int
      {
         return this.shape.§_-Ut§();
      }
      
      public function §_-tC§() : int
      {
         return this.shape.§_-qy§();
      }
      
      public function §_-8i§() : Number
      {
         return this.§_-3j§.getValue(§_-m0§.§_-aJ§);
      }
      
      public function §_-bp§() : Number
      {
         return Number(this.§_-3j§.getValue(§_-m0§.§_-Dl§));
      }
      
      public function §_-PW§() : Number
      {
         return Number(this.§_-3j§.getValue(§_-m0§.§_-EP§));
      }
      
      public function §_-R-§() : Number
      {
         return Number(this.§_-3j§.getValue(§_-m0§.§_-qo§));
      }
      
      public function §_-rB§() : Number
      {
         return Number(this.§_-3j§.getValue(§_-m0§.§_-av§));
      }
      
      public function §_-Lg§() : Number
      {
         return Number(this.§_-3j§.getValue(§_-m0§.§_-uQ§));
      }
      
      public function §_-C-§() : Number
      {
         return Number(this.§_-3j§.getValue(§_-m0§.§_-vD§));
      }
      
      public function §_-NA§() : int
      {
         return this.§_-If§;
      }
      
      public function get material() : §_-m0§
      {
         return this.§_-3j§;
      }
      
      public function get shape() : §_-KN§
      {
         var _loc1_:Texture = null;
         if(!this.§_-Xm§)
         {
            _loc1_ = §_-si§.§_-HI§.§_-oR§.§_-VW§(this.§_-05§).getFrame(0).texture;
            this.§_-Xm§ = new §_-KN§(this.§_-05§,"Rectangle",_loc1_.width * §_-c3§.§_-GA§ / 2,_loc1_.height * §_-c3§.§_-GA§ / 2);
         }
         return this.§_-Xm§;
      }
      
      public function get §_-dF§() : §_-Sk§
      {
         return this.§_-Gu§;
      }
      
      public function get score() : int
      {
         return this.§_-oC§.getValue();
      }
   }
}
