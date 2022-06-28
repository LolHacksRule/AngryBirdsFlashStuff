package §_-0DG§
{
   import §_-TG§.§_-00u§;
   import §_-eS§.§_-BK§;
   import §_-qO§.§ in§;
   import §_-z4§.Texture;
   
   public class §_-0-A§
   {
      
      public static const §_-k9§:int = 0;
      
      public static const §_-Rh§:int = 6;
      
      public static const §_-gO§:int = 7;
      
      public static const §_-AS§:int = 8;
      
      public static const §_-OZ§:int = 3;
      
      public static const §_-Zt§:int = 5;
      
      public static const §_-FB§:int = 2;
      
      public static const §_-VN§:int = 1;
       
      
      public var §_-o2§:String;
      
      public var §_-kD§:int;
      
      protected var §_-nH§:§_-BK§;
      
      public var §_-05k§:Number;
      
      public var §_-4k§:String;
      
      public var §_-oe§:Number = 1;
      
      public var §_-8l§:Number;
      
      private var §_-05j§:Boolean = false;
      
      private var §_-SE§:String;
      
      private var §_-nf§:int;
      
      private var §_-aw§:§_-sQ§;
      
      private var §_-jJ§:§_-au§;
      
      private var §_-xU§:§_-a2§;
      
      public function §_-0-A§(param1:String, param2:int, param3:§_-au§, param4:§_-a2§, param5:§_-sQ§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super();
         this.§_-o2§ = param1;
         this.§_-kD§ = param2;
         this.§_-jJ§ = param3;
         this.§_-SE§ = param12;
         this.§_-nf§ = param13;
         this.§_-05j§ = param11;
         this.§_-xU§ = param4;
         this.§_-aw§ = param5;
         this.§_-nH§ = new §_-BK§(param6);
         this.§_-4k§ = param7;
         this.§_-oe§ = param8;
         if(this.§_-oe§ <= 0)
         {
            this.§_-oe§ = 1;
         }
         this.§_-8l§ = param9;
         this.§_-05k§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§_-05j§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§_-SE§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§_-nf§;
      }
      
      public function §_-Kt§() : int
      {
         return this.shape.§_-0AK§();
      }
      
      public function §_-nJ§() : int
      {
         return this.shape.§_-FD§();
      }
      
      public function §_-8s§() : int
      {
         return this.shape.§_-vX§();
      }
      
      public function §_-my§() : Number
      {
         return this.§_-jJ§.getValue(§_-au§.§_-Tu§);
      }
      
      public function §_-MF§() : Number
      {
         return Number(this.§_-jJ§.getValue(§_-au§.§_-dp§));
      }
      
      public function §_-0-K§() : Number
      {
         return Number(this.§_-jJ§.getValue(§_-au§.§_-9§));
      }
      
      public function §_-GW§() : Number
      {
         return Number(this.§_-jJ§.getValue(§_-au§.§_-Ro§));
      }
      
      public function §_-01h§() : Number
      {
         return Number(this.§_-jJ§.getValue(§_-au§.§_-kd§));
      }
      
      public function §_-6R§() : Number
      {
         return Number(this.§_-jJ§.getValue(§_-au§.§_-lN§));
      }
      
      public function § get§() : Number
      {
         return Number(this.§_-jJ§.getValue(§_-au§.§_-078§));
      }
      
      public function §_-8o§() : int
      {
         return this.§_-05k§;
      }
      
      public function get material() : §_-au§
      {
         return this.§_-jJ§;
      }
      
      public function get shape() : §_-sQ§
      {
         var _loc1_:Texture = null;
         if(!this.§_-aw§)
         {
            _loc1_ = § in§.§_-Dc§.animationManager.getAnimation(this.§_-o2§).getFrame(0).texture;
            this.§_-aw§ = new §_-sQ§(this.§_-o2§,"Rectangle",_loc1_.width * §_-00u§.§_-lY§ / 2,_loc1_.height * §_-00u§.§_-lY§ / 2);
         }
         return this.§_-aw§;
      }
      
      public function get §_-jf§() : §_-a2§
      {
         return this.§_-xU§;
      }
      
      public function get score() : int
      {
         return this.§_-nH§.getValue();
      }
   }
}
