package §1%§
{
   import §8!H§.b2Color;
   import §8!H§.b2internal;
   import §?!&§.b2Transform;
   import §?!&§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §'!J§:uint = 1;
      
      public static var §#W§:uint = 2;
      
      public static var §!V§:uint = 4;
      
      public static var §',§:uint = 8;
      
      public static var §9!F§:uint = 16;
      
      public static var §,!M§:uint = 32;
       
      
      private var §#!k§:uint;
      
      b2internal var § y§:Sprite;
      
      private var §;%§:Number = 1.0;
      
      private var § R§:Number = 1.0;
      
      private var §[s§:Number = 1.0;
      
      private var §#A§:Number = 1.0;
      
      private var §[C§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§#!k§ = 0;
      }
      
      public function §7?§(param1:uint) : void
      {
         this.§#!k§ = param1;
      }
      
      public function §-r§() : uint
      {
         return this.§#!k§;
      }
      
      public function §1!§(param1:uint) : void
      {
         this.§#!k§ |= param1;
      }
      
      public function §]!b§(param1:uint) : void
      {
         this.§#!k§ &= ~param1;
      }
      
      public function §try§(param1:Sprite) : void
      {
         this.§ y§ = param1;
      }
      
      public function §%!4§() : Sprite
      {
         return this.§ y§;
      }
      
      public function §!4§(param1:Number) : void
      {
         this.§;%§ = param1;
      }
      
      public function §<_§() : Number
      {
         return this.§;%§;
      }
      
      public function §'&§(param1:Number) : void
      {
         this.§ R§ = param1;
      }
      
      public function §^&§() : Number
      {
         return this.§ R§;
      }
      
      public function §]V§(param1:Number) : void
      {
         this.§[s§ = param1;
      }
      
      public function §`!J§() : Number
      {
         return this.§[s§;
      }
      
      public function §24§(param1:Number) : void
      {
         this.§#A§ = param1;
      }
      
      public function §%s§() : Number
      {
         return this.§#A§;
      }
      
      public function §]!W§(param1:Number) : void
      {
         this.§[C§ = param1;
      }
      
      public function §>!K§() : Number
      {
         return this.§[C§;
      }
      
      public function §6]§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§ y§.graphics.lineStyle(this.§ R§,param3.color,this.§[s§);
         this.§ y§.graphics.moveTo(param1[0].x * this.§;%§,param1[0].y * this.§;%§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§ y§.graphics.lineTo(param1[_loc4_].x * this.§;%§,param1[_loc4_].y * this.§;%§);
            _loc4_++;
         }
         this.§ y§.graphics.lineTo(param1[0].x * this.§;%§,param1[0].y * this.§;%§);
      }
      
      public function §[! §(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§ y§.graphics.lineStyle(this.§ R§,param3.color,this.§[s§);
         this.§ y§.graphics.moveTo(param1[0].x * this.§;%§,param1[0].y * this.§;%§);
         this.§ y§.graphics.beginFill(param3.color,this.§#A§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§ y§.graphics.lineTo(param1[_loc4_].x * this.§;%§,param1[_loc4_].y * this.§;%§);
            _loc4_++;
         }
         this.§ y§.graphics.lineTo(param1[0].x * this.§;%§,param1[0].y * this.§;%§);
         this.§ y§.graphics.endFill();
      }
      
      public function §8[§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§ y§.graphics.lineStyle(this.§ R§,param3.color,this.§[s§);
         this.§ y§.graphics.drawCircle(param1.x * this.§;%§,param1.y * this.§;%§,param2 * this.§;%§);
      }
      
      public function §[5§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§ y§.graphics.lineStyle(this.§ R§,param4.color,this.§[s§);
         this.§ y§.graphics.moveTo(0,0);
         this.§ y§.graphics.beginFill(param4.color,this.§#A§);
         this.§ y§.graphics.drawCircle(param1.x * this.§;%§,param1.y * this.§;%§,param2 * this.§;%§);
         this.§ y§.graphics.endFill();
         this.§ y§.graphics.moveTo(param1.x * this.§;%§,param1.y * this.§;%§);
         this.§ y§.graphics.lineTo((param1.x + param3.x * param2) * this.§;%§,(param1.y + param3.y * param2) * this.§;%§);
      }
      
      public function §0!3§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§ y§.graphics.lineStyle(this.§ R§,param3.color,this.§[s§);
         this.§ y§.graphics.moveTo(param1.x * this.§;%§,param1.y * this.§;%§);
         this.§ y§.graphics.lineTo(param2.x * this.§;%§,param2.y * this.§;%§);
      }
      
      public function §`!`§(param1:b2Transform) : void
      {
         this.§ y§.graphics.lineStyle(this.§ R§,16711680,this.§[s§);
         this.§ y§.graphics.moveTo(param1.position.x * this.§;%§,param1.position.y * this.§;%§);
         this.§ y§.graphics.lineTo((param1.position.x + this.§[C§ * param1.R.col1.x) * this.§;%§,(param1.position.y + this.§[C§ * param1.R.col1.y) * this.§;%§);
         this.§ y§.graphics.lineStyle(this.§ R§,65280,this.§[s§);
         this.§ y§.graphics.moveTo(param1.position.x * this.§;%§,param1.position.y * this.§;%§);
         this.§ y§.graphics.lineTo((param1.position.x + this.§[C§ * param1.R.col2.x) * this.§;%§,(param1.position.y + this.§[C§ * param1.R.col2.y) * this.§;%§);
      }
   }
}
