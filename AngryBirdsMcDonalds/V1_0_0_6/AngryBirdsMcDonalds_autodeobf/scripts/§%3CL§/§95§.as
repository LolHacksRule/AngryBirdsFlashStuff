package §<L§
{
   import §#M§.§+!Z§;
   import §7!5§.b2DebugDraw;
   import §7!5§.b2World;
   import §@![§.b2Vec2;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §95§
   {
      
      public static const §;E§:Number = 1 / 30;
      
      public static const §"q§:int = 10;
      
      public static const §2[§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §super§:Boolean = true;
      
      public var §7!<§:§'!D§;
      
      public var §8!^§:Sprite;
      
      private var §+s§:b2DebugDraw;
      
      private var §,!O§:Boolean = false;
      
      public var mLevelMain:§!!G§;
      
      public var §5K§:Number;
      
      private var §'!6§:Number;
      
      private var §&!@§:int;
      
      public function §95§(param1:§!!G§)
      {
         super();
         this.mLevelMain = param1;
         this.§"g§();
      }
      
      public function get §,!§() : int
      {
         return this.§&!@§;
      }
      
      public function get §,R§() : Number
      {
         return this.§'!6§;
      }
      
      private function §"g§() : void
      {
         this.§7!<§ = new §'!D§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§super§);
         this.mWorld.§^!]§(this.§7!<§);
      }
      
      public function clear() : void
      {
         this.mWorld.§^!]§(null);
         this.§7!<§ = null;
         if(this.§,!O§)
         {
            this.§8!^§.graphics.clear();
         }
         this.§8!^§ = null;
         this.mWorld.§]!$§();
         this.mWorld = null;
      }
      
      public function §[h§() : void
      {
         if(this.§,!O§)
         {
            this.mWorld.§=c§();
            this.§8!^§.parent.setChildIndex(this.§8!^§,this.§8!^§.parent.numChildren - 1);
         }
      }
      
      public function §=6§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§,!O§)
         {
            _loc4_ = §+!Z§.§?!<§.§"=§(0,0);
            this.§8!^§.x = _loc4_.x;
            this.§8!^§.y = _loc4_.y;
            this.§+s§.§%!e§(1 / §!!G§.§ !E§ * param3);
         }
      }
      
      public function §`y§(param1:Number) : Number
      {
         this.§'!6§ = §;E§;
         var _loc2_:int = this.§[!>§(param1);
         if(_loc2_ > §"q§)
         {
            _loc2_ = §"q§;
         }
         this.§'!5§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§'!6§ * 1000;
         }
         return param1;
      }
      
      public function §'!5§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§5K§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§&!@§;
            _loc5_ = 0;
            if(§2[§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§%!@§(this.§'!6§,10,10);
            this.mWorld.§]!$§();
            this.§5K§ += this.§'!6§ * 1000;
            if(§2[§)
            {
               §+!Z§.§8!B§.§&!R§("Box2D",getTimer() - _loc5_);
            }
            this.mLevelMain.handleEngineUpdateStep(this.§'!6§);
            _loc4_++;
         }
      }
      
      private function §[!>§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§'!6§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §+!#§(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§,!O§)
            {
               if(!this.§8!^§ && !this.§+s§)
               {
                  this.§8!^§ = new Sprite();
                  this.§+s§ = new b2DebugDraw();
                  this.§+s§.§'i§(b2DebugDraw.§>!I§);
                  this.§+s§.§'i§(b2DebugDraw.§"!9§);
                  this.§+s§.§'i§(b2DebugDraw.§7S§);
                  this.§+s§.§<! §(0.3);
                  this.§+s§.§"$§(1);
                  this.§8!^§.mouseEnabled = false;
                  this.§+s§.§-!!§(this.§8!^§);
                  this.mLevelMain.stage.addChild(this.§8!^§);
                  this.mWorld.§,P§(this.§+s§);
               }
            }
         }
         this.§,!O§ = param1;
      }
      
      public function get §+!#§() : Boolean
      {
         return this.§,!O§;
      }
      
      public function get § 9§() : b2DebugDraw
      {
         return this.§+s§;
      }
      
      public function §+!<§() : void
      {
         if(this.§+s§)
         {
            this.§8!^§.graphics.clear();
         }
      }
   }
}
