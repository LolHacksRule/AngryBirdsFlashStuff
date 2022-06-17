package § !D§
{
   import §%_§.§;l§;
   import §8#t§.b2DebugDraw;
   import §8#t§.b2World;
   import §=!2§.§%"T§;
   import §`# §.b2Vec2;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §<!A§
   {
      
      public static const §1!T§:Number = 1000 / 30;
      
      public static const §5##§:int = 10;
      
      public static const §'#T§:Boolean = false;
      
      public static const §1"+§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      protected var §>"2§:Boolean = true;
      
      public var §[" §:§@#?§;
      
      public var §=$7§:Sprite;
      
      protected var §["!§:b2DebugDraw;
      
      public var §&!g§:§'"u§;
      
      public var §1$>§:Number;
      
      private var §""X§:Number;
      
      private var §#;§:int;
      
      protected var §]!u§:Boolean = false;
      
      public function §<!A§(param1:§'"u§, param2:Number = 20)
      {
         super();
         this.§&!g§ = param1;
         this.§?`§(param2);
         this.§"!W§ = §'#T§;
      }
      
      public function get §3!k§() : int
      {
         return this.§#;§;
      }
      
      public function get §4!=§() : Number
      {
         return this.§""X§;
      }
      
      public function set §"!W§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§["!§ = new b2DebugDraw();
            this.§["!§.§"+§(b2DebugDraw.§]!B§);
            this.§["!§.§"+§(b2DebugDraw.§+8§);
            this.§["!§.§"+§(b2DebugDraw.§?!5§);
            this.§["!§.§'!R§(0.7);
            this.§["!§.§7"j§(1);
            if(!this.§=$7§)
            {
               this.§=$7§ = new Sprite();
               this.§=$7§.mouseEnabled = false;
               this.§&!g§.stage.addChild(this.§=$7§);
            }
            this.§["!§.§ 0§(this.§=$7§);
            this.mWorld.§4!j§(this.§["!§);
         }
         else
         {
            if(this.§=$7§)
            {
               this.§&!g§.stage.removeChild(this.§=$7§);
               this.§=$7§ = null;
            }
            if(this.§["!§)
            {
               this.mWorld.§4!j§(null);
               this.§["!§ = null;
            }
         }
         this.§]!u§ = param1;
      }
      
      protected function §?`§(param1:Number) : void
      {
         this.§[" § = new §@#?§(this);
         this.mWorld = new b2World(new b2Vec2(0,param1),this.§>"2§);
         this.mWorld.§3#W§(this.§[" §);
      }
      
      public function clear() : void
      {
         this.mWorld.§3#W§(null);
         this.§[" § = null;
         if(this.§=$7§)
         {
            this.§&!g§.stage.removeChild(this.§=$7§);
            this.§=$7§.graphics.clear();
            this.§=$7§ = null;
         }
         this.mWorld.ClearForces();
         this.mWorld = null;
      }
      
      public function §""m§() : void
      {
         if(this.§]!u§)
         {
            this.mWorld.§+"r§();
            this.§=$7§.parent.setChildIndex(this.§=$7§,this.§=$7§.parent.numChildren - 1);
         }
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(this.§]!u§)
         {
            _loc3_ = §%"T§.§;`§.§=#M§(0,0);
            this.§=$7§.x = _loc3_.x;
            this.§=$7§.y = _loc3_.y;
            this.§["!§.§0$>§(1 / §'"u§.§'#e§ * §;l§.§%#3§);
         }
      }
      
      public function §["M§(param1:Number) : Number
      {
         this.§""X§ = §1!T§;
         var _loc2_:int = this.§0#o§(param1);
         if(_loc2_ > §5##§)
         {
            _loc2_ = §5##§;
         }
         this.§;!R§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§""X§;
         }
         return param1;
      }
      
      public function §;!R§(param1:int) : void
      {
         var _loc6_:Number = NaN;
         this.§1$>§ = 0;
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < param1)
         {
            ++this.§#;§;
            _loc6_ = 0;
            if(§1"+§)
            {
               _loc6_ = getTimer();
            }
            this.mWorld.Step(this.§""X§ / 1000,10,10);
            this.mWorld.ClearForces();
            this.§1$>§ += this.§""X§;
            if(§1"+§)
            {
               _loc4_ += getTimer() - _loc6_;
            }
            this.§&!g§.handleEngineUpdateStep(this.§""X§);
            _loc5_++;
         }
         if(§1"+§)
         {
            §%"T§.§`"X§.§`&§("Box2D",_loc4_);
         }
      }
      
      private function §0#o§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§""X§;
         }
         return _loc2_;
      }
   }
}
