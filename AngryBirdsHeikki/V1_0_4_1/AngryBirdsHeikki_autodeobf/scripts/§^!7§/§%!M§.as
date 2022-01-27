package §^!7§
{
   import §8!I§.b2DebugDraw;
   import §8!I§.b2World;
   import §=i§.b2Vec2;
   import §?!P§.§@@§;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §%!M§
   {
      
      public static const §%!>§:Number = 1 / 30;
      
      public static const §#3§:int = 10;
      
      public static const §%l§:Boolean = false;
      
      public static const §+C§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §,!H§:Boolean = true;
      
      public var §4!L§:§&!?§;
      
      public var §1p§:Sprite;
      
      private var §5!2§:b2DebugDraw;
      
      public var §<&§:§^A§;
      
      public var §@!>§:Number;
      
      private var §&?§:Number;
      
      private var §-!H§:int;
      
      public function §%!M§(param1:§^A§)
      {
         super();
         this.§<&§ = param1;
         this.§&c§();
      }
      
      public function get currentStep() : int
      {
         return this.§-!H§;
      }
      
      public function get § ?§() : Number
      {
         return this.§&?§;
      }
      
      private function §&c§() : void
      {
         this.§4!L§ = new §&!?§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§,!H§);
         this.mWorld.§0!]§(this.§4!L§);
         if(§%l§)
         {
            this.mWorld.§[!D§(true);
            this.§1p§ = new Sprite();
            this.§5!2§ = new b2DebugDraw();
            this.§5!2§.§7H§(b2DebugDraw.§7!6§);
            this.§5!2§.§7H§(b2DebugDraw.§+t§);
            this.§5!2§.§7H§(b2DebugDraw.§'r§);
            this.§5!2§.§,!C§(1 / §^A§.§<U§);
            this.§5!2§.§1!R§(0.3);
            this.§5!2§.§%'§(1);
            this.§5!2§.§-v§(this.§1p§);
            this.§<&§.stage.addChild(this.§1p§);
            this.mWorld.§#!O§(this.§5!2§);
         }
      }
      
      public function clear() : void
      {
         this.mWorld.§0!]§(null);
         this.§4!L§ = null;
         if(§%l§)
         {
            this.§1p§.graphics.clear();
         }
         this.§1p§ = null;
         this.mWorld.§5k§();
         this.mWorld = null;
      }
      
      public function §1!c§() : void
      {
         if(§%l§)
         {
            this.mWorld.§ !X§();
            this.§1p§.parent.setChildIndex(this.§1p§,this.§1p§.parent.numChildren - 1);
         }
      }
      
      public function §6!<§(param1:Number, param2:Number, param3:Number) : void
      {
         if(§%l§)
         {
            this.§1p§.x = -param1;
            this.§1p§.y = -param2;
         }
      }
      
      public function §@!L§(param1:Number) : Number
      {
         this.§&?§ = §%!>§;
         var _loc2_:int = this.§ !'§(param1);
         if(_loc2_ > §#3§)
         {
            _loc2_ = §#3§;
         }
         this.§-k§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§&?§ * 1000;
         }
         return param1;
      }
      
      public function §-k§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§@!>§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§-!H§;
            _loc5_ = 0;
            if(§+C§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§@%§(this.§&?§,10,10);
            this.mWorld.§5k§();
            this.§@!>§ += this.§&?§ * 1000;
            if(§+C§)
            {
               §@@§.§'!X§.§^!M§("Box2D",getTimer() - _loc5_);
            }
            this.§<&§.§6B§(this.§&?§);
            _loc4_++;
         }
      }
      
      private function § !'§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§&?§ * 1000;
         }
         return _loc2_;
      }
   }
}
