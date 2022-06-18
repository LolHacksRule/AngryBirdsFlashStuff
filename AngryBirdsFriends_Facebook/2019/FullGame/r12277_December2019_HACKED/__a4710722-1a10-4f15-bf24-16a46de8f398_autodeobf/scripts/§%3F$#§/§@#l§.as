package §?$#§
{
   import §+!n§.§+!p§;
   import §3#h§.b2DebugDraw;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §`$=§.§5$E§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §@#l§
   {
      
      public static const §'k§:Number = 1000 / 30;
      
      public static const §,c§:int = 10;
      
      public static const §9"u§:Boolean = false;
      
      public static const §7"Q§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      protected var §4#2§:Boolean = true;
      
      public var §04§:§%"]§;
      
      public var §;# §:Sprite;
      
      protected var §&O§:b2DebugDraw;
      
      public var § 6§:§<d§;
      
      public var §?#V§:Number;
      
      private var §@A§:Number;
      
      private var §7#2§:int;
      
      protected var §@#a§:Boolean = false;
      
      public function §@#l§(param1:§<d§, param2:Number = 20)
      {
         super();
         this.§ 6§ = param1;
         this.§[L§(param2);
         this.§=#8§ = §9"u§;
      }
      
      public function get §^"3§() : int
      {
         return this.§7#2§;
      }
      
      public function get §[$E§() : Number
      {
         return this.§@A§;
      }
      
      public function set §=#8§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§&O§ = new b2DebugDraw();
            this.§&O§.§`!n§(b2DebugDraw.§ !m§);
            this.§&O§.§`!n§(b2DebugDraw.§3#3§);
            this.§&O§.§`!n§(b2DebugDraw.§#!V§);
            this.§&O§.§"#e§(0.7);
            this.§&O§.§+"#§(1);
            if(!this.§;# §)
            {
               this.§;# § = new Sprite();
               this.§;# §.mouseEnabled = false;
               this.§ 6§.stage.addChild(this.§;# §);
            }
            this.§&O§.§2$@§(this.§;# §);
            this.mWorld.§<"%§(this.§&O§);
         }
         else
         {
            if(this.§;# §)
            {
               this.§ 6§.stage.removeChild(this.§;# §);
               this.§;# § = null;
            }
            if(this.§&O§)
            {
               this.mWorld.§<"%§(null);
               this.§&O§ = null;
            }
         }
         this.§@#a§ = param1;
      }
      
      protected function §[L§(param1:Number) : void
      {
         this.§04§ = new §%"]§(this);
         this.mWorld = new b2World(new b2Vec2(0,param1),this.§4#2§);
         this.mWorld.§3"&§(this.§04§);
      }
      
      public function clear() : void
      {
         this.mWorld.§3"&§(null);
         this.§04§ = null;
         if(this.§;# §)
         {
            this.§ 6§.stage.removeChild(this.§;# §);
            this.§;# §.graphics.clear();
            this.§;# § = null;
         }
         this.mWorld.ClearForces();
         this.mWorld = null;
      }
      
      public function §'R§() : void
      {
         if(this.§@#a§)
         {
            this.mWorld.§6!9§();
            this.§;# §.parent.setChildIndex(this.§;# §,this.§;# §.parent.numChildren - 1);
         }
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(this.§@#a§)
         {
            _loc3_ = §+!p§.§`?§.§ "8§(0,0);
            this.§;# §.x = _loc3_.x;
            this.§;# §.y = _loc3_.y;
            this.§&O§.§7D§(1 / §<d§.§6@§ * §5$E§.§4W§);
         }
      }
      
      public function §"!J§(param1:Number) : Number
      {
         this.§@A§ = §'k§;
         var _loc2_:int = this.§>"h§(param1);
         if(_loc2_ > §,c§)
         {
            _loc2_ = §,c§;
         }
         this.§2"d§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§@A§;
         }
         return param1;
      }
      
      public function §2"d§(param1:int) : void
      {
         var _loc6_:Number = NaN;
         this.§?#V§ = 0;
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < param1)
         {
            ++this.§7#2§;
            _loc6_ = 0;
            if(§7"Q§)
            {
               _loc6_ = getTimer();
            }
            this.mWorld.Step(this.§@A§ / 1000,10,10);
            this.mWorld.ClearForces();
            this.§?#V§ += this.§@A§;
            if(§7"Q§)
            {
               _loc4_ += getTimer() - _loc6_;
            }
            this.§ 6§.handleEngineUpdateStep(this.§@A§);
            _loc5_++;
         }
         if(§7"Q§)
         {
            §+!p§.§[#I§.§]7§("Box2D",_loc4_);
         }
      }
      
      private function §>"h§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§@A§;
         }
         return _loc2_;
      }
   }
}
