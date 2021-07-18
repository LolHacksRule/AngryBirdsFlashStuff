package §4!<§
{
   import §6!^§.b2Vec2;
   import §6"1§.b2DebugDraw;
   import §6"1§.b2World;
   import §@!"§.§?l§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §-!5§
   {
      
      public static const §-"V§:Number = 1 / 30;
      
      public static const §0""§:int = 10;
      
      public static const §&"X§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §,;§:Boolean = true;
      
      public var §0!M§:§6"0§;
      
      public var §-"J§:Sprite;
      
      private var §46§:b2DebugDraw;
      
      private var §+!u§:Boolean = false;
      
      public var mLevelMain:§'!S§;
      
      public var §"!B§:Number;
      
      private var §!"2§:Number;
      
      private var §7!+§:int;
      
      public function §-!5§(param1:§'!S§)
      {
         super();
         this.mLevelMain = param1;
         this.§2u§();
      }
      
      public function get §%!X§() : int
      {
         return this.§7!+§;
      }
      
      public function get §"![§() : Number
      {
         return this.§!"2§;
      }
      
      private function §2u§() : void
      {
         this.§0!M§ = new §6"0§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§,;§);
         this.mWorld.§ "Q§(this.§0!M§);
      }
      
      public function clear() : void
      {
         this.mWorld.§ "Q§(null);
         this.§0!M§ = null;
         if(this.§+!u§)
         {
            this.§-"J§.graphics.clear();
         }
         this.§-"J§ = null;
         this.mWorld.§6!h§();
         this.mWorld = null;
      }
      
      public function §"+§() : void
      {
         if(this.§+!u§)
         {
            this.mWorld.§else§();
            this.§-"J§.parent.setChildIndex(this.§-"J§,this.§-"J§.parent.numChildren - 1);
         }
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§+!u§)
         {
            _loc4_ = §?l§.§'h§.§-§(0,0);
            this.§-"J§.x = _loc4_.x;
            this.§-"J§.y = _loc4_.y;
            this.§46§.§<!d§(1 / §'!S§.§2"<§ * param3);
         }
      }
      
      public function §+!8§(param1:Number) : Number
      {
         this.§!"2§ = §-"V§;
         var _loc2_:int = this.§8!l§(param1);
         if(_loc2_ > §0""§)
         {
            _loc2_ = §0""§;
         }
         this.§-!#§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§!"2§ * 1000;
         }
         return param1;
      }
      
      public function §-!#§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§"!B§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§7!+§;
            _loc5_ = 0;
            if(§&"X§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§=m§(this.§!"2§,10,10);
            this.mWorld.§6!h§();
            this.§"!B§ += this.§!"2§ * 1000;
            if(§&"X§)
            {
               §?l§.§#"$§.§%!b§("Box2D",getTimer() - _loc5_);
            }
            this.mLevelMain.handleEngineUpdateStep(this.§!"2§);
            _loc4_++;
         }
      }
      
      private function §8!l§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§!"2§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §7§(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§+!u§)
            {
               if(!this.§-"J§ && !this.§46§)
               {
                  this.§-"J§ = new Sprite();
                  this.§46§ = new b2DebugDraw();
                  this.§46§.§5a§(b2DebugDraw.§?O§);
                  this.§46§.§5a§(b2DebugDraw.§7#§);
                  this.§46§.§5a§(b2DebugDraw.§12§);
                  this.§46§.§3c§(0.3);
                  this.§46§.§[Z§(1);
                  this.§-"J§.mouseEnabled = false;
                  this.§46§.§,!B§(this.§-"J§);
                  this.mLevelMain.stage.addChild(this.§-"J§);
                  this.mWorld.§@!C§(this.§46§);
               }
            }
         }
         else if(this.§-"J§)
         {
            this.§-"J§.graphics.clear();
         }
         this.§+!u§ = param1;
      }
      
      public function get §7§() : Boolean
      {
         return this.§+!u§;
      }
      
      public function get §`!l§() : b2DebugDraw
      {
         return this.§46§;
      }
      
      public function §+0§() : void
      {
         if(this.§46§)
         {
            this.§-"J§.graphics.clear();
         }
      }
   }
}
