package §0I§
{
   import §-%§.b2Vec2;
   import §9"5§.b2DebugDraw;
   import §9"5§.b2World;
   import §>j§.§`y§;
   import com.angrybirds.§6U§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §+!5§
   {
      
      public static const §61§:Number = 1000 / 30;
      
      public static const §`!A§:int = 10;
      
      public static const §'w§:Boolean = false;
      
      public static const §;!<§:Boolean = true;
       
      
      public var §,'§:b2World;
      
      private var § O§:Boolean = true;
      
      public var §>" §:§8!H§;
      
      public var §"c§:Sprite;
      
      private var §`!B§:b2DebugDraw;
      
      public var §-!r§:§!!p§;
      
      public var §#&§:Number;
      
      private var §2D§:Number;
      
      private var §2o§:int;
      
      public function §+!5§(param1:§!!p§, param2:Number = 20)
      {
         super();
         this.§-!r§ = param1;
         this.§[!,§(param2);
      }
      
      public function get §0&§() : int
      {
         return this.§2o§;
      }
      
      public function get §1!b§() : Number
      {
         return this.§2D§;
      }
      
      private function §[!,§(param1:Number) : void
      {
         this.§>" § = new §8!H§(this);
         this.§,'§ = new b2World(new b2Vec2(0,param1),this.§ O§);
         this.§,'§.§4I§(this.§>" §);
         §'w§;
         this.§"c§ = new Sprite();
         this.§`!B§ = new b2DebugDraw();
         this.§`!B§.§=!p§(b2DebugDraw.§""4§);
         this.§`!B§.§=!p§(b2DebugDraw.§03§);
         this.§`!B§.§=!p§(b2DebugDraw.§;!n§);
         this.§`!B§.§@J§(0.7);
         this.§`!B§.§?!#§(1);
         this.§"c§.mouseEnabled = false;
         this.§`!B§.§3>§(this.§"c§);
         this.§-!r§.stage.addChild(this.§"c§);
         this.§,'§.§%!E§(this.§`!B§);
      }
      
      public function clear() : void
      {
         this.§,'§.§4I§(null);
         this.§>" § = null;
         if(§'w§)
         {
            this.§"c§.graphics.clear();
         }
         this.§"c§ = null;
         this.§,'§.§implements§();
         this.§,'§ = null;
      }
      
      public function §3!&§() : void
      {
         if(§'w§)
         {
            this.§,'§.§%1§();
            this.§"c§.parent.setChildIndex(this.§"c§,this.§"c§.parent.numChildren - 1);
         }
      }
      
      public function § ",§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(§'w§)
         {
            _loc3_ = §6U§.§+_§.§3"1§(0,0);
            this.§"c§.x = _loc3_.x;
            this.§"c§.y = _loc3_.y;
            this.§`!B§.§7P§(1 / §!!p§.§6L§ * §`y§.§-n§);
         }
      }
      
      public function §>"'§(param1:Number) : Number
      {
         this.§2D§ = §61§;
         var _loc2_:int = this.§=d§(param1);
         if(_loc2_ > §`!A§)
         {
            _loc2_ = §`!A§;
         }
         this.§>!A§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§2D§;
         }
         return param1;
      }
      
      public function §>!A§(param1:int) : void
      {
         var _loc6_:Number = NaN;
         this.§#&§ = 0;
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < param1)
         {
            ++this.§2o§;
            _loc6_ = 0;
            if(§;!<§)
            {
               _loc6_ = getTimer();
            }
            this.§,'§.§9!s§(this.§2D§ / 1000,10,10);
            this.§,'§.§implements§();
            this.§#&§ += this.§2D§;
            if(§;!<§)
            {
               _loc4_ += getTimer() - _loc6_;
            }
            this.§-!r§.§`",§(this.§2D§);
            _loc5_++;
         }
         if(§;!<§)
         {
            §6U§.§<!@§.§ !L§("Box2D",_loc4_);
         }
      }
      
      private function §=d§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§2D§;
         }
         return _loc2_;
      }
   }
}
