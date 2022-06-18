package §;'§
{
   import §#]§.§'5§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §;,§
   {
      
      public static const §^1§:Number = 1 / 30;
      
      public static const §5F§:int = 10;
      
      public static const §28§:Boolean = true;
       
      
      public var § k§:b2World;
      
      private var §,$§:Boolean = true;
      
      public var §&=§:§&+§;
      
      public var §[!+§:Sprite;
      
      private var §!"§:b2DebugDraw;
      
      private var §7§:Boolean = false;
      
      public var §2I§:§?!D§;
      
      public var §+A§:Number;
      
      private var §4!?§:Number;
      
      private var §[2§:int;
      
      public function §;,§(param1:§?!D§)
      {
         super();
         this.§2I§ = param1;
         this.§=M§();
      }
      
      public function get §@e§() : int
      {
         return this.§[2§;
      }
      
      public function get §,;§() : Number
      {
         return this.§4!?§;
      }
      
      private function §=M§() : void
      {
         this.§&=§ = new §&+§(this);
         this.§ k§ = new b2World(new b2Vec2(0,20),this.§,$§);
         this.§ k§.SetContactListener(this.§&=§);
      }
      
      public function clear() : void
      {
         this.§ k§.SetContactListener(null);
         this.§&=§ = null;
         if(this.§7§)
         {
            this.§[!+§.graphics.clear();
         }
         this.§[!+§ = null;
         this.§ k§.ClearForces();
         this.§ k§ = null;
      }
      
      public function §5!;§() : void
      {
         if(this.§7§)
         {
            this.§ k§.DrawDebugData();
            this.§[!+§.parent.setChildIndex(this.§[!+§,this.§[!+§.parent.numChildren - 1);
         }
      }
      
      public function §+!>§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§7§)
         {
            _loc4_ = §'5§.§^;§.§!2§(0,0);
            this.§[!+§.x = _loc4_.x;
            this.§[!+§.y = _loc4_.y;
            this.§!"§.SetDrawScale(1 / §?!D§.§@!I§ * param3);
         }
      }
      
      public function §#F§(param1:Number) : Number
      {
         this.§4!?§ = §^1§;
         var _loc2_:int = this.§1!=§(param1);
         if(_loc2_ > §5F§)
         {
            _loc2_ = §5F§;
         }
         this.§7!9§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§4!?§ * 1000;
         }
         return param1;
      }
      
      public function §7!9§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§+A§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§[2§;
            _loc5_ = 0;
            if(§28§)
            {
               _loc5_ = getTimer();
            }
            this.§ k§.Step(this.§4!?§,10,10);
            this.§ k§.ClearForces();
            this.§+A§ += this.§4!?§ * 1000;
            if(§28§)
            {
               §'5§.§#!>§.§;%§("Box2D",getTimer() - _loc5_);
            }
            this.§2I§.§5D§(this.§4!?§);
            _loc4_++;
         }
      }
      
      private function §1!=§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§4!?§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §7!§(param1:Boolean) : void
      {
         if(this.§ k§ == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§7§)
            {
               if(!this.§[!+§ && !this.§!"§)
               {
                  this.§[!+§ = new Sprite();
                  this.§!"§ = new b2DebugDraw();
                  this.§!"§.AppendFlags(b2DebugDraw.e_shapeBit);
                  this.§!"§.AppendFlags(b2DebugDraw.e_centerOfMassBit);
                  this.§!"§.AppendFlags(b2DebugDraw.e_jointBit);
                  this.§!"§.SetFillAlpha(0.3);
                  this.§!"§.SetLineThickness(1);
                  this.§[!+§.mouseEnabled = false;
                  this.§!"§.SetSprite(this.§[!+§);
                  this.§2I§.stage.addChild(this.§[!+§);
                  this.§ k§.SetDebugDraw(this.§!"§);
               }
            }
         }
         else if(this.§[!+§)
         {
            this.§[!+§.graphics.clear();
         }
         this.§7§ = param1;
      }
      
      public function get §7!§() : Boolean
      {
         return this.§7§;
      }
      
      public function get §=n§() : b2DebugDraw
      {
         return this.§!"§;
      }
      
      public function § !-§() : void
      {
         if(this.§!"§)
         {
            this.§[!+§.graphics.clear();
         }
      }
   }
}
