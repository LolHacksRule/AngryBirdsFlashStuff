package §6"1§
{
   import §,"[§.b2Color;
   import §,"[§.b2internal;
   import §6!^§.b2Transform;
   import §6!^§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §?O§:uint = 1;
      
      public static var §12§:uint = 2;
      
      public static var §9Q§:uint = 4;
      
      public static var §in§:uint = 8;
      
      public static var §7#§:uint = 16;
      
      public static var §1!L§:uint = 32;
       
      
      private var §0!<§:uint;
      
      b2internal var §5!t§:Sprite;
      
      private var §^!W§:Number = 1.0;
      
      private var §9"E§:Number = 1.0;
      
      private var §"!i§:Number = 1.0;
      
      private var §"!e§:Number = 1.0;
      
      private var §>" §:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§0!<§ = 0;
      }
      
      public function §5"C§(param1:uint) : void
      {
         this.§0!<§ = param1;
      }
      
      public function §6"Q§() : uint
      {
         return this.§0!<§;
      }
      
      public function §5a§(param1:uint) : void
      {
         this.§0!<§ |= param1;
      }
      
      public function §@,§(param1:uint) : void
      {
         this.§0!<§ &= ~param1;
      }
      
      public function §,!B§(param1:Sprite) : void
      {
         this.§5!t§ = param1;
      }
      
      public function §6@§() : Sprite
      {
         return this.§5!t§;
      }
      
      public function §<!d§(param1:Number) : void
      {
         this.§^!W§ = param1;
      }
      
      public function §5!K§() : Number
      {
         return this.§^!W§;
      }
      
      public function §[Z§(param1:Number) : void
      {
         this.§9"E§ = param1;
      }
      
      public function §;U§() : Number
      {
         return this.§9"E§;
      }
      
      public function §3"G§(param1:Number) : void
      {
         this.§"!i§ = param1;
      }
      
      public function §<#§() : Number
      {
         return this.§"!i§;
      }
      
      public function §3c§(param1:Number) : void
      {
         this.§"!e§ = param1;
      }
      
      public function §95§() : Number
      {
         return this.§"!e§;
      }
      
      public function §2!@§(param1:Number) : void
      {
         this.§>" § = param1;
      }
      
      public function §`I§() : Number
      {
         return this.§>" §;
      }
      
      public function §2!W§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§5!t§.graphics.lineStyle(this.§9"E§,param3.color,this.§"!i§);
         this.§5!t§.graphics.moveTo(param1[0].x * this.§^!W§,param1[0].y * this.§^!W§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§5!t§.graphics.lineTo(param1[_loc4_].x * this.§^!W§,param1[_loc4_].y * this.§^!W§);
            _loc4_++;
         }
         this.§5!t§.graphics.lineTo(param1[0].x * this.§^!W§,param1[0].y * this.§^!W§);
      }
      
      public function §2O§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§5!t§.graphics.lineStyle(this.§9"E§,param3.color,this.§"!i§);
         this.§5!t§.graphics.moveTo(param1[0].x * this.§^!W§,param1[0].y * this.§^!W§);
         this.§5!t§.graphics.beginFill(param3.color,this.§"!e§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§5!t§.graphics.lineTo(param1[_loc4_].x * this.§^!W§,param1[_loc4_].y * this.§^!W§);
            _loc4_++;
         }
         this.§5!t§.graphics.lineTo(param1[0].x * this.§^!W§,param1[0].y * this.§^!W§);
         this.§5!t§.graphics.endFill();
      }
      
      public function §7"%§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§5!t§.graphics.lineStyle(this.§9"E§,param3.color,this.§"!i§);
         this.§5!t§.graphics.drawCircle(param1.x * this.§^!W§,param1.y * this.§^!W§,param2 * this.§^!W§);
      }
      
      public function §2"P§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§5!t§.graphics.lineStyle(this.§9"E§,param4.color,this.§"!i§);
         this.§5!t§.graphics.moveTo(0,0);
         this.§5!t§.graphics.beginFill(param4.color,this.§"!e§);
         this.§5!t§.graphics.drawCircle(param1.x * this.§^!W§,param1.y * this.§^!W§,param2 * this.§^!W§);
         this.§5!t§.graphics.endFill();
         this.§5!t§.graphics.moveTo(param1.x * this.§^!W§,param1.y * this.§^!W§);
         this.§5!t§.graphics.lineTo((param1.x + param3.x * param2) * this.§^!W§,(param1.y + param3.y * param2) * this.§^!W§);
      }
      
      public function §%!2§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§5!t§.graphics.lineStyle(this.§9"E§,param3.color,this.§"!i§);
         this.§5!t§.graphics.moveTo(param1.x * this.§^!W§,param1.y * this.§^!W§);
         this.§5!t§.graphics.lineTo(param2.x * this.§^!W§,param2.y * this.§^!W§);
      }
      
      public function §>"Z§(param1:b2Transform) : void
      {
         this.§5!t§.graphics.lineStyle(this.§9"E§,16711680,this.§"!i§);
         this.§5!t§.graphics.moveTo(param1.position.x * this.§^!W§,param1.position.y * this.§^!W§);
         this.§5!t§.graphics.lineTo((param1.position.x + this.§>" § * param1.R.col1.x) * this.§^!W§,(param1.position.y + this.§>" § * param1.R.col1.y) * this.§^!W§);
         this.§5!t§.graphics.lineStyle(this.§9"E§,65280,this.§"!i§);
         this.§5!t§.graphics.moveTo(param1.position.x * this.§^!W§,param1.position.y * this.§^!W§);
         this.§5!t§.graphics.lineTo((param1.position.x + this.§>" § * param1.R.col2.x) * this.§^!W§,(param1.position.y + this.§>" § * param1.R.col2.y) * this.§^!W§);
      }
   }
}
