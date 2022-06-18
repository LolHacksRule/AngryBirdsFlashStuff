package §9N§
{
   import §!J§.§[&§;
   import §&!"§.b2DebugDraw;
   import §&!"§.b2World;
   import §9"§.b2Vec2;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §0!4§
   {
      
      public static const §+!G§:Number = 1 / 30;
      
      public static const §5!2§:int = 10;
      
      public static const § L§:Boolean = false;
      
      public static const §'R§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §var §:Boolean = true;
      
      public var §4r§:§7!>§;
      
      public var §0k§:Sprite;
      
      private var §#!%§:b2DebugDraw;
      
      public var §8@§:§9!%§;
      
      public var §5c§:Number;
      
      private var § !E§:Number;
      
      private var §9!@§:int;
      
      public function §0!4§(param1:§9!%§)
      {
         super();
         this.§8@§ = param1;
         this.§8K§();
      }
      
      public function get currentStep() : int
      {
         return this.§9!@§;
      }
      
      public function get §@2§() : Number
      {
         return this.§ !E§;
      }
      
      private function §8K§() : void
      {
         this.§4r§ = new §7!>§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§var §);
         this.mWorld.§"x§(this.§4r§);
      }
      
      public function clear() : void
      {
         this.mWorld.§"x§(null);
         this.§4r§ = null;
         if(§ L§)
         {
            this.§0k§.graphics.clear();
         }
         this.§0k§ = null;
         this.mWorld.§6b§();
         this.mWorld = null;
      }
      
      public function §7D§() : void
      {
         if(!§ L§)
         {
         }
      }
      
      public function §<R§(param1:Number, param2:Number) : void
      {
         if(§ L§)
         {
            this.§0k§.x = -param1;
            this.§0k§.y = -param2;
         }
      }
      
      public function §1!X§(param1:Number) : Number
      {
         this.§ !E§ = §+!G§;
         var _loc2_:int = this.§"!G§(param1);
         if(_loc2_ > §5!2§)
         {
            _loc2_ = §5!2§;
         }
         this.§^h§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§ !E§ * 1000;
         }
         return param1;
      }
      
      public function §^h§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§5c§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§9!@§;
            _loc5_ = 0;
            if(§'R§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§<!P§(this.§ !E§,10,10);
            this.mWorld.§6b§();
            this.§5c§ += this.§ !E§ * 1000;
            if(§'R§)
            {
               §[&§.§?!§.§+<§("Box2D",getTimer() - _loc5_);
            }
            this.§8@§.§@!U§(this.§ !E§);
            _loc4_++;
         }
      }
      
      private function §"!G§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§ !E§ * 1000;
         }
         return _loc2_;
      }
   }
}
