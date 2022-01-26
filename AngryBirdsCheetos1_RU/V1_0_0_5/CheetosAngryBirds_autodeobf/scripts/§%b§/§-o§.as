package §%b§
{
   import §'d§.§3>§;
   import §+,§.b2Vec2;
   import §[W§.b2DebugDraw;
   import §[W§.b2World;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §-o§
   {
      
      public static const §-!?§:Number = 1 / 30;
      
      public static const §8!T§:int = 10;
      
      public static const §@!>§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §'=§:Boolean = true;
      
      public var §14§:§`5§;
      
      public var §%W§:Sprite;
      
      private var §8N§:b2DebugDraw;
      
      private var §@-§:Boolean = false;
      
      public var §]!8§:§0!Z§;
      
      public var §,D§:Number;
      
      private var §0e§:Number;
      
      private var §4!A§:int;
      
      public function §-o§(param1:§0!Z§)
      {
         super();
         this.§]!8§ = param1;
         this.§@z§();
      }
      
      public function get currentStep() : int
      {
         return this.§4!A§;
      }
      
      public function get §4!X§() : Number
      {
         return this.§0e§;
      }
      
      private function §@z§() : void
      {
         this.§14§ = new §`5§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§'=§);
         this.mWorld.§@!4§(this.§14§);
      }
      
      public function clear() : void
      {
         this.mWorld.§@!4§(null);
         this.§14§ = null;
         if(this.§@-§)
         {
            this.§%W§.graphics.clear();
         }
         this.§%W§ = null;
         this.mWorld.§@u§();
         this.mWorld = null;
      }
      
      public function §1T§() : void
      {
         if(this.§@-§)
         {
            this.mWorld.§6y§();
            this.§%W§.parent.setChildIndex(this.§%W§,this.§%W§.parent.numChildren - 1);
         }
      }
      
      public function §@^§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§@-§)
         {
            _loc4_ = §3>§.§8!$§.§5!§(0,0);
            this.§%W§.x = _loc4_.x;
            this.§%W§.y = _loc4_.y;
            this.§8N§.§+W§(1 / §0!Z§.§+n§ * param3);
         }
      }
      
      public function §#n§(param1:Number) : Number
      {
         this.§0e§ = §-!?§;
         var _loc2_:int = this.§'o§(param1);
         if(_loc2_ > §8!T§)
         {
            _loc2_ = §8!T§;
         }
         this.§,,§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§0e§ * 1000;
         }
         return param1;
      }
      
      public function §,,§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§,D§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§4!A§;
            _loc5_ = 0;
            if(§@!>§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§ 3§(this.§0e§,10,10);
            this.mWorld.§@u§();
            this.§,D§ += this.§0e§ * 1000;
            if(§@!>§)
            {
               §3>§.§%§.§0v§("Box2D",getTimer() - _loc5_);
            }
            this.§]!8§.§'!`§(this.§0e§);
            _loc4_++;
         }
      }
      
      private function §'o§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§0e§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §&!_§(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§@-§)
            {
               if(!this.§%W§ && !this.§8N§)
               {
                  this.§%W§ = new Sprite();
                  this.§8N§ = new b2DebugDraw();
                  this.§8N§.§=!G§(b2DebugDraw.§!!1§);
                  this.§8N§.§=!G§(b2DebugDraw.§5$§);
                  this.§8N§.§=!G§(b2DebugDraw.§,!B§);
                  this.§8N§.§0Z§(0.3);
                  this.§8N§.§0_§(1);
                  this.§%W§.mouseEnabled = false;
                  this.§8N§.§#T§(this.§%W§);
                  this.§]!8§.stage.addChild(this.§%W§);
                  this.mWorld.§>!Q§(this.§8N§);
               }
            }
         }
         this.§@-§ = param1;
      }
      
      public function get §&!_§() : Boolean
      {
         return this.§@-§;
      }
      
      public function get §?!!§() : b2DebugDraw
      {
         return this.§8N§;
      }
      
      public function §,Q§() : void
      {
         if(this.§8N§)
         {
            this.§%W§.graphics.clear();
         }
      }
   }
}
