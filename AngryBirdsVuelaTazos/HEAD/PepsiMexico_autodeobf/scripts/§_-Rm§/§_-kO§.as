package §_-Rm§
{
   import §_-2F§.§_-F6§;
   import §_-Di§.§_-ix§;
   import §_-Q0§.Texture;
   import §_-pm§.§_-gb§;
   
   public class §_-kO§
   {
      
      public static const §_-qB§:int = 0;
      
      public static const §_-9W§:int = 6;
      
      public static const §_-s0§:int = 7;
      
      public static const §_-VC§:int = 8;
      
      public static const §_-xN§:int = 3;
      
      public static const §_-uv§:int = 5;
      
      public static const §_-zs§:int = 2;
      
      public static const §_-wn§:int = 1;
       
      
      public var §_-ep§:String;
      
      public var §_-rw§:int;
      
      protected var §_-Wv§:§_-F6§;
      
      public var §_-lX§:Number;
      
      public var §_-xV§:String;
      
      public var §_-Zj§:Number = 1;
      
      public var §_-eV§:Number;
      
      private var §_-nL§:Boolean = false;
      
      private var §_-mC§:§_-7§;
      
      private var §_-NH§:§_-bY§;
      
      private var §_-6Q§:§_-i8§;
      
      public function §_-kO§(param1:String, param2:int, param3:§_-bY§, param4:§_-i8§, param5:§_-7§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super();
         this.§_-ep§ = param1;
         this.§_-rw§ = param2;
         this.§_-NH§ = param3;
         this.§_-nL§ = param11;
         this.§_-6Q§ = param4;
         this.§_-mC§ = param5;
         this.§_-Wv§ = new §_-F6§(param6);
         this.§_-xV§ = param7;
         this.§_-Zj§ = param8;
         if(this.§_-Zj§ <= 0)
         {
            this.§_-Zj§ = 1;
         }
         this.§_-eV§ = param9;
         this.§_-lX§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§_-nL§;
      }
      
      public function §_-Ds§() : int
      {
         return this.shape.§_-6e§();
      }
      
      public function §_-xM§() : int
      {
         return this.shape.§_-YQ§();
      }
      
      public function §_-1c§() : int
      {
         return this.shape.§_-Cy§();
      }
      
      public function §_-RS§() : Number
      {
         return this.§_-NH§.getValue(§_-bY§.§_-h7§);
      }
      
      public function §_-r-§() : Number
      {
         return Number(this.§_-NH§.getValue(§_-bY§.§_-s5§));
      }
      
      public function §_-Ac§() : Number
      {
         return Number(this.§_-NH§.getValue(§_-bY§.§_-ft§));
      }
      
      public function §_-Ea§() : Number
      {
         return Number(this.§_-NH§.getValue(§_-bY§.§_-Ab§));
      }
      
      public function §_-2G§() : Number
      {
         return Number(this.§_-NH§.getValue(§_-bY§.§_-Gi§));
      }
      
      public function §_-Yp§() : Number
      {
         return Number(this.§_-NH§.getValue(§_-bY§.§_-9O§));
      }
      
      public function §_-0k§() : Number
      {
         return Number(this.§_-NH§.getValue(§_-bY§.§_-96§));
      }
      
      public function §_-cL§() : int
      {
         return this.§_-lX§;
      }
      
      public function get material() : §_-bY§
      {
         return this.§_-NH§;
      }
      
      public function get shape() : §_-7§
      {
         var _loc1_:Texture = null;
         if(!this.§_-mC§)
         {
            _loc1_ = §_-gb§.§_-ls§.§_-i1§.§_-8-§(this.§_-ep§).getFrame(0).texture;
            this.§_-mC§ = new §_-7§(this.§_-ep§,"Rectangle",_loc1_.width * §_-ix§.§_-z8§ / 2,_loc1_.height * §_-ix§.§_-z8§ / 2);
         }
         return this.§_-mC§;
      }
      
      public function get §_-5D§() : §_-i8§
      {
         return this.§_-6Q§;
      }
      
      public function get score() : int
      {
         return this.§_-Wv§.getValue();
      }
   }
}
