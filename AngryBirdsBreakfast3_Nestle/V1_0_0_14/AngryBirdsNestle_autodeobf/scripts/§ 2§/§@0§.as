package § 2§
{
   import §-'§.§ i§;
   import §3!0§.§`i§;
   import §9!Z§.b2DebugDraw;
   import §9!Z§.b2World;
   import §?"'§.b2Vec2;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §@0§
   {
      
      public static const §="3§:Number = 1000 / 30;
      
      public static const §8!;§:int = 10;
      
      public static const §9!R§:Boolean = false;
      
      public static const §[!=§:Boolean = true;
       
      
      public var §?F§:b2World;
      
      private var §case §:Boolean = true;
      
      public var §8i§:§;F§;
      
      public var §+![§:Sprite;
      
      private var §<!f§:b2DebugDraw;
      
      public var §false§:§=+§;
      
      public var §&n§:Number;
      
      private var §;!D§:Number;
      
      private var §[!6§:int;
      
      private var §2B§:Boolean = false;
      
      public function §@0§(param1:§=+§, param2:Number = 20)
      {
         super();
         this.§false§ = param1;
         this.§+!p§(param2);
         this.§"!W§ = §9!R§;
      }
      
      public function get §[p§() : int
      {
         return this.§[!6§;
      }
      
      public function get §7!§() : Number
      {
         return this.§;!D§;
      }
      
      public function set §"!W§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§<!f§ = new b2DebugDraw();
            this.§<!f§.§'!!§(b2DebugDraw.§3!^§);
            this.§<!f§.§'!!§(b2DebugDraw.§;!s§);
            this.§<!f§.§'!!§(b2DebugDraw.§&V§);
            this.§<!f§.§@!I§(0.7);
            this.§<!f§.§-y§(1);
            if(!this.§+![§)
            {
               this.§+![§ = new Sprite();
               this.§+![§.mouseEnabled = false;
               this.§false§.stage.addChild(this.§+![§);
            }
            this.§<!f§.§"e§(this.§+![§);
            this.§?F§.§?w§(this.§<!f§);
         }
         else
         {
            if(this.§+![§)
            {
               this.§false§.stage.removeChild(this.§+![§);
               this.§+![§ = null;
            }
            if(this.§<!f§)
            {
               this.§?F§.§?w§(null);
               this.§<!f§ = null;
            }
         }
         this.§2B§ = param1;
      }
      
      private function §+!p§(param1:Number) : void
      {
         this.§8i§ = new §;F§(this);
         this.§?F§ = new b2World(new b2Vec2(0,param1),this.§case §);
         this.§?F§.§'_§(this.§8i§);
      }
      
      public function clear() : void
      {
         this.§?F§.§'_§(null);
         this.§8i§ = null;
         if(this.§+![§)
         {
            this.§false§.stage.removeChild(this.§+![§);
            this.§+![§.graphics.clear();
            this.§+![§ = null;
         }
         this.§?F§.§^!+§();
         this.§?F§ = null;
      }
      
      public function §3+§() : void
      {
         if(this.§2B§)
         {
            this.§?F§.§+!v§();
            this.§+![§.parent.setChildIndex(this.§+![§,this.§+![§.parent.numChildren - 1);
         }
      }
      
      public function §#X§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(this.§2B§)
         {
            _loc3_ = §`i§.§&!L§.§3?§(0,0);
            this.§+![§.x = _loc3_.x;
            this.§+![§.y = _loc3_.y;
            this.§<!f§.§-`§(1 / §=+§.§5!w§ * § i§.§>!_§);
         }
      }
      
      public function §5!i§(param1:Number) : Number
      {
         this.§;!D§ = §="3§;
         var _loc2_:int = this.§];§(param1);
         if(_loc2_ > §8!;§)
         {
            _loc2_ = §8!;§;
         }
         this.§;"6§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§;!D§;
         }
         return param1;
      }
      
      public function §;"6§(param1:int) : void
      {
         var _loc6_:Number = NaN;
         this.§&n§ = 0;
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < param1)
         {
            ++this.§[!6§;
            _loc6_ = 0;
            if(§[!=§)
            {
               _loc6_ = getTimer();
            }
            this.§?F§.§"+§(this.§;!D§ / 1000,10,10);
            this.§?F§.§^!+§();
            this.§&n§ += this.§;!D§;
            if(§[!=§)
            {
               _loc4_ += getTimer() - _loc6_;
            }
            this.§false§.§?8§(this.§;!D§);
            _loc5_++;
         }
         if(§[!=§)
         {
            §`i§.§-!0§.§8"+§("Box2D",_loc4_);
         }
      }
      
      private function §];§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§;!D§;
         }
         return _loc2_;
      }
   }
}
