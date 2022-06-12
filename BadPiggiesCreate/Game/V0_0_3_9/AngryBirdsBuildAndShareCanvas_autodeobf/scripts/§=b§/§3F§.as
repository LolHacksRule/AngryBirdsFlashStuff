package §=b§
{
   import §-!G§.b2Vec2;
   import §3!S§.§%s§;
   import §=9§.b2DebugDraw;
   import §=9§.b2World;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §3F§
   {
      
      public static const §60§:Number = 1 / 30;
      
      public static const §,!>§:int = 10;
      
      public static const §`!a§:Boolean = true;
       
      
      public var §1c§:b2World;
      
      private var §";§:Boolean = true;
      
      public var §&=§:§`"6§;
      
      public var §3"§:Sprite;
      
      private var §4!B§:b2DebugDraw;
      
      private var §@4§:Boolean = false;
      
      public var §;!x§:§-!K§;
      
      public var §"n§:Number;
      
      private var §51§:Number;
      
      private var §7!`§:int;
      
      public function §3F§(param1:§-!K§)
      {
         super();
         this.§;!x§ = param1;
         this.§>,§();
      }
      
      public function get §#E§() : int
      {
         return this.§7!`§;
      }
      
      public function get §?r§() : Number
      {
         return this.§51§;
      }
      
      private function §>,§() : void
      {
         this.§&=§ = new §`"6§(this);
         this.§1c§ = new b2World(new b2Vec2(0,20),this.§";§);
         this.§1c§.§[t§(this.§&=§);
      }
      
      public function clear() : void
      {
         this.§1c§.§[t§(null);
         this.§&=§ = null;
         if(this.§@4§)
         {
            this.§3"§.graphics.clear();
         }
         this.§3"§ = null;
         this.§1c§.§5"5§();
         this.§1c§ = null;
      }
      
      public function §5"4§() : void
      {
         if(this.§@4§)
         {
            this.§1c§.§<e§();
            this.§3"§.parent.setChildIndex(this.§3"§,this.§3"§.parent.numChildren - 1);
         }
      }
      
      public function §,"#§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§@4§)
         {
            _loc4_ = §%s§.§`!f§.§,w§(0,0);
            this.§3"§.x = _loc4_.x;
            this.§3"§.y = _loc4_.y;
            this.§4!B§.§8M§(1 / §-!K§.§"!C§ * param3);
         }
      }
      
      public function §42§(param1:Number) : Number
      {
         this.§51§ = §60§;
         var _loc2_:int = this.§!!0§(param1);
         if(_loc2_ > §,!>§)
         {
            _loc2_ = §,!>§;
         }
         this.§9!a§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§51§ * 1000;
         }
         return param1;
      }
      
      public function §9!a§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§"n§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§7!`§;
            _loc5_ = 0;
            if(§`!a§)
            {
               _loc5_ = getTimer();
            }
            this.§1c§.§1!-§(this.§51§,10,10);
            this.§1c§.§5"5§();
            this.§"n§ += this.§51§ * 1000;
            if(§`!a§)
            {
               §%s§.§7H§.§?v§("Box2D",getTimer() - _loc5_);
            }
            this.§;!x§.§;^§(this.§51§);
            _loc4_++;
         }
      }
      
      private function §!!0§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§51§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §2Z§(param1:Boolean) : void
      {
         if(this.§1c§ == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§@4§)
            {
               if(!this.§3"§ && !this.§4!B§)
               {
                  this.§3"§ = new Sprite();
                  this.§4!B§ = new b2DebugDraw();
                  this.§4!B§.§7Q§(b2DebugDraw.§=F§);
                  this.§4!B§.§7Q§(b2DebugDraw.§6c§);
                  this.§4!B§.§7Q§(b2DebugDraw.§^!-§);
                  this.§4!B§.§3!W§(0.3);
                  this.§4!B§.§?!V§(1);
                  this.§3"§.mouseEnabled = false;
                  this.§4!B§.§2u§(this.§3"§);
                  this.§;!x§.stage.addChild(this.§3"§);
                  this.§1c§.§;f§(this.§4!B§);
               }
            }
         }
         this.§@4§ = param1;
      }
      
      public function get §2Z§() : Boolean
      {
         return this.§@4§;
      }
      
      public function get §4§() : b2DebugDraw
      {
         return this.§4!B§;
      }
      
      public function §4!m§() : void
      {
         if(this.§4!B§)
         {
            this.§3"§.graphics.clear();
         }
      }
   }
}
