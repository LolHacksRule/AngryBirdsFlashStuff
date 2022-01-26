package §_-0-K§
{
   import §_-00B§.b2DebugDraw;
   import §_-00B§.b2World;
   import §_-TX§.§_-0X§;
   import §_-Vn§.b2Vec2;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §_-4i§
   {
      
      public static const §_-RH§:Number = 1 / 30;
      
      public static const §_-q1§:int = 10;
      
      public static const §_-c2§:Boolean = false;
      
      public static const §_-5I§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §_-2j§:Boolean = true;
      
      public var §_-kX§:§_-cc§;
      
      public var §_-gw§:Sprite;
      
      private var §_-Gc§:b2DebugDraw;
      
      public var §_-mC§:§_-FL§;
      
      public var §_-cM§:Number;
      
      private var §_-Xf§:Number;
      
      private var §_-i§:int;
      
      public function §_-4i§(param1:§_-FL§)
      {
         super();
         this.§_-mC§ = param1;
         this.§_-0v§();
      }
      
      public function get currentStep() : int
      {
         return this.§_-i§;
      }
      
      public function get §_-D3§() : Number
      {
         return this.§_-Xf§;
      }
      
      private function §_-0v§() : void
      {
         this.§_-kX§ = new §_-cc§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§_-2j§);
         this.mWorld.§_-qB§(this.§_-kX§);
      }
      
      public function clear() : void
      {
         this.mWorld.§_-qB§(null);
         this.§_-kX§ = null;
         if(§_-c2§)
         {
            this.§_-gw§.graphics.clear();
         }
         this.§_-gw§ = null;
         this.mWorld.§_-4d§();
         this.mWorld = null;
      }
      
      public function §_-HH§() : void
      {
         if(!§_-c2§)
         {
         }
      }
      
      public function §_-FQ§(param1:Number, param2:Number) : void
      {
         if(§_-c2§)
         {
            this.§_-gw§.x = -param1;
            this.§_-gw§.y = -param2;
         }
      }
      
      public function §_-Yc§(param1:Number) : Number
      {
         this.§_-Xf§ = §_-RH§;
         var _loc2_:int = this.§_-pJ§(param1);
         if(_loc2_ > §_-q1§)
         {
            _loc2_ = §_-q1§;
         }
         this.§_-VH§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§_-Xf§ * 1000;
         }
         return param1;
      }
      
      public function §_-VH§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§_-cM§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§_-i§;
            _loc5_ = 0;
            if(§_-5I§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§_-qa§(this.§_-Xf§,10,10);
            this.mWorld.§_-4d§();
            this.§_-cM§ += this.§_-Xf§ * 1000;
            if(§_-5I§)
            {
               §_-0X§.§_-BV§.§_-92§("Box2D",getTimer() - _loc5_);
            }
            this.§_-mC§.§_-00Z§(this.§_-Xf§);
            _loc4_++;
         }
      }
      
      private function §_-pJ§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§_-Xf§ * 1000;
         }
         return _loc2_;
      }
   }
}
