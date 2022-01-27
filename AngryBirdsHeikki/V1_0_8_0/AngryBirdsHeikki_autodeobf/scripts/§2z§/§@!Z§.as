package §2z§
{
   import §#!T§.§&2§;
   import §0!=§.b2Vec2;
   import §0!?§.b2DebugDraw;
   import §0!?§.b2World;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §@!Z§
   {
      
      public static const §!!V§:Number = 1 / 30;
      
      public static const §;'§:int = 10;
      
      public static const §1N§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §#0§:Boolean = true;
      
      public var §?! §:§#"§;
      
      public var §?f§:Sprite;
      
      private var §?!+§:b2DebugDraw;
      
      private var §<!5§:Boolean = false;
      
      public var §7o§:§2!U§;
      
      public var §`#§:Number;
      
      private var §^!H§:Number;
      
      private var §+!4§:int;
      
      public function §@!Z§(param1:§2!U§)
      {
         super();
         this.§7o§ = param1;
         this.§9N§();
      }
      
      public function get currentStep() : int
      {
         return this.§+!4§;
      }
      
      public function get § 4§() : Number
      {
         return this.§^!H§;
      }
      
      private function §9N§() : void
      {
         this.§?! § = new §#"§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§#0§);
         this.mWorld.§1!`§(this.§?! §);
      }
      
      public function clear() : void
      {
         this.mWorld.§1!`§(null);
         this.§?! § = null;
         if(this.§<!5§)
         {
            this.§?f§.graphics.clear();
         }
         this.§?f§ = null;
         this.mWorld.§9!_§();
         this.mWorld = null;
      }
      
      public function §^!&§() : void
      {
         if(this.§<!5§)
         {
            this.mWorld.§<t§();
            this.§?f§.parent.setChildIndex(this.§?f§,this.§?f§.parent.numChildren - 1);
         }
      }
      
      public function §5r§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§<!5§)
         {
            _loc4_ = §&2§.§4!1§.§`!§(0,0);
            this.§?f§.x = _loc4_.x;
            this.§?f§.y = _loc4_.y;
            this.§?!+§.§8!$§(1 / §2!U§.§&%§ * param3);
         }
      }
      
      public function §%!f§(param1:Number) : Number
      {
         this.§^!H§ = §!!V§;
         var _loc2_:int = this.§%!Z§(param1);
         if(_loc2_ > §;'§)
         {
            _loc2_ = §;'§;
         }
         this.§%I§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§^!H§ * 1000;
         }
         return param1;
      }
      
      public function §%I§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§`#§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§+!4§;
            _loc5_ = 0;
            if(§1N§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§2!"§(this.§^!H§,10,10);
            this.mWorld.§9!_§();
            this.§`#§ += this.§^!H§ * 1000;
            if(§1N§)
            {
               §&2§.§,!c§.§3!S§("Box2D",getTimer() - _loc5_);
            }
            this.§7o§.§?!X§(this.§^!H§);
            _loc4_++;
         }
      }
      
      private function §%!Z§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§^!H§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §3!`§(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§<!5§)
            {
               if(!this.§?f§ && !this.§?!+§)
               {
                  this.§?f§ = new Sprite();
                  this.§?!+§ = new b2DebugDraw();
                  this.§?!+§.§3!$§(b2DebugDraw.§-!>§);
                  this.§?!+§.§3!$§(b2DebugDraw.§^!1§);
                  this.§?!+§.§3!$§(b2DebugDraw.§"&§);
                  this.§?!+§.§^g§(0.3);
                  this.§?!+§.§^!7§(1);
                  this.§?f§.mouseEnabled = false;
                  this.§?!+§.§+!K§(this.§?f§);
                  this.§7o§.stage.addChild(this.§?f§);
                  this.mWorld.§'`§(this.§?!+§);
               }
            }
         }
         this.§<!5§ = param1;
      }
      
      public function get §3!`§() : Boolean
      {
         return this.§<!5§;
      }
      
      public function get §7!`§() : b2DebugDraw
      {
         return this.§?!+§;
      }
      
      public function §;O§() : void
      {
         if(this.§?!+§)
         {
            this.§?f§.graphics.clear();
         }
      }
   }
}
