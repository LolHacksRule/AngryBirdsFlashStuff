package §_-2r§
{
   import §_-cP§.b2Vec2;
   import §_-gC§.§_-XR§;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   import §try§.b2DebugDraw;
   import §try§.b2World;
   
   public class §_-r1§
   {
      
      public static const §_-Tv§:Number = 1 / 30;
      
      public static const §_-XW§:int = 10;
      
      public static const §_-Sb§:Boolean = false;
      
      public static const §_-MN§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §_-MM§:Boolean = true;
      
      public var §_-8T§:§_-Of§;
      
      public var §_-u1§:Sprite;
      
      private var §for §:b2DebugDraw;
      
      public var §_-5F§:§_-sn§;
      
      public var §_-BK§:Number;
      
      private var §_-ep§:Number;
      
      private var §_-g5§:int;
      
      public function §_-r1§(param1:§_-sn§)
      {
         super();
         this.§_-5F§ = param1;
         this.§_-yY§();
      }
      
      public function get currentStep() : int
      {
         return this.§_-g5§;
      }
      
      public function get §_-X4§() : Number
      {
         return this.§_-ep§;
      }
      
      private function §_-yY§() : void
      {
         this.§_-8T§ = new §_-Of§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§_-MM§);
         this.mWorld.§_-ew§(this.§_-8T§);
      }
      
      public function clear() : void
      {
         this.mWorld.§_-ew§(null);
         this.§_-8T§ = null;
         if(§_-Sb§)
         {
            this.§_-u1§.graphics.clear();
         }
         this.§_-u1§ = null;
         this.mWorld.§_-rJ§();
         this.mWorld = null;
      }
      
      public function §_-dw§() : void
      {
         if(!§_-Sb§)
         {
         }
      }
      
      public function § for§(param1:Number, param2:Number) : void
      {
         if(§_-Sb§)
         {
            this.§_-u1§.x = -param1;
            this.§_-u1§.y = -param2;
         }
      }
      
      public function §_-IL§(param1:Number) : Number
      {
         this.§_-ep§ = §_-Tv§;
         var _loc2_:int = this.§_-oe§(param1);
         if(_loc2_ > §_-XW§)
         {
            _loc2_ = §_-XW§;
         }
         this.§_-uN§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§_-ep§ * 1000;
         }
         return param1;
      }
      
      public function §_-uN§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§_-BK§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§_-g5§;
            _loc5_ = 0;
            if(§_-MN§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§_-bY§(this.§_-ep§,10,10);
            this.mWorld.§_-rJ§();
            this.§_-BK§ += this.§_-ep§ * 1000;
            if(§_-MN§)
            {
               §_-XR§.§_-r4§.§_-fh§("Box2D",getTimer() - _loc5_);
            }
            this.§_-5F§.§_-IE§(this.§_-ep§);
            _loc4_++;
         }
      }
      
      private function §_-oe§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§_-ep§ * 1000;
         }
         return _loc2_;
      }
   }
}
