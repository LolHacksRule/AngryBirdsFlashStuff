package §_-0y§
{
   import §_-I1§.§_-2N§;
   import §_-Zl§.b2Vec2;
   import §_-rg§.b2DebugDraw;
   import §_-rg§.b2World;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §_-RD§
   {
      
      public static const §_-PQ§:Boolean = false;
      
      public static const §_-iF§:Boolean = true;
      
      public static const §_-Ok§:Number = 1 / 30;
      
      public static const §_-Jp§:int = 10;
       
      
      public var §_-Gt§:b2World;
      
      private var §_-2W§:Boolean = true;
      
      public var §_-dS§:§_-LW§;
      
      public var §_-vt§:Sprite;
      
      private var §_-v-§:b2DebugDraw;
      
      public var §_-Ia§:§_-B3§;
      
      public var §_-Qd§:Number;
      
      public var §_-7I§:Number;
      
      public function §_-RD§(param1:§_-B3§)
      {
         super();
         this.§_-Ia§ = param1;
         this.§_-UI§();
      }
      
      public function §_-UI§() : void
      {
         this.§_-dS§ = new §_-LW§(this);
         this.§_-Gt§ = new b2World(new b2Vec2(0,20),this.§_-2W§);
         this.§_-Gt§.§_-5f§(this.§_-dS§);
      }
      
      public function clear() : void
      {
         this.§_-Gt§.§_-5f§(null);
         this.§_-dS§ = null;
         if(§_-PQ§)
         {
            this.§_-vt§.graphics.clear();
         }
         this.§_-vt§ = null;
         this.§_-Gt§.§_-DC§();
         this.§_-Gt§ = null;
      }
      
      public function §_-pl§() : void
      {
         if(!§_-PQ§)
         {
         }
      }
      
      public function §_-Go§(param1:Number, param2:Number) : void
      {
         if(§_-PQ§)
         {
            this.§_-vt§.x = -param1;
            this.§_-vt§.y = -param2;
         }
      }
      
      public function §_-i0§(param1:Number, param2:Boolean = false) : Number
      {
         var _loc6_:Number = NaN;
         this.§_-7I§ = !!param2 ? Number(§_-Ok§ / 2) : Number(§_-Ok§);
         this.§_-Qd§ = 0;
         var _loc5_:int = 0;
         while(param1 > 0)
         {
            _loc5_++;
            _loc6_ = 0;
            if(§_-iF§)
            {
               _loc6_ = getTimer();
            }
            this.§_-Gt§.§_-h0§(this.§_-7I§,10,10);
            this.§_-Gt§.§_-DC§();
            this.§_-Qd§ += this.§_-7I§ * 1000;
            if(§_-iF§)
            {
               §_-2N§.§_-OU§.§_-fx§("Box2D",getTimer() - _loc6_);
            }
            this.§_-Ia§.mLevelObjects.§_-4U§();
            this.§_-Ia§.mLevelObjects.§_-mc§(this.§_-7I§ * 1000);
            param1 -= this.§_-7I§ * 1000;
            if(_loc5_ >= §_-Jp§)
            {
               while(param1 > 0)
               {
                  param1 -= this.§_-7I§ * 1000;
               }
               break;
            }
         }
         return param1;
      }
   }
}
