package §5!?§
{
   import §=!U§.b2DebugDraw;
   import §=!U§.b2World;
   import §=F§.§"n§;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   import §implements§.b2Vec2;
   
   public class §?k§
   {
      
      public static const §'!1§:Number = 1 / 30;
      
      public static const §]Y§:int = 10;
      
      public static const §07§:Boolean = false;
      
      public static const §!!%§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §3N§:Boolean = true;
      
      public var §,!U§:§<<§;
      
      public var §^y§:Sprite;
      
      private var §"J§:b2DebugDraw;
      
      public var mLevelMain:§>"§;
      
      public var §4g§:Number;
      
      private var §?!Z§:Number;
      
      private var §?<§:int;
      
      public function §?k§(param1:§>"§)
      {
         super();
         this.mLevelMain = param1;
         this.§3P§();
      }
      
      public function get §[G§() : int
      {
         return this.§?<§;
      }
      
      public function get §!!"§() : Number
      {
         return this.§?!Z§;
      }
      
      private function §3P§() : void
      {
         this.§,!U§ = new §<<§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§3N§);
         this.mWorld.§1!9§(this.§,!U§);
      }
      
      public function clear() : void
      {
         this.mWorld.§1!9§(null);
         this.§,!U§ = null;
         if(§07§)
         {
            this.§^y§.graphics.clear();
         }
         this.§^y§ = null;
         this.mWorld.§?!"§();
         this.mWorld = null;
      }
      
      public function § !T§() : void
      {
         if(!§07§)
         {
         }
      }
      
      public function §%!T§(param1:Number, param2:Number) : void
      {
         if(§07§)
         {
            this.§^y§.x = -param1;
            this.§^y§.y = -param2;
         }
      }
      
      public function §1E§(param1:Number) : Number
      {
         this.§?!Z§ = §'!1§;
         var _loc2_:int = this.§[T§(param1);
         if(_loc2_ > §]Y§)
         {
            _loc2_ = §]Y§;
         }
         this.§?!X§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§?!Z§ * 1000;
         }
         return param1;
      }
      
      public function §?!X§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§4g§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§?<§;
            _loc5_ = 0;
            if(§!!%§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§0!%§(this.§?!Z§,10,10);
            this.mWorld.§?!"§();
            this.§4g§ += this.§?!Z§ * 1000;
            if(§!!%§)
            {
               §"n§.§ !7§.§7!+§("Box2D",getTimer() - _loc5_);
            }
            this.mLevelMain.§0!_§(this.§?!Z§);
            _loc4_++;
         }
      }
      
      private function §[T§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§?!Z§ * 1000;
         }
         return _loc2_;
      }
   }
}
