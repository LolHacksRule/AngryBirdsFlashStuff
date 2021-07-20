package §"!I§
{
   import §3!R§.b2DebugDraw;
   import §3!R§.b2World;
   import §6A§.b2Vec2;
   import §9b§.§"!S§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §92§
   {
      
      public static const §!!&§:Number = 1 / 30;
      
      public static const §,!7§:int = 10;
      
      public static const §continue§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §?§:Boolean = true;
      
      public var §1g§:§==§;
      
      public var §2H§:Sprite;
      
      private var § I§:b2DebugDraw;
      
      private var §<C§:Boolean = false;
      
      public var §=!V§:§^!2§;
      
      public var §9X§:Number;
      
      private var §2k§:Number;
      
      private var §"!D§:int;
      
      public function §92§(param1:§^!2§)
      {
         super();
         this.§=!V§ = param1;
         this.§-!0§();
      }
      
      public function get currentStep() : int
      {
         return this.§"!D§;
      }
      
      public function get §2t§() : Number
      {
         return this.§2k§;
      }
      
      private function §-!0§() : void
      {
         this.§1g§ = new §==§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§?§);
         this.mWorld.§6C§(this.§1g§);
      }
      
      public function clear() : void
      {
         this.mWorld.§6C§(null);
         this.§1g§ = null;
         if(this.§<C§)
         {
            this.§2H§.graphics.clear();
         }
         this.§2H§ = null;
         this.mWorld.§3r§();
         this.mWorld = null;
      }
      
      public function §;!A§() : void
      {
         if(this.§<C§)
         {
            this.mWorld.§'W§();
            this.§2H§.parent.setChildIndex(this.§2H§,this.§2H§.parent.numChildren - 1);
         }
      }
      
      public function §+!+§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§<C§)
         {
            _loc4_ = §"!S§.§-!7§.§&1§(0,0);
            this.§2H§.x = _loc4_.x;
            this.§2H§.y = _loc4_.y;
            this.§ I§.§2!Y§(1 / §^!2§.§3!S§ * param3);
         }
      }
      
      public function §0!0§(param1:Number) : Number
      {
         this.§2k§ = §!!&§;
         var _loc2_:int = this.§";§(param1);
         if(_loc2_ > §,!7§)
         {
            _loc2_ = §,!7§;
         }
         this.§&!f§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§2k§ * 1000;
         }
         return param1;
      }
      
      public function §&!f§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§9X§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§"!D§;
            _loc5_ = 0;
            if(§continue§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§00§(this.§2k§,10,10);
            this.mWorld.§3r§();
            this.§9X§ += this.§2k§ * 1000;
            if(§continue§)
            {
               §"!S§.§;4§.§"!Y§("Box2D",getTimer() - _loc5_);
            }
            this.§=!V§.§&r§(this.§2k§);
            _loc4_++;
         }
      }
      
      private function §";§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§2k§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §,!]§(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§<C§)
            {
               if(!this.§2H§ && !this.§ I§)
               {
                  this.§2H§ = new Sprite();
                  this.§ I§ = new b2DebugDraw();
                  this.§ I§.§"§(b2DebugDraw.§8!+§);
                  this.§ I§.§"§(b2DebugDraw.§-g§);
                  this.§ I§.§"§(b2DebugDraw.§;!@§);
                  this.§ I§.§!H§(0.3);
                  this.§ I§.§-m§(1);
                  this.§2H§.mouseEnabled = false;
                  this.§ I§.§!6§(this.§2H§);
                  this.§=!V§.stage.addChild(this.§2H§);
                  this.mWorld.§>]§(this.§ I§);
               }
            }
         }
         this.§<C§ = param1;
      }
      
      public function get §,!]§() : Boolean
      {
         return this.§<C§;
      }
      
      public function get §&!d§() : b2DebugDraw
      {
         return this.§ I§;
      }
      
      public function §72§() : void
      {
         if(this.§ I§)
         {
            this.§2H§.graphics.clear();
         }
      }
   }
}
