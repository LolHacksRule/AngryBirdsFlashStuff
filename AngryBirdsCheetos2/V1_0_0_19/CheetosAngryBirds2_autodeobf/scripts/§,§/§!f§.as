package §,§
{
   import § o§.b2DebugDraw;
   import § o§.b2World;
   import §6!H§.b2Vec2;
   import §`h§.§@!Z§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §!f§
   {
      
      public static const §`!;§:Number = 1 / 30;
      
      public static const §8!A§:int = 10;
      
      public static const §1l§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var § H§:Boolean = true;
      
      public var §@^§:§0!!§;
      
      public var §9!;§:Sprite;
      
      private var §^!^§:b2DebugDraw;
      
      private var §9! §:Boolean = false;
      
      public var §^!I§:§ p§;
      
      public var §5O§:Number;
      
      private var §@<§:Number;
      
      private var §6!b§:int;
      
      public function §!f§(param1:§ p§)
      {
         super();
         this.§^!I§ = param1;
         this.§-V§();
      }
      
      public function get currentStep() : int
      {
         return this.§6!b§;
      }
      
      public function get §-!]§() : Number
      {
         return this.§@<§;
      }
      
      private function §-V§() : void
      {
         this.§@^§ = new §0!!§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§ H§);
         this.mWorld.§`Q§(this.§@^§);
      }
      
      public function clear() : void
      {
         this.mWorld.§`Q§(null);
         this.§@^§ = null;
         if(this.§9! §)
         {
            this.§9!;§.graphics.clear();
         }
         this.§9!;§ = null;
         this.mWorld.§<p§();
         this.mWorld = null;
      }
      
      public function §"]§() : void
      {
         if(this.§9! §)
         {
            this.mWorld.§![§();
            this.§9!;§.parent.setChildIndex(this.§9!;§,this.§9!;§.parent.numChildren - 1);
         }
      }
      
      public function §1q§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§9! §)
         {
            _loc4_ = §@!Z§.§;!,§.§=!A§(0,0);
            this.§9!;§.x = _loc4_.x;
            this.§9!;§.y = _loc4_.y;
            this.§^!^§.§9y§(1 / § p§.§]!E§ * param3);
         }
      }
      
      public function §^T§(param1:Number) : Number
      {
         this.§@<§ = §`!;§;
         var _loc2_:int = this.§"D§(param1);
         if(_loc2_ > §8!A§)
         {
            _loc2_ = §8!A§;
         }
         this.§-!a§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§@<§ * 1000;
         }
         return param1;
      }
      
      public function §-!a§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§5O§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§6!b§;
            _loc5_ = 0;
            if(§1l§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§+"§(this.§@<§,10,10);
            this.mWorld.§<p§();
            this.§5O§ += this.§@<§ * 1000;
            if(§1l§)
            {
               §@!Z§.§+!-§.§[!=§("Box2D",getTimer() - _loc5_);
            }
            this.§^!I§.§@v§(this.§@<§);
            _loc4_++;
         }
      }
      
      private function §"D§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§@<§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §02§(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§9! §)
            {
               if(!this.§9!;§ && !this.§^!^§)
               {
                  this.§9!;§ = new Sprite();
                  this.§^!^§ = new b2DebugDraw();
                  this.§^!^§.§`o§(b2DebugDraw.§4O§);
                  this.§^!^§.§`o§(b2DebugDraw.§<!9§);
                  this.§^!^§.§`o§(b2DebugDraw.§?!1§);
                  this.§^!^§.§?B§(0.3);
                  this.§^!^§.§<F§(1);
                  this.§9!;§.mouseEnabled = false;
                  this.§^!^§.§5!>§(this.§9!;§);
                  this.§^!I§.stage.addChild(this.§9!;§);
                  this.mWorld.§1!$§(this.§^!^§);
               }
            }
         }
         else if(this.§9!;§)
         {
            this.§9!;§.graphics.clear();
         }
         this.§9! § = param1;
      }
      
      public function get §02§() : Boolean
      {
         return this.§9! §;
      }
      
      public function get §^U§() : b2DebugDraw
      {
         return this.§^!^§;
      }
      
      public function §4k§() : void
      {
         if(this.§^!^§)
         {
            this.§9!;§.graphics.clear();
         }
      }
   }
}
