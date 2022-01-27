package §3R§
{
   import §7!C§.§8!w§;
   import §;`§.b2DebugDraw;
   import §;`§.b2World;
   import §[!f§.b2Vec2;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §=y§
   {
      
      public static const §^!§:Number = 1000 / 30;
      
      public static const §3V§:int = 10;
      
      public static const §!&§:Boolean = false;
      
      public static const §<!T§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §="2§:Boolean = true;
      
      public var §-+§:§6!U§;
      
      public var §="-§:Sprite;
      
      private var §9!`§:b2DebugDraw;
      
      public var §;H§:§1!R§;
      
      public var §[" §:Number;
      
      private var §0"@§:Number;
      
      private var §<"F§:int;
      
      public function §=y§(param1:§1!R§, param2:Number = 20)
      {
         super();
         this.§;H§ = param1;
         this.§8?§(param2);
      }
      
      public function get §4s§() : int
      {
         return this.§<"F§;
      }
      
      public function get §"!L§() : Number
      {
         return this.§0"@§;
      }
      
      private function §8?§(param1:Number) : void
      {
         this.§-+§ = new §6!U§(this);
         this.mWorld = new b2World(new b2Vec2(0,param1),this.§="2§);
         this.mWorld.§ R§(this.§-+§);
      }
      
      public function clear() : void
      {
         this.mWorld.§ R§(null);
         this.§-+§ = null;
         if(§!&§)
         {
            this.§="-§.graphics.clear();
         }
         this.§="-§ = null;
         this.mWorld.ClearForces();
         this.mWorld = null;
      }
      
      public function §<u§() : void
      {
         if(!§!&§)
         {
         }
      }
      
      public function §,">§(param1:Number, param2:Number) : void
      {
         if(§!&§)
         {
            this.§="-§.x = -param1;
            this.§="-§.y = -param2;
         }
      }
      
      public function §=!=§(param1:Number) : Number
      {
         this.§0"@§ = §^!§;
         var _loc2_:int = this.§'J§(param1);
         if(_loc2_ > §3V§)
         {
            _loc2_ = §3V§;
         }
         this.§ %§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§0"@§;
         }
         return param1;
      }
      
      public function § %§(param1:int) : void
      {
         var _loc6_:Number = NaN;
         this.§[" § = 0;
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < param1)
         {
            ++this.§<"F§;
            _loc6_ = 0;
            if(§<!T§)
            {
               _loc6_ = getTimer();
            }
            this.mWorld.Step(this.§0"@§ / 1000,10,10);
            this.mWorld.ClearForces();
            this.§[" § += this.§0"@§;
            if(§<!T§)
            {
               _loc4_ += getTimer() - _loc6_;
            }
            this.§;H§.§="9§(this.§0"@§);
            _loc5_++;
         }
         if(§<!T§)
         {
            §8!w§.§1!j§.§5K§("Box2D",_loc4_);
         }
      }
      
      private function §'J§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§0"@§;
         }
         return _loc2_;
      }
   }
}
