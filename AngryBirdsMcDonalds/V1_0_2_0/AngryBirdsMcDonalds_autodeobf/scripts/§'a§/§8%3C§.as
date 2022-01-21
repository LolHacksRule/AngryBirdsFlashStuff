package §'a§
{
   import §"U§.b2Vec2;
   import §3!g§.b2DebugDraw;
   import §3!g§.b2World;
   import §9!W§.§=!@§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §8<§
   {
      
      public static const §^;§:Number = 1 / 30;
      
      public static const §5!k§:int = 10;
      
      public static const §]!§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §,!6§:Boolean = true;
      
      public var §5V§:§>!g§;
      
      public var §96§:Sprite;
      
      private var §;v§:b2DebugDraw;
      
      private var §?T§:Boolean = false;
      
      public var mLevelMain:§0!f§;
      
      public var §+K§:Number;
      
      private var §@U§:Number;
      
      private var §4d§:int;
      
      public function §8<§(param1:§0!f§)
      {
         super();
         this.mLevelMain = param1;
         this.§?R§();
      }
      
      public function get §5J§() : int
      {
         return this.§4d§;
      }
      
      public function get §#!g§() : Number
      {
         return this.§@U§;
      }
      
      private function §?R§() : void
      {
         this.§5V§ = new §>!g§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§,!6§);
         this.mWorld.§]!k§(this.§5V§);
      }
      
      public function clear() : void
      {
         this.mWorld.§]!k§(null);
         this.§5V§ = null;
         if(this.§?T§)
         {
            this.§96§.graphics.clear();
         }
         this.§96§ = null;
         this.mWorld.§9>§();
         this.mWorld = null;
      }
      
      public function §"!U§() : void
      {
         if(this.§?T§)
         {
            this.mWorld.§`!R§();
            this.§96§.parent.setChildIndex(this.§96§,this.§96§.parent.numChildren - 1);
         }
      }
      
      public function §8!E§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§?T§)
         {
            _loc4_ = §=!@§.§>!T§.§]!i§(0,0);
            this.§96§.x = _loc4_.x;
            this.§96§.y = _loc4_.y;
            this.§;v§.§6!`§(1 / §0!f§.§<C§ * param3);
         }
      }
      
      public function §'!A§(param1:Number) : Number
      {
         this.§@U§ = §^;§;
         var _loc2_:int = this.§<f§(param1);
         if(_loc2_ > §5!k§)
         {
            _loc2_ = §5!k§;
         }
         this.§=%§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§@U§ * 1000;
         }
         return param1;
      }
      
      public function §=%§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§+K§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§4d§;
            _loc5_ = 0;
            if(§]!§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§4!@§(this.§@U§,10,10);
            this.mWorld.§9>§();
            this.§+K§ += this.§@U§ * 1000;
            if(§]!§)
            {
               §=!@§.§3!U§.§ m§("Box2D",getTimer() - _loc5_);
            }
            this.mLevelMain.handleEngineUpdateStep(this.§@U§);
            _loc4_++;
         }
      }
      
      private function §<f§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§@U§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §?!G§(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§?T§)
            {
               if(!this.§96§ && !this.§;v§)
               {
                  this.§96§ = new Sprite();
                  this.§;v§ = new b2DebugDraw();
                  this.§;v§.§"!%§(b2DebugDraw.§6!;§);
                  this.§;v§.§"!%§(b2DebugDraw.§>!,§);
                  this.§;v§.§"!%§(b2DebugDraw.§-[§);
                  this.§;v§.§true§(0.3);
                  this.§;v§.§9a§(1);
                  this.§96§.mouseEnabled = false;
                  this.§;v§.§?!=§(this.§96§);
                  this.mLevelMain.stage.addChild(this.§96§);
                  this.mWorld.§5F§(this.§;v§);
               }
            }
         }
         this.§?T§ = param1;
      }
      
      public function get §?!G§() : Boolean
      {
         return this.§?T§;
      }
      
      public function get §2B§() : b2DebugDraw
      {
         return this.§;v§;
      }
      
      public function §%]§() : void
      {
         if(this.§;v§)
         {
            this.§96§.graphics.clear();
         }
      }
   }
}
