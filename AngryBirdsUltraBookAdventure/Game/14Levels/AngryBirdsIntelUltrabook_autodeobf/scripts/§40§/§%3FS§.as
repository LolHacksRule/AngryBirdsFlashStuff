package §40§
{
   import §#I§.b2DebugDraw;
   import §#I§.b2World;
   import §&H§.b2Vec2;
   import §;!y§.§,!s§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §?S§
   {
      
      public static const §;!Z§:Number = 1 / 30;
      
      public static const §#>§:int = 10;
      
      public static const §[J§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §<!6§:Boolean = true;
      
      public var §-'§:§80§;
      
      public var §'q§:Sprite;
      
      private var §,"$§:b2DebugDraw;
      
      private var §;!x§:Boolean = false;
      
      public var §#!U§:§5G§;
      
      public var §%q§:Number;
      
      private var §;!H§:Number;
      
      private var §9!N§:int;
      
      public function §?S§(param1:§5G§)
      {
         super();
         this.§#!U§ = param1;
         this.§#!;§();
      }
      
      public function get §[!2§() : int
      {
         return this.§9!N§;
      }
      
      public function get §8l§() : Number
      {
         return this.§;!H§;
      }
      
      private function §#!;§() : void
      {
         this.§-'§ = new §80§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§<!6§);
         this.mWorld.§?!p§(this.§-'§);
      }
      
      public function clear() : void
      {
         this.mWorld.§?!p§(null);
         this.§-'§ = null;
         if(this.§;!x§)
         {
            this.§'q§.graphics.clear();
         }
         this.§'q§ = null;
         this.mWorld.§3#§();
         this.mWorld = null;
      }
      
      public function §4!5§() : void
      {
         if(this.§;!x§)
         {
            this.mWorld.§["!§();
            this.§'q§.parent.setChildIndex(this.§'q§,this.§'q§.parent.numChildren - 1);
         }
      }
      
      public function §1T§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§;!x§)
         {
            _loc4_ = §,!s§.§=!I§.§>C§(0,0);
            this.§'q§.x = _loc4_.x;
            this.§'q§.y = _loc4_.y;
            this.§,"$§.§=!_§(1 / §5G§.§6+§ * param3);
         }
      }
      
      public function §!!G§(param1:Number) : Number
      {
         this.§;!H§ = §;!Z§;
         var _loc2_:int = this.§@y§(param1);
         if(_loc2_ > §#>§)
         {
            _loc2_ = §#>§;
         }
         this.§return§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§;!H§ * 1000;
         }
         return param1;
      }
      
      public function §return§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§%q§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§9!N§;
            _loc5_ = 0;
            if(§[J§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§8!&§(this.§;!H§,10,10);
            this.mWorld.§3#§();
            this.§%q§ += this.§;!H§ * 1000;
            if(§[J§)
            {
               §,!s§.§3!h§.§96§("Box2D",getTimer() - _loc5_);
            }
            this.§#!U§.handleEngineUpdateStep(this.§;!H§);
            _loc4_++;
         }
      }
      
      private function §@y§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§;!H§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §;2§(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§;!x§)
            {
               if(!this.§'q§ && !this.§,"$§)
               {
                  this.§'q§ = new Sprite();
                  this.§,"$§ = new b2DebugDraw();
                  this.§,"$§.§ true§(b2DebugDraw.§6!t§);
                  this.§,"$§.§ true§(b2DebugDraw.§]c§);
                  this.§,"$§.§ true§(b2DebugDraw.§5!?§);
                  this.§,"$§.§8!4§(0.3);
                  this.§,"$§.§[b§(1);
                  this.§'q§.mouseEnabled = false;
                  this.§,"$§.§[!B§(this.§'q§);
                  this.§#!U§.stage.addChild(this.§'q§);
                  this.mWorld.§9#§(this.§,"$§);
               }
            }
         }
         else if(this.§'q§)
         {
            this.§'q§.graphics.clear();
         }
         this.§;!x§ = param1;
      }
      
      public function get §;2§() : Boolean
      {
         return this.§;!x§;
      }
      
      public function get §@!d§() : b2DebugDraw
      {
         return this.§,"$§;
      }
      
      public function §@!?§() : void
      {
         if(this.§,"$§)
         {
            this.§'q§.graphics.clear();
         }
      }
   }
}
