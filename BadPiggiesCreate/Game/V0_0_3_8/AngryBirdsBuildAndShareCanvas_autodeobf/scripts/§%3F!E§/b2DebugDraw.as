package §?!E§
{
   import §8,§.b2Color;
   import §8,§.b2internal;
   import §9v§.b2Transform;
   import §9v§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §87§:uint = 1;
      
      public static var §6!H§:uint = 2;
      
      public static var §^!W§:uint = 4;
      
      public static var §8t§:uint = 8;
      
      public static var §3"4§:uint = 16;
      
      public static var §+"+§:uint = 32;
       
      
      private var §=!E§:uint;
      
      b2internal var §44§:Sprite;
      
      private var §?!b§:Number = 1.0;
      
      private var §`L§:Number = 1.0;
      
      private var §;Q§:Number = 1.0;
      
      private var §1"'§:Number = 1.0;
      
      private var §[A§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§=!E§ = 0;
      }
      
      public function §=!-§(param1:uint) : void
      {
         this.§=!E§ = param1;
      }
      
      public function §"5§() : uint
      {
         return this.§=!E§;
      }
      
      public function §?!u§(param1:uint) : void
      {
         this.§=!E§ |= param1;
      }
      
      public function §,!>§(param1:uint) : void
      {
         this.§=!E§ &= ~param1;
      }
      
      public function §?!&§(param1:Sprite) : void
      {
         this.§44§ = param1;
      }
      
      public function §7!9§() : Sprite
      {
         return this.§44§;
      }
      
      public function §2!i§(param1:Number) : void
      {
         this.§?!b§ = param1;
      }
      
      public function §5! §() : Number
      {
         return this.§?!b§;
      }
      
      public function §;I§(param1:Number) : void
      {
         this.§`L§ = param1;
      }
      
      public function §+"'§() : Number
      {
         return this.§`L§;
      }
      
      public function §@!b§(param1:Number) : void
      {
         this.§;Q§ = param1;
      }
      
      public function §9!6§() : Number
      {
         return this.§;Q§;
      }
      
      public function §^!@§(param1:Number) : void
      {
         this.§1"'§ = param1;
      }
      
      public function §@!$§() : Number
      {
         return this.§1"'§;
      }
      
      public function §[!]§(param1:Number) : void
      {
         this.§[A§ = param1;
      }
      
      public function §]I§() : Number
      {
         return this.§[A§;
      }
      
      public function §>!i§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§44§.graphics.lineStyle(this.§`L§,param3.color,this.§;Q§);
         this.§44§.graphics.moveTo(param1[0].x * this.§?!b§,param1[0].y * this.§?!b§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§44§.graphics.lineTo(param1[_loc4_].x * this.§?!b§,param1[_loc4_].y * this.§?!b§);
            _loc4_++;
         }
         this.§44§.graphics.lineTo(param1[0].x * this.§?!b§,param1[0].y * this.§?!b§);
      }
      
      public function §3D§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§44§.graphics.lineStyle(this.§`L§,param3.color,this.§;Q§);
         this.§44§.graphics.moveTo(param1[0].x * this.§?!b§,param1[0].y * this.§?!b§);
         this.§44§.graphics.beginFill(param3.color,this.§1"'§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§44§.graphics.lineTo(param1[_loc4_].x * this.§?!b§,param1[_loc4_].y * this.§?!b§);
            _loc4_++;
         }
         this.§44§.graphics.lineTo(param1[0].x * this.§?!b§,param1[0].y * this.§?!b§);
         this.§44§.graphics.endFill();
      }
      
      public function §2!M§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§44§.graphics.lineStyle(this.§`L§,param3.color,this.§;Q§);
         this.§44§.graphics.drawCircle(param1.x * this.§?!b§,param1.y * this.§?!b§,param2 * this.§?!b§);
      }
      
      public function §'!!§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§44§.graphics.lineStyle(this.§`L§,param4.color,this.§;Q§);
         this.§44§.graphics.moveTo(0,0);
         this.§44§.graphics.beginFill(param4.color,this.§1"'§);
         this.§44§.graphics.drawCircle(param1.x * this.§?!b§,param1.y * this.§?!b§,param2 * this.§?!b§);
         this.§44§.graphics.endFill();
         this.§44§.graphics.moveTo(param1.x * this.§?!b§,param1.y * this.§?!b§);
         this.§44§.graphics.lineTo((param1.x + param3.x * param2) * this.§?!b§,(param1.y + param3.y * param2) * this.§?!b§);
      }
      
      public function §5B§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§44§.graphics.lineStyle(this.§`L§,param3.color,this.§;Q§);
         this.§44§.graphics.moveTo(param1.x * this.§?!b§,param1.y * this.§?!b§);
         this.§44§.graphics.lineTo(param2.x * this.§?!b§,param2.y * this.§?!b§);
      }
      
      public function §'!k§(param1:b2Transform) : void
      {
         this.§44§.graphics.lineStyle(this.§`L§,16711680,this.§;Q§);
         this.§44§.graphics.moveTo(param1.position.x * this.§?!b§,param1.position.y * this.§?!b§);
         this.§44§.graphics.lineTo((param1.position.x + this.§[A§ * param1.R.col1.x) * this.§?!b§,(param1.position.y + this.§[A§ * param1.R.col1.y) * this.§?!b§);
         this.§44§.graphics.lineStyle(this.§`L§,65280,this.§;Q§);
         this.§44§.graphics.moveTo(param1.position.x * this.§?!b§,param1.position.y * this.§?!b§);
         this.§44§.graphics.lineTo((param1.position.x + this.§[A§ * param1.R.col2.x) * this.§?!b§,(param1.position.y + this.§[A§ * param1.R.col2.y) * this.§?!b§);
      }
   }
}
