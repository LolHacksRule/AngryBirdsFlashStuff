package §#;§
{
   import §`t§.§^?§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §@l§
   {
      
      public static const §[!F§:Number = 1 / 30;
      
      public static const §%!D§:int = 10;
      
      public static const §9!4§:Boolean = true;
       
      
      public var §+!@§:b2World;
      
      private var §^P§:Boolean = true;
      
      public var §4f§:§8!"§;
      
      public var §87§:Sprite;
      
      private var §`!3§:b2DebugDraw;
      
      private var §8R§:Boolean = false;
      
      public var §3!3§:§4!8§;
      
      public var §`o§:Number;
      
      private var §@E§:Number;
      
      private var §1"§:int;
      
      public function §@l§(param1:§4!8§)
      {
         super();
         this.§3!3§ = param1;
         this.§#!-§();
      }
      
      public function get §3D§() : int
      {
         return this.§1"§;
      }
      
      public function get §9!1§() : Number
      {
         return this.§@E§;
      }
      
      private function §#!-§() : void
      {
         this.§4f§ = new §8!"§(this);
         this.§+!@§ = new b2World(new b2Vec2(0,20),this.§^P§);
         this.§+!@§.SetContactListener(this.§4f§);
      }
      
      public function clear() : void
      {
         this.§+!@§.SetContactListener(null);
         this.§4f§ = null;
         if(this.§8R§)
         {
            this.§87§.graphics.clear();
         }
         this.§87§ = null;
         this.§+!@§.ClearForces();
         this.§+!@§ = null;
      }
      
      public function §"!&§() : void
      {
         if(this.§8R§)
         {
            this.§+!@§.DrawDebugData();
            this.§87§.parent.setChildIndex(this.§87§,this.§87§.parent.numChildren - 1);
         }
      }
      
      public function §4D§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§8R§)
         {
            _loc4_ = §^?§.§]!%§.§^!6§(0,0);
            this.§87§.x = _loc4_.x;
            this.§87§.y = _loc4_.y;
            this.§`!3§.SetDrawScale(1 / §4!8§.§5+§ * param3);
         }
      }
      
      public function §3]§(param1:Number) : Number
      {
         this.§@E§ = §[!F§;
         var _loc2_:int = this.§6,§(param1);
         if(_loc2_ > §%!D§)
         {
            _loc2_ = §%!D§;
         }
         this.§57§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§@E§ * 1000;
         }
         return param1;
      }
      
      public function §57§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§`o§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§1"§;
            _loc5_ = 0;
            if(§9!4§)
            {
               _loc5_ = getTimer();
            }
            this.§+!@§.Step(this.§@E§,10,10);
            this.§+!@§.ClearForces();
            this.§`o§ += this.§@E§ * 1000;
            if(§9!4§)
            {
               §^?§.§0b§.§,!1§("Box2D",getTimer() - _loc5_);
            }
            this.§3!3§.§5j§(this.§@E§);
            _loc4_++;
         }
      }
      
      private function §6,§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§@E§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §-k§(param1:Boolean) : void
      {
         if(this.§+!@§ == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§8R§)
            {
               if(!this.§87§ && !this.§`!3§)
               {
                  this.§87§ = new Sprite();
                  this.§`!3§ = new b2DebugDraw();
                  this.§`!3§.AppendFlags(b2DebugDraw.e_shapeBit);
                  this.§`!3§.AppendFlags(b2DebugDraw.e_centerOfMassBit);
                  this.§`!3§.AppendFlags(b2DebugDraw.e_jointBit);
                  this.§`!3§.SetFillAlpha(0.3);
                  this.§`!3§.SetLineThickness(1);
                  this.§87§.mouseEnabled = false;
                  this.§`!3§.SetSprite(this.§87§);
                  this.§3!3§.stage.addChild(this.§87§);
                  this.§+!@§.SetDebugDraw(this.§`!3§);
               }
            }
         }
         this.§8R§ = param1;
      }
      
      public function get §-k§() : Boolean
      {
         return this.§8R§;
      }
      
      public function get § 4§() : b2DebugDraw
      {
         return this.§`!3§;
      }
      
      public function §3R§() : void
      {
         if(this.§`!3§)
         {
            this.§87§.graphics.clear();
         }
      }
   }
}
