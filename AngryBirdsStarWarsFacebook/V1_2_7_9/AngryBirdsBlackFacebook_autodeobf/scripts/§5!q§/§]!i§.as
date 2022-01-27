package §5!q§
{
   import §1x§.b2DebugDraw;
   import §1x§.b2World;
   import §5i§.§+M§;
   import §^>§.b2Vec2;
   import com.angrybirds.§;!e§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §]!i§
   {
      
      public static const §4"Q§:Number = 1000 / 30;
      
      public static const §;!H§:int = 10;
      
      public static const §5"k§:Boolean = false;
      
      public static const §>0§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §#!Q§:Boolean = true;
      
      public var §="V§:§"">§;
      
      public var §>!n§:Sprite;
      
      private var §4p§:b2DebugDraw;
      
      public var §]""§:§3"X§;
      
      public var §+&§:Number;
      
      private var §7"y§:Number;
      
      private var §!!S§:int;
      
      private var §]!r§:Boolean = false;
      
      public function §]!i§(param1:§3"X§, param2:Number = 20)
      {
         super();
         this.§]""§ = param1;
         this.§<!t§(param2);
         this.§9"y§ = §5"k§;
      }
      
      public function get §`"+§() : int
      {
         return this.§!!S§;
      }
      
      public function get §>C§() : Number
      {
         return this.§7"y§;
      }
      
      public function set §9"y§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§4p§ = new b2DebugDraw();
            this.§4p§.§'!W§(b2DebugDraw.§&!&§);
            this.§4p§.§'!W§(b2DebugDraw.§+!!§);
            this.§4p§.§'!W§(b2DebugDraw.§?&§);
            this.§4p§.§9!o§(0.7);
            this.§4p§.§@#-§(1);
            if(!this.§>!n§)
            {
               this.§>!n§ = new Sprite();
               this.§>!n§.mouseEnabled = false;
               this.§]""§.stage.addChild(this.§>!n§);
            }
            this.§4p§.§,%§(this.§>!n§);
            this.mWorld.§="o§(this.§4p§);
         }
         else
         {
            if(this.§>!n§)
            {
               this.§]""§.stage.removeChild(this.§>!n§);
               this.§>!n§ = null;
            }
            if(this.§4p§)
            {
               this.mWorld.§="o§(null);
               this.§4p§ = null;
            }
         }
         this.§]!r§ = param1;
      }
      
      private function §<!t§(param1:Number) : void
      {
         this.§="V§ = new §"">§(this);
         this.mWorld = new b2World(new b2Vec2(0,param1),this.§#!Q§);
         this.mWorld.§7"^§(this.§="V§);
      }
      
      public function clear() : void
      {
         this.mWorld.§7"^§(null);
         this.§="V§ = null;
         if(this.§>!n§)
         {
            this.§]""§.stage.removeChild(this.§>!n§);
            this.§>!n§.graphics.clear();
            this.§>!n§ = null;
         }
         this.mWorld.ClearForces();
         this.mWorld = null;
      }
      
      public function §&i§() : void
      {
         if(this.§]!r§)
         {
            this.mWorld.§2<§();
            this.§>!n§.parent.setChildIndex(this.§>!n§,this.§>!n§.parent.numChildren - 1);
         }
      }
      
      public function §6#3§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(this.§]!r§)
         {
            _loc3_ = §;!e§.§<x§.§+!x§(0,0);
            this.§>!n§.x = _loc3_.x;
            this.§>!n§.y = _loc3_.y;
            this.§4p§.§!"Q§(1 / §3"X§.§;"l§ * §+M§.§&!u§);
         }
      }
      
      public function §^"J§(param1:Number) : Number
      {
         this.§7"y§ = §4"Q§;
         var _loc2_:int = this.§5"V§(param1);
         if(_loc2_ > §;!H§)
         {
            _loc2_ = §;!H§;
         }
         this.§["[§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§7"y§;
         }
         return param1;
      }
      
      public function §["[§(param1:int) : void
      {
         var _loc6_:Number = NaN;
         this.§+&§ = 0;
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < param1)
         {
            ++this.§!!S§;
            _loc6_ = 0;
            if(§>0§)
            {
               _loc6_ = getTimer();
            }
            this.mWorld.Step(this.§7"y§ / 1000,10,10);
            this.mWorld.ClearForces();
            this.§+&§ += this.§7"y§;
            if(§>0§)
            {
               _loc4_ += getTimer() - _loc6_;
            }
            this.§]""§.handleEngineUpdateStep(this.§7"y§);
            _loc5_++;
         }
         if(§>0§)
         {
            §;!e§.§="1§.§^!m§("Box2D",_loc4_);
         }
      }
      
      private function §5"V§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§7"y§;
         }
         return _loc2_;
      }
   }
}
