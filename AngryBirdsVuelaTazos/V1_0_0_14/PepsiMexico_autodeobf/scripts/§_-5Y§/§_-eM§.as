package §_-5Y§
{
   import §_-4n§.b2Vec2;
   import §_-M0§.§_-u4§;
   import §const§.b2DebugDraw;
   import §const§.b2World;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §_-eM§
   {
      
      public static const §_-ZB§:Number = 1 / 30;
      
      public static const §_-dP§:int = 10;
      
      public static const §_-k1§:Boolean = false;
      
      public static const §_-R7§:Boolean = true;
       
      
      public var §_-YD§:b2World;
      
      private var §_-59§:Boolean = true;
      
      public var §_-eZ§:§_-q1§;
      
      public var §_-UB§:Sprite;
      
      private var §_-fn§:b2DebugDraw;
      
      public var §_-Fx§:§_-yw§;
      
      public var §_-0h§:Number;
      
      private var §_-rC§:Number;
      
      private var §_-aO§:int;
      
      public function §_-eM§(param1:§_-yw§)
      {
         super();
         this.§_-Fx§ = param1;
         this.§_-w3§();
      }
      
      public function get §_-F6§() : int
      {
         return this.§_-aO§;
      }
      
      public function get §_-Be§() : Number
      {
         return this.§_-rC§;
      }
      
      private function §_-w3§() : void
      {
         this.§_-eZ§ = new §_-q1§(this);
         this.§_-YD§ = new b2World(new b2Vec2(0,20),this.§_-59§);
         this.§_-YD§.§_-qx§(this.§_-eZ§);
      }
      
      public function clear() : void
      {
         this.§_-YD§.§_-qx§(null);
         this.§_-eZ§ = null;
         if(§_-k1§)
         {
            this.§_-UB§.graphics.clear();
         }
         this.§_-UB§ = null;
         this.§_-YD§.§_-Oz§();
         this.§_-YD§ = null;
      }
      
      public function §_-lT§() : void
      {
         if(!§_-k1§)
         {
         }
      }
      
      public function §_-rm§(param1:Number, param2:Number) : void
      {
         if(§_-k1§)
         {
            this.§_-UB§.x = -param1;
            this.§_-UB§.y = -param2;
         }
      }
      
      public function §_-Jp§(param1:Number) : Number
      {
         this.§_-rC§ = §_-ZB§;
         var _loc2_:int = this.§_-1n§(param1);
         if(_loc2_ > §_-dP§)
         {
            _loc2_ = §_-dP§;
         }
         this.§_-qr§(_loc2_);
         while(param1 > 0.0001)
         {
            param1 -= this.§_-rC§ * 1000;
         }
         return param1;
      }
      
      public function §_-qr§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§_-0h§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§_-aO§;
            _loc5_ = 0;
            if(§_-R7§)
            {
               _loc5_ = getTimer();
            }
            this.§_-YD§.§_-Aq§(this.§_-rC§,10,10);
            this.§_-YD§.§_-Oz§();
            this.§_-0h§ += this.§_-rC§ * 1000;
            if(§_-R7§)
            {
               §_-u4§.§_-e1§.§_-mN§("Box2D",getTimer() - _loc5_);
            }
            this.§_-Fx§.objects.§_-t2§();
            this.§_-Fx§.objects.§_-vz§(this.§_-rC§ * 1000);
            _loc4_++;
         }
      }
      
      private function §_-1n§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0.0001)
         {
            _loc2_++;
            param1 -= this.§_-rC§ * 1000;
         }
         return _loc2_;
      }
   }
}
