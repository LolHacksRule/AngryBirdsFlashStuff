package §3"#§
{
   import §6!n§.b2Vec2;
   import §9!K§.b2DebugDraw;
   import §9!K§.b2World;
   import §>"2§.§8k§;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §@!2§
   {
      
      public static const §4";§:Number = 1000 / 30;
      
      public static const §<!3§:int = 10;
      
      public static const §]!<§:Boolean = false;
      
      public static const §&H§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §#=§:Boolean = true;
      
      public var §5!i§:§1L§;
      
      public var §#"0§:Sprite;
      
      private var §+7§:b2DebugDraw;
      
      public var §'"9§:§`"8§;
      
      public var §13§:Number;
      
      private var §,"7§:Number;
      
      private var §4G§:int;
      
      public function §@!2§(param1:§`"8§, param2:Number = 20)
      {
         super();
         this.§'"9§ = param1;
         this.§4]§(param2);
      }
      
      public function get §<",§() : int
      {
         return this.§4G§;
      }
      
      public function get §`!r§() : Number
      {
         return this.§,"7§;
      }
      
      private function §4]§(param1:Number) : void
      {
         this.§5!i§ = new §1L§(this);
         this.mWorld = new b2World(new b2Vec2(0,param1),this.§#=§);
         this.mWorld.§11§(this.§5!i§);
      }
      
      public function clear() : void
      {
         this.mWorld.§11§(null);
         this.§5!i§ = null;
         if(§]!<§)
         {
            this.§#"0§.graphics.clear();
         }
         this.§#"0§ = null;
         this.mWorld.ClearForces();
         this.mWorld = null;
      }
      
      public function §,!4§() : void
      {
         if(!§]!<§)
         {
         }
      }
      
      public function §5x§(param1:Number, param2:Number) : void
      {
         if(§]!<§)
         {
            this.§#"0§.x = -param1;
            this.§#"0§.y = -param2;
         }
      }
      
      public function §]"7§(param1:Number) : Number
      {
         this.§,"7§ = §4";§;
         var _loc2_:int = this.§7!D§(param1);
         if(_loc2_ > §<!3§)
         {
            _loc2_ = §<!3§;
         }
         this.§use§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§,"7§;
         }
         return param1;
      }
      
      public function §use§(param1:int) : void
      {
         var _loc6_:Number = NaN;
         this.§13§ = 0;
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < param1)
         {
            ++this.§4G§;
            _loc6_ = 0;
            if(§&H§)
            {
               _loc6_ = getTimer();
            }
            this.mWorld.Step(this.§,"7§ / 1000,10,10);
            this.mWorld.ClearForces();
            this.§13§ += this.§,"7§;
            if(§&H§)
            {
               _loc4_ += getTimer() - _loc6_;
            }
            this.§'"9§.§@!E§(this.§,"7§);
            _loc5_++;
         }
         if(§&H§)
         {
            §8k§.§9i§.§2@§("Box2D",_loc4_);
         }
      }
      
      private function §7!D§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§,"7§;
         }
         return _loc2_;
      }
   }
}
