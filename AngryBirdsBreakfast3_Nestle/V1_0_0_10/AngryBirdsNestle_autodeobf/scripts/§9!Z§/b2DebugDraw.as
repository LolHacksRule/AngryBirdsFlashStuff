package §9!Z§
{
   import §'I§.b2Color;
   import §'I§.b2internal;
   import §?"'§.b2Transform;
   import §?"'§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §3!^§:uint = 1;
      
      public static var §&V§:uint = 2;
      
      public static var §7x§:uint = 4;
      
      public static var §+B§:uint = 8;
      
      public static var §;!s§:uint = 16;
      
      public static var §2!<§:uint = 32;
       
      
      private var §2"4§:uint;
      
      b2internal var §-!$§:Sprite;
      
      private var §%z§:Number = 1.0;
      
      private var §"!z§:Number = 1.0;
      
      private var §+!#§:Number = 1.0;
      
      private var § &§:Number = 1.0;
      
      private var §>!V§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§2"4§ = 0;
      }
      
      public function §?!D§(param1:uint) : void
      {
         this.§2"4§ = param1;
      }
      
      public function §for §() : uint
      {
         return this.§2"4§;
      }
      
      public function §'!!§(param1:uint) : void
      {
         this.§2"4§ |= param1;
      }
      
      public function §6l§(param1:uint) : void
      {
         this.§2"4§ &= ~param1;
      }
      
      public function §"e§(param1:Sprite) : void
      {
         this.§-!$§ = param1;
      }
      
      public function §1W§() : Sprite
      {
         return this.§-!$§;
      }
      
      public function §-`§(param1:Number) : void
      {
         this.§%z§ = param1;
      }
      
      public function §#!#§() : Number
      {
         return this.§%z§;
      }
      
      public function §-y§(param1:Number) : void
      {
         this.§"!z§ = param1;
      }
      
      public function §7!n§() : Number
      {
         return this.§"!z§;
      }
      
      public function §8!J§(param1:Number) : void
      {
         this.§+!#§ = param1;
      }
      
      public function §-!n§() : Number
      {
         return this.§+!#§;
      }
      
      public function §@!I§(param1:Number) : void
      {
         this.§ &§ = param1;
      }
      
      public function §@!F§() : Number
      {
         return this.§ &§;
      }
      
      public function §!!X§(param1:Number) : void
      {
         this.§>!V§ = param1;
      }
      
      public function §]Z§() : Number
      {
         return this.§>!V§;
      }
      
      public function §4g§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§-!$§.graphics.lineStyle(this.§"!z§,param3.color,this.§+!#§);
         this.§-!$§.graphics.moveTo(param1[0].x * this.§%z§,param1[0].y * this.§%z§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§-!$§.graphics.lineTo(param1[_loc4_].x * this.§%z§,param1[_loc4_].y * this.§%z§);
            _loc4_++;
         }
         this.§-!$§.graphics.lineTo(param1[0].x * this.§%z§,param1[0].y * this.§%z§);
      }
      
      public function §6k§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§-!$§.graphics.lineStyle(this.§"!z§,param3.color,this.§+!#§);
         this.§-!$§.graphics.moveTo(param1[0].x * this.§%z§,param1[0].y * this.§%z§);
         this.§-!$§.graphics.beginFill(param3.color,this.§ &§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§-!$§.graphics.lineTo(param1[_loc4_].x * this.§%z§,param1[_loc4_].y * this.§%z§);
            _loc4_++;
         }
         this.§-!$§.graphics.lineTo(param1[0].x * this.§%z§,param1[0].y * this.§%z§);
         this.§-!$§.graphics.endFill();
      }
      
      public function §!S§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§-!$§.graphics.lineStyle(this.§"!z§,param3.color,this.§+!#§);
         this.§-!$§.graphics.drawCircle(param1.x * this.§%z§,param1.y * this.§%z§,param2 * this.§%z§);
      }
      
      public function §&!r§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§-!$§.graphics.lineStyle(this.§"!z§,param4.color,this.§+!#§);
         this.§-!$§.graphics.moveTo(0,0);
         this.§-!$§.graphics.beginFill(param4.color,this.§ &§);
         this.§-!$§.graphics.drawCircle(param1.x * this.§%z§,param1.y * this.§%z§,param2 * this.§%z§);
         this.§-!$§.graphics.endFill();
         this.§-!$§.graphics.moveTo(param1.x * this.§%z§,param1.y * this.§%z§);
         this.§-!$§.graphics.lineTo((param1.x + param3.x * param2) * this.§%z§,(param1.y + param3.y * param2) * this.§%z§);
      }
      
      public function §;2§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§-!$§.graphics.lineStyle(this.§"!z§,param3.color,this.§+!#§);
         this.§-!$§.graphics.moveTo(param1.x * this.§%z§,param1.y * this.§%z§);
         this.§-!$§.graphics.lineTo(param2.x * this.§%z§,param2.y * this.§%z§);
      }
      
      public function § B§(param1:b2Transform) : void
      {
         this.§-!$§.graphics.lineStyle(this.§"!z§,16711680,this.§+!#§);
         this.§-!$§.graphics.moveTo(param1.position.x * this.§%z§,param1.position.y * this.§%z§);
         this.§-!$§.graphics.lineTo((param1.position.x + this.§>!V§ * param1.R.col1.x) * this.§%z§,(param1.position.y + this.§>!V§ * param1.R.col1.y) * this.§%z§);
         this.§-!$§.graphics.lineStyle(this.§"!z§,65280,this.§+!#§);
         this.§-!$§.graphics.moveTo(param1.position.x * this.§%z§,param1.position.y * this.§%z§);
         this.§-!$§.graphics.lineTo((param1.position.x + this.§>!V§ * param1.R.col2.x) * this.§%z§,(param1.position.y + this.§>!V§ * param1.R.col2.y) * this.§%z§);
      }
   }
}
