package §"J§
{
   import §<!a§.b2Transform;
   import §<!a§.b2Vec2;
   import §<";§.b2Color;
   import §<";§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §^!F§:uint = 1;
      
      public static var §^!M§:uint = 2;
      
      public static var §+!1§:uint = 4;
      
      public static var §<!Z§:uint = 8;
      
      public static var §#!=§:uint = 16;
      
      public static var §,!I§:uint = 32;
       
      
      private var §=",§:uint;
      
      b2internal var §5!H§:Sprite;
      
      private var §6!`§:Number = 1.0;
      
      private var §&!e§:Number = 1.0;
      
      private var §]p§:Number = 1.0;
      
      private var §;J§:Number = 1.0;
      
      private var §5,§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§=",§ = 0;
      }
      
      public function §4!&§(param1:uint) : void
      {
         this.§=",§ = param1;
      }
      
      public function §=m§() : uint
      {
         return this.§=",§;
      }
      
      public function §0!Q§(param1:uint) : void
      {
         this.§=",§ |= param1;
      }
      
      public function §3!Q§(param1:uint) : void
      {
         this.§=",§ &= ~param1;
      }
      
      public function §39§(param1:Sprite) : void
      {
         this.§5!H§ = param1;
      }
      
      public function §7"+§() : Sprite
      {
         return this.§5!H§;
      }
      
      public function §9!n§(param1:Number) : void
      {
         this.§6!`§ = param1;
      }
      
      public function §-'§() : Number
      {
         return this.§6!`§;
      }
      
      public function §1!N§(param1:Number) : void
      {
         this.§&!e§ = param1;
      }
      
      public function §=!,§() : Number
      {
         return this.§&!e§;
      }
      
      public function §#Q§(param1:Number) : void
      {
         this.§]p§ = param1;
      }
      
      public function §<!l§() : Number
      {
         return this.§]p§;
      }
      
      public function §0O§(param1:Number) : void
      {
         this.§;J§ = param1;
      }
      
      public function §1!s§() : Number
      {
         return this.§;J§;
      }
      
      public function §9!8§(param1:Number) : void
      {
         this.§5,§ = param1;
      }
      
      public function §]J§() : Number
      {
         return this.§5,§;
      }
      
      public function § "8§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§5!H§.graphics.lineStyle(this.§&!e§,param3.color,this.§]p§);
         this.§5!H§.graphics.moveTo(param1[0].x * this.§6!`§,param1[0].y * this.§6!`§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§5!H§.graphics.lineTo(param1[_loc4_].x * this.§6!`§,param1[_loc4_].y * this.§6!`§);
            _loc4_++;
         }
         this.§5!H§.graphics.lineTo(param1[0].x * this.§6!`§,param1[0].y * this.§6!`§);
      }
      
      public function §8w§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§5!H§.graphics.lineStyle(this.§&!e§,param3.color,this.§]p§);
         this.§5!H§.graphics.moveTo(param1[0].x * this.§6!`§,param1[0].y * this.§6!`§);
         this.§5!H§.graphics.beginFill(param3.color,this.§;J§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§5!H§.graphics.lineTo(param1[_loc4_].x * this.§6!`§,param1[_loc4_].y * this.§6!`§);
            _loc4_++;
         }
         this.§5!H§.graphics.lineTo(param1[0].x * this.§6!`§,param1[0].y * this.§6!`§);
         this.§5!H§.graphics.endFill();
      }
      
      public function §2K§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§5!H§.graphics.lineStyle(this.§&!e§,param3.color,this.§]p§);
         this.§5!H§.graphics.drawCircle(param1.x * this.§6!`§,param1.y * this.§6!`§,param2 * this.§6!`§);
      }
      
      public function §6"6§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§5!H§.graphics.lineStyle(this.§&!e§,param4.color,this.§]p§);
         this.§5!H§.graphics.moveTo(0,0);
         this.§5!H§.graphics.beginFill(param4.color,this.§;J§);
         this.§5!H§.graphics.drawCircle(param1.x * this.§6!`§,param1.y * this.§6!`§,param2 * this.§6!`§);
         this.§5!H§.graphics.endFill();
         this.§5!H§.graphics.moveTo(param1.x * this.§6!`§,param1.y * this.§6!`§);
         this.§5!H§.graphics.lineTo((param1.x + param3.x * param2) * this.§6!`§,(param1.y + param3.y * param2) * this.§6!`§);
      }
      
      public function §?Z§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§5!H§.graphics.lineStyle(this.§&!e§,param3.color,this.§]p§);
         this.§5!H§.graphics.moveTo(param1.x * this.§6!`§,param1.y * this.§6!`§);
         this.§5!H§.graphics.lineTo(param2.x * this.§6!`§,param2.y * this.§6!`§);
      }
      
      public function §8"$§(param1:b2Transform) : void
      {
         this.§5!H§.graphics.lineStyle(this.§&!e§,16711680,this.§]p§);
         this.§5!H§.graphics.moveTo(param1.position.x * this.§6!`§,param1.position.y * this.§6!`§);
         this.§5!H§.graphics.lineTo((param1.position.x + this.§5,§ * param1.R.col1.x) * this.§6!`§,(param1.position.y + this.§5,§ * param1.R.col1.y) * this.§6!`§);
         this.§5!H§.graphics.lineStyle(this.§&!e§,65280,this.§]p§);
         this.§5!H§.graphics.moveTo(param1.position.x * this.§6!`§,param1.position.y * this.§6!`§);
         this.§5!H§.graphics.lineTo((param1.position.x + this.§5,§ * param1.R.col2.x) * this.§6!`§,(param1.position.y + this.§5,§ * param1.R.col2.y) * this.§6!`§);
      }
   }
}
