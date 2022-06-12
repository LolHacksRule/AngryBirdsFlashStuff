package §%h§
{
   import §9v§.b2Vec2;
   import §?!E§.b2DebugDraw;
   import §?!E§.b2World;
   import §`%§.§8!0§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §3m§
   {
      
      public static const §=!I§:Number = 1 / 30;
      
      public static const §,!A§:int = 10;
      
      public static const §+!A§:Boolean = true;
       
      
      public var §'!2§:b2World;
      
      private var §2!$§:Boolean = true;
      
      public var §;+§:§0!_§;
      
      public var § !T§:Sprite;
      
      private var §#!W§:b2DebugDraw;
      
      private var §2R§:Boolean = false;
      
      public var §>"2§:§5X§;
      
      public var §]!?§:Number;
      
      private var §1!>§:Number;
      
      private var §,0§:int;
      
      public function §3m§(param1:§5X§)
      {
         super();
         this.§>"2§ = param1;
         this.§#w§();
      }
      
      public function get §0k§() : int
      {
         return this.§,0§;
      }
      
      public function get § !?§() : Number
      {
         return this.§1!>§;
      }
      
      private function §#w§() : void
      {
         this.§;+§ = new §0!_§(this);
         this.§'!2§ = new b2World(new b2Vec2(0,20),this.§2!$§);
         this.§'!2§.§+V§(this.§;+§);
      }
      
      public function clear() : void
      {
         this.§'!2§.§+V§(null);
         this.§;+§ = null;
         if(this.§2R§)
         {
            this.§ !T§.graphics.clear();
         }
         this.§ !T§ = null;
         this.§'!2§.§<""§();
         this.§'!2§ = null;
      }
      
      public function §+!P§() : void
      {
         if(this.§2R§)
         {
            this.§'!2§.§use §();
            this.§ !T§.parent.setChildIndex(this.§ !T§,this.§ !T§.parent.numChildren - 1);
         }
      }
      
      public function §08§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§2R§)
         {
            _loc4_ = §8!0§.§?2§.§'W§(0,0);
            this.§ !T§.x = _loc4_.x;
            this.§ !T§.y = _loc4_.y;
            this.§#!W§.§2!i§(1 / §5X§.§,!m§ * param3);
         }
      }
      
      public function §!G§(param1:Number) : Number
      {
         this.§1!>§ = §=!I§;
         var _loc2_:int = this.§]6§(param1);
         if(_loc2_ > §,!A§)
         {
            _loc2_ = §,!A§;
         }
         this.§;![§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§1!>§ * 1000;
         }
         return param1;
      }
      
      public function §;![§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§]!?§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§,0§;
            _loc5_ = 0;
            if(§+!A§)
            {
               _loc5_ = getTimer();
            }
            this.§'!2§.§<"2§(this.§1!>§,10,10);
            this.§'!2§.§<""§();
            this.§]!?§ += this.§1!>§ * 1000;
            if(§+!A§)
            {
               §8!0§.§&!S§.§-!x§("Box2D",getTimer() - _loc5_);
            }
            this.§>"2§.§<"+§(this.§1!>§);
            _loc4_++;
         }
      }
      
      private function §]6§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§1!>§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §#>§(param1:Boolean) : void
      {
         if(this.§'!2§ == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§2R§)
            {
               if(!this.§ !T§ && !this.§#!W§)
               {
                  this.§ !T§ = new Sprite();
                  this.§#!W§ = new b2DebugDraw();
                  this.§#!W§.§?!u§(b2DebugDraw.§87§);
                  this.§#!W§.§?!u§(b2DebugDraw.§3"4§);
                  this.§#!W§.§?!u§(b2DebugDraw.§6!H§);
                  this.§#!W§.§^!@§(0.3);
                  this.§#!W§.§;I§(1);
                  this.§ !T§.mouseEnabled = false;
                  this.§#!W§.§?!&§(this.§ !T§);
                  this.§>"2§.stage.addChild(this.§ !T§);
                  this.§'!2§.§=i§(this.§#!W§);
               }
            }
         }
         this.§2R§ = param1;
      }
      
      public function get §#>§() : Boolean
      {
         return this.§2R§;
      }
      
      public function get §"T§() : b2DebugDraw
      {
         return this.§#!W§;
      }
      
      public function §2O§() : void
      {
         if(this.§#!W§)
         {
            this.§ !T§.graphics.clear();
         }
      }
   }
}
