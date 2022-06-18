package §9!?§
{
   import §10§.§#!4§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §'@§
   {
      
      public static const §!`§:Number = 1 / 30;
      
      public static const §'b§:int = 10;
      
      public static const §,M§:Boolean = false;
      
      public static const §'!B§:Boolean = true;
       
      
      public var §7U§:b2World;
      
      private var §4!@§:Boolean = true;
      
      public var §>@§:§%2§;
      
      public var §[?§:Sprite;
      
      private var §7!+§:b2DebugDraw;
      
      public var §]!9§:§^]§;
      
      public var §'c§:Number;
      
      private var §+!?§:Number;
      
      private var §>§:int;
      
      public function §'@§(param1:§^]§)
      {
         super();
         this.§]!9§ = param1;
         this.§#!,§();
      }
      
      public function get §5!?§() : int
      {
         return this.§>§;
      }
      
      public function get §"y§() : Number
      {
         return this.§+!?§;
      }
      
      private function §#!,§() : void
      {
         this.§>@§ = new §%2§(this);
         this.§7U§ = new b2World(new b2Vec2(0,20),this.§4!@§);
         this.§7U§.SetContactListener(this.§>@§);
      }
      
      public function clear() : void
      {
         this.§7U§.SetContactListener(null);
         this.§>@§ = null;
         if(§,M§)
         {
            this.§[?§.graphics.clear();
         }
         this.§[?§ = null;
         this.§7U§.ClearForces();
         this.§7U§ = null;
      }
      
      public function §8!"§() : void
      {
         if(!§,M§)
         {
         }
      }
      
      public function include(param1:Number, param2:Number) : void
      {
         if(§,M§)
         {
            this.§[?§.x = -param1;
            this.§[?§.y = -param2;
         }
      }
      
      public function §4b§(param1:Number) : Number
      {
         this.§+!?§ = §!`§;
         var _loc2_:int = this.§#4§(param1);
         if(_loc2_ > §'b§)
         {
            _loc2_ = §'b§;
         }
         this.§^0§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§+!?§ * 1000;
         }
         return param1;
      }
      
      public function §^0§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§'c§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§>§;
            _loc5_ = 0;
            if(§'!B§)
            {
               _loc5_ = getTimer();
            }
            this.§7U§.Step(this.§+!?§,10,10);
            this.§7U§.ClearForces();
            this.§'c§ += this.§+!?§ * 1000;
            if(§'!B§)
            {
               §#!4§.§ try§.§&K§("Box2D",getTimer() - _loc5_);
            }
            this.§]!9§.§0A§(this.§+!?§);
            _loc4_++;
         }
      }
      
      private function §#4§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§+!?§ * 1000;
         }
         return _loc2_;
      }
   }
}
