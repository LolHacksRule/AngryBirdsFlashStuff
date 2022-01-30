package §,v§
{
   import §-!A§.b2Transform;
   import §-!A§.b2Vec2;
   import §@h§.b2Color;
   import §@h§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §!!4§:uint = 1;
      
      public static var §9"§:uint = 2;
      
      public static var §'!E§:uint = 4;
      
      public static var §[!a§:uint = 8;
      
      public static var §+!v§:uint = 16;
      
      public static var §03§:uint = 32;
       
      
      private var §%!Q§:uint;
      
      b2internal var §#!^§:Sprite;
      
      private var §"!`§:Number = 1.0;
      
      private var §9!6§:Number = 1.0;
      
      private var §6!I§:Number = 1.0;
      
      private var §9p§:Number = 1.0;
      
      private var §>8§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§%!Q§ = 0;
      }
      
      public function §&"!§(param1:uint) : void
      {
         this.§%!Q§ = param1;
      }
      
      public function §??§() : uint
      {
         return this.§%!Q§;
      }
      
      public function §^"+§(param1:uint) : void
      {
         this.§%!Q§ |= param1;
      }
      
      public function §[!H§(param1:uint) : void
      {
         this.§%!Q§ &= ~param1;
      }
      
      public function §@i§(param1:Sprite) : void
      {
         this.§#!^§ = param1;
      }
      
      public function §3!R§() : Sprite
      {
         return this.§#!^§;
      }
      
      public function §1"§(param1:Number) : void
      {
         this.§"!`§ = param1;
      }
      
      public function §6!?§() : Number
      {
         return this.§"!`§;
      }
      
      public function §-s§(param1:Number) : void
      {
         this.§9!6§ = param1;
      }
      
      public function §2!S§() : Number
      {
         return this.§9!6§;
      }
      
      public function § S§(param1:Number) : void
      {
         this.§6!I§ = param1;
      }
      
      public function § !H§() : Number
      {
         return this.§6!I§;
      }
      
      public function §@x§(param1:Number) : void
      {
         this.§9p§ = param1;
      }
      
      public function § "3§() : Number
      {
         return this.§9p§;
      }
      
      public function §-!f§(param1:Number) : void
      {
         this.§>8§ = param1;
      }
      
      public function §,!F§() : Number
      {
         return this.§>8§;
      }
      
      public function §?!Q§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§#!^§.graphics.lineStyle(this.§9!6§,param3.color,this.§6!I§);
         this.§#!^§.graphics.moveTo(param1[0].x * this.§"!`§,param1[0].y * this.§"!`§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§#!^§.graphics.lineTo(param1[_loc4_].x * this.§"!`§,param1[_loc4_].y * this.§"!`§);
            _loc4_++;
         }
         this.§#!^§.graphics.lineTo(param1[0].x * this.§"!`§,param1[0].y * this.§"!`§);
      }
      
      public function §]$§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§#!^§.graphics.lineStyle(this.§9!6§,param3.color,this.§6!I§);
         this.§#!^§.graphics.moveTo(param1[0].x * this.§"!`§,param1[0].y * this.§"!`§);
         this.§#!^§.graphics.beginFill(param3.color,this.§9p§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§#!^§.graphics.lineTo(param1[_loc4_].x * this.§"!`§,param1[_loc4_].y * this.§"!`§);
            _loc4_++;
         }
         this.§#!^§.graphics.lineTo(param1[0].x * this.§"!`§,param1[0].y * this.§"!`§);
         this.§#!^§.graphics.endFill();
      }
      
      public function §-!T§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§#!^§.graphics.lineStyle(this.§9!6§,param3.color,this.§6!I§);
         this.§#!^§.graphics.drawCircle(param1.x * this.§"!`§,param1.y * this.§"!`§,param2 * this.§"!`§);
      }
      
      public function §'!$§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§#!^§.graphics.lineStyle(this.§9!6§,param4.color,this.§6!I§);
         this.§#!^§.graphics.moveTo(0,0);
         this.§#!^§.graphics.beginFill(param4.color,this.§9p§);
         this.§#!^§.graphics.drawCircle(param1.x * this.§"!`§,param1.y * this.§"!`§,param2 * this.§"!`§);
         this.§#!^§.graphics.endFill();
         this.§#!^§.graphics.moveTo(param1.x * this.§"!`§,param1.y * this.§"!`§);
         this.§#!^§.graphics.lineTo((param1.x + param3.x * param2) * this.§"!`§,(param1.y + param3.y * param2) * this.§"!`§);
      }
      
      public function §6>§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§#!^§.graphics.lineStyle(this.§9!6§,param3.color,this.§6!I§);
         this.§#!^§.graphics.moveTo(param1.x * this.§"!`§,param1.y * this.§"!`§);
         this.§#!^§.graphics.lineTo(param2.x * this.§"!`§,param2.y * this.§"!`§);
      }
      
      public function §1"$§(param1:b2Transform) : void
      {
         this.§#!^§.graphics.lineStyle(this.§9!6§,16711680,this.§6!I§);
         this.§#!^§.graphics.moveTo(param1.position.x * this.§"!`§,param1.position.y * this.§"!`§);
         this.§#!^§.graphics.lineTo((param1.position.x + this.§>8§ * param1.R.col1.x) * this.§"!`§,(param1.position.y + this.§>8§ * param1.R.col1.y) * this.§"!`§);
         this.§#!^§.graphics.lineStyle(this.§9!6§,65280,this.§6!I§);
         this.§#!^§.graphics.moveTo(param1.position.x * this.§"!`§,param1.position.y * this.§"!`§);
         this.§#!^§.graphics.lineTo((param1.position.x + this.§>8§ * param1.R.col2.x) * this.§"!`§,(param1.position.y + this.§>8§ * param1.R.col2.y) * this.§"!`§);
      }
   }
}
