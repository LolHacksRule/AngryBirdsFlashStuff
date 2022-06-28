package § D§
{
   import §8>§.b2Transform;
   import §8>§.b2Vec2;
   import §;u§.b2Color;
   import §;u§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §[b§:uint = 1;
      
      public static var §"g§:uint = 2;
      
      public static var § else§:uint = 4;
      
      public static var §;!#§:uint = 8;
      
      public static var §5x§:uint = 16;
      
      public static var §'§:uint = 32;
       
      
      private var §4!;§:uint;
      
      b2internal var §?A§:Sprite;
      
      private var §?!X§:Number = 1.0;
      
      private var §>!4§:Number = 1.0;
      
      private var §[!F§:Number = 1.0;
      
      private var §&s§:Number = 1.0;
      
      private var §!^§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§4!;§ = 0;
      }
      
      public function §]!>§(param1:uint) : void
      {
         this.§4!;§ = param1;
      }
      
      public function §-Q§() : uint
      {
         return this.§4!;§;
      }
      
      public function §6!%§(param1:uint) : void
      {
         this.§4!;§ |= param1;
      }
      
      public function § !Z§(param1:uint) : void
      {
         this.§4!;§ &= ~param1;
      }
      
      public function §90§(param1:Sprite) : void
      {
         this.§?A§ = param1;
      }
      
      public function §1G§() : Sprite
      {
         return this.§?A§;
      }
      
      public function §>!L§(param1:Number) : void
      {
         this.§?!X§ = param1;
      }
      
      public function §`u§() : Number
      {
         return this.§?!X§;
      }
      
      public function §7!A§(param1:Number) : void
      {
         this.§>!4§ = param1;
      }
      
      public function §<!A§() : Number
      {
         return this.§>!4§;
      }
      
      public function §<!N§(param1:Number) : void
      {
         this.§[!F§ = param1;
      }
      
      public function §6G§() : Number
      {
         return this.§[!F§;
      }
      
      public function §;!O§(param1:Number) : void
      {
         this.§&s§ = param1;
      }
      
      public function §'I§() : Number
      {
         return this.§&s§;
      }
      
      public function § !;§(param1:Number) : void
      {
         this.§!^§ = param1;
      }
      
      public function §'p§() : Number
      {
         return this.§!^§;
      }
      
      public function §<!L§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§?A§.graphics.lineStyle(this.§>!4§,param3.color,this.§[!F§);
         this.§?A§.graphics.moveTo(param1[0].x * this.§?!X§,param1[0].y * this.§?!X§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§?A§.graphics.lineTo(param1[_loc4_].x * this.§?!X§,param1[_loc4_].y * this.§?!X§);
            _loc4_++;
         }
         this.§?A§.graphics.lineTo(param1[0].x * this.§?!X§,param1[0].y * this.§?!X§);
      }
      
      public function §0!8§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§?A§.graphics.lineStyle(this.§>!4§,param3.color,this.§[!F§);
         this.§?A§.graphics.moveTo(param1[0].x * this.§?!X§,param1[0].y * this.§?!X§);
         this.§?A§.graphics.beginFill(param3.color,this.§&s§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§?A§.graphics.lineTo(param1[_loc4_].x * this.§?!X§,param1[_loc4_].y * this.§?!X§);
            _loc4_++;
         }
         this.§?A§.graphics.lineTo(param1[0].x * this.§?!X§,param1[0].y * this.§?!X§);
         this.§?A§.graphics.endFill();
      }
      
      public function §<!j§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§?A§.graphics.lineStyle(this.§>!4§,param3.color,this.§[!F§);
         this.§?A§.graphics.drawCircle(param1.x * this.§?!X§,param1.y * this.§?!X§,param2 * this.§?!X§);
      }
      
      public function §1!5§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§?A§.graphics.lineStyle(this.§>!4§,param4.color,this.§[!F§);
         this.§?A§.graphics.moveTo(0,0);
         this.§?A§.graphics.beginFill(param4.color,this.§&s§);
         this.§?A§.graphics.drawCircle(param1.x * this.§?!X§,param1.y * this.§?!X§,param2 * this.§?!X§);
         this.§?A§.graphics.endFill();
         this.§?A§.graphics.moveTo(param1.x * this.§?!X§,param1.y * this.§?!X§);
         this.§?A§.graphics.lineTo((param1.x + param3.x * param2) * this.§?!X§,(param1.y + param3.y * param2) * this.§?!X§);
      }
      
      public function §1!D§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§?A§.graphics.lineStyle(this.§>!4§,param3.color,this.§[!F§);
         this.§?A§.graphics.moveTo(param1.x * this.§?!X§,param1.y * this.§?!X§);
         this.§?A§.graphics.lineTo(param2.x * this.§?!X§,param2.y * this.§?!X§);
      }
      
      public function §&!2§(param1:b2Transform) : void
      {
         this.§?A§.graphics.lineStyle(this.§>!4§,16711680,this.§[!F§);
         this.§?A§.graphics.moveTo(param1.position.x * this.§?!X§,param1.position.y * this.§?!X§);
         this.§?A§.graphics.lineTo((param1.position.x + this.§!^§ * param1.R.col1.x) * this.§?!X§,(param1.position.y + this.§!^§ * param1.R.col1.y) * this.§?!X§);
         this.§?A§.graphics.lineStyle(this.§>!4§,65280,this.§[!F§);
         this.§?A§.graphics.moveTo(param1.position.x * this.§?!X§,param1.position.y * this.§?!X§);
         this.§?A§.graphics.lineTo((param1.position.x + this.§!^§ * param1.R.col2.x) * this.§?!X§,(param1.position.y + this.§!^§ * param1.R.col2.y) * this.§?!X§);
      }
   }
}
