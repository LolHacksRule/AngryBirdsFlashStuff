package §@"1§
{
   import §'w§.§ !7§;
   import §,!k§.b2Vec2;
   import §;'§.b2DebugDraw;
   import §;'§.b2World;
   import com.angrybirds.§4!l§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §@!y§
   {
      
      public static const §#4§:Number = 1000 / 30;
      
      public static const §&7§:int = 10;
      
      public static const §class§:Boolean = false;
      
      public static const §0e§:Boolean = true;
       
      
      public var §'!#§:b2World;
      
      private var §]!C§:Boolean = true;
      
      public var §`G§:§4=§;
      
      public var §,Y§:Sprite;
      
      private var §@7§:b2DebugDraw;
      
      public var §`W§:§"h§;
      
      public var §?!§:Number;
      
      private var §0i§:Number;
      
      private var §]!w§:int;
      
      public function §@!y§(param1:§"h§, param2:Number = 20)
      {
         super();
         this.§`W§ = param1;
         this.§&!m§(param2);
      }
      
      public function get §3!"§() : int
      {
         return this.§]!w§;
      }
      
      public function get §=!D§() : Number
      {
         return this.§0i§;
      }
      
      private function §&!m§(param1:Number) : void
      {
         this.§`G§ = new §4=§(this);
         this.§'!#§ = new b2World(new b2Vec2(0,param1),this.§]!C§);
         this.§'!#§.§,!<§(this.§`G§);
         §class§;
         this.§,Y§ = new Sprite();
         this.§@7§ = new b2DebugDraw();
         this.§@7§.§8!=§(b2DebugDraw.§2!=§);
         this.§@7§.§8!=§(b2DebugDraw.§'U§);
         this.§@7§.§8!=§(b2DebugDraw.§?!Q§);
         this.§@7§.§2!L§(0.7);
         this.§@7§.§8!$§(1);
         this.§,Y§.mouseEnabled = false;
         this.§@7§.§5!x§(this.§,Y§);
         this.§`W§.stage.addChild(this.§,Y§);
         this.§'!#§.§%"3§(this.§@7§);
      }
      
      public function clear() : void
      {
         this.§'!#§.§,!<§(null);
         this.§`G§ = null;
         if(§class§)
         {
            this.§,Y§.graphics.clear();
         }
         this.§,Y§ = null;
         this.§'!#§.§'"-§();
         this.§'!#§ = null;
      }
      
      public function §1E§() : void
      {
         if(§class§)
         {
            this.§'!#§.§3!b§();
            this.§,Y§.parent.setChildIndex(this.§,Y§,this.§,Y§.parent.numChildren - 1);
         }
      }
      
      public function §;"0§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(§class§)
         {
            _loc3_ = §4!l§.§,!8§.§>!]§(0,0);
            this.§,Y§.x = _loc3_.x;
            this.§,Y§.y = _loc3_.y;
            this.§@7§.§5!Q§(1 / §"h§.§4<§ * § !7§.§'!?§);
         }
      }
      
      public function §8!]§(param1:Number) : Number
      {
         this.§0i§ = §#4§;
         var _loc2_:int = this.§1!F§(param1);
         if(_loc2_ > §&7§)
         {
            _loc2_ = §&7§;
         }
         this.§7p§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§0i§;
         }
         return param1;
      }
      
      public function §7p§(param1:int) : void
      {
         var _loc6_:Number = NaN;
         this.§?!§ = 0;
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < param1)
         {
            ++this.§]!w§;
            _loc6_ = 0;
            if(§0e§)
            {
               _loc6_ = getTimer();
            }
            this.§'!#§.§0!,§(this.§0i§ / 1000,10,10);
            this.§'!#§.§'"-§();
            this.§?!§ += this.§0i§;
            if(§0e§)
            {
               _loc4_ += getTimer() - _loc6_;
            }
            this.§`W§.§8!'§(this.§0i§);
            _loc5_++;
         }
         if(§0e§)
         {
            §4!l§.§>!f§.§1z§("Box2D",_loc4_);
         }
      }
      
      private function §1!F§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§0i§;
         }
         return _loc2_;
      }
   }
}
