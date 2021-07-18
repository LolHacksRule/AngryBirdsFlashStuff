package §'4§
{
   import §'!&§.b2DebugDraw;
   import §'!&§.b2World;
   import §,"&§.§9q§;
   import §9t§.b2Vec2;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §4q§
   {
      
      public static const §1""§:Number = 1000 / 30;
      
      public static const §1J§:int = 10;
      
      public static const §default§:Boolean = false;
      
      public static const §;!n§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §3V§:Boolean = true;
      
      public var §79§:§!W§;
      
      public var §9!_§:Sprite;
      
      private var §>7§:b2DebugDraw;
      
      public var §?>§:§^g§;
      
      public var §3!Q§:Number;
      
      private var §<!>§:Number;
      
      private var §"M§:int;
      
      public function §4q§(param1:§^g§, param2:Number = 20)
      {
         super();
         this.§?>§ = param1;
         this.§0!;§(param2);
      }
      
      public function get §`!8§() : int
      {
         return this.§"M§;
      }
      
      public function get §4z§() : Number
      {
         return this.§<!>§;
      }
      
      private function §0!;§(param1:Number) : void
      {
         this.§79§ = new §!W§(this);
         this.mWorld = new b2World(new b2Vec2(0,param1),this.§3V§);
         this.mWorld.§=!h§(this.§79§);
      }
      
      public function clear() : void
      {
         this.mWorld.§=!h§(null);
         this.§79§ = null;
         if(§default§)
         {
            this.§9!_§.graphics.clear();
         }
         this.§9!_§ = null;
         this.mWorld.ClearForces();
         this.mWorld = null;
      }
      
      public function §+0§() : void
      {
         if(!§default§)
         {
         }
      }
      
      public function §2[§(param1:Number, param2:Number) : void
      {
         if(§default§)
         {
            this.§9!_§.x = -param1;
            this.§9!_§.y = -param2;
         }
      }
      
      public function §9!4§(param1:Number) : Number
      {
         this.§<!>§ = §1""§;
         var _loc2_:int = this.§]!-§(param1);
         if(_loc2_ > §1J§)
         {
            _loc2_ = §1J§;
         }
         this.§?X§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§<!>§;
         }
         return param1;
      }
      
      public function §?X§(param1:int) : void
      {
         var _loc6_:Number = NaN;
         this.§3!Q§ = 0;
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < param1)
         {
            ++this.§"M§;
            _loc6_ = 0;
            if(§;!n§)
            {
               _loc6_ = getTimer();
            }
            this.mWorld.Step(this.§<!>§ / 1000,10,10);
            this.mWorld.ClearForces();
            this.§3!Q§ += this.§<!>§;
            if(§;!n§)
            {
               _loc4_ += getTimer() - _loc6_;
            }
            this.§?>§.§?"B§(this.§<!>§);
            _loc5_++;
         }
         if(§;!n§)
         {
            §9q§.§2!x§.§&B§("Box2D",_loc4_);
         }
      }
      
      private function §]!-§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§<!>§;
         }
         return _loc2_;
      }
   }
}
