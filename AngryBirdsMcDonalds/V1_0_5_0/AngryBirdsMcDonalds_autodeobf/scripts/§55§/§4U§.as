package §55§
{
   import §%!5§.§7;§;
   import §-0§.b2DebugDraw;
   import §-0§.b2World;
   import §^!%§.b2Vec2;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §4U§
   {
      
      public static const §2]§:Number = 1 / 30;
      
      public static const §5!`§:int = 10;
      
      public static const §?!8§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §;x§:Boolean = true;
      
      public var §,!^§:§-!T§;
      
      public var §"Y§:Sprite;
      
      private var §5y§:b2DebugDraw;
      
      private var § !J§:Boolean = false;
      
      public var mLevelMain:§>![§;
      
      public var §5A§:Number;
      
      private var §3!'§:Number;
      
      private var §@$§:int;
      
      public function §4U§(param1:§>![§)
      {
         super();
         this.mLevelMain = param1;
         this.§4j§();
      }
      
      public function get § d§() : int
      {
         return this.§@$§;
      }
      
      public function get §^<§() : Number
      {
         return this.§3!'§;
      }
      
      private function §4j§() : void
      {
         this.§,!^§ = new §-!T§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§;x§);
         this.mWorld.§3I§(this.§,!^§);
      }
      
      public function clear() : void
      {
         this.mWorld.§3I§(null);
         this.§,!^§ = null;
         if(this.§ !J§)
         {
            this.§"Y§.graphics.clear();
         }
         this.§"Y§ = null;
         this.mWorld.§+q§();
         this.mWorld = null;
      }
      
      public function §04§() : void
      {
         if(this.§ !J§)
         {
            this.mWorld.§?z§();
            this.§"Y§.parent.setChildIndex(this.§"Y§,this.§"Y§.parent.numChildren - 1);
         }
      }
      
      public function § !l§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§ !J§)
         {
            _loc4_ = §7;§.§1h§.§<a§(0,0);
            this.§"Y§.x = _loc4_.x;
            this.§"Y§.y = _loc4_.y;
            this.§5y§.§&y§(1 / §>![§.§%!k§ * param3);
         }
      }
      
      public function §#`§(param1:Number) : Number
      {
         this.§3!'§ = §2]§;
         var _loc2_:int = this.§'!C§(param1);
         if(_loc2_ > §5!`§)
         {
            _loc2_ = §5!`§;
         }
         this.§&R§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§3!'§ * 1000;
         }
         return param1;
      }
      
      public function §&R§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§5A§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§@$§;
            _loc5_ = 0;
            if(§?!8§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§&E§(this.§3!'§,10,10);
            this.mWorld.§+q§();
            this.§5A§ += this.§3!'§ * 1000;
            if(§?!8§)
            {
               §7;§.§;w§.§="§("Box2D",getTimer() - _loc5_);
            }
            this.mLevelMain.handleEngineUpdateStep(this.§3!'§);
            _loc4_++;
         }
      }
      
      private function §'!C§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§3!'§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §8! §(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§ !J§)
            {
               if(!this.§"Y§ && !this.§5y§)
               {
                  this.§"Y§ = new Sprite();
                  this.§5y§ = new b2DebugDraw();
                  this.§5y§.§6!E§(b2DebugDraw.§"a§);
                  this.§5y§.§6!E§(b2DebugDraw.§5!4§);
                  this.§5y§.§6!E§(b2DebugDraw.§-!7§);
                  this.§5y§.§=3§(0.3);
                  this.§5y§.§1!U§(1);
                  this.§"Y§.mouseEnabled = false;
                  this.§5y§.§&`§(this.§"Y§);
                  this.mLevelMain.stage.addChild(this.§"Y§);
                  this.mWorld.§-%§(this.§5y§);
               }
            }
         }
         this.§ !J§ = param1;
      }
      
      public function get §8! §() : Boolean
      {
         return this.§ !J§;
      }
      
      public function get §5V§() : b2DebugDraw
      {
         return this.§5y§;
      }
      
      public function §!7§() : void
      {
         if(this.§5y§)
         {
            this.§"Y§.graphics.clear();
         }
      }
   }
}
