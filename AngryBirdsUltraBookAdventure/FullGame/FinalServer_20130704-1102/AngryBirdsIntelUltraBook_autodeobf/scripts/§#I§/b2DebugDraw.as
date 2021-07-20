package §#I§
{
   import §&H§.b2Transform;
   import §&H§.b2Vec2;
   import §@!3§.b2Color;
   import §@!3§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §6!t§:uint = 1;
      
      public static var §5!?§:uint = 2;
      
      public static var §]U§:uint = 4;
      
      public static var §0Y§:uint = 8;
      
      public static var §]c§:uint = 16;
      
      public static var §9,§:uint = 32;
       
      
      private var §+!y§:uint;
      
      b2internal var §^D§:Sprite;
      
      private var §1L§:Number = 1.0;
      
      private var §-!,§:Number = 1.0;
      
      private var §=!@§:Number = 1.0;
      
      private var §6!&§:Number = 1.0;
      
      private var §'#§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§+!y§ = 0;
      }
      
      public function §[+§(param1:uint) : void
      {
         this.§+!y§ = param1;
      }
      
      public function §!!^§() : uint
      {
         return this.§+!y§;
      }
      
      public function § true§(param1:uint) : void
      {
         this.§+!y§ |= param1;
      }
      
      public function §8B§(param1:uint) : void
      {
         this.§+!y§ &= ~param1;
      }
      
      public function §[!B§(param1:Sprite) : void
      {
         this.§^D§ = param1;
      }
      
      public function §^!w§() : Sprite
      {
         return this.§^D§;
      }
      
      public function §=!_§(param1:Number) : void
      {
         this.§1L§ = param1;
      }
      
      public function §5y§() : Number
      {
         return this.§1L§;
      }
      
      public function §[b§(param1:Number) : void
      {
         this.§-!,§ = param1;
      }
      
      public function §?!9§() : Number
      {
         return this.§-!,§;
      }
      
      public function §6!N§(param1:Number) : void
      {
         this.§=!@§ = param1;
      }
      
      public function §'L§() : Number
      {
         return this.§=!@§;
      }
      
      public function §8!4§(param1:Number) : void
      {
         this.§6!&§ = param1;
      }
      
      public function §=;§() : Number
      {
         return this.§6!&§;
      }
      
      public function §^!D§(param1:Number) : void
      {
         this.§'#§ = param1;
      }
      
      public function §1!u§() : Number
      {
         return this.§'#§;
      }
      
      public function §6!s§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§^D§.graphics.lineStyle(this.§-!,§,param3.color,this.§=!@§);
         this.§^D§.graphics.moveTo(param1[0].x * this.§1L§,param1[0].y * this.§1L§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§^D§.graphics.lineTo(param1[_loc4_].x * this.§1L§,param1[_loc4_].y * this.§1L§);
            _loc4_++;
         }
         this.§^D§.graphics.lineTo(param1[0].x * this.§1L§,param1[0].y * this.§1L§);
      }
      
      public function §#b§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§^D§.graphics.lineStyle(this.§-!,§,param3.color,this.§=!@§);
         this.§^D§.graphics.moveTo(param1[0].x * this.§1L§,param1[0].y * this.§1L§);
         this.§^D§.graphics.beginFill(param3.color,this.§6!&§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§^D§.graphics.lineTo(param1[_loc4_].x * this.§1L§,param1[_loc4_].y * this.§1L§);
            _loc4_++;
         }
         this.§^D§.graphics.lineTo(param1[0].x * this.§1L§,param1[0].y * this.§1L§);
         this.§^D§.graphics.endFill();
      }
      
      public function §,k§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§^D§.graphics.lineStyle(this.§-!,§,param3.color,this.§=!@§);
         this.§^D§.graphics.drawCircle(param1.x * this.§1L§,param1.y * this.§1L§,param2 * this.§1L§);
      }
      
      public function § !z§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§^D§.graphics.lineStyle(this.§-!,§,param4.color,this.§=!@§);
         this.§^D§.graphics.moveTo(0,0);
         this.§^D§.graphics.beginFill(param4.color,this.§6!&§);
         this.§^D§.graphics.drawCircle(param1.x * this.§1L§,param1.y * this.§1L§,param2 * this.§1L§);
         this.§^D§.graphics.endFill();
         this.§^D§.graphics.moveTo(param1.x * this.§1L§,param1.y * this.§1L§);
         this.§^D§.graphics.lineTo((param1.x + param3.x * param2) * this.§1L§,(param1.y + param3.y * param2) * this.§1L§);
      }
      
      public function §-!E§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§^D§.graphics.lineStyle(this.§-!,§,param3.color,this.§=!@§);
         this.§^D§.graphics.moveTo(param1.x * this.§1L§,param1.y * this.§1L§);
         this.§^D§.graphics.lineTo(param2.x * this.§1L§,param2.y * this.§1L§);
      }
      
      public function §+6§(param1:b2Transform) : void
      {
         this.§^D§.graphics.lineStyle(this.§-!,§,16711680,this.§=!@§);
         this.§^D§.graphics.moveTo(param1.position.x * this.§1L§,param1.position.y * this.§1L§);
         this.§^D§.graphics.lineTo((param1.position.x + this.§'#§ * param1.R.col1.x) * this.§1L§,(param1.position.y + this.§'#§ * param1.R.col1.y) * this.§1L§);
         this.§^D§.graphics.lineStyle(this.§-!,§,65280,this.§=!@§);
         this.§^D§.graphics.moveTo(param1.position.x * this.§1L§,param1.position.y * this.§1L§);
         this.§^D§.graphics.lineTo((param1.position.x + this.§'#§ * param1.R.col2.x) * this.§1L§,(param1.position.y + this.§'#§ * param1.R.col2.y) * this.§1L§);
      }
   }
}
