package §9!'§
{
   import §+d§.b2DebugDraw;
   import §+d§.b2World;
   import §8O§.§&#§;
   import §`!^§.b2Vec2;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §8U§
   {
      
      public static const §#7§:Number = 1 / 30;
      
      public static const §&v§:int = 10;
      
      public static const §0>§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §+!H§:Boolean = true;
      
      public var §6'§:§%9§;
      
      public var §;U§:Sprite;
      
      private var §#!e§:b2DebugDraw;
      
      private var §25§:Boolean = false;
      
      public var §]B§:§0!%§;
      
      public var §<!J§:Number;
      
      private var §^!L§:Number;
      
      private var §=!I§:int;
      
      public function §8U§(param1:§0!%§)
      {
         super();
         this.§]B§ = param1;
         this.§^!B§();
      }
      
      public function get currentStep() : int
      {
         return this.§=!I§;
      }
      
      public function get §7n§() : Number
      {
         return this.§^!L§;
      }
      
      private function §^!B§() : void
      {
         this.§6'§ = new §%9§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§+!H§);
         this.mWorld.§2o§(this.§6'§);
      }
      
      public function clear() : void
      {
         this.mWorld.§2o§(null);
         this.§6'§ = null;
         if(this.§25§)
         {
            this.§;U§.graphics.clear();
         }
         this.§;U§ = null;
         this.mWorld.§&!5§();
         this.mWorld = null;
      }
      
      public function §,E§() : void
      {
         if(this.§25§)
         {
            this.mWorld.§<t§();
            this.§;U§.parent.setChildIndex(this.§;U§,this.§;U§.parent.numChildren - 1);
         }
      }
      
      public function §`s§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§25§)
         {
            _loc4_ = §&#§.§3!D§.§3s§(0,0);
            this.§;U§.x = _loc4_.x;
            this.§;U§.y = _loc4_.y;
            this.§#!e§.§03§(1 / §0!%§.§"m§ * param3);
         }
      }
      
      public function §5!D§(param1:Number) : Number
      {
         this.§^!L§ = §#7§;
         var _loc2_:int = this.§9!U§(param1);
         if(_loc2_ > §&v§)
         {
            _loc2_ = §&v§;
         }
         this.§2!U§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§^!L§ * 1000;
         }
         return param1;
      }
      
      public function §2!U§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§<!J§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§=!I§;
            _loc5_ = 0;
            if(§0>§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§7!F§(this.§^!L§,10,10);
            this.mWorld.§&!5§();
            this.§<!J§ += this.§^!L§ * 1000;
            if(§0>§)
            {
               §&#§.§3B§.§7V§("Box2D",getTimer() - _loc5_);
            }
            this.§]B§.§'!B§(this.§^!L§);
            _loc4_++;
         }
      }
      
      private function §9!U§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§^!L§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §`l§(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§25§)
            {
               if(!this.§;U§ && !this.§#!e§)
               {
                  this.§;U§ = new Sprite();
                  this.§#!e§ = new b2DebugDraw();
                  this.§#!e§.§>%§(b2DebugDraw.§&!a§);
                  this.§#!e§.§>%§(b2DebugDraw.§;P§);
                  this.§#!e§.§>%§(b2DebugDraw.§5!c§);
                  this.§#!e§.§#j§(0.3);
                  this.§#!e§.§1Y§(1);
                  this.§;U§.mouseEnabled = false;
                  this.§#!e§.§?!"§(this.§;U§);
                  this.§]B§.stage.addChild(this.§;U§);
                  this.mWorld.§=#§(this.§#!e§);
               }
            }
         }
         this.§25§ = param1;
      }
      
      public function get §`l§() : Boolean
      {
         return this.§25§;
      }
      
      public function get §@c§() : b2DebugDraw
      {
         return this.§#!e§;
      }
      
      public function §-!e§() : void
      {
         if(this.§#!e§)
         {
            this.§;U§.graphics.clear();
         }
      }
   }
}
