package §#g§
{
   import §'#K§.b2DebugDraw;
   import §'#K§.b2World;
   import §04§.b2Vec2;
   import §4§.§`3§;
   import §?#z§.§]$?§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §4!`§
   {
      
      public static const §7!h§:Number = 1000 / 30;
      
      public static const §,#r§:int = 10;
      
      public static const §]$5§:Boolean = false;
      
      public static const §0Z§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      protected var § !3§:Boolean = true;
      
      public var §;!v§:§]#z§;
      
      public var §""j§:Sprite;
      
      protected var §>s§:b2DebugDraw;
      
      public var §9!E§:§8#3§;
      
      public var §7!J§:Number;
      
      private var §5!%§:Number;
      
      private var §!"9§:int;
      
      protected var §@!k§:Boolean = false;
      
      public function §4!`§(param1:§8#3§, param2:Number = 20)
      {
         super();
         this.§9!E§ = param1;
         this.§=#3§(param2);
         this.§,#i§ = §]$5§;
      }
      
      public function get §4$2§() : int
      {
         return this.§!"9§;
      }
      
      public function get §81§() : Number
      {
         return this.§5!%§;
      }
      
      public function set §,#i§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§>s§ = new b2DebugDraw();
            this.§>s§.§72§(b2DebugDraw.§,$!§);
            this.§>s§.§72§(b2DebugDraw.§-!y§);
            this.§>s§.§72§(b2DebugDraw.§?!;§);
            this.§>s§.§&#W§(0.7);
            this.§>s§.§@"O§(1);
            if(!this.§""j§)
            {
               this.§""j§ = new Sprite();
               this.§""j§.mouseEnabled = false;
               this.§9!E§.stage.addChild(this.§""j§);
            }
            this.§>s§.§!b§(this.§""j§);
            this.mWorld.§7$9§(this.§>s§);
         }
         else
         {
            if(this.§""j§)
            {
               this.§9!E§.stage.removeChild(this.§""j§);
               this.§""j§ = null;
            }
            if(this.§>s§)
            {
               this.mWorld.§7$9§(null);
               this.§>s§ = null;
            }
         }
         this.§@!k§ = param1;
      }
      
      protected function §=#3§(param1:Number) : void
      {
         this.§;!v§ = new §]#z§(this);
         this.mWorld = new b2World(new b2Vec2(0,param1),this.§ !3§);
         this.mWorld.§-#v§(this.§;!v§);
      }
      
      public function clear() : void
      {
         this.mWorld.§-#v§(null);
         this.§;!v§ = null;
         if(this.§""j§)
         {
            this.§9!E§.stage.removeChild(this.§""j§);
            this.§""j§.graphics.clear();
            this.§""j§ = null;
         }
         this.mWorld.ClearForces();
         this.mWorld = null;
      }
      
      public function §';§() : void
      {
         if(this.§@!k§)
         {
            this.mWorld.§1x§();
            this.§""j§.parent.setChildIndex(this.§""j§,this.§""j§.parent.numChildren - 1);
         }
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(this.§@!k§)
         {
            _loc3_ = §]$?§.§2#§.§9![§(0,0);
            this.§""j§.x = _loc3_.x;
            this.§""j§.y = _loc3_.y;
            this.§>s§.§5!D§(1 / §8#3§.§2K§ * §`3§.§-"C§);
         }
      }
      
      public function §=#H§(param1:Number) : Number
      {
         this.§5!%§ = §7!h§;
         var _loc2_:int = this.§1#2§(param1);
         if(_loc2_ > §,#r§)
         {
            _loc2_ = §,#r§;
         }
         this.§!k§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§5!%§;
         }
         return param1;
      }
      
      public function §!k§(param1:int) : void
      {
         var _loc6_:Number = NaN;
         this.§7!J§ = 0;
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < param1)
         {
            ++this.§!"9§;
            _loc6_ = 0;
            if(§0Z§)
            {
               _loc6_ = getTimer();
            }
            this.mWorld.Step(this.§5!%§ / 1000,10,10);
            this.mWorld.ClearForces();
            this.§7!J§ += this.§5!%§;
            if(§0Z§)
            {
               _loc4_ += getTimer() - _loc6_;
            }
            this.§9!E§.handleEngineUpdateStep(this.§5!%§);
            _loc5_++;
         }
         if(§0Z§)
         {
            §]$?§.§@7§.§^B§("Box2D",_loc4_);
         }
      }
      
      private function §1#2§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§5!%§;
         }
         return _loc2_;
      }
   }
}
