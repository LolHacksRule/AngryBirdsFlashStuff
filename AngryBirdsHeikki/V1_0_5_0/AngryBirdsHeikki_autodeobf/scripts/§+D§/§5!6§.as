package §+D§
{
   import §,!3§.b2Vec2;
   import §3-§.§1L§;
   import §?!F§.b2DebugDraw;
   import §?!F§.b2World;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §5!6§
   {
      
      public static const §+!M§:Number = 1 / 30;
      
      public static const §1!E§:int = 10;
      
      public static const §%!+§:Boolean = false;
      
      public static const §5U§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §7!X§:Boolean = true;
      
      public var §%E§:§"!&§;
      
      public var §7b§:Sprite;
      
      private var §#0§:b2DebugDraw;
      
      public var §^!4§:§5!P§;
      
      public var §#!?§:Number;
      
      private var §8E§:Number;
      
      private var §^C§:int;
      
      public function §5!6§(param1:§5!P§)
      {
         super();
         this.§^!4§ = param1;
         this.§6!§();
      }
      
      public function get currentStep() : int
      {
         return this.§^C§;
      }
      
      public function get §2!5§() : Number
      {
         return this.§8E§;
      }
      
      private function §6!§() : void
      {
         this.§%E§ = new §"!&§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§7!X§);
         this.mWorld.§9![§(this.§%E§);
         if(§%!+§)
         {
            this.mWorld.§^!F§(true);
            this.§7b§ = new Sprite();
            this.§#0§ = new b2DebugDraw();
            this.§#0§.§9$§(b2DebugDraw.§-t§);
            this.§#0§.§9$§(b2DebugDraw.§?%§);
            this.§#0§.§9$§(b2DebugDraw.§>i§);
            this.§#0§.§=!8§(1 / §5!P§.§>M§);
            this.§#0§.§]l§(0.3);
            this.§#0§.§8!T§(1);
            this.§#0§.§?! §(this.§7b§);
            this.§^!4§.stage.addChild(this.§7b§);
            this.mWorld.§4!C§(this.§#0§);
         }
      }
      
      public function clear() : void
      {
         this.mWorld.§9![§(null);
         this.§%E§ = null;
         if(§%!+§)
         {
            this.§7b§.graphics.clear();
         }
         this.§7b§ = null;
         this.mWorld.§=!4§();
         this.mWorld = null;
      }
      
      public function §1!`§() : void
      {
         if(§%!+§)
         {
            this.mWorld.§0+§();
            this.§7b§.parent.setChildIndex(this.§7b§,this.§7b§.parent.numChildren - 1);
         }
      }
      
      public function §@P§(param1:Number, param2:Number, param3:Number) : void
      {
         if(§%!+§)
         {
            this.§7b§.x = -param1;
            this.§7b§.y = -param2;
         }
      }
      
      public function §[#§(param1:Number) : Number
      {
         this.§8E§ = §+!M§;
         var _loc2_:int = this.§2o§(param1);
         if(_loc2_ > §1!E§)
         {
            _loc2_ = §1!E§;
         }
         this.§^!%§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§8E§ * 1000;
         }
         return param1;
      }
      
      public function §^!%§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§#!?§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§^C§;
            _loc5_ = 0;
            if(§5U§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§4y§(this.§8E§,10,10);
            this.mWorld.§=!4§();
            this.§#!?§ += this.§8E§ * 1000;
            if(§5U§)
            {
               §1L§.§-G§.§'u§("Box2D",getTimer() - _loc5_);
            }
            this.§^!4§.§6!0§(this.§8E§);
            _loc4_++;
         }
      }
      
      private function §2o§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§8E§ * 1000;
         }
         return _loc2_;
      }
   }
}
