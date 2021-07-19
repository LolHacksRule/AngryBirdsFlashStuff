package §%!0§
{
   import §"J§.b2DebugDraw;
   import §"J§.b2World;
   import §,P§.§'_§;
   import §<!a§.b2Vec2;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §5!e§
   {
      
      public static const § !B§:Number = 1 / 30;
      
      public static const §,Q§:int = 10;
      
      public static const §2""§:Boolean = true;
       
      
      public var §;!^§:b2World;
      
      private var §&!f§:Boolean = true;
      
      public var §[1§:§4t§;
      
      public var §4X§:Sprite;
      
      private var §'l§:b2DebugDraw;
      
      private var §&m§:Boolean = false;
      
      public var §`!G§:§,4§;
      
      public var §3s§:Number;
      
      private var §%",§:Number;
      
      private var §2p§:int;
      
      public function §5!e§(param1:§,4§)
      {
         super();
         this.§`!G§ = param1;
         this.§?"!§();
      }
      
      public function get §4"'§() : int
      {
         return this.§2p§;
      }
      
      public function get §>T§() : Number
      {
         return this.§%",§;
      }
      
      private function §?"!§() : void
      {
         this.§[1§ = new §4t§(this);
         this.§;!^§ = new b2World(new b2Vec2(0,20),this.§&!f§);
         this.§;!^§.§-`§(this.§[1§);
      }
      
      public function clear() : void
      {
         this.§;!^§.§-`§(null);
         this.§[1§ = null;
         if(this.§&m§)
         {
            this.§4X§.graphics.clear();
         }
         this.§4X§ = null;
         this.§;!^§.§0^§();
         this.§;!^§ = null;
      }
      
      public function §#1§() : void
      {
         if(this.§&m§)
         {
            this.§;!^§.§ "+§();
            this.§4X§.parent.setChildIndex(this.§4X§,this.§4X§.parent.numChildren - 1);
         }
      }
      
      public function §6"1§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§&m§)
         {
            _loc4_ = §'_§.§=M§.§4!5§(0,0);
            this.§4X§.x = _loc4_.x;
            this.§4X§.y = _loc4_.y;
            this.§'l§.§9!n§(1 / §,4§.§,^§ * param3);
         }
      }
      
      public function §7!V§(param1:Number) : Number
      {
         this.§%",§ = § !B§;
         var _loc2_:int = this.§>"4§(param1);
         if(_loc2_ > §,Q§)
         {
            _loc2_ = §,Q§;
         }
         this.§[T§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§%",§ * 1000;
         }
         return param1;
      }
      
      public function §[T§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§3s§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§2p§;
            _loc5_ = 0;
            if(§2""§)
            {
               _loc5_ = getTimer();
            }
            this.§;!^§.§^!6§(this.§%",§,10,10);
            this.§;!^§.§0^§();
            this.§3s§ += this.§%",§ * 1000;
            if(§2""§)
            {
               §'_§.§5k§.§#[§("Box2D",getTimer() - _loc5_);
            }
            this.§`!G§.§7!a§(this.§%",§);
            _loc4_++;
         }
      }
      
      private function §>"4§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§%",§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §default§(param1:Boolean) : void
      {
         if(this.§;!^§ == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§&m§)
            {
               if(!this.§4X§ && !this.§'l§)
               {
                  this.§4X§ = new Sprite();
                  this.§'l§ = new b2DebugDraw();
                  this.§'l§.§0!Q§(b2DebugDraw.§^!F§);
                  this.§'l§.§0!Q§(b2DebugDraw.§#!=§);
                  this.§'l§.§0!Q§(b2DebugDraw.§^!M§);
                  this.§'l§.§0O§(0.3);
                  this.§'l§.§1!N§(1);
                  this.§4X§.mouseEnabled = false;
                  this.§'l§.§39§(this.§4X§);
                  this.§`!G§.stage.addChild(this.§4X§);
                  this.§;!^§.§+!]§(this.§'l§);
               }
            }
         }
         this.§&m§ = param1;
      }
      
      public function get §default§() : Boolean
      {
         return this.§&m§;
      }
      
      public function get §>!a§() : b2DebugDraw
      {
         return this.§'l§;
      }
      
      public function §;!c§() : void
      {
         if(this.§'l§)
         {
            this.§4X§.graphics.clear();
         }
      }
   }
}
