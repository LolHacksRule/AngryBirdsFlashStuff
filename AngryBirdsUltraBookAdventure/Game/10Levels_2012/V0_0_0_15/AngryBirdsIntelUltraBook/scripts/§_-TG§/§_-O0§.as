package §_-TG§
{
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2DebugDraw;
   import §_-aU§.b2World;
   import §_-qO§.§ in§;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §_-O0§
   {
      
      public static const §_-C-§:Number = 1 / 30;
      
      public static const §_-4A§:int = 10;
      
      public static const §_-EN§:Boolean = false;
      
      public static const §_-PE§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §_-YR§:Boolean = true;
      
      public var §_-Je§:§_-91§;
      
      public var §_-6s§:Sprite;
      
      private var §_-VM§:b2DebugDraw;
      
      public var §_-6A§:§_-00u§;
      
      public var §_-09F§:Number;
      
      private var §_-07R§:Number;
      
      private var §_-00A§:int;
      
      public function §_-O0§(param1:§_-00u§)
      {
         super();
         this.§_-6A§ = param1;
         this.§_-I3§();
      }
      
      public function get §_-5s§() : int
      {
         return this.§_-00A§;
      }
      
      public function get §_-Jk§() : Number
      {
         return this.§_-07R§;
      }
      
      private function §_-I3§() : void
      {
         this.§_-Je§ = new §_-91§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§_-YR§);
         this.mWorld.§_-06F§(this.§_-Je§);
         if(§_-EN§)
         {
            this.mWorld.§_-06U§(true);
            this.§_-6s§ = new Sprite();
            this.§_-VM§ = new b2DebugDraw();
            this.§_-VM§.§_-0Bo§(b2DebugDraw.§_-vn§);
            this.§_-VM§.§_-0Bo§(b2DebugDraw.§_-d6§);
            this.§_-VM§.§_-0Bo§(b2DebugDraw.§_-x1§);
            this.§_-VM§.§_-mQ§(1 / §_-00u§.§_-lY§);
            this.§_-VM§.§_-rX§(0.3);
            this.§_-VM§.§_-02O§(1);
            this.§_-VM§.§_-G4§(this.§_-6s§);
            this.§_-6A§.stage.addChild(this.§_-6s§);
            this.mWorld.§_-7l§(this.§_-VM§);
         }
      }
      
      public function clear() : void
      {
         this.mWorld.§_-06F§(null);
         this.§_-Je§ = null;
         if(§_-EN§)
         {
            this.§_-6s§.graphics.clear();
         }
         this.§_-6s§ = null;
         this.mWorld.§_-RE§();
         this.mWorld = null;
      }
      
      public function §_-08U§() : void
      {
         if(§_-EN§)
         {
            this.mWorld.§_-jZ§();
            this.§_-6s§.parent.setChildIndex(this.§_-6s§,this.§_-6s§.parent.numChildren - 1);
         }
      }
      
      public function §_-12§(param1:Number, param2:Number, param3:Number) : void
      {
         if(§_-EN§)
         {
            this.§_-6s§.x = -param1;
            this.§_-6s§.y = -param2;
         }
      }
      
      public function §_-6h§(param1:Number) : Number
      {
         this.§_-07R§ = §_-C-§;
         var _loc2_:int = this.§_-08-§(param1);
         if(_loc2_ > §_-4A§)
         {
            _loc2_ = §_-4A§;
         }
         this.§_-t0§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§_-07R§ * 1000;
         }
         return param1;
      }
      
      public function §_-t0§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§_-09F§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§_-00A§;
            _loc5_ = 0;
            if(§_-PE§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§_-wu§(this.§_-07R§,10,10);
            this.mWorld.§_-RE§();
            this.§_-09F§ += this.§_-07R§ * 1000;
            if(§_-PE§)
            {
               § in§.§_-Cv§.§_-3P§("Box2D",getTimer() - _loc5_);
            }
            this.§_-6A§.handleEngineUpdateStep(this.§_-07R§);
            _loc4_++;
         }
      }
      
      private function §_-08-§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§_-07R§ * 1000;
         }
         return _loc2_;
      }
   }
}
