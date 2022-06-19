package §_-Kz§
{
   import §_-43§.b2DebugDraw;
   import §_-43§.b2World;
   import §_-94§.§_-si§;
   import §_-F2§.b2Vec2;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §_-Cg§
   {
      
      public static const §_-00H§:Number = 1 / 30;
      
      public static const §for §:int = 10;
      
      public static const §_-S-§:Boolean = false;
      
      public static const §_-9V§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §_-Xd§:Boolean = true;
      
      public var §_-DP§:§_-wW§;
      
      public var §_-LC§:Sprite;
      
      private var §_-sN§:b2DebugDraw;
      
      public var §_-GF§:§_-c3§;
      
      public var §_-YB§:Number;
      
      private var §_-rZ§:Number;
      
      private var §_-DZ§:int;
      
      public function §_-Cg§(param1:§_-c3§)
      {
         super();
         this.§_-GF§ = param1;
         this.§_-Dx§();
      }
      
      public function get currentStep() : int
      {
         return this.§_-DZ§;
      }
      
      public function get §_-0-b§() : Number
      {
         return this.§_-rZ§;
      }
      
      private function §_-Dx§() : void
      {
         this.§_-DP§ = new §_-wW§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§_-Xd§);
         this.mWorld.§_-tV§(this.§_-DP§);
      }
      
      public function clear() : void
      {
         this.mWorld.§_-tV§(null);
         this.§_-DP§ = null;
         if(§_-S-§)
         {
            this.§_-LC§.graphics.clear();
         }
         this.§_-LC§ = null;
         this.mWorld.§break§();
         this.mWorld = null;
      }
      
      public function §_-od§() : void
      {
         if(!§_-S-§)
         {
         }
      }
      
      public function §_-n0§(param1:Number, param2:Number) : void
      {
         if(§_-S-§)
         {
            this.§_-LC§.x = -param1;
            this.§_-LC§.y = -param2;
         }
      }
      
      public function §_-7i§(param1:Number) : Number
      {
         this.§_-rZ§ = §_-00H§;
         var _loc2_:int = this.§_-AD§(param1);
         if(_loc2_ > §for §)
         {
            _loc2_ = §for §;
         }
         this.§_-6d§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§_-rZ§ * 1000;
         }
         return param1;
      }
      
      public function §_-6d§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§_-YB§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§_-DZ§;
            _loc5_ = 0;
            if(§_-9V§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§_-U1§(this.§_-rZ§,10,10);
            this.mWorld.§break§();
            this.§_-YB§ += this.§_-rZ§ * 1000;
            if(§_-9V§)
            {
               §_-si§.§_-6N§.§_-tG§("Box2D",getTimer() - _loc5_);
            }
            this.§_-GF§.§_-oU§(this.§_-rZ§);
            _loc4_++;
         }
      }
      
      private function §_-AD§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§_-rZ§ * 1000;
         }
         return _loc2_;
      }
   }
}
