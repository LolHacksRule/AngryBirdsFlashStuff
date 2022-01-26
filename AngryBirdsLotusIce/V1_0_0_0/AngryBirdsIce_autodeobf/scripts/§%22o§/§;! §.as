package §"o§
{
   import §;j§.§8[§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §;! §
   {
      
      public static const §%§:Number = 1 / 30;
      
      public static const §4!6§:int = 10;
      
      public static const §[1§:Boolean = false;
      
      public static const §0C§:Boolean = true;
       
      
      public var §?O§:b2World;
      
      private var §=y§:Boolean = true;
      
      public var §1!1§:§ !=§;
      
      public var §]!?§:Sprite;
      
      private var §=m§:b2DebugDraw;
      
      public var § 6§:§ M§;
      
      public var §%O§:Number;
      
      private var §&!F§:Number;
      
      private var §0W§:int;
      
      public function §;! §(param1:§ M§)
      {
         super();
         this.§ 6§ = param1;
         this.§"!7§();
      }
      
      public function get §=!0§() : int
      {
         return this.§0W§;
      }
      
      public function get §3?§() : Number
      {
         return this.§&!F§;
      }
      
      private function §"!7§() : void
      {
         this.§1!1§ = new § !=§(this);
         this.§?O§ = new b2World(new b2Vec2(0,20),this.§=y§);
         this.§?O§.SetContactListener(this.§1!1§);
      }
      
      public function clear() : void
      {
         this.§?O§.SetContactListener(null);
         this.§1!1§ = null;
         if(§[1§)
         {
            this.§]!?§.graphics.clear();
         }
         this.§]!?§ = null;
         this.§?O§.ClearForces();
         this.§?O§ = null;
      }
      
      public function §5!@§() : void
      {
         if(!§[1§)
         {
         }
      }
      
      public function §4!A§(param1:Number, param2:Number) : void
      {
         if(§[1§)
         {
            this.§]!?§.x = -param1;
            this.§]!?§.y = -param2;
         }
      }
      
      public function §0j§(param1:Number) : Number
      {
         this.§&!F§ = §%§;
         var _loc2_:int = this.§-4§(param1);
         if(_loc2_ > §4!6§)
         {
            _loc2_ = §4!6§;
         }
         this.§"K§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§&!F§ * 1000;
         }
         return param1;
      }
      
      public function §"K§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§%O§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§0W§;
            _loc5_ = 0;
            if(§0C§)
            {
               _loc5_ = getTimer();
            }
            this.§?O§.Step(this.§&!F§,10,10);
            this.§?O§.ClearForces();
            this.§%O§ += this.§&!F§ * 1000;
            if(§0C§)
            {
               §8[§.§8!B§.§4D§("Box2D",getTimer() - _loc5_);
            }
            this.§ 6§.§-! §(this.§&!F§);
            _loc4_++;
         }
      }
      
      private function §-4§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§&!F§ * 1000;
         }
         return _loc2_;
      }
   }
}
