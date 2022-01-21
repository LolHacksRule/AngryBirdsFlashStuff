package §&x§
{
   import §0,§.b2Transform;
   import §0,§.b2Vec2;
   import §3o§.b2Color;
   import §3o§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §#!7§:uint = 1;
      
      public static var §0!b§:uint = 2;
      
      public static var §-y§:uint = 4;
      
      public static var §1!-§:uint = 8;
      
      public static var §2>§:uint = 16;
      
      public static var §6!0§:uint = 32;
       
      
      private var §%!V§:uint;
      
      b2internal var §<!2§:Sprite;
      
      private var §]!&§:Number = 1.0;
      
      private var §`9§:Number = 1.0;
      
      private var §&!!§:Number = 1.0;
      
      private var §>!6§:Number = 1.0;
      
      private var §'!L§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§%!V§ = 0;
      }
      
      public function §5U§(param1:uint) : void
      {
         this.§%!V§ = param1;
      }
      
      public function §]!1§() : uint
      {
         return this.§%!V§;
      }
      
      public function §%!3§(param1:uint) : void
      {
         this.§%!V§ |= param1;
      }
      
      public function §9!f§(param1:uint) : void
      {
         this.§%!V§ &= ~param1;
      }
      
      public function §;!8§(param1:Sprite) : void
      {
         this.§<!2§ = param1;
      }
      
      public function §4!&§() : Sprite
      {
         return this.§<!2§;
      }
      
      public function §5!5§(param1:Number) : void
      {
         this.§]!&§ = param1;
      }
      
      public function §8!P§() : Number
      {
         return this.§]!&§;
      }
      
      public function §1w§(param1:Number) : void
      {
         this.§`9§ = param1;
      }
      
      public function § ![§() : Number
      {
         return this.§`9§;
      }
      
      public function §6^§(param1:Number) : void
      {
         this.§&!!§ = param1;
      }
      
      public function §=!n§() : Number
      {
         return this.§&!!§;
      }
      
      public function §'d§(param1:Number) : void
      {
         this.§>!6§ = param1;
      }
      
      public function §+l§() : Number
      {
         return this.§>!6§;
      }
      
      public function §?1§(param1:Number) : void
      {
         this.§'!L§ = param1;
      }
      
      public function §9V§() : Number
      {
         return this.§'!L§;
      }
      
      public function set(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§<!2§.graphics.lineStyle(this.§`9§,param3.color,this.§&!!§);
         this.§<!2§.graphics.moveTo(param1[0].x * this.§]!&§,param1[0].y * this.§]!&§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§<!2§.graphics.lineTo(param1[_loc4_].x * this.§]!&§,param1[_loc4_].y * this.§]!&§);
            _loc4_++;
         }
         this.§<!2§.graphics.lineTo(param1[0].x * this.§]!&§,param1[0].y * this.§]!&§);
      }
      
      public function §2!H§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§<!2§.graphics.lineStyle(this.§`9§,param3.color,this.§&!!§);
         this.§<!2§.graphics.moveTo(param1[0].x * this.§]!&§,param1[0].y * this.§]!&§);
         this.§<!2§.graphics.beginFill(param3.color,this.§>!6§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§<!2§.graphics.lineTo(param1[_loc4_].x * this.§]!&§,param1[_loc4_].y * this.§]!&§);
            _loc4_++;
         }
         this.§<!2§.graphics.lineTo(param1[0].x * this.§]!&§,param1[0].y * this.§]!&§);
         this.§<!2§.graphics.endFill();
      }
      
      public function §]Z§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§<!2§.graphics.lineStyle(this.§`9§,param3.color,this.§&!!§);
         this.§<!2§.graphics.drawCircle(param1.x * this.§]!&§,param1.y * this.§]!&§,param2 * this.§]!&§);
      }
      
      public function §3!b§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§<!2§.graphics.lineStyle(this.§`9§,param4.color,this.§&!!§);
         this.§<!2§.graphics.moveTo(0,0);
         this.§<!2§.graphics.beginFill(param4.color,this.§>!6§);
         this.§<!2§.graphics.drawCircle(param1.x * this.§]!&§,param1.y * this.§]!&§,param2 * this.§]!&§);
         this.§<!2§.graphics.endFill();
         this.§<!2§.graphics.moveTo(param1.x * this.§]!&§,param1.y * this.§]!&§);
         this.§<!2§.graphics.lineTo((param1.x + param3.x * param2) * this.§]!&§,(param1.y + param3.y * param2) * this.§]!&§);
      }
      
      public function §4!4§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§<!2§.graphics.lineStyle(this.§`9§,param3.color,this.§&!!§);
         this.§<!2§.graphics.moveTo(param1.x * this.§]!&§,param1.y * this.§]!&§);
         this.§<!2§.graphics.lineTo(param2.x * this.§]!&§,param2.y * this.§]!&§);
      }
      
      public function § [§(param1:b2Transform) : void
      {
         this.§<!2§.graphics.lineStyle(this.§`9§,16711680,this.§&!!§);
         this.§<!2§.graphics.moveTo(param1.position.x * this.§]!&§,param1.position.y * this.§]!&§);
         this.§<!2§.graphics.lineTo((param1.position.x + this.§'!L§ * param1.R.col1.x) * this.§]!&§,(param1.position.y + this.§'!L§ * param1.R.col1.y) * this.§]!&§);
         this.§<!2§.graphics.lineStyle(this.§`9§,65280,this.§&!!§);
         this.§<!2§.graphics.moveTo(param1.position.x * this.§]!&§,param1.position.y * this.§]!&§);
         this.§<!2§.graphics.lineTo((param1.position.x + this.§'!L§ * param1.R.col2.x) * this.§]!&§,(param1.position.y + this.§'!L§ * param1.R.col2.y) * this.§]!&§);
      }
   }
}
