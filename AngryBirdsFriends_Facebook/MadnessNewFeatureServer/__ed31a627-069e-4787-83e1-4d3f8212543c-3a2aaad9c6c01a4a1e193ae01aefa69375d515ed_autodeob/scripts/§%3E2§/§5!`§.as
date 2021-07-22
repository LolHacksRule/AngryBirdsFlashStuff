package §>2§
{
   import §1#u§.§;"Q§;
   import §?!C§.b2Vec2;
   import §@!S§.b2DebugDraw;
   import §@!S§.b2World;
   import §`#@§.§7n§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §5!`§
   {
      
      public static const §?!Q§:Number = 1000 / 30;
      
      public static const §3#e§:int = 10;
      
      public static const §9c§:Boolean = false;
      
      public static const §'!N§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      protected var §2"h§:Boolean = true;
      
      public var §["x§:§[!,§;
      
      public var §2!e§:Sprite;
      
      protected var §"#X§:b2DebugDraw;
      
      public var §5#0§:§!6§;
      
      public var §+"h§:Number;
      
      private var §7"t§:Number;
      
      private var §2q§:int;
      
      protected var §#"5§:Boolean = false;
      
      public function §5!`§(param1:§!6§, param2:Number = 20)
      {
         super();
         this.§5#0§ = param1;
         this.§5#!§(param2);
         this.§=#y§ = §9c§;
      }
      
      public function get §"!2§() : int
      {
         return this.§2q§;
      }
      
      public function get §3!6§() : Number
      {
         return this.§7"t§;
      }
      
      public function set §=#y§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§"#X§ = new b2DebugDraw();
            this.§"#X§.§&"C§(b2DebugDraw.§!$&§);
            this.§"#X§.§&"C§(b2DebugDraw.§,!s§);
            this.§"#X§.§&"C§(b2DebugDraw.§9#l§);
            this.§"#X§.§#$3§(0.7);
            this.§"#X§.§3"`§(1);
            if(!this.§2!e§)
            {
               this.§2!e§ = new Sprite();
               this.§2!e§.mouseEnabled = false;
               this.§5#0§.stage.addChild(this.§2!e§);
            }
            this.§"#X§.§'J§(this.§2!e§);
            this.mWorld.§"#R§(this.§"#X§);
         }
         else
         {
            if(this.§2!e§)
            {
               this.§5#0§.stage.removeChild(this.§2!e§);
               this.§2!e§ = null;
            }
            if(this.§"#X§)
            {
               this.mWorld.§"#R§(null);
               this.§"#X§ = null;
            }
         }
         this.§#"5§ = param1;
      }
      
      protected function §5#!§(param1:Number) : void
      {
         this.§["x§ = new §[!,§(this);
         this.mWorld = new b2World(new b2Vec2(0,param1),this.§2"h§);
         this.mWorld.§=]§(this.§["x§);
      }
      
      public function clear() : void
      {
         this.mWorld.§=]§(null);
         this.§["x§ = null;
         if(this.§2!e§)
         {
            this.§5#0§.stage.removeChild(this.§2!e§);
            this.§2!e§.graphics.clear();
            this.§2!e§ = null;
         }
         this.mWorld.ClearForces();
         this.mWorld = null;
      }
      
      public function § #;§() : void
      {
         if(this.§#"5§)
         {
            this.mWorld.§!4§();
            this.§2!e§.parent.setChildIndex(this.§2!e§,this.§2!e§.parent.numChildren - 1);
         }
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(this.§#"5§)
         {
            _loc3_ = §7n§.§6#K§.§@"X§(0,0);
            this.§2!e§.x = _loc3_.x;
            this.§2!e§.y = _loc3_.y;
            this.§"#X§.§+C§(1 / §!6§.§[#v§ * §;"Q§.§>m§);
         }
      }
      
      public function §[!_§(param1:Number) : Number
      {
         this.§7"t§ = §?!Q§;
         var _loc2_:int = this.§4!m§(param1);
         if(_loc2_ > §3#e§)
         {
            _loc2_ = §3#e§;
         }
         this.§;x§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§7"t§;
         }
         return param1;
      }
      
      public function §;x§(param1:int) : void
      {
         var _loc6_:Number = NaN;
         this.§+"h§ = 0;
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < param1)
         {
            ++this.§2q§;
            _loc6_ = 0;
            if(§'!N§)
            {
               _loc6_ = getTimer();
            }
            this.mWorld.Step(this.§7"t§ / 1000,10,10);
            this.mWorld.ClearForces();
            this.§+"h§ += this.§7"t§;
            if(§'!N§)
            {
               _loc4_ += getTimer() - _loc6_;
            }
            this.§5#0§.handleEngineUpdateStep(this.§7"t§);
            _loc5_++;
         }
         if(§'!N§)
         {
            §7n§.§9";§.§?@§("Box2D",_loc4_);
         }
      }
      
      private function §4!m§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§7"t§;
         }
         return _loc2_;
      }
   }
}
