package §4A§
{
   import §-v§.§,!1§;
   import §4U§.b2DebugDraw;
   import §4U§.b2World;
   import §<!8§.b2Vec2;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §4@§
   {
      
      public static const §5p§:Number = 1 / 30;
      
      public static const §,!'§:int = 10;
      
      public static const §2I§:Boolean = false;
      
      public static const §2!0§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §+§:Boolean = true;
      
      public var §#g§:§`!M§;
      
      public var §?C§:Sprite;
      
      private var §>;§:b2DebugDraw;
      
      public var mLevelMain:§&_§;
      
      public var §&!I§:Number;
      
      private var §8V§:Number;
      
      private var §!7§:int;
      
      public function §4@§(param1:§&_§)
      {
         super();
         this.mLevelMain = param1;
         this.§1G§();
      }
      
      public function get §[X§() : int
      {
         return this.§!7§;
      }
      
      public function get §'!;§() : Number
      {
         return this.§8V§;
      }
      
      private function §1G§() : void
      {
         this.§#g§ = new §`!M§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§+§);
         this.mWorld.§]![§(this.§#g§);
         if(§2I§)
         {
            this.mWorld.§0h§(true);
            this.§?C§ = new Sprite();
            this.§>;§ = new b2DebugDraw();
            this.§>;§.§^!9§(b2DebugDraw.§?!5§);
            this.§>;§.§^!9§(b2DebugDraw.§<!]§);
            this.§>;§.§^!9§(b2DebugDraw.§'!T§);
            this.§>;§.§65§(1 / §&_§.§5-§);
            this.§>;§.§>!8§(0.3);
            this.§>;§.§6i§(1);
            this.§>;§.§4?§(this.§?C§);
            this.mLevelMain.stage.addChild(this.§?C§);
            this.mWorld.§>j§(this.§>;§);
         }
      }
      
      public function clear() : void
      {
         this.mWorld.§]![§(null);
         this.§#g§ = null;
         if(§2I§)
         {
            this.§?C§.graphics.clear();
         }
         this.§?C§ = null;
         this.mWorld.§%!T§();
         this.mWorld = null;
      }
      
      public function §-!D§() : void
      {
         if(§2I§)
         {
            this.mWorld.§=b§();
            this.§?C§.parent.setChildIndex(this.§?C§,this.§?C§.parent.numChildren - 1);
         }
      }
      
      public function §]H§(param1:Number, param2:Number, param3:Number) : void
      {
         if(§2I§)
         {
            this.§?C§.x = -param1;
            this.§?C§.y = -param2;
         }
      }
      
      public function § !=§(param1:Number) : Number
      {
         this.§8V§ = §5p§;
         var _loc2_:int = this.§3!,§(param1);
         if(_loc2_ > §,!'§)
         {
            _loc2_ = §,!'§;
         }
         this.§=c§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§8V§ * 1000;
         }
         return param1;
      }
      
      public function §=c§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§&!I§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§!7§;
            _loc5_ = 0;
            if(§2!0§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§>!7§(this.§8V§,10,10);
            this.mWorld.§%!T§();
            this.§&!I§ += this.§8V§ * 1000;
            if(§2!0§)
            {
               §,!1§.§2O§.§@1§("Box2D",getTimer() - _loc5_);
            }
            this.mLevelMain.§;7§(this.§8V§);
            _loc4_++;
         }
      }
      
      private function §3!,§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§8V§ * 1000;
         }
         return _loc2_;
      }
   }
}
