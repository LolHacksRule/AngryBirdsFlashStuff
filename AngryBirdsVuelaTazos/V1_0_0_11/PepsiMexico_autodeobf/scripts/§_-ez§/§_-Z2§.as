package §_-ez§
{
   import §_-Ah§.§_-b§;
   import §_-WW§.b2DebugDraw;
   import §_-WW§.b2World;
   import §_-dx§.b2Vec2;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §_-Z2§
   {
      
      public static const §_-6I§:Boolean = false;
      
      public static const §_-uj§:Boolean = true;
      
      public static const §_-i-§:Number = 1 / 30;
      
      public static const §_-9R§:int = 10;
       
      
      public var §_-vd§:b2World;
      
      private var §_-ow§:Boolean = true;
      
      public var §_-Tp§:§_-2-§;
      
      public var §_-NR§:Sprite;
      
      private var §_-Wy§:b2DebugDraw;
      
      public var §_-9N§:§_-Ay§;
      
      public var §_-br§:Number;
      
      public var §_-EV§:Number;
      
      public function §_-Z2§(param1:§_-Ay§)
      {
         super();
         this.§_-9N§ = param1;
         this.§_-Ae§();
      }
      
      public function §_-Ae§() : void
      {
         this.§_-Tp§ = new §_-2-§(this);
         this.§_-vd§ = new b2World(new b2Vec2(0,20),this.§_-ow§);
         this.§_-vd§.§_-gm§(this.§_-Tp§);
      }
      
      public function clear() : void
      {
         this.§_-vd§.§_-gm§(null);
         this.§_-Tp§ = null;
         if(§_-6I§)
         {
            this.§_-NR§.graphics.clear();
         }
         this.§_-NR§ = null;
         this.§_-vd§.§_-Dt§();
         this.§_-vd§ = null;
      }
      
      public function §_-bB§() : void
      {
         if(!§_-6I§)
         {
         }
      }
      
      public function §do§(param1:Number, param2:Number) : void
      {
         if(§_-6I§)
         {
            this.§_-NR§.x = -param1;
            this.§_-NR§.y = -param2;
         }
      }
      
      public function §_-U2§(param1:Number, param2:Boolean = false) : Number
      {
         var _loc6_:Number = NaN;
         this.§_-EV§ = !!param2 ? Number(§_-i-§ / 2) : Number(§_-i-§);
         this.§_-br§ = 0;
         var _loc5_:int = 0;
         while(param1 > 0)
         {
            _loc5_++;
            _loc6_ = 0;
            if(§_-uj§)
            {
               _loc6_ = getTimer();
            }
            this.§_-vd§.§_-g8§(this.§_-EV§,10,10);
            this.§_-vd§.§_-Dt§();
            this.§_-br§ += this.§_-EV§ * 1000;
            if(§_-uj§)
            {
               §_-b§.§_-v1§.§_-8T§("Box2D",getTimer() - _loc6_);
            }
            this.§_-9N§.mLevelObjects.§_-j0§();
            this.§_-9N§.mLevelObjects.§_-Wf§(this.§_-EV§ * 1000);
            param1 -= this.§_-EV§ * 1000;
            if(_loc5_ >= §_-9R§)
            {
               while(param1 > 0)
               {
                  param1 -= this.§_-EV§ * 1000;
               }
               break;
            }
         }
         return param1;
      }
   }
}
