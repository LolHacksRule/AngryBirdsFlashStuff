package §?A§
{
   import §-!>§.§4!T§;
   import §1%§.b2DebugDraw;
   import §1%§.b2World;
   import §?!&§.b2Vec2;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §6c§
   {
      
      public static const §6!Y§:Number = 1 / 30;
      
      public static const §,!4§:int = 10;
      
      public static const §+s§:Boolean = false;
      
      public static const §'O§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §!B§:Boolean = true;
      
      public var §2n§:§`s§;
      
      public var §`!U§:Sprite;
      
      private var §0"§:b2DebugDraw;
      
      public var §6f§:LevelMain;
      
      public var §13§:Number;
      
      private var §0X§:Number;
      
      private var §"A§:int;
      
      public function §6c§(param1:LevelMain)
      {
         super();
         this.§6f§ = param1;
         this.§2!i§();
      }
      
      public function get §,6§() : int
      {
         return this.§"A§;
      }
      
      public function get §[!i§() : Number
      {
         return this.§0X§;
      }
      
      private function §2!i§() : void
      {
         this.§2n§ = new §`s§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§!B§);
         this.mWorld.§-#§(this.§2n§);
         if(§+s§)
         {
            this.mWorld.§%!g§(true);
            this.§`!U§ = new Sprite();
            this.§0"§ = new b2DebugDraw();
            this.§0"§.§1!§(b2DebugDraw.§'!J§);
            this.§0"§.§1!§(b2DebugDraw.§9!F§);
            this.§0"§.§1!§(b2DebugDraw.§#W§);
            this.§0"§.§!4§(1 / LevelMain.§!5§);
            this.§0"§.§24§(0.3);
            this.§0"§.§'&§(1);
            this.§0"§.§try§(this.§`!U§);
            this.§6f§.stage.addChild(this.§`!U§);
            this.mWorld.§%!7§(this.§0"§);
         }
      }
      
      public function clear() : void
      {
         this.mWorld.§-#§(null);
         this.§2n§ = null;
         if(§+s§)
         {
            this.§`!U§.graphics.clear();
         }
         this.§`!U§ = null;
         this.mWorld.§-W§();
         this.mWorld = null;
      }
      
      public function §`!?§() : void
      {
         if(§+s§)
         {
            this.mWorld.§]i§();
            this.§`!U§.parent.setChildIndex(this.§`!U§,this.§`!U§.parent.numChildren - 1);
         }
      }
      
      public function §6!7§(param1:Number, param2:Number, param3:Number) : void
      {
         if(§+s§)
         {
            this.§`!U§.x = -param1;
            this.§`!U§.y = -param2;
         }
      }
      
      public function §>!?§(param1:Number) : Number
      {
         this.§0X§ = §6!Y§;
         var _loc2_:int = this.§'!H§(param1);
         if(_loc2_ > §,!4§)
         {
            _loc2_ = §,!4§;
         }
         this.§ !f§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§0X§ * 1000;
         }
         return param1;
      }
      
      public function § !f§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§13§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§"A§;
            _loc5_ = 0;
            if(§'O§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§4k§(this.§0X§,10,10);
            this.mWorld.§-W§();
            this.§13§ += this.§0X§ * 1000;
            if(§'O§)
            {
               §4!T§.§!!]§.§@c§("Box2D",getTimer() - _loc5_);
            }
            this.§6f§.handleEngineUpdateStep(this.§0X§);
            _loc4_++;
         }
      }
      
      private function §'!H§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§0X§ * 1000;
         }
         return _loc2_;
      }
   }
}
