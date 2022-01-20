package § !J§
{
   import §+S§.b2Vec2;
   import §7F§.§2M§;
   import §8T§.b2DebugDraw;
   import §8T§.b2World;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §=a§
   {
      
      public static const §4![§:Number = 1 / 30;
      
      public static const §!M§:int = 10;
      
      public static const §'R§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §2l§:Boolean = true;
      
      public var §2z§:§,=§;
      
      public var §3r§:Sprite;
      
      private var §^n§:b2DebugDraw;
      
      private var §#y§:Boolean = false;
      
      public var mLevelMain:§%M§;
      
      public var §;%§:Number;
      
      private var §?!b§:Number;
      
      private var §1$§:int;
      
      public function §=a§(param1:§%M§)
      {
         super();
         this.mLevelMain = param1;
         this.§4k§();
      }
      
      public function get §<p§() : int
      {
         return this.§1$§;
      }
      
      public function get §,?§() : Number
      {
         return this.§?!b§;
      }
      
      private function §4k§() : void
      {
         this.§2z§ = new §,=§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§2l§);
         this.mWorld.§[!2§(this.§2z§);
      }
      
      public function clear() : void
      {
         this.mWorld.§[!2§(null);
         this.§2z§ = null;
         if(this.§#y§)
         {
            this.§3r§.graphics.clear();
         }
         this.§3r§ = null;
         this.mWorld.§'#§();
         this.mWorld = null;
      }
      
      public function §0!b§() : void
      {
         if(this.§#y§)
         {
            this.mWorld.§]!%§();
            this.§3r§.parent.setChildIndex(this.§3r§,this.§3r§.parent.numChildren - 1);
         }
      }
      
      public function §5[§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§#y§)
         {
            _loc4_ = §2M§.§1?§.§-!-§(0,0);
            this.§3r§.x = _loc4_.x;
            this.§3r§.y = _loc4_.y;
            this.§^n§.§#!`§(1 / §%M§.§'!Y§ * param3);
         }
      }
      
      public function §6a§(param1:Number) : Number
      {
         this.§?!b§ = §4![§;
         var _loc2_:int = this.§7!g§(param1);
         if(_loc2_ > §!M§)
         {
            _loc2_ = §!M§;
         }
         this.§`=§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§?!b§ * 1000;
         }
         return param1;
      }
      
      public function §`=§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§;%§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§1$§;
            _loc5_ = 0;
            if(§'R§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§`8§(this.§?!b§,10,10);
            this.mWorld.§'#§();
            this.§;%§ += this.§?!b§ * 1000;
            if(§'R§)
            {
               §2M§.§-!H§.§@w§("Box2D",getTimer() - _loc5_);
            }
            this.mLevelMain.handleEngineUpdateStep(this.§?!b§);
            _loc4_++;
         }
      }
      
      private function §7!g§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§?!b§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §0!X§(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§#y§)
            {
               if(!this.§3r§ && !this.§^n§)
               {
                  this.§3r§ = new Sprite();
                  this.§^n§ = new b2DebugDraw();
                  this.§^n§.§8K§(b2DebugDraw.§;!2§);
                  this.§^n§.§8K§(b2DebugDraw.§0!C§);
                  this.§^n§.§8K§(b2DebugDraw.§-!p§);
                  this.§^n§.§]Q§(0.3);
                  this.§^n§.§=! §(1);
                  this.§3r§.mouseEnabled = false;
                  this.§^n§.§?!8§(this.§3r§);
                  this.mLevelMain.stage.addChild(this.§3r§);
                  this.mWorld.§[!$§(this.§^n§);
               }
            }
         }
         this.§#y§ = param1;
      }
      
      public function get §0!X§() : Boolean
      {
         return this.§#y§;
      }
      
      public function get §7b§() : b2DebugDraw
      {
         return this.§^n§;
      }
      
      public function §"o§() : void
      {
         if(this.§^n§)
         {
            this.§3r§.graphics.clear();
         }
      }
   }
}
