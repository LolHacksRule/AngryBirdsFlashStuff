package §<!L§
{
   import §6V§.b2Transform;
   import §6V§.b2Vec2;
   import §[!$§.b2Color;
   import §[!$§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var § A§:uint = 1;
      
      public static var §&!B§:uint = 2;
      
      public static var §77§:uint = 4;
      
      public static var §2!^§:uint = 8;
      
      public static var §[X§:uint = 16;
      
      public static var §^!e§:uint = 32;
       
      
      private var §7Y§:uint;
      
      b2internal var §11§:Sprite;
      
      private var §[!F§:Number = 1.0;
      
      private var §3!]§:Number = 1.0;
      
      private var §^>§:Number = 1.0;
      
      private var §@!3§:Number = 1.0;
      
      private var §1!a§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§7Y§ = 0;
      }
      
      public function §]!,§(param1:uint) : void
      {
         this.§7Y§ = param1;
      }
      
      public function §=!#§() : uint
      {
         return this.§7Y§;
      }
      
      public function §7!4§(param1:uint) : void
      {
         this.§7Y§ |= param1;
      }
      
      public function §@!8§(param1:uint) : void
      {
         this.§7Y§ &= ~param1;
      }
      
      public function §<i§(param1:Sprite) : void
      {
         this.§11§ = param1;
      }
      
      public function §[,§() : Sprite
      {
         return this.§11§;
      }
      
      public function §3B§(param1:Number) : void
      {
         this.§[!F§ = param1;
      }
      
      public function §9!A§() : Number
      {
         return this.§[!F§;
      }
      
      public function §1!-§(param1:Number) : void
      {
         this.§3!]§ = param1;
      }
      
      public function §4! §() : Number
      {
         return this.§3!]§;
      }
      
      public function §<<§(param1:Number) : void
      {
         this.§^>§ = param1;
      }
      
      public function §8!&§() : Number
      {
         return this.§^>§;
      }
      
      public function §>q§(param1:Number) : void
      {
         this.§@!3§ = param1;
      }
      
      public function §0e§() : Number
      {
         return this.§@!3§;
      }
      
      public function §8O§(param1:Number) : void
      {
         this.§1!a§ = param1;
      }
      
      public function §1n§() : Number
      {
         return this.§1!a§;
      }
      
      public function §`5§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§11§.graphics.lineStyle(this.§3!]§,param3.color,this.§^>§);
         this.§11§.graphics.moveTo(param1[0].x * this.§[!F§,param1[0].y * this.§[!F§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§11§.graphics.lineTo(param1[_loc4_].x * this.§[!F§,param1[_loc4_].y * this.§[!F§);
            _loc4_++;
         }
         this.§11§.graphics.lineTo(param1[0].x * this.§[!F§,param1[0].y * this.§[!F§);
      }
      
      public function §1!b§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§11§.graphics.lineStyle(this.§3!]§,param3.color,this.§^>§);
         this.§11§.graphics.moveTo(param1[0].x * this.§[!F§,param1[0].y * this.§[!F§);
         this.§11§.graphics.beginFill(param3.color,this.§@!3§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§11§.graphics.lineTo(param1[_loc4_].x * this.§[!F§,param1[_loc4_].y * this.§[!F§);
            _loc4_++;
         }
         this.§11§.graphics.lineTo(param1[0].x * this.§[!F§,param1[0].y * this.§[!F§);
         this.§11§.graphics.endFill();
      }
      
      public function §^!#§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§11§.graphics.lineStyle(this.§3!]§,param3.color,this.§^>§);
         this.§11§.graphics.drawCircle(param1.x * this.§[!F§,param1.y * this.§[!F§,param2 * this.§[!F§);
      }
      
      public function §]M§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§11§.graphics.lineStyle(this.§3!]§,param4.color,this.§^>§);
         this.§11§.graphics.moveTo(0,0);
         this.§11§.graphics.beginFill(param4.color,this.§@!3§);
         this.§11§.graphics.drawCircle(param1.x * this.§[!F§,param1.y * this.§[!F§,param2 * this.§[!F§);
         this.§11§.graphics.endFill();
         this.§11§.graphics.moveTo(param1.x * this.§[!F§,param1.y * this.§[!F§);
         this.§11§.graphics.lineTo((param1.x + param3.x * param2) * this.§[!F§,(param1.y + param3.y * param2) * this.§[!F§);
      }
      
      public function §<C§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§11§.graphics.lineStyle(this.§3!]§,param3.color,this.§^>§);
         this.§11§.graphics.moveTo(param1.x * this.§[!F§,param1.y * this.§[!F§);
         this.§11§.graphics.lineTo(param2.x * this.§[!F§,param2.y * this.§[!F§);
      }
      
      public function §[!d§(param1:b2Transform) : void
      {
         this.§11§.graphics.lineStyle(this.§3!]§,16711680,this.§^>§);
         this.§11§.graphics.moveTo(param1.position.x * this.§[!F§,param1.position.y * this.§[!F§);
         this.§11§.graphics.lineTo((param1.position.x + this.§1!a§ * param1.R.col1.x) * this.§[!F§,(param1.position.y + this.§1!a§ * param1.R.col1.y) * this.§[!F§);
         this.§11§.graphics.lineStyle(this.§3!]§,65280,this.§^>§);
         this.§11§.graphics.moveTo(param1.position.x * this.§[!F§,param1.position.y * this.§[!F§);
         this.§11§.graphics.lineTo((param1.position.x + this.§1!a§ * param1.R.col2.x) * this.§[!F§,(param1.position.y + this.§1!a§ * param1.R.col2.y) * this.§[!F§);
      }
   }
}
