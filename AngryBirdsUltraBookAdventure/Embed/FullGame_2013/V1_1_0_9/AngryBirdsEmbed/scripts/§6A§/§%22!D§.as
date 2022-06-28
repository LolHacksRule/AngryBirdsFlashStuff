package §6A§
{
   import §5!L§.§=w§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §"!D§
   {
      
      public static const §&j§:Number = 1 / 30;
      
      public static const §#O§:int = 10;
      
      public static const §8!C§:Boolean = true;
       
      
      public var §[!C§:b2World;
      
      private var §&!C§:Boolean = true;
      
      public var §>!K§:§^q§;
      
      public var §<!"§:Sprite;
      
      private var §7!B§:b2DebugDraw;
      
      private var §&K§:Boolean = false;
      
      public var §?V§:§ !§;
      
      public var §case§:Number;
      
      private var §<$§:Number;
      
      private var §,8§:int;
      
      public function §"!D§(param1:§ !§)
      {
         super();
         this.§?V§ = param1;
         this.§2a§();
      }
      
      public function get §9p§() : int
      {
         return this.§,8§;
      }
      
      public function get §-!8§() : Number
      {
         return this.§<$§;
      }
      
      private function §2a§() : void
      {
         this.§>!K§ = new §^q§(this);
         this.§[!C§ = new b2World(new b2Vec2(0,20),this.§&!C§);
         this.§[!C§.SetContactListener(this.§>!K§);
      }
      
      public function clear() : void
      {
         this.§[!C§.SetContactListener(null);
         this.§>!K§ = null;
         if(this.§&K§)
         {
            this.§<!"§.graphics.clear();
         }
         this.§<!"§ = null;
         this.§[!C§.ClearForces();
         this.§[!C§ = null;
      }
      
      public function §<!<§() : void
      {
         if(this.§&K§)
         {
            this.§[!C§.DrawDebugData();
            this.§<!"§.parent.setChildIndex(this.§<!"§,this.§<!"§.parent.numChildren - 1);
         }
      }
      
      public function §?!<§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§&K§)
         {
            _loc4_ = §=w§.§ o§.§6!"§(0,0);
            this.§<!"§.x = _loc4_.x;
            this.§<!"§.y = _loc4_.y;
            this.§7!B§.SetDrawScale(1 / § !§.§`J§ * param3);
         }
      }
      
      public function §[+§(param1:Number) : Number
      {
         this.§<$§ = §&j§;
         var _loc2_:int = this.§5i§(param1);
         if(_loc2_ > §#O§)
         {
            _loc2_ = §#O§;
         }
         this.§>!0§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§<$§ * 1000;
         }
         return param1;
      }
      
      public function §>!0§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§case§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§,8§;
            _loc5_ = 0;
            if(§8!C§)
            {
               _loc5_ = getTimer();
            }
            this.§[!C§.Step(this.§<$§,10,10);
            this.§[!C§.ClearForces();
            this.§case§ += this.§<$§ * 1000;
            if(§8!C§)
            {
               §=w§.§?!L§.§!n§("Box2D",getTimer() - _loc5_);
            }
            this.§?V§.§[,§(this.§<$§);
            _loc4_++;
         }
      }
      
      private function §5i§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§<$§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §^!&§(param1:Boolean) : void
      {
         if(this.§[!C§ == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§&K§)
            {
               if(!this.§<!"§ && !this.§7!B§)
               {
                  this.§<!"§ = new Sprite();
                  this.§7!B§ = new b2DebugDraw();
                  this.§7!B§.AppendFlags(b2DebugDraw.e_shapeBit);
                  this.§7!B§.AppendFlags(b2DebugDraw.e_centerOfMassBit);
                  this.§7!B§.AppendFlags(b2DebugDraw.e_jointBit);
                  this.§7!B§.SetFillAlpha(0.3);
                  this.§7!B§.SetLineThickness(1);
                  this.§<!"§.mouseEnabled = false;
                  this.§7!B§.SetSprite(this.§<!"§);
                  this.§?V§.stage.addChild(this.§<!"§);
                  this.§[!C§.SetDebugDraw(this.§7!B§);
               }
            }
         }
         else if(this.§<!"§)
         {
            this.§<!"§.graphics.clear();
         }
         this.§&K§ = param1;
      }
      
      public function get §^!&§() : Boolean
      {
         return this.§&K§;
      }
      
      public function get §`y§() : b2DebugDraw
      {
         return this.§7!B§;
      }
      
      public function §0&§() : void
      {
         if(this.§7!B§)
         {
            this.§<!"§.graphics.clear();
         }
      }
   }
}
