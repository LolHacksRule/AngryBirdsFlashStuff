package §]A§
{
   import §-!2§.b2Vec2;
   import §-6§.§%5§;
   import §0!j§.b2DebugDraw;
   import §0!j§.b2World;
   import com.angrybirds.§#Z§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §6!3§
   {
      
      public static const §`]§:Number = 1000 / 30;
      
      public static const §]![§:int = 10;
      
      public static const §&m§:Boolean = false;
      
      public static const § !w§:Boolean = true;
       
      
      public var §1!A§:b2World;
      
      private var §&e§:Boolean = true;
      
      public var §!C§:§<A§;
      
      public var §!!j§:Sprite;
      
      private var §!M§:b2DebugDraw;
      
      public var §+"1§:§[d§;
      
      public var §3!]§:Number;
      
      private var §'I§:Number;
      
      private var §^'§:int;
      
      public function §6!3§(param1:§[d§, param2:Number = 20)
      {
         super();
         this.§+"1§ = param1;
         this.§@!f§(param2);
      }
      
      public function get §7[§() : int
      {
         return this.§^'§;
      }
      
      public function get §2!Y§() : Number
      {
         return this.§'I§;
      }
      
      private function §@!f§(param1:Number) : void
      {
         this.§!C§ = new §<A§(this);
         this.§1!A§ = new b2World(new b2Vec2(0,param1),this.§&e§);
         this.§1!A§.§4!>§(this.§!C§);
         §&m§;
         this.§!!j§ = new Sprite();
         this.§!M§ = new b2DebugDraw();
         this.§!M§.§<!a§(b2DebugDraw.§@!"§);
         this.§!M§.§<!a§(b2DebugDraw.§'h§);
         this.§!M§.§<!a§(b2DebugDraw.§#"6§);
         this.§!M§.§4_§(0.7);
         this.§!M§.§>!U§(1);
         this.§!!j§.mouseEnabled = false;
         this.§!M§.§+@§(this.§!!j§);
         this.§+"1§.stage.addChild(this.§!!j§);
         this.§1!A§.override(this.§!M§);
      }
      
      public function clear() : void
      {
         this.§1!A§.§4!>§(null);
         this.§!C§ = null;
         if(§&m§)
         {
            this.§!!j§.graphics.clear();
         }
         this.§!!j§ = null;
         this.§1!A§.§"!W§();
         this.§1!A§ = null;
      }
      
      public function §[!+§() : void
      {
         if(§&m§)
         {
            this.§1!A§.§=!d§();
            this.§!!j§.parent.setChildIndex(this.§!!j§,this.§!!j§.parent.numChildren - 1);
         }
      }
      
      public function §2v§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(§&m§)
         {
            _loc3_ = §#Z§.§'0§.§-!G§(0,0);
            this.§!!j§.x = _loc3_.x;
            this.§!!j§.y = _loc3_.y;
            this.§!M§.§"x§(1 / §[d§.§]!U§ * §%5§.§%!f§);
         }
      }
      
      public function §'"§(param1:Number) : Number
      {
         this.§'I§ = §`]§;
         var _loc2_:int = this.§%!o§(param1);
         if(_loc2_ > §]![§)
         {
            _loc2_ = §]![§;
         }
         this.§=O§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§'I§;
         }
         return param1;
      }
      
      public function §=O§(param1:int) : void
      {
         var _loc6_:Number = NaN;
         this.§3!]§ = 0;
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < param1)
         {
            ++this.§^'§;
            _loc6_ = 0;
            if(§ !w§)
            {
               _loc6_ = getTimer();
            }
            this.§1!A§.§8C§(this.§'I§ / 1000,10,10);
            this.§1!A§.§"!W§();
            this.§3!]§ += this.§'I§;
            if(§ !w§)
            {
               _loc4_ += getTimer() - _loc6_;
            }
            this.§+"1§.§-u§(this.§'I§);
            _loc5_++;
         }
         if(§ !w§)
         {
            §#Z§.§@!V§.§&!'§("Box2D",_loc4_);
         }
      }
      
      private function §%!o§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§'I§;
         }
         return _loc2_;
      }
   }
}
