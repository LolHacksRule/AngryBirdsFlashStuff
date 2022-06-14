package §48§
{
   import §#]§.b2Transform;
   import §#]§.b2Vec2;
   import §4!!§.b2Color;
   import §4!!§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §6!e§:uint = 1;
      
      public static var §]!L§:uint = 2;
      
      public static var §8!I§:uint = 4;
      
      public static var §?!J§:uint = 8;
      
      public static var §8o§:uint = 16;
      
      public static var §<"3§:uint = 32;
       
      
      private var §'$§:uint;
      
      b2internal var §0`§:Sprite;
      
      private var §%j§:Number = 1.0;
      
      private var §!g§:Number = 1.0;
      
      private var §;"=§:Number = 1.0;
      
      private var §[G§:Number = 1.0;
      
      private var §3r§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§'$§ = 0;
      }
      
      public function §<!;§(param1:uint) : void
      {
         this.§'$§ = param1;
      }
      
      public function §&K§() : uint
      {
         return this.§'$§;
      }
      
      public function §9N§(param1:uint) : void
      {
         this.§'$§ |= param1;
      }
      
      public function §#!;§(param1:uint) : void
      {
         this.§'$§ &= ~param1;
      }
      
      public function §=B§(param1:Sprite) : void
      {
         this.§0`§ = param1;
      }
      
      public function §8!^§() : Sprite
      {
         return this.§0`§;
      }
      
      public function §`!m§(param1:Number) : void
      {
         this.§%j§ = param1;
      }
      
      public function §]7§() : Number
      {
         return this.§%j§;
      }
      
      public function §!!1§(param1:Number) : void
      {
         this.§!g§ = param1;
      }
      
      public function §99§() : Number
      {
         return this.§!g§;
      }
      
      public function §9!g§(param1:Number) : void
      {
         this.§;"=§ = param1;
      }
      
      public function §,"+§() : Number
      {
         return this.§;"=§;
      }
      
      public function §=o§(param1:Number) : void
      {
         this.§[G§ = param1;
      }
      
      public function §^>§() : Number
      {
         return this.§[G§;
      }
      
      public function §4]§(param1:Number) : void
      {
         this.§3r§ = param1;
      }
      
      public function §>?§() : Number
      {
         return this.§3r§;
      }
      
      public function §98§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§0`§.graphics.lineStyle(this.§!g§,param3.color,this.§;"=§);
         this.§0`§.graphics.moveTo(param1[0].x * this.§%j§,param1[0].y * this.§%j§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§0`§.graphics.lineTo(param1[_loc4_].x * this.§%j§,param1[_loc4_].y * this.§%j§);
            _loc4_++;
         }
         this.§0`§.graphics.lineTo(param1[0].x * this.§%j§,param1[0].y * this.§%j§);
      }
      
      public function §-"!§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§0`§.graphics.lineStyle(this.§!g§,param3.color,this.§;"=§);
         this.§0`§.graphics.moveTo(param1[0].x * this.§%j§,param1[0].y * this.§%j§);
         this.§0`§.graphics.beginFill(param3.color,this.§[G§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§0`§.graphics.lineTo(param1[_loc4_].x * this.§%j§,param1[_loc4_].y * this.§%j§);
            _loc4_++;
         }
         this.§0`§.graphics.lineTo(param1[0].x * this.§%j§,param1[0].y * this.§%j§);
         this.§0`§.graphics.endFill();
      }
      
      public function §^"6§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§0`§.graphics.lineStyle(this.§!g§,param3.color,this.§;"=§);
         this.§0`§.graphics.drawCircle(param1.x * this.§%j§,param1.y * this.§%j§,param2 * this.§%j§);
      }
      
      public function §3B§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§0`§.graphics.lineStyle(this.§!g§,param4.color,this.§;"=§);
         this.§0`§.graphics.moveTo(0,0);
         this.§0`§.graphics.beginFill(param4.color,this.§[G§);
         this.§0`§.graphics.drawCircle(param1.x * this.§%j§,param1.y * this.§%j§,param2 * this.§%j§);
         this.§0`§.graphics.endFill();
         this.§0`§.graphics.moveTo(param1.x * this.§%j§,param1.y * this.§%j§);
         this.§0`§.graphics.lineTo((param1.x + param3.x * param2) * this.§%j§,(param1.y + param3.y * param2) * this.§%j§);
      }
      
      public function § !L§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§0`§.graphics.lineStyle(this.§!g§,param3.color,this.§;"=§);
         this.§0`§.graphics.moveTo(param1.x * this.§%j§,param1.y * this.§%j§);
         this.§0`§.graphics.lineTo(param2.x * this.§%j§,param2.y * this.§%j§);
      }
      
      public function §#b§(param1:b2Transform) : void
      {
         this.§0`§.graphics.lineStyle(this.§!g§,16711680,this.§;"=§);
         this.§0`§.graphics.moveTo(param1.position.x * this.§%j§,param1.position.y * this.§%j§);
         this.§0`§.graphics.lineTo((param1.position.x + this.§3r§ * param1.R.col1.x) * this.§%j§,(param1.position.y + this.§3r§ * param1.R.col1.y) * this.§%j§);
         this.§0`§.graphics.lineStyle(this.§!g§,65280,this.§;"=§);
         this.§0`§.graphics.moveTo(param1.position.x * this.§%j§,param1.position.y * this.§%j§);
         this.§0`§.graphics.lineTo((param1.position.x + this.§3r§ * param1.R.col2.x) * this.§%j§,(param1.position.y + this.§3r§ * param1.R.col2.y) * this.§%j§);
      }
   }
}
