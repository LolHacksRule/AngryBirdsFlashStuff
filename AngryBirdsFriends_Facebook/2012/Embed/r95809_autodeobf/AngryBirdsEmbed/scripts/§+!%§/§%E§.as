package §+!%§
{
   import §-l§.§?'§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §%E§
   {
      
      public static const §&!H§:Number = 1 / 30;
      
      public static const § 1§:int = 10;
      
      public static const §=L§:Boolean = false;
      
      public static const §8+§:Boolean = true;
       
      
      public var §6U§:b2World;
      
      private var §5! §:Boolean = true;
      
      public var §&n§:§^w§;
      
      public var §,!C§:Sprite;
      
      private var §>!C§:b2DebugDraw;
      
      public var §]U§:§'!"§;
      
      public var §0;§:Number;
      
      private var §>#§:Number;
      
      private var § -§:int;
      
      public function §%E§(param1:§'!"§)
      {
         super();
         this.§]U§ = param1;
         this.§7=§();
      }
      
      public function get §83§() : int
      {
         return this.§ -§;
      }
      
      public function get §%'§() : Number
      {
         return this.§>#§;
      }
      
      private function §7=§() : void
      {
         this.§&n§ = new §^w§(this);
         this.§6U§ = new b2World(new b2Vec2(0,20),this.§5! §);
         this.§6U§.SetContactListener(this.§&n§);
      }
      
      public function clear() : void
      {
         this.§6U§.SetContactListener(null);
         this.§&n§ = null;
         if(§=L§)
         {
            this.§,!C§.graphics.clear();
         }
         this.§,!C§ = null;
         this.§6U§.ClearForces();
         this.§6U§ = null;
      }
      
      public function §;!9§() : void
      {
         if(!§=L§)
         {
         }
      }
      
      public function §<+§(param1:Number, param2:Number) : void
      {
         if(§=L§)
         {
            this.§,!C§.x = -param1;
            this.§,!C§.y = -param2;
         }
      }
      
      public function §4B§(param1:Number) : Number
      {
         this.§>#§ = §&!H§;
         var _loc2_:int = this.§4!-§(param1);
         if(_loc2_ > § 1§)
         {
            _loc2_ = § 1§;
         }
         this.§;$§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§>#§ * 1000;
         }
         return param1;
      }
      
      public function §;$§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§0;§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§ -§;
            _loc5_ = 0;
            if(§8+§)
            {
               _loc5_ = getTimer();
            }
            this.§6U§.Step(this.§>#§,10,10);
            this.§6U§.ClearForces();
            this.§0;§ += this.§>#§ * 1000;
            if(§8+§)
            {
               §?'§.§,!B§.§@6§("Box2D",getTimer() - _loc5_);
            }
            this.§]U§.§&l§(this.§>#§);
            _loc4_++;
         }
      }
      
      private function §4!-§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§>#§ * 1000;
         }
         return _loc2_;
      }
   }
}
