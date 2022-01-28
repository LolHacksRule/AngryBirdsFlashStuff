package §_-Di§
{
   import §_-bA§.b2Vec2;
   import §_-pm§.§_-gb§;
   import §_-vk§.b2DebugDraw;
   import §_-vk§.b2World;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §_-gf§
   {
      
      public static const §_-sK§:Number = 1 / 30;
      
      public static const §_-sM§:int = 10;
      
      public static const §_-5y§:Boolean = false;
      
      public static const §_-i9§:Boolean = true;
       
      
      public var §_-s2§:b2World;
      
      private var §_-AH§:Boolean = true;
      
      public var §_-go§:§_-k5§;
      
      public var §_-xt§:Sprite;
      
      private var §_-sY§:b2DebugDraw;
      
      public var §_-JH§:§_-ix§;
      
      public var §_-gH§:Number;
      
      private var §_-cR§:Number;
      
      private var §_-qx§:int;
      
      public function §_-gf§(param1:§_-ix§)
      {
         super();
         this.§_-JH§ = param1;
         this.§_-xB§();
      }
      
      public function get §_-sL§() : int
      {
         return this.§_-qx§;
      }
      
      public function get §_-Lc§() : Number
      {
         return this.§_-cR§;
      }
      
      private function §_-xB§() : void
      {
         this.§_-go§ = new §_-k5§(this);
         this.§_-s2§ = new b2World(new b2Vec2(0,20),this.§_-AH§);
         this.§_-s2§.§_-It§(this.§_-go§);
      }
      
      public function clear() : void
      {
         this.§_-s2§.§_-It§(null);
         this.§_-go§ = null;
         if(§_-5y§)
         {
            this.§_-xt§.graphics.clear();
         }
         this.§_-xt§ = null;
         this.§_-s2§.§_-tD§();
         this.§_-s2§ = null;
      }
      
      public function §_-7p§() : void
      {
         if(!§_-5y§)
         {
         }
      }
      
      public function §_-3I§(param1:Number, param2:Number) : void
      {
         if(§_-5y§)
         {
            this.§_-xt§.x = -param1;
            this.§_-xt§.y = -param2;
         }
      }
      
      public function §_-bS§(param1:Number) : Number
      {
         this.§_-cR§ = §_-sK§;
         var _loc2_:int = this.§_-Cr§(param1);
         if(_loc2_ > §_-sM§)
         {
            _loc2_ = §_-sM§;
         }
         this.§_-QX§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§_-cR§ * 1000;
         }
         return param1;
      }
      
      public function §_-QX§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§_-gH§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§_-qx§;
            _loc5_ = 0;
            if(§_-i9§)
            {
               _loc5_ = getTimer();
            }
            this.§_-s2§.§_-If§(this.§_-cR§,10,10);
            this.§_-s2§.§_-tD§();
            this.§_-gH§ += this.§_-cR§ * 1000;
            if(§_-i9§)
            {
               §_-gb§.§_-Rn§.§_-ZQ§("Box2D",getTimer() - _loc5_);
            }
            this.§_-JH§.§_-jh§(this.§_-cR§);
            _loc4_++;
         }
      }
      
      private function §_-Cr§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§_-cR§ * 1000;
         }
         return _loc2_;
      }
   }
}
