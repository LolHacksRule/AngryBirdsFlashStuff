package §2!H§
{
   import § D§.§]!B§;
   import §&L§.b2Vec2;
   import §]=§.b2DebugDraw;
   import §]=§.b2World;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §?!`§
   {
      
      public static const §&!5§:Number = 1 / 30;
      
      public static const §#Y§:int = 10;
      
      public static const §9!^§:Boolean = false;
      
      public static const §#q§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §^m§:Boolean = true;
      
      public var §7O§:§&P§;
      
      public var §9o§:Sprite;
      
      private var §6i§:b2DebugDraw;
      
      public var §"!>§:LevelMain;
      
      public var §?5§:Number;
      
      private var §-!j§:Number;
      
      private var §^!Q§:int;
      
      public function §?!`§(param1:LevelMain)
      {
         super();
         this.§"!>§ = param1;
         this.§7@§();
      }
      
      public function get §">§() : int
      {
         return this.§^!Q§;
      }
      
      public function get §[6§() : Number
      {
         return this.§-!j§;
      }
      
      private function §7@§() : void
      {
         this.§7O§ = new §&P§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§^m§);
         this.mWorld.§?8§(this.§7O§);
         if(§9!^§)
         {
            this.mWorld.§6]§(true);
            this.§9o§ = new Sprite();
            this.§6i§ = new b2DebugDraw();
            this.§6i§.§1;§(b2DebugDraw.§>!>§);
            this.§6i§.§1;§(b2DebugDraw.§`8§);
            this.§6i§.§1;§(b2DebugDraw.§^!c§);
            this.§6i§.§!x§(1 / LevelMain.§8N§);
            this.§6i§.§;!%§(0.3);
            this.§6i§.§7!#§(1);
            this.§6i§.§2@§(this.§9o§);
            this.§"!>§.stage.addChild(this.§9o§);
            this.mWorld.§2!h§(this.§6i§);
         }
      }
      
      public function clear() : void
      {
         this.mWorld.§?8§(null);
         this.§7O§ = null;
         if(§9!^§)
         {
            this.§9o§.graphics.clear();
         }
         this.§9o§ = null;
         this.mWorld.§]!a§();
         this.mWorld = null;
      }
      
      public function §1!0§() : void
      {
         if(§9!^§)
         {
            this.mWorld.§4$§();
            this.§9o§.parent.setChildIndex(this.§9o§,this.§9o§.parent.numChildren - 1);
         }
      }
      
      public function §+F§(param1:Number, param2:Number, param3:Number) : void
      {
         if(§9!^§)
         {
            this.§9o§.x = -param1;
            this.§9o§.y = -param2;
         }
      }
      
      public function §;Q§(param1:Number) : Number
      {
         this.§-!j§ = §&!5§;
         var _loc2_:int = this.§^q§(param1);
         if(_loc2_ > §#Y§)
         {
            _loc2_ = §#Y§;
         }
         this.§>D§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§-!j§ * 1000;
         }
         return param1;
      }
      
      public function §>D§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§?5§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§^!Q§;
            _loc5_ = 0;
            if(§#q§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§^l§(this.§-!j§,10,10);
            this.mWorld.§]!a§();
            this.§?5§ += this.§-!j§ * 1000;
            if(§#q§)
            {
               §]!B§.§6_§.§`J§("Box2D",getTimer() - _loc5_);
            }
            this.§"!>§.handleEngineUpdateStep(this.§-!j§);
            _loc4_++;
         }
      }
      
      private function §^q§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§-!j§ * 1000;
         }
         return _loc2_;
      }
   }
}
