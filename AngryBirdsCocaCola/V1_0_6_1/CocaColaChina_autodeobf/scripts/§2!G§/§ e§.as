package §2!G§
{
   import § y§.b2DebugDraw;
   import § y§.b2World;
   import §;A§.§7!K§;
   import §;h§.b2Vec2;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class § e§
   {
      
      public static const §^!3§:Number = 1 / 30;
      
      public static const §=!>§:int = 10;
      
      public static const §;P§:Boolean = false;
      
      public static const §+h§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §3g§:Boolean = true;
      
      public var § get§:§2N§;
      
      public var §4k§:Sprite;
      
      private var §1%§:b2DebugDraw;
      
      public var mLevelMain:§2!V§;
      
      public var §+!8§:Number;
      
      private var §#?§:Number;
      
      private var §+!-§:int;
      
      public function § e§(param1:§2!V§)
      {
         super();
         this.mLevelMain = param1;
         this.§6!V§();
      }
      
      public function get §+!c§() : int
      {
         return this.§+!-§;
      }
      
      public function get §[,§() : Number
      {
         return this.§#?§;
      }
      
      private function §6!V§() : void
      {
         this.§ get§ = new §2N§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§3g§);
         this.mWorld.§^W§(this.§ get§);
      }
      
      public function clear() : void
      {
         this.mWorld.§^W§(null);
         this.§ get§ = null;
         if(§;P§)
         {
            this.§4k§.graphics.clear();
         }
         this.§4k§ = null;
         this.mWorld.§1M§();
         this.mWorld = null;
      }
      
      public function §,Y§() : void
      {
         if(!§;P§)
         {
         }
      }
      
      public function §^!%§(param1:Number, param2:Number) : void
      {
         if(§;P§)
         {
            this.§4k§.x = -param1;
            this.§4k§.y = -param2;
         }
      }
      
      public function §#-§(param1:Number) : Number
      {
         this.§#?§ = §^!3§;
         var _loc2_:int = this.§&5§(param1);
         if(_loc2_ > §=!>§)
         {
            _loc2_ = §=!>§;
         }
         this.§-]§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§#?§ * 1000;
         }
         return param1;
      }
      
      public function §-]§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§+!8§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§+!-§;
            _loc5_ = 0;
            if(§+h§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§-l§(this.§#?§,10,10);
            this.mWorld.§1M§();
            this.§+!8§ += this.§#?§ * 1000;
            if(§+h§)
            {
               §7!K§.§9!@§.§6!Q§("Box2D",getTimer() - _loc5_);
            }
            this.mLevelMain.§2!8§(this.§#?§);
            _loc4_++;
         }
      }
      
      private function §&5§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§#?§ * 1000;
         }
         return _loc2_;
      }
   }
}
