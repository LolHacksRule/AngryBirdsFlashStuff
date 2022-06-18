package §9T§
{
   import §+!^§.§'Y§;
   import §4]§.b2DebugDraw;
   import §4]§.b2World;
   import §[R§.b2Vec2;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §&,§
   {
      
      public static const §0p§:Number = 1 / 30;
      
      public static const §'!%§:int = 10;
      
      public static const §>!F§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §2!D§:Boolean = true;
      
      public var §">§:§"a§;
      
      public var §'!Z§:Sprite;
      
      private var §@!L§:b2DebugDraw;
      
      private var §7d§:Boolean = false;
      
      public var §&?§:§=!^§;
      
      public var §'T§:Number;
      
      private var § in§:Number;
      
      private var §5Y§:int;
      
      public function §&,§(param1:§=!^§)
      {
         super();
         this.§&?§ = param1;
         this.§3K§();
      }
      
      public function get currentStep() : int
      {
         return this.§5Y§;
      }
      
      public function get §=!D§() : Number
      {
         return this.§ in§;
      }
      
      private function §3K§() : void
      {
         this.§">§ = new §"a§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§2!D§);
         this.mWorld.§4F§(this.§">§);
      }
      
      public function clear() : void
      {
         this.mWorld.§4F§(null);
         this.§">§ = null;
         if(this.§7d§)
         {
            this.§'!Z§.graphics.clear();
         }
         this.§'!Z§ = null;
         this.mWorld.§^=§();
         this.mWorld = null;
      }
      
      public function §@!E§() : void
      {
         if(this.§7d§)
         {
            this.mWorld.§5f§();
            this.§'!Z§.parent.setChildIndex(this.§'!Z§,this.§'!Z§.parent.numChildren - 1);
         }
      }
      
      public function §^!E§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§7d§)
         {
            _loc4_ = §'Y§.§@j§.§=!G§(0,0);
            this.§'!Z§.x = _loc4_.x;
            this.§'!Z§.y = _loc4_.y;
            this.§@!L§.§>!X§(1 / §=!^§.§4#§ * param3);
         }
      }
      
      public function §1!-§(param1:Number) : Number
      {
         this.§ in§ = §0p§;
         var _loc2_:int = this.§5%§(param1);
         if(_loc2_ > §'!%§)
         {
            _loc2_ = §'!%§;
         }
         this.§'!Y§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§ in§ * 1000;
         }
         return param1;
      }
      
      public function §'!Y§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§'T§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§5Y§;
            _loc5_ = 0;
            if(§>!F§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§3!7§(this.§ in§,10,10);
            this.mWorld.§^=§();
            this.§'T§ += this.§ in§ * 1000;
            if(§>!F§)
            {
               §'Y§.§<]§.§%!>§("Box2D",getTimer() - _loc5_);
            }
            this.§&?§.§?f§(this.§ in§);
            _loc4_++;
         }
      }
      
      private function §5%§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§ in§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §5!§(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§7d§)
            {
               if(!this.§'!Z§ && !this.§@!L§)
               {
                  this.§'!Z§ = new Sprite();
                  this.§@!L§ = new b2DebugDraw();
                  this.§@!L§.§75§(b2DebugDraw.§0[§);
                  this.§@!L§.§75§(b2DebugDraw.§^@§);
                  this.§@!L§.§75§(b2DebugDraw.§[,§);
                  this.§@!L§.§`!0§(0.3);
                  this.§@!L§.§@!Y§(1);
                  this.§'!Z§.mouseEnabled = false;
                  this.§@!L§.§6!O§(this.§'!Z§);
                  this.§&?§.stage.addChild(this.§'!Z§);
                  this.mWorld.§&!Y§(this.§@!L§);
               }
            }
         }
         this.§7d§ = param1;
      }
      
      public function get §5!§() : Boolean
      {
         return this.§7d§;
      }
      
      public function get §`o§() : b2DebugDraw
      {
         return this.§@!L§;
      }
      
      public function §-H§() : void
      {
         if(this.§@!L§)
         {
            this.§'!Z§.graphics.clear();
         }
      }
   }
}
