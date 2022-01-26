package §0V§
{
   import §9t§.b2DebugDraw;
   import §9t§.b2World;
   import §^Q§.§,^§;
   import §^q§.b2Vec2;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §#B§
   {
      
      public static const §>,§:Number = 1 / 30;
      
      public static const §>e§:int = 10;
      
      public static const §^I§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var § t§:Boolean = true;
      
      public var §!5§:§7I§;
      
      public var §=w§:Sprite;
      
      private var §6h§:b2DebugDraw;
      
      private var §4!I§:Boolean = false;
      
      public var §!q§:§`!O§;
      
      public var §4!S§:Number;
      
      private var §1!B§:Number;
      
      private var §&! §:int;
      
      public function §#B§(param1:§`!O§)
      {
         super();
         this.§!q§ = param1;
         this.§3h§();
      }
      
      public function get currentStep() : int
      {
         return this.§&! §;
      }
      
      public function get §>!R§() : Number
      {
         return this.§1!B§;
      }
      
      private function §3h§() : void
      {
         this.§!5§ = new §7I§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§ t§);
         this.mWorld.§null §(this.§!5§);
      }
      
      public function clear() : void
      {
         this.mWorld.§null §(null);
         this.§!5§ = null;
         if(this.§4!I§)
         {
            this.§=w§.graphics.clear();
         }
         this.§=w§ = null;
         this.mWorld.§4!@§();
         this.mWorld = null;
      }
      
      public function §7!]§() : void
      {
         if(this.§4!I§)
         {
            this.mWorld.§63§();
            this.§=w§.parent.setChildIndex(this.§=w§,this.§=w§.parent.numChildren - 1);
         }
      }
      
      public function §0F§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§4!I§)
         {
            _loc4_ = §,^§.§0K§.§3!`§(0,0);
            this.§=w§.x = _loc4_.x;
            this.§=w§.y = _loc4_.y;
            this.§6h§.§?!-§(1 / §`!O§.§?!O§ * param3);
         }
      }
      
      public function §9!+§(param1:Number) : Number
      {
         this.§1!B§ = §>,§;
         var _loc2_:int = this.§>l§(param1);
         if(_loc2_ > §>e§)
         {
            _loc2_ = §>e§;
         }
         this.§<P§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§1!B§ * 1000;
         }
         return param1;
      }
      
      public function §<P§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§4!S§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§&! §;
            _loc5_ = 0;
            if(§^I§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§'!'§(this.§1!B§,10,10);
            this.mWorld.§4!@§();
            this.§4!S§ += this.§1!B§ * 1000;
            if(§^I§)
            {
               §,^§.§?X§.§'X§("Box2D",getTimer() - _loc5_);
            }
            this.§!q§.§9m§(this.§1!B§);
            _loc4_++;
         }
      }
      
      private function §>l§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§1!B§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §,m§(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§4!I§)
            {
               if(!this.§=w§ && !this.§6h§)
               {
                  this.§=w§ = new Sprite();
                  this.§6h§ = new b2DebugDraw();
                  this.§6h§.§ !P§(b2DebugDraw.§-r§);
                  this.§6h§.§ !P§(b2DebugDraw.§`H§);
                  this.§6h§.§ !P§(b2DebugDraw.§7t§);
                  this.§6h§.§!n§(0.3);
                  this.§6h§.§#A§(1);
                  this.§=w§.mouseEnabled = false;
                  this.§6h§.§&+§(this.§=w§);
                  this.§!q§.stage.addChild(this.§=w§);
                  this.mWorld.§!!V§(this.§6h§);
               }
            }
         }
         this.§4!I§ = param1;
      }
      
      public function get §,m§() : Boolean
      {
         return this.§4!I§;
      }
      
      public function get §<!U§() : b2DebugDraw
      {
         return this.§6h§;
      }
      
      public function §#R§() : void
      {
         if(this.§6h§)
         {
            this.§=w§.graphics.clear();
         }
      }
   }
}
