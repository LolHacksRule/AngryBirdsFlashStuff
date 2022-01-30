package §]k§
{
   import § 8§.§?!9§;
   import §,v§.b2DebugDraw;
   import §,v§.b2World;
   import §-!A§.b2Vec2;
   import com.angrybirds.§6!E§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §=![§
   {
      
      public static const §>^§:Number = 1000 / 30;
      
      public static const §[T§:int = 10;
      
      public static const §'"-§:Boolean = false;
      
      public static const §@8§:Boolean = true;
       
      
      public var §'!7§:b2World;
      
      private var §`!B§:Boolean = true;
      
      public var §`e§:§&[§;
      
      public var §8"5§:Sprite;
      
      private var §1h§:b2DebugDraw;
      
      public var §#g§:§<S§;
      
      public var §+!y§:Number;
      
      private var §^U§:Number;
      
      private var §%! §:int;
      
      public function §=![§(param1:§<S§, param2:Number = 20)
      {
         super();
         this.§#g§ = param1;
         this.§1!N§(param2);
      }
      
      public function get §%u§() : int
      {
         return this.§%! §;
      }
      
      public function get §8"%§() : Number
      {
         return this.§^U§;
      }
      
      private function §1!N§(param1:Number) : void
      {
         this.§`e§ = new §&[§(this);
         this.§'!7§ = new b2World(new b2Vec2(0,param1),this.§`!B§);
         this.§'!7§.§8k§(this.§`e§);
         §'"-§;
         this.§8"5§ = new Sprite();
         this.§1h§ = new b2DebugDraw();
         this.§1h§.§^"+§(b2DebugDraw.§!!4§);
         this.§1h§.§^"+§(b2DebugDraw.§+!v§);
         this.§1h§.§^"+§(b2DebugDraw.§9"§);
         this.§1h§.§@x§(0.7);
         this.§1h§.§-s§(1);
         this.§8"5§.mouseEnabled = false;
         this.§1h§.§@i§(this.§8"5§);
         this.§#g§.stage.addChild(this.§8"5§);
         this.§'!7§.§&N§(this.§1h§);
      }
      
      public function clear() : void
      {
         this.§'!7§.§8k§(null);
         this.§`e§ = null;
         if(§'"-§)
         {
            this.§8"5§.graphics.clear();
         }
         this.§8"5§ = null;
         this.§'!7§.§>'§();
         this.§'!7§ = null;
      }
      
      public function §7!k§() : void
      {
         if(§'"-§)
         {
            this.§'!7§.§9%§();
            this.§8"5§.parent.setChildIndex(this.§8"5§,this.§8"5§.parent.numChildren - 1);
         }
      }
      
      public function §7Z§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(§'"-§)
         {
            _loc3_ = §6!E§.§7I§.§"e§(0,0);
            this.§8"5§.x = _loc3_.x;
            this.§8"5§.y = _loc3_.y;
            this.§1h§.§1"§(1 / §<S§.§;!Q§ * §?!9§.§7C§);
         }
      }
      
      public function §#!1§(param1:Number) : Number
      {
         this.§^U§ = §>^§;
         var _loc2_:int = this.§'e§(param1);
         if(_loc2_ > §[T§)
         {
            _loc2_ = §[T§;
         }
         this.§[>§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§^U§;
         }
         return param1;
      }
      
      public function §[>§(param1:int) : void
      {
         var _loc6_:Number = NaN;
         this.§+!y§ = 0;
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < param1)
         {
            ++this.§%! §;
            _loc6_ = 0;
            if(§@8§)
            {
               _loc6_ = getTimer();
            }
            this.§'!7§.§9!b§(this.§^U§ / 1000,10,10);
            this.§'!7§.§>'§();
            this.§+!y§ += this.§^U§;
            if(§@8§)
            {
               _loc4_ += getTimer() - _loc6_;
            }
            this.§#g§.§"!t§(this.§^U§);
            _loc5_++;
         }
         if(§@8§)
         {
            §6!E§.§5V§.§3"'§("Box2D",_loc4_);
         }
      }
      
      private function §'e§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§^U§;
         }
         return _loc2_;
      }
   }
}
