package §+d§
{
   import §6%§.b2Color;
   import §6%§.b2internal;
   import §`!^§.b2Transform;
   import §`!^§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §&!a§:uint = 1;
      
      public static var §5!c§:uint = 2;
      
      public static var §&!W§:uint = 4;
      
      public static var native:uint = 8;
      
      public static var §;P§:uint = 16;
      
      public static var §[X§:uint = 32;
       
      
      private var §^7§:uint;
      
      b2internal var §;V§:Sprite;
      
      private var §"X§:Number = 1.0;
      
      private var §!!-§:Number = 1.0;
      
      private var §7!1§:Number = 1.0;
      
      private var §8x§:Number = 1.0;
      
      private var §]!c§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§^7§ = 0;
      }
      
      public function §[6§(param1:uint) : void
      {
         this.§^7§ = param1;
      }
      
      public function §8!9§() : uint
      {
         return this.§^7§;
      }
      
      public function §>%§(param1:uint) : void
      {
         this.§^7§ |= param1;
      }
      
      public function §-!!§(param1:uint) : void
      {
         this.§^7§ &= ~param1;
      }
      
      public function §?!"§(param1:Sprite) : void
      {
         this.§;V§ = param1;
      }
      
      public function §;!'§() : Sprite
      {
         return this.§;V§;
      }
      
      public function §03§(param1:Number) : void
      {
         this.§"X§ = param1;
      }
      
      public function §0!J§() : Number
      {
         return this.§"X§;
      }
      
      public function §1Y§(param1:Number) : void
      {
         this.§!!-§ = param1;
      }
      
      public function §1Q§() : Number
      {
         return this.§!!-§;
      }
      
      public function §;!9§(param1:Number) : void
      {
         this.§7!1§ = param1;
      }
      
      public function §;5§() : Number
      {
         return this.§7!1§;
      }
      
      public function §#j§(param1:Number) : void
      {
         this.§8x§ = param1;
      }
      
      public function § T§() : Number
      {
         return this.§8x§;
      }
      
      public function §7P§(param1:Number) : void
      {
         this.§]!c§ = param1;
      }
      
      public function §7C§() : Number
      {
         return this.§]!c§;
      }
      
      public function §0$§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§;V§.graphics.lineStyle(this.§!!-§,param3.color,this.§7!1§);
         this.§;V§.graphics.moveTo(param1[0].x * this.§"X§,param1[0].y * this.§"X§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§;V§.graphics.lineTo(param1[_loc4_].x * this.§"X§,param1[_loc4_].y * this.§"X§);
            _loc4_++;
         }
         this.§;V§.graphics.lineTo(param1[0].x * this.§"X§,param1[0].y * this.§"X§);
      }
      
      public function §=!0§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§;V§.graphics.lineStyle(this.§!!-§,param3.color,this.§7!1§);
         this.§;V§.graphics.moveTo(param1[0].x * this.§"X§,param1[0].y * this.§"X§);
         this.§;V§.graphics.beginFill(param3.color,this.§8x§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§;V§.graphics.lineTo(param1[_loc4_].x * this.§"X§,param1[_loc4_].y * this.§"X§);
            _loc4_++;
         }
         this.§;V§.graphics.lineTo(param1[0].x * this.§"X§,param1[0].y * this.§"X§);
         this.§;V§.graphics.endFill();
      }
      
      public function §+!#§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§;V§.graphics.lineStyle(this.§!!-§,param3.color,this.§7!1§);
         this.§;V§.graphics.drawCircle(param1.x * this.§"X§,param1.y * this.§"X§,param2 * this.§"X§);
      }
      
      public function §7Z§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§;V§.graphics.lineStyle(this.§!!-§,param4.color,this.§7!1§);
         this.§;V§.graphics.moveTo(0,0);
         this.§;V§.graphics.beginFill(param4.color,this.§8x§);
         this.§;V§.graphics.drawCircle(param1.x * this.§"X§,param1.y * this.§"X§,param2 * this.§"X§);
         this.§;V§.graphics.endFill();
         this.§;V§.graphics.moveTo(param1.x * this.§"X§,param1.y * this.§"X§);
         this.§;V§.graphics.lineTo((param1.x + param3.x * param2) * this.§"X§,(param1.y + param3.y * param2) * this.§"X§);
      }
      
      public function §#+§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§;V§.graphics.lineStyle(this.§!!-§,param3.color,this.§7!1§);
         this.§;V§.graphics.moveTo(param1.x * this.§"X§,param1.y * this.§"X§);
         this.§;V§.graphics.lineTo(param2.x * this.§"X§,param2.y * this.§"X§);
      }
      
      public function §4§(param1:b2Transform) : void
      {
         this.§;V§.graphics.lineStyle(this.§!!-§,16711680,this.§7!1§);
         this.§;V§.graphics.moveTo(param1.position.x * this.§"X§,param1.position.y * this.§"X§);
         this.§;V§.graphics.lineTo((param1.position.x + this.§]!c§ * param1.R.col1.x) * this.§"X§,(param1.position.y + this.§]!c§ * param1.R.col1.y) * this.§"X§);
         this.§;V§.graphics.lineStyle(this.§!!-§,65280,this.§7!1§);
         this.§;V§.graphics.moveTo(param1.position.x * this.§"X§,param1.position.y * this.§"X§);
         this.§;V§.graphics.lineTo((param1.position.x + this.§]!c§ * param1.R.col2.x) * this.§"X§,(param1.position.y + this.§]!c§ * param1.R.col2.y) * this.§"X§);
      }
   }
}
