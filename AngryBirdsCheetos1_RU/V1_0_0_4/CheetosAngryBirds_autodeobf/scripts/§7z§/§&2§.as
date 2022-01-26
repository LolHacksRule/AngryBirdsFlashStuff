package §7z§
{
   import §&i§.b2DebugDraw;
   import §&i§.b2World;
   import §5!K§.b2Vec2;
   import §;!X§.§7`§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §&2§
   {
      
      public static const §>2§:Number = 1 / 30;
      
      public static const §-!O§:int = 10;
      
      public static const §3x§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §<L§:Boolean = true;
      
      public var §8_§:§79§;
      
      public var §<!5§:Sprite;
      
      private var §,[§:b2DebugDraw;
      
      private var §^!8§:Boolean = false;
      
      public var §^'§:§]!-§;
      
      public var §'y§:Number;
      
      private var §>!G§:Number;
      
      private var §6!>§:int;
      
      public function §&2§(param1:§]!-§)
      {
         super();
         this.§^'§ = param1;
         this.§class§();
      }
      
      public function get currentStep() : int
      {
         return this.§6!>§;
      }
      
      public function get § F§() : Number
      {
         return this.§>!G§;
      }
      
      private function §class§() : void
      {
         this.§8_§ = new §79§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§<L§);
         this.mWorld.§4G§(this.§8_§);
      }
      
      public function clear() : void
      {
         this.mWorld.§4G§(null);
         this.§8_§ = null;
         if(this.§^!8§)
         {
            this.§<!5§.graphics.clear();
         }
         this.§<!5§ = null;
         this.mWorld.§=m§();
         this.mWorld = null;
      }
      
      public function §1k§() : void
      {
         if(this.§^!8§)
         {
            this.mWorld.§&r§();
            this.§<!5§.parent.setChildIndex(this.§<!5§,this.§<!5§.parent.numChildren - 1);
         }
      }
      
      public function §4!B§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§^!8§)
         {
            _loc4_ = §7`§.§2'§.§8P§(0,0);
            this.§<!5§.x = _loc4_.x;
            this.§<!5§.y = _loc4_.y;
            this.§,[§.§+n§(1 / §]!-§.§>C§ * param3);
         }
      }
      
      public function §'!_§(param1:Number) : Number
      {
         this.§>!G§ = §>2§;
         var _loc2_:int = this.§>3§(param1);
         if(_loc2_ > §-!O§)
         {
            _loc2_ = §-!O§;
         }
         this.§&!?§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§>!G§ * 1000;
         }
         return param1;
      }
      
      public function §&!?§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§'y§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§6!>§;
            _loc5_ = 0;
            if(§3x§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§2p§(this.§>!G§,10,10);
            this.mWorld.§=m§();
            this.§'y§ += this.§>!G§ * 1000;
            if(§3x§)
            {
               §7`§.§#x§.§4B§("Box2D",getTimer() - _loc5_);
            }
            this.§^'§.§,X§(this.§>!G§);
            _loc4_++;
         }
      }
      
      private function §>3§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§>!G§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §[!1§(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§^!8§)
            {
               if(!this.§<!5§ && !this.§,[§)
               {
                  this.§<!5§ = new Sprite();
                  this.§,[§ = new b2DebugDraw();
                  this.§,[§.§5t§(b2DebugDraw.§,!_§);
                  this.§,[§.§5t§(b2DebugDraw.§4!G§);
                  this.§,[§.§5t§(b2DebugDraw.§"h§);
                  this.§,[§.§ !N§(0.3);
                  this.§,[§.§4D§(1);
                  this.§<!5§.mouseEnabled = false;
                  this.§,[§.§"!J§(this.§<!5§);
                  this.§^'§.stage.addChild(this.§<!5§);
                  this.mWorld.§=!Y§(this.§,[§);
               }
            }
         }
         this.§^!8§ = param1;
      }
      
      public function get §[!1§() : Boolean
      {
         return this.§^!8§;
      }
      
      public function get §0!?§() : b2DebugDraw
      {
         return this.§,[§;
      }
      
      public function §<!O§() : void
      {
         if(this.§,[§)
         {
            this.§<!5§.graphics.clear();
         }
      }
   }
}
