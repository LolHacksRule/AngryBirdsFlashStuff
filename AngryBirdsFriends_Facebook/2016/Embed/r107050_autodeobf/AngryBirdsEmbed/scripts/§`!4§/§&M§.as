package §`!4§
{
   import §>!O§.§[+§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §&M§
   {
      
      public static const §>j§:Number = 1 / 30;
      
      public static const §@b§:int = 10;
      
      public static const §5!0§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §@4§:Boolean = true;
      
      public var §>!0§:§'!M§;
      
      public var §1<§:Sprite;
      
      private var §6K§:b2DebugDraw;
      
      private var §@_§:Boolean = false;
      
      public var §#J§:§6l§;
      
      public var §&7§:Number;
      
      private var §1!#§:Number;
      
      private var §3z§:int;
      
      public function §&M§(param1:§6l§)
      {
         super();
         this.§#J§ = param1;
         this.§<!J§();
      }
      
      public function get §!c§() : int
      {
         return this.§3z§;
      }
      
      public function get §?!>§() : Number
      {
         return this.§1!#§;
      }
      
      private function §<!J§() : void
      {
         this.§>!0§ = new §'!M§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§@4§);
         this.mWorld.SetContactListener(this.§>!0§);
      }
      
      public function clear() : void
      {
         this.mWorld.SetContactListener(null);
         this.§>!0§ = null;
         if(this.§@_§)
         {
            this.§1<§.graphics.clear();
         }
         this.§1<§ = null;
         this.mWorld.ClearForces();
         this.mWorld = null;
      }
      
      public function §&G§() : void
      {
         if(this.§@_§)
         {
            this.mWorld.DrawDebugData();
            this.§1<§.parent.setChildIndex(this.§1<§,this.§1<§.parent.numChildren - 1);
         }
      }
      
      public function §!!9§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§@_§)
         {
            _loc4_ = §[+§.§,!&§.§@D§(0,0);
            this.§1<§.x = _loc4_.x;
            this.§1<§.y = _loc4_.y;
            this.§6K§.SetDrawScale(1 / §6l§.§%!<§ * param3);
         }
      }
      
      public function §-!7§(param1:Number) : Number
      {
         this.§1!#§ = §>j§;
         var _loc2_:int = this.§7O§(param1);
         if(_loc2_ > §@b§)
         {
            _loc2_ = §@b§;
         }
         this.§[Q§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§1!#§ * 1000;
         }
         return param1;
      }
      
      public function §[Q§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§&7§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§3z§;
            _loc5_ = 0;
            if(§5!0§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.Step(this.§1!#§,10,10);
            this.mWorld.ClearForces();
            this.§&7§ += this.§1!#§ * 1000;
            if(§5!0§)
            {
               §[+§.§!N§.§+!§("Box2D",getTimer() - _loc5_);
            }
            this.§#J§.§]y§(this.§1!#§);
            _loc4_++;
         }
      }
      
      private function §7O§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§1!#§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §8!'§(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§@_§)
            {
               if(!this.§1<§ && !this.§6K§)
               {
                  this.§1<§ = new Sprite();
                  this.§6K§ = new b2DebugDraw();
                  this.§6K§.AppendFlags(b2DebugDraw.e_shapeBit);
                  this.§6K§.AppendFlags(b2DebugDraw.e_centerOfMassBit);
                  this.§6K§.AppendFlags(b2DebugDraw.e_jointBit);
                  this.§6K§.SetFillAlpha(0.3);
                  this.§6K§.SetLineThickness(1);
                  this.§1<§.mouseEnabled = false;
                  this.§6K§.SetSprite(this.§1<§);
                  this.§#J§.stage.addChild(this.§1<§);
                  this.mWorld.SetDebugDraw(this.§6K§);
               }
            }
         }
         else if(this.§1<§)
         {
            this.§1<§.graphics.clear();
         }
         this.§@_§ = param1;
      }
      
      public function get §8!'§() : Boolean
      {
         return this.§@_§;
      }
      
      public function get §3g§() : b2DebugDraw
      {
         return this.§6K§;
      }
      
      public function §]!7§() : void
      {
         if(this.§6K§)
         {
            this.§1<§.graphics.clear();
         }
      }
   }
}
