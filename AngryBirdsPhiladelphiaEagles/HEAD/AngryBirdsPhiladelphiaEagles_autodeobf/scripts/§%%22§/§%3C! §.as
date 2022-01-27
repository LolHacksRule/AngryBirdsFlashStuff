package §%"§
{
   import §<!F§.§5!+§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §<! §
   {
      
      public static const §8!N§:Number = 1 / 30;
      
      public static const §8!?§:int = 10;
      
      public static const §'!O§:Boolean = true;
       
      
      public var §``§:b2World;
      
      private var §#9§:Boolean = true;
      
      public var §?'§:§[u§;
      
      public var §]Z§:Sprite;
      
      private var §1v§:b2DebugDraw;
      
      private var §=`§:Boolean = false;
      
      public var §-H§:§ do§;
      
      public var §+!A§:Number;
      
      private var §"g§:Number;
      
      private var §do§:int;
      
      public function §<! §(param1:§ do§)
      {
         super();
         this.§-H§ = param1;
         this.§5t§();
      }
      
      public function get §5-§() : int
      {
         return this.§do§;
      }
      
      public function get each() : Number
      {
         return this.§"g§;
      }
      
      private function §5t§() : void
      {
         this.§?'§ = new §[u§(this);
         this.§``§ = new b2World(new b2Vec2(0,20),this.§#9§);
         this.§``§.SetContactListener(this.§?'§);
      }
      
      public function clear() : void
      {
         this.§``§.SetContactListener(null);
         this.§?'§ = null;
         if(this.§=`§)
         {
            this.§]Z§.graphics.clear();
         }
         this.§]Z§ = null;
         this.§``§.ClearForces();
         this.§``§ = null;
      }
      
      public function §0h§() : void
      {
         if(this.§=`§)
         {
            this.§``§.DrawDebugData();
            this.§]Z§.parent.setChildIndex(this.§]Z§,this.§]Z§.parent.numChildren - 1);
         }
      }
      
      public function §%!H§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§=`§)
         {
            _loc4_ = §5!+§.§6!§.box2DToScreen(0,0);
            this.§]Z§.x = _loc4_.x;
            this.§]Z§.y = _loc4_.y;
            this.§1v§.SetDrawScale(1 / § do§.§^!I§ * param3);
         }
      }
      
      public function §%Y§(param1:Number) : Number
      {
         this.§"g§ = §8!N§;
         var _loc2_:int = this.§&+§(param1);
         if(_loc2_ > §8!?§)
         {
            _loc2_ = §8!?§;
         }
         this.§&]§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§"g§ * 1000;
         }
         return param1;
      }
      
      public function §&]§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§+!A§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§do§;
            _loc5_ = 0;
            if(§'!O§)
            {
               _loc5_ = getTimer();
            }
            this.§``§.Step(this.§"g§,10,10);
            this.§``§.ClearForces();
            this.§+!A§ += this.§"g§ * 1000;
            if(§'!O§)
            {
               §5!+§.§"!I§.§0!9§("Box2D",getTimer() - _loc5_);
            }
            this.§-H§.§3&§(this.§"g§);
            _loc4_++;
         }
      }
      
      private function §&+§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§"g§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §=!I§(param1:Boolean) : void
      {
         if(this.§``§ == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§=`§)
            {
               if(!this.§]Z§ && !this.§1v§)
               {
                  this.§]Z§ = new Sprite();
                  this.§1v§ = new b2DebugDraw();
                  this.§1v§.AppendFlags(b2DebugDraw.e_shapeBit);
                  this.§1v§.AppendFlags(b2DebugDraw.e_centerOfMassBit);
                  this.§1v§.AppendFlags(b2DebugDraw.e_jointBit);
                  this.§1v§.SetFillAlpha(0.3);
                  this.§1v§.SetLineThickness(1);
                  this.§]Z§.mouseEnabled = false;
                  this.§1v§.SetSprite(this.§]Z§);
                  this.§-H§.stage.addChild(this.§]Z§);
                  this.§``§.SetDebugDraw(this.§1v§);
               }
            }
         }
         this.§=`§ = param1;
      }
      
      public function get §=!I§() : Boolean
      {
         return this.§=`§;
      }
      
      public function get § !'§() : b2DebugDraw
      {
         return this.§1v§;
      }
      
      public function §9!&§() : void
      {
         if(this.§1v§)
         {
            this.§]Z§.graphics.clear();
         }
      }
   }
}
