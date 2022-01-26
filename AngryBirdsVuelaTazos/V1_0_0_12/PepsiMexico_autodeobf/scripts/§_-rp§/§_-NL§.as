package §_-rp§
{
   import §_-9z§.b2Vec2;
   import §_-EH§.b2DebugDraw;
   import §_-EH§.b2World;
   import §_-Hw§.§_-3C§;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §_-NL§
   {
      
      public static const §_-4A§:Boolean = false;
      
      public static const §_-Kg§:Boolean = true;
      
      public static const §_-7O§:Number = 1 / 30;
      
      public static const §_-dR§:int = 10;
       
      
      public var §_-VH§:b2World;
      
      private var §_-h1§:Boolean = true;
      
      public var §_-jy§:§_-kx§;
      
      public var §_-Ft§:Sprite;
      
      private var §_-iw§:b2DebugDraw;
      
      public var §_-fE§:§_-c5§;
      
      public var §_-jB§:Number;
      
      public var §_-Iu§:Number;
      
      public function §_-NL§(param1:§_-c5§)
      {
         super();
         this.§_-fE§ = param1;
         this.§_-wO§();
      }
      
      public function §_-wO§() : void
      {
         this.§_-jy§ = new §_-kx§(this);
         this.§_-VH§ = new b2World(new b2Vec2(0,20),this.§_-h1§);
         this.§_-VH§.§_-fB§(this.§_-jy§);
      }
      
      public function clear() : void
      {
         this.§_-VH§.§_-fB§(null);
         this.§_-jy§ = null;
         if(§_-4A§)
         {
            this.§_-Ft§.graphics.clear();
         }
         this.§_-Ft§ = null;
         this.§_-VH§.§_-Z5§();
         this.§_-VH§ = null;
      }
      
      public function §_-lP§() : void
      {
         if(!§_-4A§)
         {
         }
      }
      
      public function §_-ty§(param1:Number, param2:Number) : void
      {
         if(§_-4A§)
         {
            this.§_-Ft§.x = -param1;
            this.§_-Ft§.y = -param2;
         }
      }
      
      public function §_-D3§(param1:Number, param2:Boolean = false) : Number
      {
         var _loc6_:Number = NaN;
         this.§_-Iu§ = !!param2 ? Number(§_-7O§ / 2) : Number(§_-7O§);
         this.§_-jB§ = 0;
         var _loc5_:int = 0;
         while(param1 > 0)
         {
            _loc5_++;
            _loc6_ = 0;
            if(§_-Kg§)
            {
               _loc6_ = getTimer();
            }
            this.§_-VH§.§_-23§(this.§_-Iu§,10,10);
            this.§_-VH§.§_-Z5§();
            this.§_-jB§ += this.§_-Iu§ * 1000;
            if(§_-Kg§)
            {
               §_-3C§.§_-Sq§.§_-Lj§("Box2D",getTimer() - _loc6_);
            }
            this.§_-fE§.mLevelObjects.§_-re§();
            this.§_-fE§.mLevelObjects.§_-X3§(this.§_-Iu§ * 1000);
            param1 -= this.§_-Iu§ * 1000;
            if(_loc5_ >= §_-dR§)
            {
               while(param1 > 0)
               {
                  param1 -= this.§_-Iu§ * 1000;
               }
               break;
            }
         }
         return param1;
      }
   }
}
