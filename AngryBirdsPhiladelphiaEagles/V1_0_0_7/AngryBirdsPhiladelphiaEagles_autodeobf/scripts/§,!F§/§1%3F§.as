package §,!F§
{
   import §"^§.§9=§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §1?§
   {
      
      public static const §5"§:Number = 1 / 30;
      
      public static const §9!P§:int = 10;
      
      public static const §+!,§:Boolean = true;
       
      
      public var §@!1§:b2World;
      
      private var §#!L§:Boolean = true;
      
      public var §&+§:§1n§;
      
      public var §2=§:Sprite;
      
      private var §>O§:b2DebugDraw;
      
      private var §0!O§:Boolean = false;
      
      public var §&§:§#§;
      
      public var §8D§:Number;
      
      private var §>!J§:Number;
      
      private var §7!%§:int;
      
      public function §1?§(param1:§#§)
      {
         super();
         this.§&§ = param1;
         this.§#t§();
      }
      
      public function get §>W§() : int
      {
         return this.§7!%§;
      }
      
      public function get §;0§() : Number
      {
         return this.§>!J§;
      }
      
      private function §#t§() : void
      {
         this.§&+§ = new §1n§(this);
         this.§@!1§ = new b2World(new b2Vec2(0,20),this.§#!L§);
         this.§@!1§.SetContactListener(this.§&+§);
      }
      
      public function clear() : void
      {
         this.§@!1§.SetContactListener(null);
         this.§&+§ = null;
         if(this.§0!O§)
         {
            this.§2=§.graphics.clear();
         }
         this.§2=§ = null;
         this.§@!1§.ClearForces();
         this.§@!1§ = null;
      }
      
      public function §52§() : void
      {
         if(this.§0!O§)
         {
            this.§@!1§.DrawDebugData();
            this.§2=§.parent.setChildIndex(this.§2=§,this.§2=§.parent.numChildren - 1);
         }
      }
      
      public function §3]§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§0!O§)
         {
            _loc4_ = §9=§.§<!@§.box2DToScreen(0,0);
            this.§2=§.x = _loc4_.x;
            this.§2=§.y = _loc4_.y;
            this.§>O§.SetDrawScale(1 / §#§.§67§ * param3);
         }
      }
      
      public function §;!J§(param1:Number) : Number
      {
         this.§>!J§ = §5"§;
         var _loc2_:int = this.§>!"§(param1);
         if(_loc2_ > §9!P§)
         {
            _loc2_ = §9!P§;
         }
         this.§5>§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§>!J§ * 1000;
         }
         return param1;
      }
      
      public function §5>§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§8D§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§7!%§;
            _loc5_ = 0;
            if(§+!,§)
            {
               _loc5_ = getTimer();
            }
            this.§@!1§.Step(this.§>!J§,10,10);
            this.§@!1§.ClearForces();
            this.§8D§ += this.§>!J§ * 1000;
            if(§+!,§)
            {
               §9=§.§1u§.§71§("Box2D",getTimer() - _loc5_);
            }
            this.§&§.§0L§(this.§>!J§);
            _loc4_++;
         }
      }
      
      private function §>!"§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§>!J§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §=Q§(param1:Boolean) : void
      {
         if(this.§@!1§ == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§0!O§)
            {
               if(!this.§2=§ && !this.§>O§)
               {
                  this.§2=§ = new Sprite();
                  this.§>O§ = new b2DebugDraw();
                  this.§>O§.AppendFlags(b2DebugDraw.e_shapeBit);
                  this.§>O§.AppendFlags(b2DebugDraw.e_centerOfMassBit);
                  this.§>O§.AppendFlags(b2DebugDraw.e_jointBit);
                  this.§>O§.SetFillAlpha(0.3);
                  this.§>O§.SetLineThickness(1);
                  this.§2=§.mouseEnabled = false;
                  this.§>O§.SetSprite(this.§2=§);
                  this.§&§.stage.addChild(this.§2=§);
                  this.§@!1§.SetDebugDraw(this.§>O§);
               }
            }
         }
         this.§0!O§ = param1;
      }
      
      public function get §=Q§() : Boolean
      {
         return this.§0!O§;
      }
      
      public function get §!d§() : b2DebugDraw
      {
         return this.§>O§;
      }
      
      public function §&V§() : void
      {
         if(this.§>O§)
         {
            this.§2=§.graphics.clear();
         }
      }
   }
}
