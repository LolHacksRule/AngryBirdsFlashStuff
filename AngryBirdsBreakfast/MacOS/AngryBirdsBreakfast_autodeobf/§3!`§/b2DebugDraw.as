package §3!`§
{
   import §'F§.b2Color;
   import §'F§.b2internal;
   import §6Z§.b2Transform;
   import §6Z§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §2!L§:uint = 1;
      
      public static var § !5§:uint = 2;
      
      public static var §<v§:uint = 4;
      
      public static var §-!2§:uint = 8;
      
      public static var §"!k§:uint = 16;
      
      public static var §!!a§:uint = 32;
       
      
      private var §4N§:uint;
      
      b2internal var §0C§:Sprite;
      
      private var §#!3§:Number = 1.0;
      
      private var §3!v§:Number = 1.0;
      
      private var §,_§:Number = 1.0;
      
      private var §-!p§:Number = 1.0;
      
      private var §6!#§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§4N§ = 0;
      }
      
      public function §;!n§(param1:uint) : void
      {
         this.§4N§ = param1;
      }
      
      public function §^!L§() : uint
      {
         return this.§4N§;
      }
      
      public function §<"#§(param1:uint) : void
      {
         this.§4N§ |= param1;
      }
      
      public function §`!s§(param1:uint) : void
      {
         this.§4N§ &= ~param1;
      }
      
      public function §`!r§(param1:Sprite) : void
      {
         this.§0C§ = param1;
      }
      
      public function §?"-§() : Sprite
      {
         return this.§0C§;
      }
      
      public function §&!L§(param1:Number) : void
      {
         this.§#!3§ = param1;
      }
      
      public function §4" §() : Number
      {
         return this.§#!3§;
      }
      
      public function §-!b§(param1:Number) : void
      {
         this.§3!v§ = param1;
      }
      
      public function §?`§() : Number
      {
         return this.§3!v§;
      }
      
      public function §4"§(param1:Number) : void
      {
         this.§,_§ = param1;
      }
      
      public function §'!a§() : Number
      {
         return this.§,_§;
      }
      
      public function §@!B§(param1:Number) : void
      {
         this.§-!p§ = param1;
      }
      
      public function §?l§() : Number
      {
         return this.§-!p§;
      }
      
      public function §4!x§(param1:Number) : void
      {
         this.§6!#§ = param1;
      }
      
      public function §0!f§() : Number
      {
         return this.§6!#§;
      }
      
      public function §;!`§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§0C§.graphics.lineStyle(this.§3!v§,param3.color,this.§,_§);
         this.§0C§.graphics.moveTo(param1[0].x * this.§#!3§,param1[0].y * this.§#!3§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§0C§.graphics.lineTo(param1[_loc4_].x * this.§#!3§,param1[_loc4_].y * this.§#!3§);
            _loc4_++;
         }
         this.§0C§.graphics.lineTo(param1[0].x * this.§#!3§,param1[0].y * this.§#!3§);
      }
      
      public function §6T§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§0C§.graphics.lineStyle(this.§3!v§,param3.color,this.§,_§);
         this.§0C§.graphics.moveTo(param1[0].x * this.§#!3§,param1[0].y * this.§#!3§);
         this.§0C§.graphics.beginFill(param3.color,this.§-!p§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§0C§.graphics.lineTo(param1[_loc4_].x * this.§#!3§,param1[_loc4_].y * this.§#!3§);
            _loc4_++;
         }
         this.§0C§.graphics.lineTo(param1[0].x * this.§#!3§,param1[0].y * this.§#!3§);
         this.§0C§.graphics.endFill();
      }
      
      public function §9!6§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§0C§.graphics.lineStyle(this.§3!v§,param3.color,this.§,_§);
         this.§0C§.graphics.drawCircle(param1.x * this.§#!3§,param1.y * this.§#!3§,param2 * this.§#!3§);
      }
      
      public function §=!]§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§0C§.graphics.lineStyle(this.§3!v§,param4.color,this.§,_§);
         this.§0C§.graphics.moveTo(0,0);
         this.§0C§.graphics.beginFill(param4.color,this.§-!p§);
         this.§0C§.graphics.drawCircle(param1.x * this.§#!3§,param1.y * this.§#!3§,param2 * this.§#!3§);
         this.§0C§.graphics.endFill();
         this.§0C§.graphics.moveTo(param1.x * this.§#!3§,param1.y * this.§#!3§);
         this.§0C§.graphics.lineTo((param1.x + param3.x * param2) * this.§#!3§,(param1.y + param3.y * param2) * this.§#!3§);
      }
      
      public function § >§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§0C§.graphics.lineStyle(this.§3!v§,param3.color,this.§,_§);
         this.§0C§.graphics.moveTo(param1.x * this.§#!3§,param1.y * this.§#!3§);
         this.§0C§.graphics.lineTo(param2.x * this.§#!3§,param2.y * this.§#!3§);
      }
      
      public function §@x§(param1:b2Transform) : void
      {
         this.§0C§.graphics.lineStyle(this.§3!v§,16711680,this.§,_§);
         this.§0C§.graphics.moveTo(param1.position.x * this.§#!3§,param1.position.y * this.§#!3§);
         this.§0C§.graphics.lineTo((param1.position.x + this.§6!#§ * param1.R.col1.x) * this.§#!3§,(param1.position.y + this.§6!#§ * param1.R.col1.y) * this.§#!3§);
         this.§0C§.graphics.lineStyle(this.§3!v§,65280,this.§,_§);
         this.§0C§.graphics.moveTo(param1.position.x * this.§#!3§,param1.position.y * this.§#!3§);
         this.§0C§.graphics.lineTo((param1.position.x + this.§6!#§ * param1.R.col2.x) * this.§#!3§,(param1.position.y + this.§6!#§ * param1.R.col2.y) * this.§#!3§);
      }
   }
}
