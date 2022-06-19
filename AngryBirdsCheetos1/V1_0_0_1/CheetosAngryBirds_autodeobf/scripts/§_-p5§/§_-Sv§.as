package §_-p5§
{
   import §_-2r§.§_-sn§;
   import §_-Dk§.Texture;
   import §_-gC§.§_-XR§;
   import §_-wO§.§_-IC§;
   
   public class §_-Sv§
   {
      
      public static const §_-c1§:int = 0;
      
      public static const §_-L-§:int = 6;
      
      public static const §_-Ac§:int = 7;
      
      public static const §_-eP§:int = 8;
      
      public static const §_-6x§:int = 3;
      
      public static const §_-pp§:int = 5;
      
      public static const §_-wf§:int = 2;
      
      public static const §_-Kh§:int = 1;
       
      
      public var §_-G2§:String;
      
      public var §_-1f§:int;
      
      protected var §_-21§:§_-IC§;
      
      public var §_-Ce§:Number;
      
      public var §_-Fc§:String;
      
      public var §_-M§:Number = 1;
      
      public var §_-Rj§:Number;
      
      private var §_-Mg§:Boolean = false;
      
      private var §_-9-§:§_-6L§;
      
      private var §_-ql§:§_-qt§;
      
      private var §_-q§:§_-ZO§;
      
      public function §_-Sv§(param1:String, param2:int, param3:§_-qt§, param4:§_-ZO§, param5:§_-6L§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super();
         this.§_-G2§ = param1;
         this.§_-1f§ = param2;
         this.§_-ql§ = param3;
         this.§_-Mg§ = param11;
         this.§_-q§ = param4;
         this.§_-9-§ = param5;
         this.§_-21§ = new §_-IC§(param6);
         this.§_-Fc§ = param7;
         this.§_-M§ = param8;
         if(this.§_-M§ <= 0)
         {
            this.§_-M§ = 1;
         }
         this.§_-Rj§ = param9;
         this.§_-Ce§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§_-Mg§;
      }
      
      public function §_-5R§() : int
      {
         return this.shape.§_-H8§();
      }
      
      public function §_-vA§() : int
      {
         return this.shape.§_-8D§();
      }
      
      public function §_-Dg§() : int
      {
         return this.shape.§_-0r§();
      }
      
      public function §_-AL§() : Number
      {
         return this.§_-ql§.getValue(§_-qt§.§_-hY§);
      }
      
      public function §_-NA§() : Number
      {
         return Number(this.§_-ql§.getValue(§_-qt§.§_-sf§));
      }
      
      public function §_-Bq§() : Number
      {
         return Number(this.§_-ql§.getValue(§_-qt§.§_-Ds§));
      }
      
      public function §_-44§() : Number
      {
         return Number(this.§_-ql§.getValue(§_-qt§.§_-yL§));
      }
      
      public function §_-4q§() : Number
      {
         return Number(this.§_-ql§.getValue(§_-qt§.§_-CA§));
      }
      
      public function §_-Yn§() : Number
      {
         return Number(this.§_-ql§.getValue(§_-qt§.§_-RB§));
      }
      
      public function §_-Pc§() : Number
      {
         return Number(this.§_-ql§.getValue(§_-qt§.§_-Oq§));
      }
      
      public function §_-tX§() : int
      {
         return this.§_-Ce§;
      }
      
      public function get material() : §_-qt§
      {
         return this.§_-ql§;
      }
      
      public function get shape() : §_-6L§
      {
         var _loc1_:Texture = null;
         if(!this.§_-9-§)
         {
            _loc1_ = §_-XR§.§_-Xv§.§_-fl§.§_-sJ§(this.§_-G2§).getFrame(0).texture;
            this.§_-9-§ = new §_-6L§(this.§_-G2§,"Rectangle",_loc1_.width * §_-sn§.§_-5Y§ / 2,_loc1_.height * §_-sn§.§_-5Y§ / 2);
         }
         return this.§_-9-§;
      }
      
      public function get §_-DF§() : §_-ZO§
      {
         return this.§_-q§;
      }
      
      public function get score() : int
      {
         return this.§_-21§.getValue();
      }
   }
}
