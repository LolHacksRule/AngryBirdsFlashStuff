package §-A§
{
   import §&!+§.b2Vec2;
   import §4!&§.b2DebugDraw;
   import §4!&§.b2World;
   import §@!W§.§8!W§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §]!D§
   {
      
      public static const §+-§:Number = 1 / 30;
      
      public static const §<m§:int = 10;
      
      public static const §[M§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §1!T§:Boolean = true;
      
      public var §@>§:§^!D§;
      
      public var override:Sprite;
      
      private var §6!"§:b2DebugDraw;
      
      private var §-!`§:Boolean = false;
      
      public var §return§:§%9§;
      
      public var §&h§:Number;
      
      private var §32§:Number;
      
      private var §^6§:int;
      
      public function §]!D§(param1:§%9§)
      {
         super();
         this.§return§ = param1;
         this.§0!Z§();
      }
      
      public function get currentStep() : int
      {
         return this.§^6§;
      }
      
      public function get §"!X§() : Number
      {
         return this.§32§;
      }
      
      private function §0!Z§() : void
      {
         this.§@>§ = new §^!D§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§1!T§);
         this.mWorld.§'!,§(this.§@>§);
      }
      
      public function clear() : void
      {
         this.mWorld.§'!,§(null);
         this.§@>§ = null;
         if(this.§-!`§)
         {
            this.override.graphics.clear();
         }
         this.override = null;
         this.mWorld.§=!D§();
         this.mWorld = null;
      }
      
      public function §^p§() : void
      {
         if(this.§-!`§)
         {
            this.mWorld.§&p§();
            this.override.parent.setChildIndex(this.override,this.override.parent.numChildren - 1);
         }
      }
      
      public function §"0§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§-!`§)
         {
            _loc4_ = §8!W§.§=X§.§<8§(0,0);
            this.override.x = _loc4_.x;
            this.override.y = _loc4_.y;
            this.§6!"§.§?!'§(1 / §%9§.§1[§ * param3);
         }
      }
      
      public function §1-§(param1:Number) : Number
      {
         this.§32§ = §+-§;
         var _loc2_:int = this.§8!#§(param1);
         if(_loc2_ > §<m§)
         {
            _loc2_ = §<m§;
         }
         this.§`!Y§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§32§ * 1000;
         }
         return param1;
      }
      
      public function §`!Y§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§&h§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§^6§;
            _loc5_ = 0;
            if(§[M§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§&!T§(this.§32§,10,10);
            this.mWorld.§=!D§();
            this.§&h§ += this.§32§ * 1000;
            if(§[M§)
            {
               §8!W§.§0!4§.§,![§("Box2D",getTimer() - _loc5_);
            }
            this.§return§.§]E§(this.§32§);
            _loc4_++;
         }
      }
      
      private function §8!#§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§32§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §`n§(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§-!`§)
            {
               if(!this.override && !this.§6!"§)
               {
                  this.override = new Sprite();
                  this.§6!"§ = new b2DebugDraw();
                  this.§6!"§.§"W§(b2DebugDraw.§53§);
                  this.§6!"§.§"W§(b2DebugDraw.§=[§);
                  this.§6!"§.§"W§(b2DebugDraw.§#!1§);
                  this.§6!"§.§[O§(0.3);
                  this.§6!"§.§[C§(1);
                  this.override.mouseEnabled = false;
                  this.§6!"§.§9+§(this.override);
                  this.§return§.stage.addChild(this.override);
                  this.mWorld.§72§(this.§6!"§);
               }
            }
         }
         this.§-!`§ = param1;
      }
      
      public function get §`n§() : Boolean
      {
         return this.§-!`§;
      }
      
      public function get §,8§() : b2DebugDraw
      {
         return this.§6!"§;
      }
      
      public function §&3§() : void
      {
         if(this.§6!"§)
         {
            this.override.graphics.clear();
         }
      }
   }
}
