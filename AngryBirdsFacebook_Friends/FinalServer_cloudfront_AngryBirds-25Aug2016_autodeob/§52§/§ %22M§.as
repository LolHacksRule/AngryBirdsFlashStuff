package §52§
{
   import §0m§.b2Vec2;
   import §=#n§.b2DebugDraw;
   import §=#n§.b2World;
   import §?§.§>"$§;
   import §["Q§.§0$,§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class § "M§
   {
      
      public static const §9#l§:Number = 1000 / 30;
      
      public static const § #5§:int = 10;
      
      public static const §!#V§:Boolean = false;
      
      public static const §?!i§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §9#H§:Boolean = true;
      
      public var §-r§:§<!U§;
      
      public var §=!9§:Sprite;
      
      private var §8!B§:b2DebugDraw;
      
      public var §,#2§:§#!,§;
      
      public var §`!%§:Number;
      
      private var §75§:Number;
      
      private var §^!3§:int;
      
      private var §8!@§:Boolean = false;
      
      public function § "M§(param1:§#!,§, param2:Number = 20)
      {
         super();
         this.§,#2§ = param1;
         this.§8#v§(param2);
         this.§1@§ = §!#V§;
      }
      
      public function get §?#E§() : int
      {
         return this.§^!3§;
      }
      
      public function get §;!r§() : Number
      {
         return this.§75§;
      }
      
      public function set §1@§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§8!B§ = new b2DebugDraw();
            this.§8!B§.§8#2§(b2DebugDraw.§-#K§);
            this.§8!B§.§8#2§(b2DebugDraw.§!!s§);
            this.§8!B§.§8#2§(b2DebugDraw.§1$+§);
            this.§8!B§.§'#"§(0.7);
            this.§8!B§.§ !+§(1);
            if(!this.§=!9§)
            {
               this.§=!9§ = new Sprite();
               this.§=!9§.mouseEnabled = false;
               this.§,#2§.stage.addChild(this.§=!9§);
            }
            this.§8!B§.§,"=§(this.§=!9§);
            this.mWorld.§"!K§(this.§8!B§);
         }
         else
         {
            if(this.§=!9§)
            {
               this.§,#2§.stage.removeChild(this.§=!9§);
               this.§=!9§ = null;
            }
            if(this.§8!B§)
            {
               this.mWorld.§"!K§(null);
               this.§8!B§ = null;
            }
         }
         this.§8!@§ = param1;
      }
      
      private function §8#v§(param1:Number) : void
      {
         this.§-r§ = new §<!U§(this);
         this.mWorld = new b2World(new b2Vec2(0,param1),this.§9#H§);
         this.mWorld.§@"I§(this.§-r§);
      }
      
      public function clear() : void
      {
         this.mWorld.§@"I§(null);
         this.§-r§ = null;
         if(this.§=!9§)
         {
            this.§,#2§.stage.removeChild(this.§=!9§);
            this.§=!9§.graphics.clear();
            this.§=!9§ = null;
         }
         this.mWorld.ClearForces();
         this.mWorld = null;
      }
      
      public function §]!"§() : void
      {
         if(this.§8!@§)
         {
            this.mWorld.§!!r§();
            this.§=!9§.parent.setChildIndex(this.§=!9§,this.§=!9§.parent.numChildren - 1);
         }
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(this.§8!@§)
         {
            _loc3_ = §>"$§.§3#'§.§each §(0,0);
            this.§=!9§.x = _loc3_.x;
            this.§=!9§.y = _loc3_.y;
            this.§8!B§.§<"5§(1 / §#!,§.§?$#§ * §0$,§.§`#1§);
         }
      }
      
      public function §=!D§(param1:Number) : Number
      {
         this.§75§ = §9#l§;
         var _loc2_:int = this.§+!-§(param1);
         if(_loc2_ > § #5§)
         {
            _loc2_ = § #5§;
         }
         this.§?#%§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§75§;
         }
         return param1;
      }
      
      public function §?#%§(param1:int) : void
      {
         var _loc6_:Number = NaN;
         this.§`!%§ = 0;
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < param1)
         {
            ++this.§^!3§;
            _loc6_ = 0;
            if(§?!i§)
            {
               _loc6_ = getTimer();
            }
            this.mWorld.Step(this.§75§ / 1000,10,10);
            this.mWorld.ClearForces();
            this.§`!%§ += this.§75§;
            if(§?!i§)
            {
               _loc4_ += getTimer() - _loc6_;
            }
            this.§,#2§.handleEngineUpdateStep(this.§75§);
            _loc5_++;
         }
         if(§?!i§)
         {
            §>"$§.§]#J§.§^B§("Box2D",_loc4_);
         }
      }
      
      private function §+!-§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§75§;
         }
         return _loc2_;
      }
   }
}
