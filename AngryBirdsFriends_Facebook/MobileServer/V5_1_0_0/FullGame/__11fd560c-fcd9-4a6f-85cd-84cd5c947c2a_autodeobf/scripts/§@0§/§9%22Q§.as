package §@0§
{
   import § "%§.b2Vec2;
   import §%!P§.§4#u§;
   import §4"O§.b2DebugDraw;
   import §4"O§.b2World;
   import §;#D§.§3#U§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §9"Q§
   {
      
      public static const §`E§:Number = 1000 / 30;
      
      public static const §[#n§:int = 10;
      
      public static const §5"s§:Boolean = false;
      
      public static const §`"w§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      protected var §,#l§:Boolean = true;
      
      public var §?$,§:§ a§;
      
      public var §!"S§:Sprite;
      
      protected var § h§:b2DebugDraw;
      
      public var §=#N§:§%!q§;
      
      public var §63§:Number;
      
      private var §!!T§:Number;
      
      private var §6!8§:int;
      
      protected var §`>§:Boolean = false;
      
      public function §9"Q§(param1:§%!q§, param2:Number = 20)
      {
         super();
         this.§=#N§ = param1;
         this.§6#>§(param2);
         this.§1#i§ = §5"s§;
      }
      
      public function get §71§() : int
      {
         return this.§6!8§;
      }
      
      public function get § !e§() : Number
      {
         return this.§!!T§;
      }
      
      public function set §1#i§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ h§ = new b2DebugDraw();
            this.§ h§.§>!a§(b2DebugDraw.§ !P§);
            this.§ h§.§>!a§(b2DebugDraw.§##r§);
            this.§ h§.§>!a§(b2DebugDraw.§`$7§);
            this.§ h§.§<E§(0.7);
            this.§ h§.§^D§(1);
            if(!this.§!"S§)
            {
               this.§!"S§ = new Sprite();
               this.§!"S§.mouseEnabled = false;
               this.§=#N§.stage.addChild(this.§!"S§);
            }
            this.§ h§.§^"'§(this.§!"S§);
            this.mWorld.§#,§(this.§ h§);
         }
         else
         {
            if(this.§!"S§)
            {
               this.§=#N§.stage.removeChild(this.§!"S§);
               this.§!"S§ = null;
            }
            if(this.§ h§)
            {
               this.mWorld.§#,§(null);
               this.§ h§ = null;
            }
         }
         this.§`>§ = param1;
      }
      
      protected function §6#>§(param1:Number) : void
      {
         this.§?$,§ = new § a§(this);
         this.mWorld = new b2World(new b2Vec2(0,param1),this.§,#l§);
         this.mWorld.§#"b§(this.§?$,§);
      }
      
      public function clear() : void
      {
         this.mWorld.§#"b§(null);
         this.§?$,§ = null;
         if(this.§!"S§)
         {
            this.§=#N§.stage.removeChild(this.§!"S§);
            this.§!"S§.graphics.clear();
            this.§!"S§ = null;
         }
         this.mWorld.ClearForces();
         this.mWorld = null;
      }
      
      public function §]X§() : void
      {
         if(this.§`>§)
         {
            this.mWorld.§+#p§();
            this.§!"S§.parent.setChildIndex(this.§!"S§,this.§!"S§.parent.numChildren - 1);
         }
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(this.§`>§)
         {
            _loc3_ = §3#U§.§#$4§.§!#u§(0,0);
            this.§!"S§.x = _loc3_.x;
            this.§!"S§.y = _loc3_.y;
            this.§ h§.§4$9§(1 / §%!q§.§6q§ * §4#u§.§3"§);
         }
      }
      
      public function §>#g§(param1:Number) : Number
      {
         this.§!!T§ = §`E§;
         var _loc2_:int = this.§2y§(param1);
         if(_loc2_ > §[#n§)
         {
            _loc2_ = §[#n§;
         }
         this.§]"h§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§!!T§;
         }
         return param1;
      }
      
      public function §]"h§(param1:int) : void
      {
         var _loc6_:Number = NaN;
         this.§63§ = 0;
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < param1)
         {
            ++this.§6!8§;
            _loc6_ = 0;
            if(§`"w§)
            {
               _loc6_ = getTimer();
            }
            this.mWorld.Step(this.§!!T§ / 1000,10,10);
            this.mWorld.ClearForces();
            this.§63§ += this.§!!T§;
            if(§`"w§)
            {
               _loc4_ += getTimer() - _loc6_;
            }
            this.§=#N§.handleEngineUpdateStep(this.§!!T§);
            _loc5_++;
         }
         if(§`"w§)
         {
            §3#U§.§8!_§.§2!g§("Box2D",_loc4_);
         }
      }
      
      private function §2y§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§!!T§;
         }
         return _loc2_;
      }
   }
}
