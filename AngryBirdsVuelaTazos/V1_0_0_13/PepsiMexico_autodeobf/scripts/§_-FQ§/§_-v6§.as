package §_-FQ§
{
   import §_-7§.§_-ph§;
   import §_-qW§.b2DebugDraw;
   import §_-qW§.b2World;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   import §var§.b2Vec2;
   
   public class §_-v6§
   {
      
      public static const §_-Cx§:Number = 1 / 30;
      
      public static const §_-6n§:int = 10;
      
      public static const §_-v0§:Boolean = false;
      
      public static const §_-se§:Boolean = true;
       
      
      public var §_-9K§:b2World;
      
      private var §_-Bo§:Boolean = true;
      
      public var §_-ub§:§_-O6§;
      
      public var §_-8b§:Sprite;
      
      private var §_-Pp§:b2DebugDraw;
      
      public var §_-6q§:§_-7W§;
      
      public var §_-h3§:Number;
      
      private var §_-rL§:Number;
      
      private var §_-G§:int;
      
      public function §_-v6§(param1:§_-7W§)
      {
         super();
         this.§_-6q§ = param1;
         this.§_-Tv§();
      }
      
      public function get §_-Po§() : int
      {
         return this.§_-G§;
      }
      
      public function get §_-1X§() : Number
      {
         return this.§_-rL§;
      }
      
      private function §_-Tv§() : void
      {
         this.§_-ub§ = new §_-O6§(this);
         this.§_-9K§ = new b2World(new b2Vec2(0,20),this.§_-Bo§);
         this.§_-9K§.§_-JH§(this.§_-ub§);
      }
      
      public function clear() : void
      {
         this.§_-9K§.§_-JH§(null);
         this.§_-ub§ = null;
         if(§_-v0§)
         {
            this.§_-8b§.graphics.clear();
         }
         this.§_-8b§ = null;
         this.§_-9K§.§_-Db§();
         this.§_-9K§ = null;
      }
      
      public function §_-FF§() : void
      {
         if(!§_-v0§)
         {
         }
      }
      
      public function §_-hH§(param1:Number, param2:Number) : void
      {
         if(§_-v0§)
         {
            this.§_-8b§.x = -param1;
            this.§_-8b§.y = -param2;
         }
      }
      
      public function §_-I9§(param1:Number) : Number
      {
         this.§_-rL§ = §_-Cx§;
         var _loc2_:int = this.§_-XA§(param1);
         if(_loc2_ > §_-6n§)
         {
            _loc2_ = §_-6n§;
         }
         this.§_-EL§(_loc2_);
         while(param1 > 0.0001)
         {
            param1 -= this.§_-rL§ * 1000;
         }
         return param1;
      }
      
      public function §_-EL§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§_-h3§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§_-G§;
            _loc5_ = 0;
            if(§_-se§)
            {
               _loc5_ = getTimer();
            }
            this.§_-9K§.§_-1I§(this.§_-rL§,10,10);
            this.§_-9K§.§_-Db§();
            this.§_-h3§ += this.§_-rL§ * 1000;
            if(§_-se§)
            {
               §_-ph§.§_-rA§.§_-QN§("Box2D",getTimer() - _loc5_);
            }
            this.§_-6q§.mLevelObjects.§_-DC§();
            this.§_-6q§.mLevelObjects.§_-kw§(this.§_-rL§ * 1000);
            _loc4_++;
         }
      }
      
      private function §_-XA§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0.0001)
         {
            _loc2_++;
            param1 -= this.§_-rL§ * 1000;
         }
         return _loc2_;
      }
   }
}
