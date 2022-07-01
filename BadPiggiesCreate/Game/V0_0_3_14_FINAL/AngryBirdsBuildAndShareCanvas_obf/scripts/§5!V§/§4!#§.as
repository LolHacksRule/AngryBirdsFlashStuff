package §5!V§
{
   import §%c§.§=!X§;
   import §+S§.b2DebugDraw;
   import §+S§.b2World;
   import §2"=§.b2Vec2;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §4!#§
   {
      
      public static const §#!-§:Number = 1 / 30;
      
      public static const §8"#§:int = 10;
      
      public static const §[;§:Boolean = true;
       
      
      public var §?"$§:b2World;
      
      private var §5W§:Boolean = true;
      
      public var §<<§:§6"=§;
      
      public var §>!F§:Sprite;
      
      private var § !m§:b2DebugDraw;
      
      private var §9!G§:Boolean = false;
      
      public var §9q§:§!w§;
      
      public var §,l§:Number;
      
      private var §"y§:Number;
      
      private var §2B§:int;
      
      public function §4!#§(param1:§!w§)
      {
         super();
         this.§9q§ = param1;
         this.§`!f§();
      }
      
      public function get §?!Z§() : int
      {
         return this.§2B§;
      }
      
      public function get §?y§() : Number
      {
         return this.§"y§;
      }
      
      private function §`!f§() : void
      {
         this.§<<§ = new §6"=§(this);
         this.§?"$§ = new b2World(new b2Vec2(0,20),this.§5W§);
         this.§?"$§.§@"8§(this.§<<§);
      }
      
      public function clear() : void
      {
         this.§?"$§.§@"8§(null);
         this.§<<§ = null;
         if(this.§9!G§)
         {
            this.§>!F§.graphics.clear();
         }
         this.§>!F§ = null;
         this.§?"$§.§"!^§();
         this.§?"$§ = null;
      }
      
      public function §#"5§() : void
      {
         if(this.§9!G§)
         {
            this.§?"$§.§^p§();
            this.§>!F§.parent.setChildIndex(this.§>!F§,this.§>!F§.parent.numChildren - 1);
         }
      }
      
      public function §%]§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§9!G§)
         {
            _loc4_ = §=!X§.§!'§.§&g§(0,0);
            this.§>!F§.x = _loc4_.x;
            this.§>!F§.y = _loc4_.y;
            this.§ !m§.§ t§(1 / §!w§.§4!-§ * param3);
         }
      }
      
      public function §true §(param1:Number) : Number
      {
         this.§"y§ = §#!-§;
         var _loc2_:int = this.§`Z§(param1);
         if(_loc2_ > §8"#§)
         {
            _loc2_ = §8"#§;
         }
         this.§9!E§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§"y§ * 1000;
         }
         return param1;
      }
      
      public function §9!E§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§,l§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§2B§;
            _loc5_ = 0;
            if(§[;§)
            {
               _loc5_ = getTimer();
            }
            this.§?"$§.§+!M§(this.§"y§,10,10);
            this.§?"$§.§"!^§();
            this.§,l§ += this.§"y§ * 1000;
            if(§[;§)
            {
               §=!X§.§29§.§=!f§("Box2D",getTimer() - _loc5_);
            }
            this.§9q§.§?">§(this.§"y§);
            _loc4_++;
         }
      }
      
      private function §`Z§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§"y§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §,!Y§(param1:Boolean) : void
      {
         if(this.§?"$§ == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§9!G§)
            {
               if(!this.§>!F§ && !this.§ !m§)
               {
                  this.§>!F§ = new Sprite();
                  this.§ !m§ = new b2DebugDraw();
                  this.§ !m§.§#!#§(b2DebugDraw.§9<§);
                  this.§ !m§.§#!#§(b2DebugDraw.§4!=§);
                  this.§ !m§.§#!#§(b2DebugDraw.§=f§);
                  this.§ !m§.§<!a§(0.3);
                  this.§ !m§.§3!5§(1);
                  this.§>!F§.mouseEnabled = false;
                  this.§ !m§.§-i§(this.§>!F§);
                  this.§9q§.stage.addChild(this.§>!F§);
                  this.§?"$§.§0!o§(this.§ !m§);
               }
            }
         }
         this.§9!G§ = param1;
      }
      
      public function get §,!Y§() : Boolean
      {
         return this.§9!G§;
      }
      
      public function get §%m§() : b2DebugDraw
      {
         return this.§ !m§;
      }
      
      public function § !-§() : void
      {
         if(this.§ !m§)
         {
            this.§>!F§.graphics.clear();
         }
      }
   }
}
