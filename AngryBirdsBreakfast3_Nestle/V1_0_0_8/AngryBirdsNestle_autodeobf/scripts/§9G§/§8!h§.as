package §9G§
{
   import §=!c§.b2DebugDraw;
   import §=!c§.b2World;
   import §[K§.b2Vec2;
   import §^!<§.§#t§;
   import com.angrybirds.§4"6§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §8!h§
   {
      
      public static const §0a§:Number = 1000 / 30;
      
      public static const §0$§:int = 10;
      
      public static const §5"$§:Boolean = false;
      
      public static const §6!1§:Boolean = true;
       
      
      public var §>%§:b2World;
      
      private var §>j§:Boolean = true;
      
      public var § !O§:§;7§;
      
      public var §=!3§:Sprite;
      
      private var §8!t§:b2DebugDraw;
      
      public var §5M§:§2F§;
      
      public var §0L§:Number;
      
      private var § 4§:Number;
      
      private var §5!2§:int;
      
      public function §8!h§(param1:§2F§, param2:Number = 20)
      {
         super();
         this.§5M§ = param1;
         this.§5N§(param2);
      }
      
      public function get §&P§() : int
      {
         return this.§5!2§;
      }
      
      public function get §=!q§() : Number
      {
         return this.§ 4§;
      }
      
      private function §5N§(param1:Number) : void
      {
         this.§ !O§ = new §;7§(this);
         this.§>%§ = new b2World(new b2Vec2(0,param1),this.§>j§);
         this.§>%§.§-d§(this.§ !O§);
         §5"$§;
         this.§=!3§ = new Sprite();
         this.§8!t§ = new b2DebugDraw();
         this.§8!t§.§%D§(b2DebugDraw.§<]§);
         this.§8!t§.§%D§(b2DebugDraw.§8!?§);
         this.§8!t§.§%D§(b2DebugDraw.§ ! §);
         this.§8!t§.§4!n§(0.7);
         this.§8!t§.§=!g§(1);
         this.§=!3§.mouseEnabled = false;
         this.§8!t§.§+!i§(this.§=!3§);
         this.§5M§.stage.addChild(this.§=!3§);
         this.§>%§.§`m§(this.§8!t§);
      }
      
      public function clear() : void
      {
         this.§>%§.§-d§(null);
         this.§ !O§ = null;
         if(§5"$§)
         {
            this.§=!3§.graphics.clear();
         }
         this.§=!3§ = null;
         this.§>%§.§0!I§();
         this.§>%§ = null;
      }
      
      public function §+V§() : void
      {
         if(§5"$§)
         {
            this.§>%§.§<B§();
            this.§=!3§.parent.setChildIndex(this.§=!3§,this.§=!3§.parent.numChildren - 1);
         }
      }
      
      public function §`!Z§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(§5"$§)
         {
            _loc3_ = §4"6§.§;!k§.§4f§(0,0);
            this.§=!3§.x = _loc3_.x;
            this.§=!3§.y = _loc3_.y;
            this.§8!t§.§[[§(1 / §2F§.§6+§ * §#t§.§9!3§);
         }
      }
      
      public function §>Y§(param1:Number) : Number
      {
         this.§ 4§ = §0a§;
         var _loc2_:int = this.§?!-§(param1);
         if(_loc2_ > §0$§)
         {
            _loc2_ = §0$§;
         }
         this.§-J§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§ 4§;
         }
         return param1;
      }
      
      public function §-J§(param1:int) : void
      {
         var _loc6_:Number = NaN;
         this.§0L§ = 0;
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < param1)
         {
            ++this.§5!2§;
            _loc6_ = 0;
            if(§6!1§)
            {
               _loc6_ = getTimer();
            }
            this.§>%§.§&"%§(this.§ 4§ / 1000,10,10);
            this.§>%§.§0!I§();
            this.§0L§ += this.§ 4§;
            if(§6!1§)
            {
               _loc4_ += getTimer() - _loc6_;
            }
            this.§5M§.§0-§(this.§ 4§);
            _loc5_++;
         }
         if(§6!1§)
         {
            §4"6§.§,!h§.§`!$§("Box2D",_loc4_);
         }
      }
      
      private function §?!-§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§ 4§;
         }
         return _loc2_;
      }
   }
}
