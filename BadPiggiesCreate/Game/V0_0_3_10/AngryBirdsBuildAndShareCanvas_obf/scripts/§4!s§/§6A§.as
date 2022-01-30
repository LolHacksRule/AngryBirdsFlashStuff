package §4!s§
{
   import §1U§.§"!V§;
   import §?!h§.b2Vec2;
   import §`]§.b2DebugDraw;
   import §`]§.b2World;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §6A§
   {
      
      public static const §=!<§:Number = 1 / 30;
      
      public static const §<!R§:int = 10;
      
      public static const §&!u§:Boolean = true;
       
      
      public var §;+§:b2World;
      
      private var §4![§:Boolean = true;
      
      public var §>V§:§6!m§;
      
      public var §5Y§:Sprite;
      
      private var §1h§:b2DebugDraw;
      
      private var §-!T§:Boolean = false;
      
      public var §,!T§:§%I§;
      
      public var §[!F§:Number;
      
      private var §;!i§:Number;
      
      private var §-!e§:int;
      
      public function §6A§(param1:§%I§)
      {
         super();
         this.§,!T§ = param1;
         this.§&"7§();
      }
      
      public function get §8"§() : int
      {
         return this.§-!e§;
      }
      
      public function get §#!8§() : Number
      {
         return this.§;!i§;
      }
      
      private function §&"7§() : void
      {
         this.§>V§ = new §6!m§(this);
         this.§;+§ = new b2World(new b2Vec2(0,20),this.§4![§);
         this.§;+§.§4!P§(this.§>V§);
      }
      
      public function clear() : void
      {
         this.§;+§.§4!P§(null);
         this.§>V§ = null;
         if(this.§-!T§)
         {
            this.§5Y§.graphics.clear();
         }
         this.§5Y§ = null;
         this.§;+§.§6""§();
         this.§;+§ = null;
      }
      
      public function §3!=§() : void
      {
         if(this.§-!T§)
         {
            this.§;+§.§&"&§();
            this.§5Y§.parent.setChildIndex(this.§5Y§,this.§5Y§.parent.numChildren - 1);
         }
      }
      
      public function §54§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§-!T§)
         {
            _loc4_ = §"!V§.§!j§.§?!+§(0,0);
            this.§5Y§.x = _loc4_.x;
            this.§5Y§.y = _loc4_.y;
            this.§1h§.§4!x§(1 / §%I§.§9"4§ * param3);
         }
      }
      
      public function § !'§(param1:Number) : Number
      {
         this.§;!i§ = §=!<§;
         var _loc2_:int = this.§3!m§(param1);
         if(_loc2_ > §<!R§)
         {
            _loc2_ = §<!R§;
         }
         this.§ @§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§;!i§ * 1000;
         }
         return param1;
      }
      
      public function § @§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§[!F§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§-!e§;
            _loc5_ = 0;
            if(§&!u§)
            {
               _loc5_ = getTimer();
            }
            this.§;+§.§?!K§(this.§;!i§,10,10);
            this.§;+§.§6""§();
            this.§[!F§ += this.§;!i§ * 1000;
            if(§&!u§)
            {
               §"!V§.§8!§.§2C§("Box2D",getTimer() - _loc5_);
            }
            this.§,!T§.§1z§(this.§;!i§);
            _loc4_++;
         }
      }
      
      private function §3!m§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§;!i§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §^!0§(param1:Boolean) : void
      {
         if(this.§;+§ == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§-!T§)
            {
               if(!this.§5Y§ && !this.§1h§)
               {
                  this.§5Y§ = new Sprite();
                  this.§1h§ = new b2DebugDraw();
                  this.§1h§.§-!%§(b2DebugDraw.§<!!§);
                  this.§1h§.§-!%§(b2DebugDraw.§5!!§);
                  this.§1h§.§-!%§(b2DebugDraw.§'#§);
                  this.§1h§.§]q§(0.3);
                  this.§1h§.§&"!§(1);
                  this.§5Y§.mouseEnabled = false;
                  this.§1h§.§%q§(this.§5Y§);
                  this.§,!T§.stage.addChild(this.§5Y§);
                  this.§;+§.§4x§(this.§1h§);
               }
            }
         }
         this.§-!T§ = param1;
      }
      
      public function get §^!0§() : Boolean
      {
         return this.§-!T§;
      }
      
      public function get §6w§() : b2DebugDraw
      {
         return this.§1h§;
      }
      
      public function §`7§() : void
      {
         if(this.§1h§)
         {
            this.§5Y§.graphics.clear();
         }
      }
   }
}
