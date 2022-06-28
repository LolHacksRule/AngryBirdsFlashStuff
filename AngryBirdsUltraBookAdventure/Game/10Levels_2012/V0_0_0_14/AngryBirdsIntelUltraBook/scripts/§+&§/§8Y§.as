package §+&§
{
   import § D§.b2DebugDraw;
   import § D§.b2World;
   import §5i§.§4!]§;
   import §8>§.b2Vec2;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §8Y§
   {
      
      public static const §?!"§:Number = 1 / 30;
      
      public static const §2e§:int = 10;
      
      public static const §`!2§:Boolean = false;
      
      public static const §&!b§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §,!n§:Boolean = true;
      
      public var §5I§:§8-§;
      
      public var §=!?§:Sprite;
      
      private var §9!V§:b2DebugDraw;
      
      public var §+!X§:§-!7§;
      
      public var §9a§:Number;
      
      private var §&&§:Number;
      
      private var §'!&§:int;
      
      public function §8Y§(param1:§-!7§)
      {
         super();
         this.§+!X§ = param1;
         this.§6!^§();
      }
      
      public function get §]!@§() : int
      {
         return this.§'!&§;
      }
      
      public function get §"!w§() : Number
      {
         return this.§&&§;
      }
      
      private function §6!^§() : void
      {
         this.§5I§ = new §8-§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§,!n§);
         this.mWorld.§=!3§(this.§5I§);
         if(§`!2§)
         {
            this.mWorld.§0J§(true);
            this.§=!?§ = new Sprite();
            this.§9!V§ = new b2DebugDraw();
            this.§9!V§.§6!%§(b2DebugDraw.§[b§);
            this.§9!V§.§6!%§(b2DebugDraw.§5x§);
            this.§9!V§.§6!%§(b2DebugDraw.§"g§);
            this.§9!V§.§>!L§(1 / §-!7§.§8!r§);
            this.§9!V§.§;!O§(0.3);
            this.§9!V§.§7!A§(1);
            this.§9!V§.§90§(this.§=!?§);
            this.§+!X§.stage.addChild(this.§=!?§);
            this.mWorld.§ ! §(this.§9!V§);
         }
      }
      
      public function clear() : void
      {
         this.mWorld.§=!3§(null);
         this.§5I§ = null;
         if(§`!2§)
         {
            this.§=!?§.graphics.clear();
         }
         this.§=!?§ = null;
         this.mWorld.§ v§();
         this.mWorld = null;
      }
      
      public function §^!c§() : void
      {
         if(§`!2§)
         {
            this.mWorld.§[W§();
            this.§=!?§.parent.setChildIndex(this.§=!?§,this.§=!?§.parent.numChildren - 1);
         }
      }
      
      public function §@o§(param1:Number, param2:Number, param3:Number) : void
      {
         if(§`!2§)
         {
            this.§=!?§.x = -param1;
            this.§=!?§.y = -param2;
         }
      }
      
      public function §7!@§(param1:Number) : Number
      {
         this.§&&§ = §?!"§;
         var _loc2_:int = this.§[!g§(param1);
         if(_loc2_ > §2e§)
         {
            _loc2_ = §2e§;
         }
         this.§,!5§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§&&§ * 1000;
         }
         return param1;
      }
      
      public function §,!5§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§9a§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§'!&§;
            _loc5_ = 0;
            if(§&!b§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§`!9§(this.§&&§,10,10);
            this.mWorld.§ v§();
            this.§9a§ += this.§&&§ * 1000;
            if(§&!b§)
            {
               §4!]§.§3!V§.§#!V§("Box2D",getTimer() - _loc5_);
            }
            this.§+!X§.handleEngineUpdateStep(this.§&&§);
            _loc4_++;
         }
      }
      
      private function §[!g§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§&&§ * 1000;
         }
         return _loc2_;
      }
   }
}
