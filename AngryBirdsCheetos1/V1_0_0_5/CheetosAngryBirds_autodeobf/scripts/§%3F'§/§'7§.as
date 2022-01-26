package §?'§
{
   import §!J§.§[&§;
   import §=E§.b2Vec2;
   import §?!0§.b2DebugDraw;
   import §?!0§.b2World;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §'7§
   {
      
      public static const §"!G§:Number = 1 / 30;
      
      public static const §+!G§:int = 10;
      
      public static const §5!2§:Boolean = false;
      
      public static const § L§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §0!4§:Boolean = true;
      
      public var §var §:§1Z§;
      
      public var §4r§:Sprite;
      
      private var §0k§:b2DebugDraw;
      
      public var §;c§:§9N§;
      
      public var §#!%§:Number;
      
      private var §5c§:Number;
      
      private var § !E§:int;
      
      public function §'7§(param1:§9N§)
      {
         super();
         this.§;c§ = param1;
         this.§@2§();
      }
      
      public function get currentStep() : int
      {
         return this.§ !E§;
      }
      
      public function get §9!@§() : Number
      {
         return this.§5c§;
      }
      
      private function §@2§() : void
      {
         this.§var § = new §1Z§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§0!4§);
         this.mWorld.§`j§(this.§var §);
      }
      
      public function clear() : void
      {
         this.mWorld.§`j§(null);
         this.§var § = null;
         if(§5!2§)
         {
            this.§4r§.graphics.clear();
         }
         this.§4r§ = null;
         this.mWorld.§1^§();
         this.mWorld = null;
      }
      
      public function §8K§() : void
      {
         if(!§5!2§)
         {
         }
      }
      
      public function §;f§(param1:Number, param2:Number) : void
      {
         if(§5!2§)
         {
            this.§4r§.x = -param1;
            this.§4r§.y = -param2;
         }
      }
      
      public function §7D§(param1:Number) : Number
      {
         this.§5c§ = §"!G§;
         var _loc2_:int = this.§^h§(param1);
         if(_loc2_ > §+!G§)
         {
            _loc2_ = §+!G§;
         }
         this.§1!X§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§5c§ * 1000;
         }
         return param1;
      }
      
      public function §1!X§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§#!%§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§ !E§;
            _loc5_ = 0;
            if(§ L§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§%;§(this.§5c§,10,10);
            this.mWorld.§1^§();
            this.§#!%§ += this.§5c§ * 1000;
            if(§ L§)
            {
               §[&§.§?!§.§>n§("Box2D",getTimer() - _loc5_);
            }
            this.§;c§.§8z§(this.§5c§);
            _loc4_++;
         }
      }
      
      private function §^h§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§5c§ * 1000;
         }
         return _loc2_;
      }
   }
}
