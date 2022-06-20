package § !k§
{
   import §!"8§.b2Transform;
   import §!"8§.b2Vec2;
   import flash.display.Sprite;
   import §in§.b2Color;
   import §in§.b2internal;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var § 8§:uint = 1;
      
      public static var §6=§:uint = 2;
      
      public static var §9!<§:uint = 4;
      
      public static var §@!$§:uint = 8;
      
      public static var §8n§:uint = 16;
      
      public static var §3"!§:uint = 32;
       
      
      private var §^!X§:uint;
      
      b2internal var §"!p§:Sprite;
      
      private var §1&§:Number = 1.0;
      
      private var §"-§:Number = 1.0;
      
      private var §%?§:Number = 1.0;
      
      private var §[!Y§:Number = 1.0;
      
      private var §`!Q§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§^!X§ = 0;
      }
      
      public function §6!$§(param1:uint) : void
      {
         this.§^!X§ = param1;
      }
      
      public function §%V§() : uint
      {
         return this.§^!X§;
      }
      
      public function §,!4§(param1:uint) : void
      {
         this.§^!X§ |= param1;
      }
      
      public function §,!L§(param1:uint) : void
      {
         this.§^!X§ &= ~param1;
      }
      
      public function §^@§(param1:Sprite) : void
      {
         this.§"!p§ = param1;
      }
      
      public function §5T§() : Sprite
      {
         return this.§"!p§;
      }
      
      public function §%R§(param1:Number) : void
      {
         this.§1&§ = param1;
      }
      
      public function §<!K§() : Number
      {
         return this.§1&§;
      }
      
      public function §4!S§(param1:Number) : void
      {
         this.§"-§ = param1;
      }
      
      public function §,!8§() : Number
      {
         return this.§"-§;
      }
      
      public function §^!S§(param1:Number) : void
      {
         this.§%?§ = param1;
      }
      
      public function §=![§() : Number
      {
         return this.§%?§;
      }
      
      public function §9r§(param1:Number) : void
      {
         this.§[!Y§ = param1;
      }
      
      public function §6"'§() : Number
      {
         return this.§[!Y§;
      }
      
      public function §-t§(param1:Number) : void
      {
         this.§`!Q§ = param1;
      }
      
      public function §4Z§() : Number
      {
         return this.§`!Q§;
      }
      
      public function §@!H§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§"!p§.graphics.lineStyle(this.§"-§,param3.color,this.§%?§);
         this.§"!p§.graphics.moveTo(param1[0].x * this.§1&§,param1[0].y * this.§1&§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§"!p§.graphics.lineTo(param1[_loc4_].x * this.§1&§,param1[_loc4_].y * this.§1&§);
            _loc4_++;
         }
         this.§"!p§.graphics.lineTo(param1[0].x * this.§1&§,param1[0].y * this.§1&§);
      }
      
      public function §+"0§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§"!p§.graphics.lineStyle(this.§"-§,param3.color,this.§%?§);
         this.§"!p§.graphics.moveTo(param1[0].x * this.§1&§,param1[0].y * this.§1&§);
         this.§"!p§.graphics.beginFill(param3.color,this.§[!Y§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§"!p§.graphics.lineTo(param1[_loc4_].x * this.§1&§,param1[_loc4_].y * this.§1&§);
            _loc4_++;
         }
         this.§"!p§.graphics.lineTo(param1[0].x * this.§1&§,param1[0].y * this.§1&§);
         this.§"!p§.graphics.endFill();
      }
      
      public function §]";§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§"!p§.graphics.lineStyle(this.§"-§,param3.color,this.§%?§);
         this.§"!p§.graphics.drawCircle(param1.x * this.§1&§,param1.y * this.§1&§,param2 * this.§1&§);
      }
      
      public function §9!W§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§"!p§.graphics.lineStyle(this.§"-§,param4.color,this.§%?§);
         this.§"!p§.graphics.moveTo(0,0);
         this.§"!p§.graphics.beginFill(param4.color,this.§[!Y§);
         this.§"!p§.graphics.drawCircle(param1.x * this.§1&§,param1.y * this.§1&§,param2 * this.§1&§);
         this.§"!p§.graphics.endFill();
         this.§"!p§.graphics.moveTo(param1.x * this.§1&§,param1.y * this.§1&§);
         this.§"!p§.graphics.lineTo((param1.x + param3.x * param2) * this.§1&§,(param1.y + param3.y * param2) * this.§1&§);
      }
      
      public function §75§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§"!p§.graphics.lineStyle(this.§"-§,param3.color,this.§%?§);
         this.§"!p§.graphics.moveTo(param1.x * this.§1&§,param1.y * this.§1&§);
         this.§"!p§.graphics.lineTo(param2.x * this.§1&§,param2.y * this.§1&§);
      }
      
      public function §'!]§(param1:b2Transform) : void
      {
         this.§"!p§.graphics.lineStyle(this.§"-§,16711680,this.§%?§);
         this.§"!p§.graphics.moveTo(param1.position.x * this.§1&§,param1.position.y * this.§1&§);
         this.§"!p§.graphics.lineTo((param1.position.x + this.§`!Q§ * param1.R.col1.x) * this.§1&§,(param1.position.y + this.§`!Q§ * param1.R.col1.y) * this.§1&§);
         this.§"!p§.graphics.lineStyle(this.§"-§,65280,this.§%?§);
         this.§"!p§.graphics.moveTo(param1.position.x * this.§1&§,param1.position.y * this.§1&§);
         this.§"!p§.graphics.lineTo((param1.position.x + this.§`!Q§ * param1.R.col2.x) * this.§1&§,(param1.position.y + this.§`!Q§ * param1.R.col2.y) * this.§1&§);
      }
   }
}
