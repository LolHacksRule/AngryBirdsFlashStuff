package §!!V§
{
   import §"!S§.§"_§;
   import §&!B§.b2Vec2;
   import §[x§.b2DebugDraw;
   import §[x§.b2World;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §^=§
   {
      
      public static const §`M§:Number = 1 / 30;
      
      public static const §&Y§:int = 10;
      
      public static const §41§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §[!K§:Boolean = true;
      
      public var §,]§:§^s§;
      
      public var §3G§:Sprite;
      
      private var §9-§:b2DebugDraw;
      
      private var §;!2§:Boolean = false;
      
      public var §%v§:§&I§;
      
      public var §@m§:Number;
      
      private var §#!I§:Number;
      
      private var §9!4§:int;
      
      public function §^=§(param1:§&I§)
      {
         super();
         this.§%v§ = param1;
         this.§ 8§();
      }
      
      public function get currentStep() : int
      {
         return this.§9!4§;
      }
      
      public function get §[!#§() : Number
      {
         return this.§#!I§;
      }
      
      private function § 8§() : void
      {
         this.§,]§ = new §^s§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§[!K§);
         this.mWorld.§%! §(this.§,]§);
      }
      
      public function clear() : void
      {
         this.mWorld.§%! §(null);
         this.§,]§ = null;
         if(this.§;!2§)
         {
            this.§3G§.graphics.clear();
         }
         this.§3G§ = null;
         this.mWorld.§#!V§();
         this.mWorld = null;
      }
      
      public function §[!B§() : void
      {
         if(this.§;!2§)
         {
            this.mWorld.§;8§();
            this.§3G§.parent.setChildIndex(this.§3G§,this.§3G§.parent.numChildren - 1);
         }
      }
      
      public function §?'§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§;!2§)
         {
            _loc4_ = §"_§.§+!^§.§,;§(0,0);
            this.§3G§.x = _loc4_.x;
            this.§3G§.y = _loc4_.y;
            this.§9-§.§,!2§(1 / §&I§.§]!H§ * param3);
         }
      }
      
      public function §^!C§(param1:Number) : Number
      {
         this.§#!I§ = §`M§;
         var _loc2_:int = this.§@w§(param1);
         if(_loc2_ > §&Y§)
         {
            _loc2_ = §&Y§;
         }
         this.§9!%§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§#!I§ * 1000;
         }
         return param1;
      }
      
      public function §9!%§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§@m§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§9!4§;
            _loc5_ = 0;
            if(§41§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§9w§(this.§#!I§,10,10);
            this.mWorld.§#!V§();
            this.§@m§ += this.§#!I§ * 1000;
            if(§41§)
            {
               §"_§.§&!K§.§0!0§("Box2D",getTimer() - _loc5_);
            }
            this.§%v§.§>!T§(this.§#!I§);
            _loc4_++;
         }
      }
      
      private function §@w§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§#!I§ * 1000;
         }
         return _loc2_;
      }
      
      public function set include(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§;!2§)
            {
               if(!this.§3G§ && !this.§9-§)
               {
                  this.§3G§ = new Sprite();
                  this.§9-§ = new b2DebugDraw();
                  this.§9-§.§45§(b2DebugDraw.§4!"§);
                  this.§9-§.§45§(b2DebugDraw.§?!?§);
                  this.§9-§.§45§(b2DebugDraw.§8%§);
                  this.§9-§.§>e§(0.3);
                  this.§9-§.§8!`§(1);
                  this.§3G§.mouseEnabled = false;
                  this.§9-§.§9L§(this.§3G§);
                  this.§%v§.stage.addChild(this.§3G§);
                  this.mWorld.§--§(this.§9-§);
               }
            }
         }
         this.§;!2§ = param1;
      }
      
      public function get include() : Boolean
      {
         return this.§;!2§;
      }
      
      public function get §;,§() : b2DebugDraw
      {
         return this.§9-§;
      }
      
      public function §@![§() : void
      {
         if(this.§9-§)
         {
            this.§3G§.graphics.clear();
         }
      }
   }
}
