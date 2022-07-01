package §1!v§
{
   import §'x§.§?z§;
   import §+L§.b2Vec2;
   import §7z§.b2DebugDraw;
   import §7z§.b2World;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §`+§
   {
      
      public static const §0u§:Number = 1 / 30;
      
      public static const §2!w§:int = 10;
      
      public static const §1!7§:Boolean = true;
       
      
      public var §<"7§:b2World;
      
      private var §@!7§:Boolean = true;
      
      public var §`@§:§<T§;
      
      public var §?!9§:Sprite;
      
      private var §=!<§:b2DebugDraw;
      
      private var §;V§:Boolean = false;
      
      public var §]Z§:§@%§;
      
      public var §&!g§:Number;
      
      private var §]7§:Number;
      
      private var §"!h§:int;
      
      public function §`+§(param1:§@%§)
      {
         super();
         this.§]Z§ = param1;
         this.§[K§();
      }
      
      public function get §[V§() : int
      {
         return this.§"!h§;
      }
      
      public function get §'" §() : Number
      {
         return this.§]7§;
      }
      
      private function §[K§() : void
      {
         this.§`@§ = new §<T§(this);
         this.§<"7§ = new b2World(new b2Vec2(0,20),this.§@!7§);
         this.§<"7§.§@"5§(this.§`@§);
      }
      
      public function clear() : void
      {
         this.§<"7§.§@"5§(null);
         this.§`@§ = null;
         if(this.§;V§)
         {
            this.§?!9§.graphics.clear();
         }
         this.§?!9§ = null;
         this.§<"7§.§<!§();
         this.§<"7§ = null;
      }
      
      public function §;!8§() : void
      {
         if(this.§;V§)
         {
            this.§<"7§.§5!o§();
            this.§?!9§.parent.setChildIndex(this.§?!9§,this.§?!9§.parent.numChildren - 1);
         }
      }
      
      public function §@G§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§;V§)
         {
            _loc4_ = §?z§.§=7§.§for§(0,0);
            this.§?!9§.x = _loc4_.x;
            this.§?!9§.y = _loc4_.y;
            this.§=!<§.§=c§(1 / §@%§.§?k§ * param3);
         }
      }
      
      public function §2$§(param1:Number) : Number
      {
         this.§]7§ = §0u§;
         var _loc2_:int = this.§;!^§(param1);
         if(_loc2_ > §2!w§)
         {
            _loc2_ = §2!w§;
         }
         this.§>G§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§]7§ * 1000;
         }
         return param1;
      }
      
      public function §>G§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§&!g§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§"!h§;
            _loc5_ = 0;
            if(§1!7§)
            {
               _loc5_ = getTimer();
            }
            this.§<"7§.§"M§(this.§]7§,10,10);
            this.§<"7§.§<!§();
            this.§&!g§ += this.§]7§ * 1000;
            if(§1!7§)
            {
               §?z§.§^!t§.§?!=§("Box2D",getTimer() - _loc5_);
            }
            this.§]Z§.§,!o§(this.§]7§);
            _loc4_++;
         }
      }
      
      private function §;!^§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§]7§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §4!N§(param1:Boolean) : void
      {
         if(this.§<"7§ == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§;V§)
            {
               if(!this.§?!9§ && !this.§=!<§)
               {
                  this.§?!9§ = new Sprite();
                  this.§=!<§ = new b2DebugDraw();
                  this.§=!<§.§[!X§(b2DebugDraw.§3"5§);
                  this.§=!<§.§[!X§(b2DebugDraw.§`r§);
                  this.§=!<§.§[!X§(b2DebugDraw.§1"-§);
                  this.§=!<§.§>!P§(0.3);
                  this.§=!<§.§<![§(1);
                  this.§?!9§.mouseEnabled = false;
                  this.§=!<§.§4!5§(this.§?!9§);
                  this.§]Z§.stage.addChild(this.§?!9§);
                  this.§<"7§.§6!%§(this.§=!<§);
               }
            }
         }
         this.§;V§ = param1;
      }
      
      public function get §4!N§() : Boolean
      {
         return this.§;V§;
      }
      
      public function get §04§() : b2DebugDraw
      {
         return this.§=!<§;
      }
      
      public function §4!o§() : void
      {
         if(this.§=!<§)
         {
            this.§?!9§.graphics.clear();
         }
      }
   }
}
