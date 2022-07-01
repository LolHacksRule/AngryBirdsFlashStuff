package §&!M§
{
   import §3!t§.b2Transform;
   import §3!t§.b2Vec2;
   import §6!`§.b2Color;
   import §6!`§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §8!B§:uint = 1;
      
      public static var §9Z§:uint = 2;
      
      public static var § !,§:uint = 4;
      
      public static var §`z§:uint = 8;
      
      public static var §,V§:uint = 16;
      
      public static var §<!+§:uint = 32;
       
      
      private var §9,§:uint;
      
      b2internal var §6!E§:Sprite;
      
      private var §7"8§:Number = 1.0;
      
      private var §>!6§:Number = 1.0;
      
      private var §@!'§:Number = 1.0;
      
      private var §'+§:Number = 1.0;
      
      private var §4!D§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§9,§ = 0;
      }
      
      public function §<Z§(param1:uint) : void
      {
         this.§9,§ = param1;
      }
      
      public function § [§() : uint
      {
         return this.§9,§;
      }
      
      public function §#!W§(param1:uint) : void
      {
         this.§9,§ |= param1;
      }
      
      public function §@_§(param1:uint) : void
      {
         this.§9,§ &= ~param1;
      }
      
      public function §]!<§(param1:Sprite) : void
      {
         this.§6!E§ = param1;
      }
      
      public function §?""§() : Sprite
      {
         return this.§6!E§;
      }
      
      public function §[!s§(param1:Number) : void
      {
         this.§7"8§ = param1;
      }
      
      public function §7!r§() : Number
      {
         return this.§7"8§;
      }
      
      public function §?!k§(param1:Number) : void
      {
         this.§>!6§ = param1;
      }
      
      public function §%!U§() : Number
      {
         return this.§>!6§;
      }
      
      public function §0!e§(param1:Number) : void
      {
         this.§@!'§ = param1;
      }
      
      public function §6!j§() : Number
      {
         return this.§@!'§;
      }
      
      public function §3";§(param1:Number) : void
      {
         this.§'+§ = param1;
      }
      
      public function §?!E§() : Number
      {
         return this.§'+§;
      }
      
      public function §"!J§(param1:Number) : void
      {
         this.§4!D§ = param1;
      }
      
      public function § ;§() : Number
      {
         return this.§4!D§;
      }
      
      public function §@!d§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§6!E§.graphics.lineStyle(this.§>!6§,param3.color,this.§@!'§);
         this.§6!E§.graphics.moveTo(param1[0].x * this.§7"8§,param1[0].y * this.§7"8§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§6!E§.graphics.lineTo(param1[_loc4_].x * this.§7"8§,param1[_loc4_].y * this.§7"8§);
            _loc4_++;
         }
         this.§6!E§.graphics.lineTo(param1[0].x * this.§7"8§,param1[0].y * this.§7"8§);
      }
      
      public function §6]§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§6!E§.graphics.lineStyle(this.§>!6§,param3.color,this.§@!'§);
         this.§6!E§.graphics.moveTo(param1[0].x * this.§7"8§,param1[0].y * this.§7"8§);
         this.§6!E§.graphics.beginFill(param3.color,this.§'+§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§6!E§.graphics.lineTo(param1[_loc4_].x * this.§7"8§,param1[_loc4_].y * this.§7"8§);
            _loc4_++;
         }
         this.§6!E§.graphics.lineTo(param1[0].x * this.§7"8§,param1[0].y * this.§7"8§);
         this.§6!E§.graphics.endFill();
      }
      
      public function §[q§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§6!E§.graphics.lineStyle(this.§>!6§,param3.color,this.§@!'§);
         this.§6!E§.graphics.drawCircle(param1.x * this.§7"8§,param1.y * this.§7"8§,param2 * this.§7"8§);
      }
      
      public function §-!9§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§6!E§.graphics.lineStyle(this.§>!6§,param4.color,this.§@!'§);
         this.§6!E§.graphics.moveTo(0,0);
         this.§6!E§.graphics.beginFill(param4.color,this.§'+§);
         this.§6!E§.graphics.drawCircle(param1.x * this.§7"8§,param1.y * this.§7"8§,param2 * this.§7"8§);
         this.§6!E§.graphics.endFill();
         this.§6!E§.graphics.moveTo(param1.x * this.§7"8§,param1.y * this.§7"8§);
         this.§6!E§.graphics.lineTo((param1.x + param3.x * param2) * this.§7"8§,(param1.y + param3.y * param2) * this.§7"8§);
      }
      
      public function §,"7§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§6!E§.graphics.lineStyle(this.§>!6§,param3.color,this.§@!'§);
         this.§6!E§.graphics.moveTo(param1.x * this.§7"8§,param1.y * this.§7"8§);
         this.§6!E§.graphics.lineTo(param2.x * this.§7"8§,param2.y * this.§7"8§);
      }
      
      public function §=!j§(param1:b2Transform) : void
      {
         this.§6!E§.graphics.lineStyle(this.§>!6§,16711680,this.§@!'§);
         this.§6!E§.graphics.moveTo(param1.position.x * this.§7"8§,param1.position.y * this.§7"8§);
         this.§6!E§.graphics.lineTo((param1.position.x + this.§4!D§ * param1.R.col1.x) * this.§7"8§,(param1.position.y + this.§4!D§ * param1.R.col1.y) * this.§7"8§);
         this.§6!E§.graphics.lineStyle(this.§>!6§,65280,this.§@!'§);
         this.§6!E§.graphics.moveTo(param1.position.x * this.§7"8§,param1.position.y * this.§7"8§);
         this.§6!E§.graphics.lineTo((param1.position.x + this.§4!D§ * param1.R.col2.x) * this.§7"8§,(param1.position.y + this.§4!D§ * param1.R.col2.y) * this.§7"8§);
      }
   }
}
