package §4!-§
{
   import §&b§.§[F§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §[&§
   {
      
      public static const §8Z§:Number = 1 / 30;
      
      public static const §?@§:int = 10;
      
      public static const §+!G§:Boolean = true;
       
      
      public var §4=§:b2World;
      
      private var §,!§:Boolean = true;
      
      public var §7+§:§+y§;
      
      public var §8X§:Sprite;
      
      private var §`!6§:b2DebugDraw;
      
      private var §=>§:Boolean = false;
      
      public var §'!8§:§%o§;
      
      public var §&!7§:Number;
      
      private var §[x§:Number;
      
      private var §&0§:int;
      
      public function §[&§(param1:§%o§)
      {
         super();
         this.§'!8§ = param1;
         this.§>!+§();
      }
      
      public function get §12§() : int
      {
         return this.§&0§;
      }
      
      public function get §;!H§() : Number
      {
         return this.§[x§;
      }
      
      private function §>!+§() : void
      {
         this.§7+§ = new §+y§(this);
         this.§4=§ = new b2World(new b2Vec2(0,20),this.§,!§);
         this.§4=§.SetContactListener(this.§7+§);
      }
      
      public function clear() : void
      {
         this.§4=§.SetContactListener(null);
         this.§7+§ = null;
         if(this.§=>§)
         {
            this.§8X§.graphics.clear();
         }
         this.§8X§ = null;
         this.§4=§.ClearForces();
         this.§4=§ = null;
      }
      
      public function §=!>§() : void
      {
         if(this.§=>§)
         {
            this.§4=§.DrawDebugData();
            this.§8X§.parent.setChildIndex(this.§8X§,this.§8X§.parent.numChildren - 1);
         }
      }
      
      public function §`2§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§=>§)
         {
            _loc4_ = §[F§.§9u§.box2DToScreen(0,0);
            this.§8X§.x = _loc4_.x;
            this.§8X§.y = _loc4_.y;
            this.§`!6§.SetDrawScale(1 / §%o§.§]!?§ * param3);
         }
      }
      
      public function §+!4§(param1:Number) : Number
      {
         this.§[x§ = §8Z§;
         var _loc2_:int = this.§9i§(param1);
         if(_loc2_ > §?@§)
         {
            _loc2_ = §?@§;
         }
         this.§6Z§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§[x§ * 1000;
         }
         return param1;
      }
      
      public function §6Z§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§&!7§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§&0§;
            _loc5_ = 0;
            if(§+!G§)
            {
               _loc5_ = getTimer();
            }
            this.§4=§.Step(this.§[x§,10,10);
            this.§4=§.ClearForces();
            this.§&!7§ += this.§[x§ * 1000;
            if(§+!G§)
            {
               §[F§.§1L§.§#M§("Box2D",getTimer() - _loc5_);
            }
            this.§'!8§.§[A§(this.§[x§);
            _loc4_++;
         }
      }
      
      private function §9i§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§[x§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §5!&§(param1:Boolean) : void
      {
         if(this.§4=§ == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§=>§)
            {
               if(!this.§8X§ && !this.§`!6§)
               {
                  this.§8X§ = new Sprite();
                  this.§`!6§ = new b2DebugDraw();
                  this.§`!6§.AppendFlags(b2DebugDraw.e_shapeBit);
                  this.§`!6§.AppendFlags(b2DebugDraw.e_centerOfMassBit);
                  this.§`!6§.AppendFlags(b2DebugDraw.e_jointBit);
                  this.§`!6§.SetFillAlpha(0.3);
                  this.§`!6§.SetLineThickness(1);
                  this.§8X§.mouseEnabled = false;
                  this.§`!6§.SetSprite(this.§8X§);
                  this.§'!8§.stage.addChild(this.§8X§);
                  this.§4=§.SetDebugDraw(this.§`!6§);
               }
            }
         }
         this.§=>§ = param1;
      }
      
      public function get §5!&§() : Boolean
      {
         return this.§=>§;
      }
      
      public function get §4!9§() : b2DebugDraw
      {
         return this.§`!6§;
      }
      
      public function §?<§() : void
      {
         if(this.§`!6§)
         {
            this.§8X§.graphics.clear();
         }
      }
   }
}
