package §9"!§
{
   import §#]§.b2Vec2;
   import §48§.b2DebugDraw;
   import §48§.b2World;
   import §]!A§.;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §4!`§
   {
      
      public static const §%!E§:Number = 1 / 30;
      
      public static const §?X§:int = 10;
      
      public static const §1""§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §1y§:Boolean = true;
      
      public var dynamic:§`",§;
      
      public var §2T§:Sprite;
      
      private var §>A§:b2DebugDraw;
      
      private var §[""§:Boolean = false;
      
      public var §@O§:§9"3§;
      
      public var §6!'§:Number;
      
      private var §2!=§:Number;
      
      private var §-!N§:int;
      
      public function §4!`§(param1:§9"3§)
      {
         super();
         this.§@O§ = param1;
         this.§]$§();
      }
      
      public function get §;s§() : int
      {
         return this.§-!N§;
      }
      
      public function get §0F§() : Number
      {
         return this.§2!=§;
      }
      
      private function §]$§() : void
      {
         this.dynamic = new §`",§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§1y§);
         this.mWorld.§!!L§(this.dynamic);
      }
      
      public function clear() : void
      {
         this.mWorld.§!!L§(null);
         this.dynamic = null;
         if(this.§[""§)
         {
            this.§2T§.graphics.clear();
         }
         this.§2T§ = null;
         this.mWorld.§4,§();
         this.mWorld = null;
      }
      
      public function §"!v§() : void
      {
         if(this.§[""§)
         {
            this.mWorld.§?!U§();
            this.§2T§.parent.setChildIndex(this.§2T§,this.§2T§.parent.numChildren - 1);
         }
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§[""§)
         {
            _loc4_ = §#6§.§6!z§.§'c§(0,0);
            this.§2T§.x = _loc4_.x;
            this.§2T§.y = _loc4_.y;
            this.§>A§.§`!m§(1 / §9"3§.§'"F§ * param3);
         }
      }
      
      public function §7",§(param1:Number) : Number
      {
         this.§2!=§ = §%!E§;
         var _loc2_:int = this.§5!E§(param1);
         if(_loc2_ > §?X§)
         {
            _loc2_ = §?X§;
         }
         this.§?x§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§2!=§ * 1000;
         }
         return param1;
      }
      
      public function §?x§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§6!'§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§-!N§;
            _loc5_ = 0;
            if(§1""§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§4$§(this.§2!=§,10,10);
            this.mWorld.§4,§();
            this.§6!'§ += this.§2!=§ * 1000;
            if(§1""§)
            {
               §#6§.§=_§.§'!9§("Box2D",getTimer() - _loc5_);
            }
            this.§@O§.handleEngineUpdateStep(this.§2!=§);
            _loc4_++;
         }
      }
      
      private function §5!E§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§2!=§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §2!g§(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§[""§)
            {
               if(!this.§2T§ && !this.§>A§)
               {
                  this.§2T§ = new Sprite();
                  this.§>A§ = new b2DebugDraw();
                  this.§>A§.§9N§(b2DebugDraw.§6!e§);
                  this.§>A§.§9N§(b2DebugDraw.§8o§);
                  this.§>A§.§9N§(b2DebugDraw.§]!L§);
                  this.§>A§.§=o§(0.3);
                  this.§>A§.§!!1§(1);
                  this.§2T§.mouseEnabled = false;
                  this.§>A§.§=B§(this.§2T§);
                  this.§@O§.stage.addChild(this.§2T§);
                  this.mWorld.§+"C§(this.§>A§);
               }
            }
         }
         this.§[""§ = param1;
      }
      
      public function get §2!g§() : Boolean
      {
         return this.§[""§;
      }
      
      public function get §`L§() : b2DebugDraw
      {
         return this.§>A§;
      }
      
      public function §!"4§() : void
      {
         if(this.§>A§)
         {
            this.§2T§.graphics.clear();
         }
      }
   }
}
