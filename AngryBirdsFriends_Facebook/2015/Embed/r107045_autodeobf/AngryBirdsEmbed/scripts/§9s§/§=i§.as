package §9s§
{
   import §6h§.§[!4§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §=i§
   {
      
      public static const §]1§:Number = 1 / 30;
      
      public static const §]!J§:int = 10;
      
      public static const §%!M§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §7!!§:Boolean = true;
      
      public var §#Z§:§#!6§;
      
      public var §case§:Sprite;
      
      private var §;%§:b2DebugDraw;
      
      private var §=!1§:Boolean = false;
      
      public var §4!I§:§^9§;
      
      public var §5v§:Number;
      
      private var §"!?§:Number;
      
      private var §7X§:int;
      
      public function §=i§(param1:§^9§)
      {
         super();
         this.§4!I§ = param1;
         this.§9!4§();
      }
      
      public function get §82§() : int
      {
         return this.§7X§;
      }
      
      public function get §?G§() : Number
      {
         return this.§"!?§;
      }
      
      private function §9!4§() : void
      {
         this.§#Z§ = new §#!6§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§7!!§);
         this.mWorld.SetContactListener(this.§#Z§);
      }
      
      public function clear() : void
      {
         this.mWorld.SetContactListener(null);
         this.§#Z§ = null;
         if(this.§=!1§)
         {
            this.§case§.graphics.clear();
         }
         this.§case§ = null;
         this.mWorld.ClearForces();
         this.mWorld = null;
      }
      
      public function § !7§() : void
      {
         if(this.§=!1§)
         {
            this.mWorld.DrawDebugData();
            this.§case§.parent.setChildIndex(this.§case§,this.§case§.parent.numChildren - 1);
         }
      }
      
      public function §,P§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§=!1§)
         {
            _loc4_ = §[!4§.§continue§.§"!6§(0,0);
            this.§case§.x = _loc4_.x;
            this.§case§.y = _loc4_.y;
            this.§;%§.SetDrawScale(1 / §^9§.§5T§ * param3);
         }
      }
      
      public function §'F§(param1:Number) : Number
      {
         this.§"!?§ = §]1§;
         var _loc2_:int = this.§]6§(param1);
         if(_loc2_ > §]!J§)
         {
            _loc2_ = §]!J§;
         }
         this.§"K§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§"!?§ * 1000;
         }
         return param1;
      }
      
      public function §"K§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§5v§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§7X§;
            _loc5_ = 0;
            if(§%!M§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.Step(this.§"!?§,10,10);
            this.mWorld.ClearForces();
            this.§5v§ += this.§"!?§ * 1000;
            if(§%!M§)
            {
               §[!4§.§>B§.§8<§("Box2D",getTimer() - _loc5_);
            }
            this.§4!I§.§3!A§(this.§"!?§);
            _loc4_++;
         }
      }
      
      private function §]6§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§"!?§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §6!#§(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§=!1§)
            {
               if(!this.§case§ && !this.§;%§)
               {
                  this.§case§ = new Sprite();
                  this.§;%§ = new b2DebugDraw();
                  this.§;%§.AppendFlags(b2DebugDraw.e_shapeBit);
                  this.§;%§.AppendFlags(b2DebugDraw.e_centerOfMassBit);
                  this.§;%§.AppendFlags(b2DebugDraw.e_jointBit);
                  this.§;%§.SetFillAlpha(0.3);
                  this.§;%§.SetLineThickness(1);
                  this.§case§.mouseEnabled = false;
                  this.§;%§.SetSprite(this.§case§);
                  this.§4!I§.stage.addChild(this.§case§);
                  this.mWorld.SetDebugDraw(this.§;%§);
               }
            }
         }
         else if(this.§case§)
         {
            this.§case§.graphics.clear();
         }
         this.§=!1§ = param1;
      }
      
      public function get §6!#§() : Boolean
      {
         return this.§=!1§;
      }
      
      public function get override() : b2DebugDraw
      {
         return this.§;%§;
      }
      
      public function §`F§() : void
      {
         if(this.§;%§)
         {
            this.§case§.graphics.clear();
         }
      }
   }
}
