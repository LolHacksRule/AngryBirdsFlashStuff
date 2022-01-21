package §@!b§
{
   import §!R§.b2Vec2;
   import §1B§.b2DebugDraw;
   import §1B§.b2World;
   import §2o§.§<H§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §7!@§
   {
      
      public static const §15§:Number = 1 / 30;
      
      public static const §,m§:int = 10;
      
      public static const §40§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §;s§:Boolean = true;
      
      public var §^Y§:§+2§;
      
      public var §72§:Sprite;
      
      private var § z§:b2DebugDraw;
      
      private var §2!b§:Boolean = false;
      
      public var mLevelMain:§@!k§;
      
      public var §1N§:Number;
      
      private var §+T§:Number;
      
      private var §!W§:int;
      
      public function §7!@§(param1:§@!k§)
      {
         super();
         this.mLevelMain = param1;
         this.§;!I§();
      }
      
      public function get §#!C§() : int
      {
         return this.§!W§;
      }
      
      public function get §-b§() : Number
      {
         return this.§+T§;
      }
      
      private function §;!I§() : void
      {
         this.§^Y§ = new §+2§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§;s§);
         this.mWorld.§7M§(this.§^Y§);
      }
      
      public function clear() : void
      {
         this.mWorld.§7M§(null);
         this.§^Y§ = null;
         if(this.§2!b§)
         {
            this.§72§.graphics.clear();
         }
         this.§72§ = null;
         this.mWorld.§7!`§();
         this.mWorld = null;
      }
      
      public function §?!S§() : void
      {
         if(this.§2!b§)
         {
            this.mWorld.§@d§();
            this.§72§.parent.setChildIndex(this.§72§,this.§72§.parent.numChildren - 1);
         }
      }
      
      public function §&f§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§2!b§)
         {
            _loc4_ = §<H§.§=3§.§8,§(0,0);
            this.§72§.x = _loc4_.x;
            this.§72§.y = _loc4_.y;
            this.§ z§.§ if§(1 / §@!k§.§2!J§ * param3);
         }
      }
      
      public function §?!5§(param1:Number) : Number
      {
         this.§+T§ = §15§;
         var _loc2_:int = this.§,!,§(param1);
         if(_loc2_ > §,m§)
         {
            _loc2_ = §,m§;
         }
         this.§-?§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§+T§ * 1000;
         }
         return param1;
      }
      
      public function §-?§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§1N§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§!W§;
            _loc5_ = 0;
            if(§40§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§]1§(this.§+T§,10,10);
            this.mWorld.§7!`§();
            this.§1N§ += this.§+T§ * 1000;
            if(§40§)
            {
               §<H§.§!B§.§#!b§("Box2D",getTimer() - _loc5_);
            }
            this.mLevelMain.handleEngineUpdateStep(this.§+T§);
            _loc4_++;
         }
      }
      
      private function §,!,§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§+T§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §2!-§(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§2!b§)
            {
               if(!this.§72§ && !this.§ z§)
               {
                  this.§72§ = new Sprite();
                  this.§ z§ = new b2DebugDraw();
                  this.§ z§.§5!D§(b2DebugDraw.§4-§);
                  this.§ z§.§5!D§(b2DebugDraw.§4!P§);
                  this.§ z§.§5!D§(b2DebugDraw.§"<§);
                  this.§ z§.§@p§(0.3);
                  this.§ z§.§9!&§(1);
                  this.§72§.mouseEnabled = false;
                  this.§ z§.§;!b§(this.§72§);
                  this.mLevelMain.stage.addChild(this.§72§);
                  this.mWorld.§[f§(this.§ z§);
               }
            }
         }
         this.§2!b§ = param1;
      }
      
      public function get §2!-§() : Boolean
      {
         return this.§2!b§;
      }
      
      public function get §9!Z§() : b2DebugDraw
      {
         return this.§ z§;
      }
      
      public function §2Q§() : void
      {
         if(this.§ z§)
         {
            this.§72§.graphics.clear();
         }
      }
   }
}
