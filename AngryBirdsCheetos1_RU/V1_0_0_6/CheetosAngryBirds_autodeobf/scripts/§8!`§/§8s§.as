package §8!`§
{
   import §1!§.§@!Q§;
   import §3q§.b2Vec2;
   import §?0§.b2DebugDraw;
   import §?0§.b2World;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §8s§
   {
      
      public static const §",§:Number = 1 / 30;
      
      public static const §7!_§:int = 10;
      
      public static const §>!&§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §]S§:Boolean = true;
      
      public var §%!§:§17§;
      
      public var §[1§:Sprite;
      
      private var §;!,§:b2DebugDraw;
      
      private var §34§:Boolean = false;
      
      public var §'N§:§4J§;
      
      public var §,!N§:Number;
      
      private var §4o§:Number;
      
      private var §[!+§:int;
      
      public function §8s§(param1:§4J§)
      {
         super();
         this.§'N§ = param1;
         this.§>!F§();
      }
      
      public function get currentStep() : int
      {
         return this.§[!+§;
      }
      
      public function get §^2§() : Number
      {
         return this.§4o§;
      }
      
      private function §>!F§() : void
      {
         this.§%!§ = new §17§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§]S§);
         this.mWorld.§^Y§(this.§%!§);
      }
      
      public function clear() : void
      {
         this.mWorld.§^Y§(null);
         this.§%!§ = null;
         if(this.§34§)
         {
            this.§[1§.graphics.clear();
         }
         this.§[1§ = null;
         this.mWorld.§1Y§();
         this.mWorld = null;
      }
      
      public function §@!;§() : void
      {
         if(this.§34§)
         {
            this.mWorld.§@!N§();
            this.§[1§.parent.setChildIndex(this.§[1§,this.§[1§.parent.numChildren - 1);
         }
      }
      
      public function §<0§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§34§)
         {
            _loc4_ = §@!Q§.§7l§.§<!Y§(0,0);
            this.§[1§.x = _loc4_.x;
            this.§[1§.y = _loc4_.y;
            this.§;!,§.§8i§(1 / §4J§.§<W§ * param3);
         }
      }
      
      public function §#D§(param1:Number) : Number
      {
         this.§4o§ = §",§;
         var _loc2_:int = this.§<!I§(param1);
         if(_loc2_ > §7!_§)
         {
            _loc2_ = §7!_§;
         }
         this.§;=§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§4o§ * 1000;
         }
         return param1;
      }
      
      public function §;=§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§,!N§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§[!+§;
            _loc5_ = 0;
            if(§>!&§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§^!6§(this.§4o§,10,10);
            this.mWorld.§1Y§();
            this.§,!N§ += this.§4o§ * 1000;
            if(§>!&§)
            {
               §@!Q§.§^g§.§+!_§("Box2D",getTimer() - _loc5_);
            }
            this.§'N§.§#Q§(this.§4o§);
            _loc4_++;
         }
      }
      
      private function §<!I§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§4o§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §2u§(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§34§)
            {
               if(!this.§[1§ && !this.§;!,§)
               {
                  this.§[1§ = new Sprite();
                  this.§;!,§ = new b2DebugDraw();
                  this.§;!,§.§0!J§(b2DebugDraw.§@!-§);
                  this.§;!,§.§0!J§(b2DebugDraw.§8'§);
                  this.§;!,§.§0!J§(b2DebugDraw.§^!%§);
                  this.§;!,§.§,k§(0.3);
                  this.§;!,§.§0M§(1);
                  this.§[1§.mouseEnabled = false;
                  this.§;!,§.§-#§(this.§[1§);
                  this.§'N§.stage.addChild(this.§[1§);
                  this.mWorld.§0,§(this.§;!,§);
               }
            }
         }
         this.§34§ = param1;
      }
      
      public function get §2u§() : Boolean
      {
         return this.§34§;
      }
      
      public function get §4!T§() : b2DebugDraw
      {
         return this.§;!,§;
      }
      
      public function §"-§() : void
      {
         if(this.§;!,§)
         {
            this.§[1§.graphics.clear();
         }
      }
   }
}
