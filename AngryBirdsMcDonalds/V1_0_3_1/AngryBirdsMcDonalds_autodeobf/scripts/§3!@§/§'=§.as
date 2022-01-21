package §3!@§
{
   import § !Y§.§2#§;
   import §&x§.b2DebugDraw;
   import §&x§.b2World;
   import §0,§.b2Vec2;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §'=§
   {
      
      public static const §+o§:Number = 1 / 30;
      
      public static const §^!_§:int = 10;
      
      public static const §,u§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §?!`§:Boolean = true;
      
      public var §'I§:§3!Q§;
      
      public var §]!^§:Sprite;
      
      private var §9n§:b2DebugDraw;
      
      private var §&3§:Boolean = false;
      
      public var mLevelMain:§ s§;
      
      public var §3!<§:Number;
      
      private var §3!"§:Number;
      
      private var §7Y§:int;
      
      public function §'=§(param1:§ s§)
      {
         super();
         this.mLevelMain = param1;
         this.§8!e§();
      }
      
      public function get §@+§() : int
      {
         return this.§7Y§;
      }
      
      public function get §[,§() : Number
      {
         return this.§3!"§;
      }
      
      private function §8!e§() : void
      {
         this.§'I§ = new §3!Q§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§?!`§);
         this.mWorld.§7!#§(this.§'I§);
      }
      
      public function clear() : void
      {
         this.mWorld.§7!#§(null);
         this.§'I§ = null;
         if(this.§&3§)
         {
            this.§]!^§.graphics.clear();
         }
         this.§]!^§ = null;
         this.mWorld.§@!<§();
         this.mWorld = null;
      }
      
      public function §6!,§() : void
      {
         if(this.§&3§)
         {
            this.mWorld.§'n§();
            this.§]!^§.parent.setChildIndex(this.§]!^§,this.§]!^§.parent.numChildren - 1);
         }
      }
      
      public function §-B§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§&3§)
         {
            _loc4_ = §2#§.§"@§.§12§(0,0);
            this.§]!^§.x = _loc4_.x;
            this.§]!^§.y = _loc4_.y;
            this.§9n§.§5!5§(1 / § s§.§<!h§ * param3);
         }
      }
      
      public function §5g§(param1:Number) : Number
      {
         this.§3!"§ = §+o§;
         var _loc2_:int = this.§<[§(param1);
         if(_loc2_ > §^!_§)
         {
            _loc2_ = §^!_§;
         }
         this.§%$§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§3!"§ * 1000;
         }
         return param1;
      }
      
      public function §%$§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§3!<§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§7Y§;
            _loc5_ = 0;
            if(§,u§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§4s§(this.§3!"§,10,10);
            this.mWorld.§@!<§();
            this.§3!<§ += this.§3!"§ * 1000;
            if(§,u§)
            {
               §2#§.§@!!§.§case§("Box2D",getTimer() - _loc5_);
            }
            this.mLevelMain.handleEngineUpdateStep(this.§3!"§);
            _loc4_++;
         }
      }
      
      private function §<[§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§3!"§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §;e§(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§&3§)
            {
               if(!this.§]!^§ && !this.§9n§)
               {
                  this.§]!^§ = new Sprite();
                  this.§9n§ = new b2DebugDraw();
                  this.§9n§.§%!3§(b2DebugDraw.§#!7§);
                  this.§9n§.§%!3§(b2DebugDraw.§2>§);
                  this.§9n§.§%!3§(b2DebugDraw.§0!b§);
                  this.§9n§.§'d§(0.3);
                  this.§9n§.§1w§(1);
                  this.§]!^§.mouseEnabled = false;
                  this.§9n§.§;!8§(this.§]!^§);
                  this.mLevelMain.stage.addChild(this.§]!^§);
                  this.mWorld.§8f§(this.§9n§);
               }
            }
         }
         this.§&3§ = param1;
      }
      
      public function get §;e§() : Boolean
      {
         return this.§&3§;
      }
      
      public function get §+!V§() : b2DebugDraw
      {
         return this.§9n§;
      }
      
      public function §%Y§() : void
      {
         if(this.§9n§)
         {
            this.§]!^§.graphics.clear();
         }
      }
   }
}
