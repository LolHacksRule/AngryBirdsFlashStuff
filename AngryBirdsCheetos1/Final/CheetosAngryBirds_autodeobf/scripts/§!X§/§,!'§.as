package §!X§
{
   import §0!G§.b2Vec2;
   import §?m§.§7?§;
   import §`j§.b2DebugDraw;
   import §`j§.b2World;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §,!'§
   {
      
      public static const §false§:Number = 1 / 30;
      
      public static const §4!U§:int = 10;
      
      public static const §%!F§:Boolean = false;
      
      public static const §;!;§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §]!=§:Boolean = true;
      
      public var §0!9§:§4!6§;
      
      public var §?!X§:Sprite;
      
      private var §>P§:b2DebugDraw;
      
      public var §>`§:§86§;
      
      public var §?!$§:Number;
      
      private var §-_§:Number;
      
      private var §`!V§:int;
      
      public function §,!'§(param1:§86§)
      {
         super();
         this.§>`§ = param1;
         this.§,!?§();
      }
      
      public function get currentStep() : int
      {
         return this.§`!V§;
      }
      
      public function get §#L§() : Number
      {
         return this.§-_§;
      }
      
      private function §,!?§() : void
      {
         this.§0!9§ = new §4!6§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§]!=§);
         this.mWorld.§7&§(this.§0!9§);
      }
      
      public function clear() : void
      {
         this.mWorld.§7&§(null);
         this.§0!9§ = null;
         if(§%!F§)
         {
            this.§?!X§.graphics.clear();
         }
         this.§?!X§ = null;
         this.mWorld.§+!1§();
         this.mWorld = null;
      }
      
      public function §2!@§() : void
      {
         if(!§%!F§)
         {
         }
      }
      
      public function §<!=§(param1:Number, param2:Number) : void
      {
         if(§%!F§)
         {
            this.§?!X§.x = -param1;
            this.§?!X§.y = -param2;
         }
      }
      
      public function §6!E§(param1:Number) : Number
      {
         this.§-_§ = §false§;
         var _loc2_:int = this.§6j§(param1);
         if(_loc2_ > §4!U§)
         {
            _loc2_ = §4!U§;
         }
         this.§while§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§-_§ * 1000;
         }
         return param1;
      }
      
      public function §while§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§?!$§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§`!V§;
            _loc5_ = 0;
            if(§;!;§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§6k§(this.§-_§,10,10);
            this.mWorld.§+!1§();
            this.§?!$§ += this.§-_§ * 1000;
            if(§;!;§)
            {
               §7?§.§4J§.§-m§("Box2D",getTimer() - _loc5_);
            }
            this.§>`§.§7!;§(this.§-_§);
            _loc4_++;
         }
      }
      
      private function §6j§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§-_§ * 1000;
         }
         return _loc2_;
      }
   }
}
