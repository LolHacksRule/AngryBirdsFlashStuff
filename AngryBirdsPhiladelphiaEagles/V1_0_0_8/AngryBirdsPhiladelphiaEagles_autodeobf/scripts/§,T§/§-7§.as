package §,T§
{
   import §=z§.§0!E§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §-7§
   {
      
      public static const §4O§:Number = 1 / 30;
      
      public static const §[@§:int = 10;
      
      public static const §9b§:Boolean = true;
       
      
      public var §3!D§:b2World;
      
      private var §&!,§:Boolean = true;
      
      public var §;§:§<B§;
      
      public var §6!5§:Sprite;
      
      private var §@!5§:b2DebugDraw;
      
      private var §10§:Boolean = false;
      
      public var §34§:§[-§;
      
      public var §-! §:Number;
      
      private var §`9§:Number;
      
      private var §,6§:int;
      
      public function §-7§(param1:§[-§)
      {
         super();
         this.§34§ = param1;
         this.§@P§();
      }
      
      public function get §73§() : int
      {
         return this.§,6§;
      }
      
      public function get §"!§() : Number
      {
         return this.§`9§;
      }
      
      private function §@P§() : void
      {
         this.§;§ = new §<B§(this);
         this.§3!D§ = new b2World(new b2Vec2(0,20),this.§&!,§);
         this.§3!D§.SetContactListener(this.§;§);
      }
      
      public function clear() : void
      {
         this.§3!D§.SetContactListener(null);
         this.§;§ = null;
         if(this.§10§)
         {
            this.§6!5§.graphics.clear();
         }
         this.§6!5§ = null;
         this.§3!D§.ClearForces();
         this.§3!D§ = null;
      }
      
      public function §[!$§() : void
      {
         if(this.§10§)
         {
            this.§3!D§.DrawDebugData();
            this.§6!5§.parent.setChildIndex(this.§6!5§,this.§6!5§.parent.numChildren - 1);
         }
      }
      
      public function §>>§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§10§)
         {
            _loc4_ = §0!E§.§9!B§.box2DToScreen(0,0);
            this.§6!5§.x = _loc4_.x;
            this.§6!5§.y = _loc4_.y;
            this.§@!5§.SetDrawScale(1 / §[-§.§;5§ * param3);
         }
      }
      
      public function §@_§(param1:Number) : Number
      {
         this.§`9§ = §4O§;
         var _loc2_:int = this.§-!0§(param1);
         if(_loc2_ > §[@§)
         {
            _loc2_ = §[@§;
         }
         this.§!!?§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§`9§ * 1000;
         }
         return param1;
      }
      
      public function §!!?§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§-! § = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§,6§;
            _loc5_ = 0;
            if(§9b§)
            {
               _loc5_ = getTimer();
            }
            this.§3!D§.Step(this.§`9§,10,10);
            this.§3!D§.ClearForces();
            this.§-! § += this.§`9§ * 1000;
            if(§9b§)
            {
               §0!E§.§5!$§.§`!'§("Box2D",getTimer() - _loc5_);
            }
            this.§34§.§?B§(this.§`9§);
            _loc4_++;
         }
      }
      
      private function §-!0§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§`9§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §&X§(param1:Boolean) : void
      {
         if(this.§3!D§ == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§10§)
            {
               if(!this.§6!5§ && !this.§@!5§)
               {
                  this.§6!5§ = new Sprite();
                  this.§@!5§ = new b2DebugDraw();
                  this.§@!5§.AppendFlags(b2DebugDraw.e_shapeBit);
                  this.§@!5§.AppendFlags(b2DebugDraw.e_centerOfMassBit);
                  this.§@!5§.AppendFlags(b2DebugDraw.e_jointBit);
                  this.§@!5§.SetFillAlpha(0.3);
                  this.§@!5§.SetLineThickness(1);
                  this.§6!5§.mouseEnabled = false;
                  this.§@!5§.SetSprite(this.§6!5§);
                  this.§34§.stage.addChild(this.§6!5§);
                  this.§3!D§.SetDebugDraw(this.§@!5§);
               }
            }
         }
         this.§10§ = param1;
      }
      
      public function get §&X§() : Boolean
      {
         return this.§10§;
      }
      
      public function get §7e§() : b2DebugDraw
      {
         return this.§@!5§;
      }
      
      public function §]6§() : void
      {
         if(this.§@!5§)
         {
            this.§6!5§.graphics.clear();
         }
      }
   }
}
