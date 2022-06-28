package §2_§
{
   import §#V§.b2DebugDraw;
   import §#V§.b2World;
   import §;%§.b2Vec2;
   import §>! §.§^!c§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §%!;§
   {
      
      public static const §4h§:Number = 1 / 30;
      
      public static const §<$§:int = 10;
      
      public static const §6z§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §0Q§:Boolean = true;
      
      public var §57§:§8b§;
      
      public var §02§:Sprite;
      
      private var §5!`§:b2DebugDraw;
      
      private var §8!f§:Boolean = false;
      
      public var §#!3§:§'u§;
      
      public var §=!6§:Number;
      
      private var §&!#§:Number;
      
      private var §6S§:int;
      
      public function §%!;§(param1:§'u§)
      {
         super();
         this.§#!3§ = param1;
         this.§0!3§();
      }
      
      public function get §"!$§() : int
      {
         return this.§6S§;
      }
      
      public function get §'e§() : Number
      {
         return this.§&!#§;
      }
      
      private function §0!3§() : void
      {
         this.§57§ = new §8b§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§0Q§);
         this.mWorld.§8!B§(this.§57§);
      }
      
      public function clear() : void
      {
         this.mWorld.§8!B§(null);
         this.§57§ = null;
         if(this.§8!f§)
         {
            this.§02§.graphics.clear();
         }
         this.§02§ = null;
         this.mWorld.§7!A§();
         this.mWorld = null;
      }
      
      public function §+!C§() : void
      {
         if(this.§8!f§)
         {
            this.mWorld.§?Z§();
            this.§02§.parent.setChildIndex(this.§02§,this.§02§.parent.numChildren - 1);
         }
      }
      
      public function §7!P§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§8!f§)
         {
            _loc4_ = §^!c§.§5!Y§.§-!S§(0,0);
            this.§02§.x = _loc4_.x;
            this.§02§.y = _loc4_.y;
            this.§5!`§.§4Y§(1 / §'u§.§18§ * param3);
         }
      }
      
      public function §]!O§(param1:Number) : Number
      {
         this.§&!#§ = §4h§;
         var _loc2_:int = this.§7&§(param1);
         if(_loc2_ > §<$§)
         {
            _loc2_ = §<$§;
         }
         this.§]V§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§&!#§ * 1000;
         }
         return param1;
      }
      
      public function §]V§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§=!6§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§6S§;
            _loc5_ = 0;
            if(§6z§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§8y§(this.§&!#§,10,10);
            this.mWorld.§7!A§();
            this.§=!6§ += this.§&!#§ * 1000;
            if(§6z§)
            {
               §^!c§.§"!k§.§`^§("Box2D",getTimer() - _loc5_);
            }
            this.§#!3§.handleEngineUpdateStep(this.§&!#§);
            _loc4_++;
         }
      }
      
      private function §7&§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§&!#§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §5R§(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§8!f§)
            {
               if(!this.§02§ && !this.§5!`§)
               {
                  this.§02§ = new Sprite();
                  this.§5!`§ = new b2DebugDraw();
                  this.§5!`§.§4D§(b2DebugDraw.§ J§);
                  this.§5!`§.§4D§(b2DebugDraw.§9v§);
                  this.§5!`§.§4D§(b2DebugDraw.§]!G§);
                  this.§5!`§.§8$§(0.3);
                  this.§5!`§.§+e§(1);
                  this.§02§.mouseEnabled = false;
                  this.§5!`§.§9!H§(this.§02§);
                  this.§#!3§.stage.addChild(this.§02§);
                  this.mWorld.§;A§(this.§5!`§);
               }
            }
         }
         this.§8!f§ = param1;
      }
      
      public function get §5R§() : Boolean
      {
         return this.§8!f§;
      }
      
      public function get §+!%§() : b2DebugDraw
      {
         return this.§5!`§;
      }
      
      public function §?v§() : void
      {
         if(this.§5!`§)
         {
            this.§02§.graphics.clear();
         }
      }
   }
}
