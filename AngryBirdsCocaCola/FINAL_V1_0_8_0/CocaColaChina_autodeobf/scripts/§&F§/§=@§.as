package §&F§
{
   import §0!b§.§#!=§;
   import §6V§.b2Vec2;
   import §<!L§.b2DebugDraw;
   import §<!L§.b2World;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §=@§
   {
      
      public static const §#!K§:Number = 1 / 30;
      
      public static const §7!1§:int = 10;
      
      public static const §-!J§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §7!8§:Boolean = true;
      
      public var §5!_§:§&T§;
      
      public var §<!A§:Sprite;
      
      private var §&!C§:b2DebugDraw;
      
      private var § B§:Boolean = false;
      
      public var mLevelMain:§>!2§;
      
      public var §#!F§:Number;
      
      private var §4F§:Number;
      
      private var §2!>§:int;
      
      public function §=@§(param1:§>!2§)
      {
         super();
         this.mLevelMain = param1;
         this.§1D§();
      }
      
      public function get §1!_§() : int
      {
         return this.§2!>§;
      }
      
      public function get §[!0§() : Number
      {
         return this.§4F§;
      }
      
      private function §1D§() : void
      {
         this.§5!_§ = new §&T§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§7!8§);
         this.mWorld.§^!c§(this.§5!_§);
      }
      
      public function clear() : void
      {
         this.mWorld.§^!c§(null);
         this.§5!_§ = null;
         if(this.§ B§)
         {
            this.§<!A§.graphics.clear();
         }
         this.§<!A§ = null;
         this.mWorld.§"A§();
         this.mWorld = null;
      }
      
      public function §"!]§() : void
      {
         if(this.§ B§)
         {
            this.mWorld.§0]§();
            this.§<!A§.parent.setChildIndex(this.§<!A§,this.§<!A§.parent.numChildren - 1);
         }
      }
      
      public function §,!Q§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§ B§)
         {
            _loc4_ = §#!=§.§&![§.§!%§(0,0);
            this.§<!A§.x = _loc4_.x;
            this.§<!A§.y = _loc4_.y;
            this.§&!C§.§3B§(1 / §>!2§.§9d§ * param3);
         }
      }
      
      public function § !`§(param1:Number) : Number
      {
         this.§4F§ = §#!K§;
         var _loc2_:int = this.§0§(param1);
         if(_loc2_ > §7!1§)
         {
            _loc2_ = §7!1§;
         }
         this.§4U§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§4F§ * 1000;
         }
         return param1;
      }
      
      public function §4U§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§#!F§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§2!>§;
            _loc5_ = 0;
            if(§-!J§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§31§(this.§4F§,10,10);
            this.mWorld.§"A§();
            this.§#!F§ += this.§4F§ * 1000;
            if(§-!J§)
            {
               §#!=§.§-!'§.§&E§("Box2D",getTimer() - _loc5_);
            }
            this.mLevelMain.§2;§(this.§4F§);
            _loc4_++;
         }
      }
      
      private function §0§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§4F§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §6%§(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§ B§)
            {
               if(!this.§<!A§ && !this.§&!C§)
               {
                  this.§<!A§ = new Sprite();
                  this.§&!C§ = new b2DebugDraw();
                  this.§&!C§.§7!4§(b2DebugDraw.§ A§);
                  this.§&!C§.§7!4§(b2DebugDraw.§[X§);
                  this.§&!C§.§7!4§(b2DebugDraw.§&!B§);
                  this.§&!C§.§>q§(0.3);
                  this.§&!C§.§1!-§(1);
                  this.§<!A§.mouseEnabled = false;
                  this.§&!C§.§<i§(this.§<!A§);
                  this.mLevelMain.stage.addChild(this.§<!A§);
                  this.mWorld.§><§(this.§&!C§);
               }
            }
         }
         this.§ B§ = param1;
      }
      
      public function get §6%§() : Boolean
      {
         return this.§ B§;
      }
      
      public function get §,!L§() : b2DebugDraw
      {
         return this.§&!C§;
      }
      
      public function §@V§() : void
      {
         if(this.§&!C§)
         {
            this.§<!A§.graphics.clear();
         }
      }
   }
}
