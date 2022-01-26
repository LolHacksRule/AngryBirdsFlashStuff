package §_-X4§
{
   import §_-0-K§.§_-FL§;
   import §_-TX§.§_-0X§;
   import §_-aD§.§_-Y5§;
   import §_-i9§.Texture;
   
   public class §_-EY§
   {
      
      public static const §_-YO§:int = 0;
      
      public static const §_-8s§:int = 6;
      
      public static const §_-PC§:int = 7;
      
      public static const §_-sg§:int = 8;
      
      public static const §_-DJ§:int = 3;
      
      public static const §_-0-n§:int = 5;
      
      public static const §_-Xk§:int = 2;
      
      public static const §_-s3§:int = 1;
       
      
      public var §_-k-§:String;
      
      public var §_-ly§:int;
      
      protected var §_-N8§:§_-Y5§;
      
      public var §_-Br§:Number;
      
      public var §_-ob§:String;
      
      public var §_-bE§:Number = 1;
      
      public var §_-m1§:Number;
      
      private var §_-GJ§:Boolean = false;
      
      private var §_-ef§:§_-vJ§;
      
      private var §_-y3§:§_-Fs§;
      
      private var §_-X9§:§_-aP§;
      
      public function §_-EY§(param1:String, param2:int, param3:§_-Fs§, param4:§_-aP§, param5:§_-vJ§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super();
         this.§_-k-§ = param1;
         this.§_-ly§ = param2;
         this.§_-y3§ = param3;
         this.§_-GJ§ = param11;
         this.§_-X9§ = param4;
         this.§_-ef§ = param5;
         this.§_-N8§ = new §_-Y5§(param6);
         this.§_-ob§ = param7;
         this.§_-bE§ = param8;
         if(this.§_-bE§ <= 0)
         {
            this.§_-bE§ = 1;
         }
         this.§_-m1§ = param9;
         this.§_-Br§ = param10;
      }
      
      public function get front() : Boolean
      {
         return this.§_-GJ§;
      }
      
      public function §_-GO§() : int
      {
         return this.shape.§_-ao§();
      }
      
      public function §_-Pq§() : int
      {
         return this.shape.§_-Po§();
      }
      
      public function §_-vx§() : int
      {
         return this.shape.§_-s2§();
      }
      
      public function §_-Wa§() : Number
      {
         return this.§_-y3§.getValue(§_-Fs§.§_-Yn§);
      }
      
      public function §_-H7§() : Number
      {
         return Number(this.§_-y3§.getValue(§_-Fs§.§_-mP§));
      }
      
      public function §_-Th§() : Number
      {
         return Number(this.§_-y3§.getValue(§_-Fs§.§_-p6§));
      }
      
      public function §_-o6§() : Number
      {
         return Number(this.§_-y3§.getValue(§_-Fs§.§_-ed§));
      }
      
      public function §_-Fl§() : Number
      {
         return Number(this.§_-y3§.getValue(§_-Fs§.§_-y6§));
      }
      
      public function §_-De§() : Number
      {
         return Number(this.§_-y3§.getValue(§_-Fs§.§_-zb§));
      }
      
      public function §_-gi§() : Number
      {
         return Number(this.§_-y3§.getValue(§_-Fs§.§_-FG§));
      }
      
      public function §_-lC§() : int
      {
         return this.§_-Br§;
      }
      
      public function get material() : §_-Fs§
      {
         return this.§_-y3§;
      }
      
      public function get shape() : §_-vJ§
      {
         var _loc1_:Texture = null;
         if(!this.§_-ef§)
         {
            _loc1_ = §_-0X§.§_-O2§.§_-Un§.§_-Sv§(this.§_-k-§).getFrame(0).texture;
            this.§_-ef§ = new §_-vJ§(this.§_-k-§,"Rectangle",_loc1_.width * §_-FL§.§_-NU§ / 2,_loc1_.height * §_-FL§.§_-NU§ / 2);
         }
         return this.§_-ef§;
      }
      
      public function get §_-0G§() : §_-aP§
      {
         return this.§_-X9§;
      }
      
      public function get score() : int
      {
         return this.§_-N8§.getValue();
      }
   }
}
