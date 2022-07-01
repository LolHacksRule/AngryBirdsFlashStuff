package §@V§
{
   import §#!I§.§0k§;
   import §0!m§.§@!S§;
   import §0"!§.b2DebugDraw;
   import §0"!§.b2World;
   import §@!E§.b2Vec2;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §<o§
   {
      
      public static const §2e§:Number = 1000 / 30;
      
      public static const §1!R§:int = 10;
      
      public static const §^H§:Boolean = false;
      
      public static const §1f§:Boolean = true;
       
      
      public var §^d§:b2World;
      
      private var §!!h§:Boolean = true;
      
      public var §!f§:§2!_§;
      
      public var §#F§:Sprite;
      
      private var §?!Y§:b2DebugDraw;
      
      public var §!`§:§#=§;
      
      public var §+!9§:Number;
      
      private var §3!_§:Number;
      
      private var §1§:int;
      
      private var §9u§:Boolean = false;
      
      public function §<o§(param1:§#=§, param2:Number = 20)
      {
         super();
         this.§!`§ = param1;
         this.§<""§(param2);
         this.§+!s§ = §^H§;
      }
      
      public function get §-!G§() : int
      {
         return this.§1§;
      }
      
      public function get §%!w§() : Number
      {
         return this.§3!_§;
      }
      
      public function set §+!s§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§?!Y§ = new b2DebugDraw();
            this.§?!Y§.§>K§(b2DebugDraw.§5!j§);
            this.§?!Y§.§>K§(b2DebugDraw.§&!C§);
            this.§?!Y§.§>K§(b2DebugDraw.§7!8§);
            this.§?!Y§.§;!_§(0.7);
            this.§?!Y§.§0!s§(1);
            if(!this.§#F§)
            {
               this.§#F§ = new Sprite();
               this.§#F§.mouseEnabled = false;
               this.§!`§.stage.addChild(this.§#F§);
            }
            this.§?!Y§.§ "5§(this.§#F§);
            this.§^d§.§]X§(this.§?!Y§);
         }
         else
         {
            if(this.§#F§)
            {
               this.§!`§.stage.removeChild(this.§#F§);
               this.§#F§ = null;
            }
            if(this.§?!Y§)
            {
               this.§^d§.§]X§(null);
               this.§?!Y§ = null;
            }
         }
         this.§9u§ = param1;
      }
      
      private function §<""§(param1:Number) : void
      {
         this.§!f§ = new §2!_§(this);
         this.§^d§ = new b2World(new b2Vec2(0,param1),this.§!!h§);
         this.§^d§.§!k§(this.§!f§);
      }
      
      public function clear() : void
      {
         this.§^d§.§!k§(null);
         this.§!f§ = null;
         if(this.§#F§)
         {
            this.§!`§.stage.removeChild(this.§#F§);
            this.§#F§.graphics.clear();
            this.§#F§ = null;
         }
         this.§^d§.§3W§();
         this.§^d§ = null;
      }
      
      public function §5t§() : void
      {
         if(this.§9u§)
         {
            this.§^d§.§@U§();
            this.§#F§.parent.setChildIndex(this.§#F§,this.§#F§.parent.numChildren - 1);
         }
      }
      
      public function §4!J§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(this.§9u§)
         {
            _loc3_ = §@!S§.§2A§.§3!q§(0,0);
            this.§#F§.x = _loc3_.x;
            this.§#F§.y = _loc3_.y;
            this.§?!Y§.§#"§(1 / §#=§.§^!2§ * §0k§.§0!1§);
         }
      }
      
      public function §'T§(param1:Number) : Number
      {
         this.§3!_§ = §2e§;
         var _loc2_:int = this.§#>§(param1);
         if(_loc2_ > §1!R§)
         {
            _loc2_ = §1!R§;
         }
         this.§`!@§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§3!_§;
         }
         return param1;
      }
      
      public function §`!@§(param1:int) : void
      {
         var _loc6_:Number = NaN;
         this.§+!9§ = 0;
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < param1)
         {
            ++this.§1§;
            _loc6_ = 0;
            if(§1f§)
            {
               _loc6_ = getTimer();
            }
            this.§^d§.§5!I§(this.§3!_§ / 1000,10,10);
            this.§^d§.§3W§();
            this.§+!9§ += this.§3!_§;
            if(§1f§)
            {
               _loc4_ += getTimer() - _loc6_;
            }
            this.§!`§.§2!5§(this.§3!_§);
            _loc5_++;
         }
         if(§1f§)
         {
            §@!S§.§["4§.§0p§("Box2D",_loc4_);
         }
      }
      
      private function §#>§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§3!_§;
         }
         return _loc2_;
      }
   }
}
