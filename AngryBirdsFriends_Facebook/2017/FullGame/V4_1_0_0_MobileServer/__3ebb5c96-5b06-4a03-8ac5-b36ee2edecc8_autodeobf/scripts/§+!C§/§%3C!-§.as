package §+!C§
{
   import §%!9§.b2Vec2;
   import §1!+§.b2DebugDraw;
   import §1!+§.b2World;
   import §6"r§.§!#A§;
   import §9$<§.§-t§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §<!-§
   {
      
      public static const §&"o§:Number = 1000 / 30;
      
      public static const §5!N§:int = 10;
      
      public static const §+!D§:Boolean = false;
      
      public static const §4"F§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      protected var §8"=§:Boolean = true;
      
      public var §`"U§:§@!Q§;
      
      public var §%![§:Sprite;
      
      protected var §9$3§:b2DebugDraw;
      
      public var §`=§:§!!S§;
      
      public var §@!8§:Number;
      
      private var §`"J§:Number;
      
      private var §!#0§:int;
      
      protected var §%e§:Boolean = false;
      
      public function §<!-§(param1:§!!S§, param2:Number = 20)
      {
         super();
         this.§`=§ = param1;
         this.§`"9§(param2);
         this.§5"K§ = §+!D§;
      }
      
      public function get §`#r§() : int
      {
         return this.§!#0§;
      }
      
      public function get §-$4§() : Number
      {
         return this.§`"J§;
      }
      
      public function set §5"K§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§9$3§ = new b2DebugDraw();
            this.§9$3§.§ "V§(b2DebugDraw.§!N§);
            this.§9$3§.§ "V§(b2DebugDraw.§?#W§);
            this.§9$3§.§ "V§(b2DebugDraw.§[#<§);
            this.§9$3§.§4!!§(0.7);
            this.§9$3§.§5"6§(1);
            if(!this.§%![§)
            {
               this.§%![§ = new Sprite();
               this.§%![§.mouseEnabled = false;
               this.§`=§.stage.addChild(this.§%![§);
            }
            this.§9$3§.§2$>§(this.§%![§);
            this.mWorld.§%#Q§(this.§9$3§);
         }
         else
         {
            if(this.§%![§)
            {
               this.§`=§.stage.removeChild(this.§%![§);
               this.§%![§ = null;
            }
            if(this.§9$3§)
            {
               this.mWorld.§%#Q§(null);
               this.§9$3§ = null;
            }
         }
         this.§%e§ = param1;
      }
      
      protected function §`"9§(param1:Number) : void
      {
         this.§`"U§ = new §@!Q§(this);
         this.mWorld = new b2World(new b2Vec2(0,param1),this.§8"=§);
         this.mWorld.§6"<§(this.§`"U§);
      }
      
      public function clear() : void
      {
         this.mWorld.§6"<§(null);
         this.§`"U§ = null;
         if(this.§%![§)
         {
            this.§`=§.stage.removeChild(this.§%![§);
            this.§%![§.graphics.clear();
            this.§%![§ = null;
         }
         this.mWorld.ClearForces();
         this.mWorld = null;
      }
      
      public function §[#_§() : void
      {
         if(this.§%e§)
         {
            this.mWorld.§,#G§();
            this.§%![§.parent.setChildIndex(this.§%![§,this.§%![§.parent.numChildren - 1);
         }
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(this.§%e§)
         {
            _loc3_ = §!#A§.§#F§.§7$3§(0,0);
            this.§%![§.x = _loc3_.x;
            this.§%![§.y = _loc3_.y;
            this.§9$3§.§<"H§(1 / §!!S§.§,"3§ * §-t§.§<!W§);
         }
      }
      
      public function §?+§(param1:Number) : Number
      {
         this.§`"J§ = §&"o§;
         var _loc2_:int = this.§#`§(param1);
         if(_loc2_ > §5!N§)
         {
            _loc2_ = §5!N§;
         }
         this.§<!K§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§`"J§;
         }
         return param1;
      }
      
      public function §<!K§(param1:int) : void
      {
         var _loc6_:Number = NaN;
         this.§@!8§ = 0;
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < param1)
         {
            ++this.§!#0§;
            _loc6_ = 0;
            if(§4"F§)
            {
               _loc6_ = getTimer();
            }
            this.mWorld.Step(this.§`"J§ / 1000,10,10);
            this.mWorld.ClearForces();
            this.§@!8§ += this.§`"J§;
            if(§4"F§)
            {
               _loc4_ += getTimer() - _loc6_;
            }
            this.§`=§.handleEngineUpdateStep(this.§`"J§);
            _loc5_++;
         }
         if(§4"F§)
         {
            §!#A§.§set §.§1"_§("Box2D",_loc4_);
         }
      }
      
      private function §#`§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§`"J§;
         }
         return _loc2_;
      }
   }
}
