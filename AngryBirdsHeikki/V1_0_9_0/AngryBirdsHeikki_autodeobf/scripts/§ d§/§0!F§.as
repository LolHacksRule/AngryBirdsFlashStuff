package § d§
{
   import § !_§.b2Vec2;
   import §>!F§.§9!Z§;
   import §^!Z§.b2DebugDraw;
   import §^!Z§.b2World;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §0!F§
   {
      
      public static const §+o§:Number = 1 / 30;
      
      public static const §%!c§:int = 10;
      
      public static const §6b§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §;!0§:Boolean = true;
      
      public var §<!C§:§;!I§;
      
      public var §&k§:Sprite;
      
      private var §<!J§:b2DebugDraw;
      
      private var §0!O§:Boolean = false;
      
      public var §"2§:§'!"§;
      
      public var §6z§:Number;
      
      private var §]!Y§:Number;
      
      private var §`!M§:int;
      
      public function §0!F§(param1:§'!"§)
      {
         super();
         this.§"2§ = param1;
         this.§ §();
      }
      
      public function get currentStep() : int
      {
         return this.§`!M§;
      }
      
      public function get §?!$§() : Number
      {
         return this.§]!Y§;
      }
      
      private function § §() : void
      {
         this.§<!C§ = new §;!I§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§;!0§);
         this.mWorld.§9!L§(this.§<!C§);
      }
      
      public function clear() : void
      {
         this.mWorld.§9!L§(null);
         this.§<!C§ = null;
         if(this.§0!O§)
         {
            this.§&k§.graphics.clear();
         }
         this.§&k§ = null;
         this.mWorld.§>!"§();
         this.mWorld = null;
      }
      
      public function §6§() : void
      {
         if(this.§0!O§)
         {
            this.mWorld.§^e§();
            this.§&k§.parent.setChildIndex(this.§&k§,this.§&k§.parent.numChildren - 1);
         }
      }
      
      public function §9!J§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§0!O§)
         {
            _loc4_ = §9!Z§.§5!$§.§<1§(0,0);
            this.§&k§.x = _loc4_.x;
            this.§&k§.y = _loc4_.y;
            this.§<!J§.§'X§(1 / §'!"§.§#3§ * param3);
         }
      }
      
      public function §2r§(param1:Number) : Number
      {
         this.§]!Y§ = §+o§;
         var _loc2_:int = this.§%!U§(param1);
         if(_loc2_ > §%!c§)
         {
            _loc2_ = §%!c§;
         }
         this.§6!9§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§]!Y§ * 1000;
         }
         return param1;
      }
      
      public function §6!9§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§6z§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§`!M§;
            _loc5_ = 0;
            if(§6b§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§@!D§(this.§]!Y§,10,10);
            this.mWorld.§>!"§();
            this.§6z§ += this.§]!Y§ * 1000;
            if(§6b§)
            {
               §9!Z§.§`!1§.§#!§("Box2D",getTimer() - _loc5_);
            }
            this.§"2§.§<!a§(this.§]!Y§);
            _loc4_++;
         }
      }
      
      private function §%!U§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§]!Y§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §-W§(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§0!O§)
            {
               if(!this.§&k§ && !this.§<!J§)
               {
                  this.§&k§ = new Sprite();
                  this.§<!J§ = new b2DebugDraw();
                  this.§<!J§.§>!W§(b2DebugDraw.§#!9§);
                  this.§<!J§.§>!W§(b2DebugDraw.§=;§);
                  this.§<!J§.§>!W§(b2DebugDraw.§=!`§);
                  this.§<!J§.§8!a§(0.3);
                  this.§<!J§.§>i§(1);
                  this.§&k§.mouseEnabled = false;
                  this.§<!J§.§?!+§(this.§&k§);
                  this.§"2§.stage.addChild(this.§&k§);
                  this.mWorld.§;Z§(this.§<!J§);
               }
            }
         }
         this.§0!O§ = param1;
      }
      
      public function get §-W§() : Boolean
      {
         return this.§0!O§;
      }
      
      public function get §?R§() : b2DebugDraw
      {
         return this.§<!J§;
      }
      
      public function §9d§() : void
      {
         if(this.§<!J§)
         {
            this.§&k§.graphics.clear();
         }
      }
   }
}
