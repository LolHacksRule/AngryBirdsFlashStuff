package §9T§
{
   import §8!B§.§#! §;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class § !&§
   {
      
      public static const §,!H§:Number = 1 / 30;
      
      public static const §8@§:int = 10;
      
      public static const §2!7§:Boolean = true;
       
      
      public var §8f§:b2World;
      
      private var §=§:Boolean = true;
      
      public var §3§:§+!<§;
      
      public var §@!§:Sprite;
      
      private var §[x§:b2DebugDraw;
      
      private var §=!N§:Boolean = false;
      
      public var §;§:§1r§;
      
      public var §?B§:Number;
      
      private var §]s§:Number;
      
      private var §`p§:int;
      
      public function § !&§(param1:§1r§)
      {
         super();
         this.§;§ = param1;
         this.§@p§();
      }
      
      public function get §=u§() : int
      {
         return this.§`p§;
      }
      
      public function get §>f§() : Number
      {
         return this.§]s§;
      }
      
      private function §@p§() : void
      {
         this.§3§ = new §+!<§(this);
         this.§8f§ = new b2World(new b2Vec2(0,20),this.§=§);
         this.§8f§.SetContactListener(this.§3§);
      }
      
      public function clear() : void
      {
         this.§8f§.SetContactListener(null);
         this.§3§ = null;
         if(this.§=!N§)
         {
            this.§@!§.graphics.clear();
         }
         this.§@!§ = null;
         this.§8f§.ClearForces();
         this.§8f§ = null;
      }
      
      public function §+!;§() : void
      {
         if(this.§=!N§)
         {
            this.§8f§.DrawDebugData();
            this.§@!§.parent.setChildIndex(this.§@!§,this.§@!§.parent.numChildren - 1);
         }
      }
      
      public function §<E§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§=!N§)
         {
            _loc4_ = §#! §.§`'§.box2DToScreen(0,0);
            this.§@!§.x = _loc4_.x;
            this.§@!§.y = _loc4_.y;
            this.§[x§.SetDrawScale(1 / §1r§.§[M§ * param3);
         }
      }
      
      public function §[b§(param1:Number) : Number
      {
         this.§]s§ = §,!H§;
         var _loc2_:int = this.§9J§(param1);
         if(_loc2_ > §8@§)
         {
            _loc2_ = §8@§;
         }
         this.§8!F§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§]s§ * 1000;
         }
         return param1;
      }
      
      public function §8!F§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§?B§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§`p§;
            _loc5_ = 0;
            if(§2!7§)
            {
               _loc5_ = getTimer();
            }
            this.§8f§.Step(this.§]s§,10,10);
            this.§8f§.ClearForces();
            this.§?B§ += this.§]s§ * 1000;
            if(§2!7§)
            {
               §#! §.§92§.§'!6§("Box2D",getTimer() - _loc5_);
            }
            this.§;§.§7!1§(this.§]s§);
            _loc4_++;
         }
      }
      
      private function §9J§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§]s§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §?=§(param1:Boolean) : void
      {
         if(this.§8f§ == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§=!N§)
            {
               if(!this.§@!§ && !this.§[x§)
               {
                  this.§@!§ = new Sprite();
                  this.§[x§ = new b2DebugDraw();
                  this.§[x§.AppendFlags(b2DebugDraw.e_shapeBit);
                  this.§[x§.AppendFlags(b2DebugDraw.e_centerOfMassBit);
                  this.§[x§.AppendFlags(b2DebugDraw.e_jointBit);
                  this.§[x§.SetFillAlpha(0.3);
                  this.§[x§.SetLineThickness(1);
                  this.§@!§.mouseEnabled = false;
                  this.§[x§.SetSprite(this.§@!§);
                  this.§;§.stage.addChild(this.§@!§);
                  this.§8f§.SetDebugDraw(this.§[x§);
               }
            }
         }
         this.§=!N§ = param1;
      }
      
      public function get §?=§() : Boolean
      {
         return this.§=!N§;
      }
      
      public function get §;x§() : b2DebugDraw
      {
         return this.§[x§;
      }
      
      public function §4!5§() : void
      {
         if(this.§[x§)
         {
            this.§@!§.graphics.clear();
         }
      }
   }
}
