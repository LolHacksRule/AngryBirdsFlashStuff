package §?!F§
{
   import §,!3§.b2Transform;
   import §,!3§.b2Vec2;
   import §3'§.b2Color;
   import §3'§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §-t§:uint = 1;
      
      public static var §>i§:uint = 2;
      
      public static var §9%§:uint = 4;
      
      public static var §%$§:uint = 8;
      
      public static var §?%§:uint = 16;
      
      public static var §<!O§:uint = 32;
       
      
      private var §'!G§:uint;
      
      b2internal var §^B§:Sprite;
      
      private var § '§:Number = 1.0;
      
      private var §44§:Number = 1.0;
      
      private var §+9§:Number = 1.0;
      
      private var §=D§:Number = 1.0;
      
      private var §&f§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§'!G§ = 0;
      }
      
      public function § get§(param1:uint) : void
      {
         this.§'!G§ = param1;
      }
      
      public function §?#§() : uint
      {
         return this.§'!G§;
      }
      
      public function §9$§(param1:uint) : void
      {
         this.§'!G§ |= param1;
      }
      
      public function §=§(param1:uint) : void
      {
         this.§'!G§ &= ~param1;
      }
      
      public function §?! §(param1:Sprite) : void
      {
         this.§^B§ = param1;
      }
      
      public function §6[§() : Sprite
      {
         return this.§^B§;
      }
      
      public function §=!8§(param1:Number) : void
      {
         this.§ '§ = param1;
      }
      
      public function §`9§() : Number
      {
         return this.§ '§;
      }
      
      public function §8!T§(param1:Number) : void
      {
         this.§44§ = param1;
      }
      
      public function §^Q§() : Number
      {
         return this.§44§;
      }
      
      public function §;!2§(param1:Number) : void
      {
         this.§+9§ = param1;
      }
      
      public function §>p§() : Number
      {
         return this.§+9§;
      }
      
      public function §]l§(param1:Number) : void
      {
         this.§=D§ = param1;
      }
      
      public function §^!"§() : Number
      {
         return this.§=D§;
      }
      
      public function §3!G§(param1:Number) : void
      {
         this.§&f§ = param1;
      }
      
      public function §5+§() : Number
      {
         return this.§&f§;
      }
      
      public function § !#§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§^B§.graphics.lineStyle(this.§44§,param3.color,this.§+9§);
         this.§^B§.graphics.moveTo(param1[0].x * this.§ '§,param1[0].y * this.§ '§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§^B§.graphics.lineTo(param1[_loc4_].x * this.§ '§,param1[_loc4_].y * this.§ '§);
            _loc4_++;
         }
         this.§^B§.graphics.lineTo(param1[0].x * this.§ '§,param1[0].y * this.§ '§);
      }
      
      public function §]!#§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§^B§.graphics.lineStyle(this.§44§,param3.color,this.§+9§);
         this.§^B§.graphics.moveTo(param1[0].x * this.§ '§,param1[0].y * this.§ '§);
         this.§^B§.graphics.beginFill(param3.color,this.§=D§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§^B§.graphics.lineTo(param1[_loc4_].x * this.§ '§,param1[_loc4_].y * this.§ '§);
            _loc4_++;
         }
         this.§^B§.graphics.lineTo(param1[0].x * this.§ '§,param1[0].y * this.§ '§);
         this.§^B§.graphics.endFill();
      }
      
      public function §7!V§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§^B§.graphics.lineStyle(this.§44§,param3.color,this.§+9§);
         this.§^B§.graphics.drawCircle(param1.x * this.§ '§,param1.y * this.§ '§,param2 * this.§ '§);
      }
      
      public function §!R§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§^B§.graphics.lineStyle(this.§44§,param4.color,this.§+9§);
         this.§^B§.graphics.moveTo(0,0);
         this.§^B§.graphics.beginFill(param4.color,this.§=D§);
         this.§^B§.graphics.drawCircle(param1.x * this.§ '§,param1.y * this.§ '§,param2 * this.§ '§);
         this.§^B§.graphics.endFill();
         this.§^B§.graphics.moveTo(param1.x * this.§ '§,param1.y * this.§ '§);
         this.§^B§.graphics.lineTo((param1.x + param3.x * param2) * this.§ '§,(param1.y + param3.y * param2) * this.§ '§);
      }
      
      public function §[C§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§^B§.graphics.lineStyle(this.§44§,param3.color,this.§+9§);
         this.§^B§.graphics.moveTo(param1.x * this.§ '§,param1.y * this.§ '§);
         this.§^B§.graphics.lineTo(param2.x * this.§ '§,param2.y * this.§ '§);
      }
      
      public function §`!+§(param1:b2Transform) : void
      {
         this.§^B§.graphics.lineStyle(this.§44§,16711680,this.§+9§);
         this.§^B§.graphics.moveTo(param1.position.x * this.§ '§,param1.position.y * this.§ '§);
         this.§^B§.graphics.lineTo((param1.position.x + this.§&f§ * param1.R.col1.x) * this.§ '§,(param1.position.y + this.§&f§ * param1.R.col1.y) * this.§ '§);
         this.§^B§.graphics.lineStyle(this.§44§,65280,this.§+9§);
         this.§^B§.graphics.moveTo(param1.position.x * this.§ '§,param1.position.y * this.§ '§);
         this.§^B§.graphics.lineTo((param1.position.x + this.§&f§ * param1.R.col2.x) * this.§ '§,(param1.position.y + this.§&f§ * param1.R.col2.y) * this.§ '§);
      }
   }
}
