package §@L§
{
   import §+!!§.§5"+§;
   import §3!`§.b2DebugDraw;
   import §3!`§.b2World;
   import §6Z§.b2Vec2;
   import com.angrybirds.§&!"§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §@!G§
   {
      
      public static const §=Z§:Number = 1000 / 30;
      
      public static const §"!y§:int = 10;
      
      public static const §]!3§:Boolean = false;
      
      public static const §<-§:Boolean = true;
       
      
      public var §-#§:b2World;
      
      private var set:Boolean = true;
      
      public var §[a§:§]U§;
      
      public var §6V§:Sprite;
      
      private var §8!J§:b2DebugDraw;
      
      public var §<Y§:§?!'§;
      
      public var §?!&§:Number;
      
      private var §[e§:Number;
      
      private var §,!H§:int;
      
      public function §@!G§(param1:§?!'§, param2:Number = 20)
      {
         super();
         this.§<Y§ = param1;
         this.§!!?§(param2);
      }
      
      public function get §]!§() : int
      {
         return this.§,!H§;
      }
      
      public function get §0§() : Number
      {
         return this.§[e§;
      }
      
      private function §!!?§(param1:Number) : void
      {
         this.§[a§ = new §]U§(this);
         this.§-#§ = new b2World(new b2Vec2(0,param1),this.set);
         this.§-#§.§,V§(this.§[a§);
         §]!3§;
         this.§6V§ = new Sprite();
         this.§8!J§ = new b2DebugDraw();
         this.§8!J§.§<"#§(b2DebugDraw.§2!L§);
         this.§8!J§.§<"#§(b2DebugDraw.§"!k§);
         this.§8!J§.§<"#§(b2DebugDraw.§ !5§);
         this.§8!J§.§@!B§(0.7);
         this.§8!J§.§-!b§(1);
         this.§6V§.mouseEnabled = false;
         this.§8!J§.§`!r§(this.§6V§);
         this.§<Y§.stage.addChild(this.§6V§);
         this.§-#§.§]!y§(this.§8!J§);
      }
      
      public function clear() : void
      {
         this.§-#§.§,V§(null);
         this.§[a§ = null;
         if(§]!3§)
         {
            this.§6V§.graphics.clear();
         }
         this.§6V§ = null;
         this.§-#§.§&",§();
         this.§-#§ = null;
      }
      
      public function § L§() : void
      {
         if(§]!3§)
         {
            this.§-#§.§]"$§();
            this.§6V§.parent.setChildIndex(this.§6V§,this.§6V§.parent.numChildren - 1);
         }
      }
      
      public function §=!F§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(§]!3§)
         {
            _loc3_ = §&!"§.§1!D§.§9J§(0,0);
            this.§6V§.x = _loc3_.x;
            this.§6V§.y = _loc3_.y;
            this.§8!J§.§&!L§(1 / §?!'§.§'!i§ * §5"+§.§,H§);
         }
      }
      
      public function §3b§(param1:Number) : Number
      {
         this.§[e§ = §=Z§;
         var _loc2_:int = this.§&L§(param1);
         if(_loc2_ > §"!y§)
         {
            _loc2_ = §"!y§;
         }
         this.§53§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§[e§;
         }
         return param1;
      }
      
      public function §53§(param1:int) : void
      {
         var _loc6_:Number = NaN;
         this.§?!&§ = 0;
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < param1)
         {
            ++this.§,!H§;
            _loc6_ = 0;
            if(§<-§)
            {
               _loc6_ = getTimer();
            }
            this.§-#§.§4!6§(this.§[e§ / 1000,10,10);
            this.§-#§.§&",§();
            this.§?!&§ += this.§[e§;
            if(§<-§)
            {
               _loc4_ += getTimer() - _loc6_;
            }
            this.§<Y§.§ $§(this.§[e§);
            _loc5_++;
         }
         if(§<-§)
         {
            §&!"§.§!!D§.§=!j§("Box2D",_loc4_);
         }
      }
      
      private function §&L§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§[e§;
         }
         return _loc2_;
      }
   }
}
