package §3E§
{
   import §!!B§.b2DebugDraw;
   import §!!B§.b2World;
   import §7!U§.§2!7§;
   import §;U§.b2Vec2;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §<W§
   {
      
      public static const § !3§:Number = 1 / 30;
      
      public static const §,6§:int = 10;
      
      public static const §]E§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §1B§:Boolean = true;
      
      public var §2§:§<!7§;
      
      public var §2!M§:Sprite;
      
      private var §2o§:b2DebugDraw;
      
      private var §<j§:Boolean = false;
      
      public var §]v§:§6w§;
      
      public var §;<§:Number;
      
      private var §!z§:Number;
      
      private var §&!W§:int;
      
      public function §<W§(param1:§6w§)
      {
         super();
         this.§]v§ = param1;
         this.§<7§();
      }
      
      public function get currentStep() : int
      {
         return this.§&!W§;
      }
      
      public function get §!1§() : Number
      {
         return this.§!z§;
      }
      
      private function §<7§() : void
      {
         this.§2§ = new §<!7§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§1B§);
         this.mWorld.§]w§(this.§2§);
      }
      
      public function clear() : void
      {
         this.mWorld.§]w§(null);
         this.§2§ = null;
         if(this.§<j§)
         {
            this.§2!M§.graphics.clear();
         }
         this.§2!M§ = null;
         this.mWorld.§1P§();
         this.mWorld = null;
      }
      
      public function §9J§() : void
      {
         if(this.§<j§)
         {
            this.mWorld.§2!D§();
            this.§2!M§.parent.setChildIndex(this.§2!M§,this.§2!M§.parent.numChildren - 1);
         }
      }
      
      public function §3!J§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§<j§)
         {
            _loc4_ = §2!7§.§5G§.§%!?§(0,0);
            this.§2!M§.x = _loc4_.x;
            this.§2!M§.y = _loc4_.y;
            this.§2o§.§,!&§(1 / §6w§.§?!^§ * param3);
         }
      }
      
      public function §9!1§(param1:Number) : Number
      {
         this.§!z§ = § !3§;
         var _loc2_:int = this.§1S§(param1);
         if(_loc2_ > §,6§)
         {
            _loc2_ = §,6§;
         }
         this.§'8§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§!z§ * 1000;
         }
         return param1;
      }
      
      public function §'8§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§;<§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§&!W§;
            _loc5_ = 0;
            if(§]E§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§]^§(this.§!z§,10,10);
            this.mWorld.§1P§();
            this.§;<§ += this.§!z§ * 1000;
            if(§]E§)
            {
               §2!7§.§5H§.§0!J§("Box2D",getTimer() - _loc5_);
            }
            this.§]v§.§<2§(this.§!z§);
            _loc4_++;
         }
      }
      
      private function §1S§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§!z§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §="§(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§<j§)
            {
               if(!this.§2!M§ && !this.§2o§)
               {
                  this.§2!M§ = new Sprite();
                  this.§2o§ = new b2DebugDraw();
                  this.§2o§.§23§(b2DebugDraw.§6! §);
                  this.§2o§.§23§(b2DebugDraw.§<s§);
                  this.§2o§.§23§(b2DebugDraw.§?e§);
                  this.§2o§.§=z§(0.3);
                  this.§2o§.§ L§(1);
                  this.§2!M§.mouseEnabled = false;
                  this.§2o§.§7!!§(this.§2!M§);
                  this.§]v§.stage.addChild(this.§2!M§);
                  this.mWorld.§2!a§(this.§2o§);
               }
            }
         }
         this.§<j§ = param1;
      }
      
      public function get §="§() : Boolean
      {
         return this.§<j§;
      }
      
      public function get §,!<§() : b2DebugDraw
      {
         return this.§2o§;
      }
      
      public function §44§() : void
      {
         if(this.§2o§)
         {
            this.§2!M§.graphics.clear();
         }
      }
   }
}
