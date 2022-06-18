package §[x§
{
   import §&!B§.b2Transform;
   import §&!B§.b2Vec2;
   import §^<§.b2Color;
   import §^<§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §4!"§:uint = 1;
      
      public static var §8%§:uint = 2;
      
      public static var §4!O§:uint = 4;
      
      public static var §'T§:uint = 8;
      
      public static var §?!?§:uint = 16;
      
      public static var §9!U§:uint = 32;
       
      
      private var §,!#§:uint;
      
      b2internal var §!T§:Sprite;
      
      private var §4J§:Number = 1.0;
      
      private var §']§:Number = 1.0;
      
      private var §7!"§:Number = 1.0;
      
      private var §``§:Number = 1.0;
      
      private var §3!O§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§,!#§ = 0;
      }
      
      public function §>;§(param1:uint) : void
      {
         this.§,!#§ = param1;
      }
      
      public function §&r§() : uint
      {
         return this.§,!#§;
      }
      
      public function §45§(param1:uint) : void
      {
         this.§,!#§ |= param1;
      }
      
      public function §2!T§(param1:uint) : void
      {
         this.§,!#§ &= ~param1;
      }
      
      public function §9L§(param1:Sprite) : void
      {
         this.§!T§ = param1;
      }
      
      public function §!A§() : Sprite
      {
         return this.§!T§;
      }
      
      public function §,!2§(param1:Number) : void
      {
         this.§4J§ = param1;
      }
      
      public function §8F§() : Number
      {
         return this.§4J§;
      }
      
      public function §8!`§(param1:Number) : void
      {
         this.§']§ = param1;
      }
      
      public function §#q§() : Number
      {
         return this.§']§;
      }
      
      public function §+N§(param1:Number) : void
      {
         this.§7!"§ = param1;
      }
      
      public function §%B§() : Number
      {
         return this.§7!"§;
      }
      
      public function §>e§(param1:Number) : void
      {
         this.§``§ = param1;
      }
      
      public function §&6§() : Number
      {
         return this.§``§;
      }
      
      public function §`B§(param1:Number) : void
      {
         this.§3!O§ = param1;
      }
      
      public function §'!"§() : Number
      {
         return this.§3!O§;
      }
      
      public function §,!T§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§!T§.graphics.lineStyle(this.§']§,param3.color,this.§7!"§);
         this.§!T§.graphics.moveTo(param1[0].x * this.§4J§,param1[0].y * this.§4J§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§!T§.graphics.lineTo(param1[_loc4_].x * this.§4J§,param1[_loc4_].y * this.§4J§);
            _loc4_++;
         }
         this.§!T§.graphics.lineTo(param1[0].x * this.§4J§,param1[0].y * this.§4J§);
      }
      
      public function §&V§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§!T§.graphics.lineStyle(this.§']§,param3.color,this.§7!"§);
         this.§!T§.graphics.moveTo(param1[0].x * this.§4J§,param1[0].y * this.§4J§);
         this.§!T§.graphics.beginFill(param3.color,this.§``§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§!T§.graphics.lineTo(param1[_loc4_].x * this.§4J§,param1[_loc4_].y * this.§4J§);
            _loc4_++;
         }
         this.§!T§.graphics.lineTo(param1[0].x * this.§4J§,param1[0].y * this.§4J§);
         this.§!T§.graphics.endFill();
      }
      
      public function §^!U§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§!T§.graphics.lineStyle(this.§']§,param3.color,this.§7!"§);
         this.§!T§.graphics.drawCircle(param1.x * this.§4J§,param1.y * this.§4J§,param2 * this.§4J§);
      }
      
      public function §"!P§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§!T§.graphics.lineStyle(this.§']§,param4.color,this.§7!"§);
         this.§!T§.graphics.moveTo(0,0);
         this.§!T§.graphics.beginFill(param4.color,this.§``§);
         this.§!T§.graphics.drawCircle(param1.x * this.§4J§,param1.y * this.§4J§,param2 * this.§4J§);
         this.§!T§.graphics.endFill();
         this.§!T§.graphics.moveTo(param1.x * this.§4J§,param1.y * this.§4J§);
         this.§!T§.graphics.lineTo((param1.x + param3.x * param2) * this.§4J§,(param1.y + param3.y * param2) * this.§4J§);
      }
      
      public function §0!&§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§!T§.graphics.lineStyle(this.§']§,param3.color,this.§7!"§);
         this.§!T§.graphics.moveTo(param1.x * this.§4J§,param1.y * this.§4J§);
         this.§!T§.graphics.lineTo(param2.x * this.§4J§,param2.y * this.§4J§);
      }
      
      public function §"!A§(param1:b2Transform) : void
      {
         this.§!T§.graphics.lineStyle(this.§']§,16711680,this.§7!"§);
         this.§!T§.graphics.moveTo(param1.position.x * this.§4J§,param1.position.y * this.§4J§);
         this.§!T§.graphics.lineTo((param1.position.x + this.§3!O§ * param1.R.col1.x) * this.§4J§,(param1.position.y + this.§3!O§ * param1.R.col1.y) * this.§4J§);
         this.§!T§.graphics.lineStyle(this.§']§,65280,this.§7!"§);
         this.§!T§.graphics.moveTo(param1.position.x * this.§4J§,param1.position.y * this.§4J§);
         this.§!T§.graphics.lineTo((param1.position.x + this.§3!O§ * param1.R.col2.x) * this.§4J§,(param1.position.y + this.§3!O§ * param1.R.col2.y) * this.§4J§);
      }
   }
}
