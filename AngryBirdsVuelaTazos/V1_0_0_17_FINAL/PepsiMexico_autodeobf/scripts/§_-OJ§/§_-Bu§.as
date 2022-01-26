package §_-OJ§
{
   import §_-Iw§.b2DebugDraw;
   import §_-Iw§.b2World;
   import §_-Ja§.b2Vec2;
   import §_-hU§.§_-MB§;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §_-Bu§
   {
      
      public static const §_-Ks§:Number = 1 / 30;
      
      public static const §_-73§:int = 10;
      
      public static const §_-CD§:Boolean = false;
      
      public static const §_-0K§:Boolean = true;
       
      
      public var §_-fy§:b2World;
      
      private var §_-Uk§:Boolean = true;
      
      public var §_-VJ§:§_-FZ§;
      
      public var §_-5i§:Sprite;
      
      private var §_-eY§:b2DebugDraw;
      
      public var §_-Ag§:§_-tL§;
      
      public var §_-QA§:Number;
      
      private var §_-OH§:Number;
      
      private var §_-vh§:int;
      
      public function §_-Bu§(param1:§_-tL§)
      {
         super();
         this.§_-Ag§ = param1;
         this.§_-QZ§();
      }
      
      public function get §_-mv§() : int
      {
         return this.§_-vh§;
      }
      
      public function get §_-Vi§() : Number
      {
         return this.§_-OH§;
      }
      
      private function §_-QZ§() : void
      {
         this.§_-VJ§ = new §_-FZ§(this);
         this.§_-fy§ = new b2World(new b2Vec2(0,20),this.§_-Uk§);
         this.§_-fy§.§_-PR§(this.§_-VJ§);
      }
      
      public function clear() : void
      {
         this.§_-fy§.§_-PR§(null);
         this.§_-VJ§ = null;
         if(§_-CD§)
         {
            this.§_-5i§.graphics.clear();
         }
         this.§_-5i§ = null;
         this.§_-fy§.§_-RZ§();
         this.§_-fy§ = null;
      }
      
      public function §_-oK§() : void
      {
         if(!§_-CD§)
         {
         }
      }
      
      public function §_-lt§(param1:Number, param2:Number) : void
      {
         if(§_-CD§)
         {
            this.§_-5i§.x = -param1;
            this.§_-5i§.y = -param2;
         }
      }
      
      public function §_-mi§(param1:Number) : Number
      {
         this.§_-OH§ = §_-Ks§;
         var _loc2_:int = this.§_-fr§(param1);
         if(_loc2_ > §_-73§)
         {
            _loc2_ = §_-73§;
         }
         this.§_-ym§(_loc2_);
         while(param1 > 0.0001)
         {
            param1 -= this.§_-OH§ * 1000;
         }
         return param1;
      }
      
      public function §_-ym§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§_-QA§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§_-vh§;
            _loc5_ = 0;
            if(§_-0K§)
            {
               _loc5_ = getTimer();
            }
            this.§_-fy§.§_-bf§(this.§_-OH§,10,10);
            this.§_-fy§.§_-RZ§();
            this.§_-QA§ += this.§_-OH§ * 1000;
            if(§_-0K§)
            {
               §_-MB§.§_-Dg§.§_-LC§("Box2D",getTimer() - _loc5_);
            }
            this.§_-Ag§.objects.§_-FN§();
            this.§_-Ag§.objects.§_-ER§(this.§_-OH§ * 1000);
            _loc4_++;
         }
      }
      
      private function §_-fr§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0.0001)
         {
            _loc2_++;
            param1 -= this.§_-OH§ * 1000;
         }
         return _loc2_;
      }
   }
}
