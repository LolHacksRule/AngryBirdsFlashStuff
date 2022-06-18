package §[W§
{
   import § !5§.b2Color;
   import § !5§.b2internal;
   import §+,§.b2Transform;
   import §+,§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §!!1§:uint = 1;
      
      public static var §,!B§:uint = 2;
      
      public static var § !!§:uint = 4;
      
      public static var §@<§:uint = 8;
      
      public static var §5$§:uint = 16;
      
      public static var §<§:uint = 32;
       
      
      private var §#R§:uint;
      
      b2internal var §[m§:Sprite;
      
      private var §for §:Number = 1.0;
      
      private var §>$§:Number = 1.0;
      
      private var §`L§:Number = 1.0;
      
      private var §9L§:Number = 1.0;
      
      private var §9!J§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§#R§ = 0;
      }
      
      public function §4!B§(param1:uint) : void
      {
         this.§#R§ = param1;
      }
      
      public function §6!-§() : uint
      {
         return this.§#R§;
      }
      
      public function §=!G§(param1:uint) : void
      {
         this.§#R§ |= param1;
      }
      
      public function §6P§(param1:uint) : void
      {
         this.§#R§ &= ~param1;
      }
      
      public function §#T§(param1:Sprite) : void
      {
         this.§[m§ = param1;
      }
      
      public function §+!I§() : Sprite
      {
         return this.§[m§;
      }
      
      public function §+W§(param1:Number) : void
      {
         this.§for § = param1;
      }
      
      public function §7!1§() : Number
      {
         return this.§for §;
      }
      
      public function §0_§(param1:Number) : void
      {
         this.§>$§ = param1;
      }
      
      public function §8I§() : Number
      {
         return this.§>$§;
      }
      
      public function §!!V§(param1:Number) : void
      {
         this.§`L§ = param1;
      }
      
      public function §4!Y§() : Number
      {
         return this.§`L§;
      }
      
      public function §0Z§(param1:Number) : void
      {
         this.§9L§ = param1;
      }
      
      public function §#X§() : Number
      {
         return this.§9L§;
      }
      
      public function §6l§(param1:Number) : void
      {
         this.§9!J§ = param1;
      }
      
      public function §4e§() : Number
      {
         return this.§9!J§;
      }
      
      public function §,!6§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§[m§.graphics.lineStyle(this.§>$§,param3.color,this.§`L§);
         this.§[m§.graphics.moveTo(param1[0].x * this.§for §,param1[0].y * this.§for §);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§[m§.graphics.lineTo(param1[_loc4_].x * this.§for §,param1[_loc4_].y * this.§for §);
            _loc4_++;
         }
         this.§[m§.graphics.lineTo(param1[0].x * this.§for §,param1[0].y * this.§for §);
      }
      
      public function §&q§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§[m§.graphics.lineStyle(this.§>$§,param3.color,this.§`L§);
         this.§[m§.graphics.moveTo(param1[0].x * this.§for §,param1[0].y * this.§for §);
         this.§[m§.graphics.beginFill(param3.color,this.§9L§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§[m§.graphics.lineTo(param1[_loc4_].x * this.§for §,param1[_loc4_].y * this.§for §);
            _loc4_++;
         }
         this.§[m§.graphics.lineTo(param1[0].x * this.§for §,param1[0].y * this.§for §);
         this.§[m§.graphics.endFill();
      }
      
      public function §,!X§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§[m§.graphics.lineStyle(this.§>$§,param3.color,this.§`L§);
         this.§[m§.graphics.drawCircle(param1.x * this.§for §,param1.y * this.§for §,param2 * this.§for §);
      }
      
      public function §%N§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§[m§.graphics.lineStyle(this.§>$§,param4.color,this.§`L§);
         this.§[m§.graphics.moveTo(0,0);
         this.§[m§.graphics.beginFill(param4.color,this.§9L§);
         this.§[m§.graphics.drawCircle(param1.x * this.§for §,param1.y * this.§for §,param2 * this.§for §);
         this.§[m§.graphics.endFill();
         this.§[m§.graphics.moveTo(param1.x * this.§for §,param1.y * this.§for §);
         this.§[m§.graphics.lineTo((param1.x + param3.x * param2) * this.§for §,(param1.y + param3.y * param2) * this.§for §);
      }
      
      public function §5_§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§[m§.graphics.lineStyle(this.§>$§,param3.color,this.§`L§);
         this.§[m§.graphics.moveTo(param1.x * this.§for §,param1.y * this.§for §);
         this.§[m§.graphics.lineTo(param2.x * this.§for §,param2.y * this.§for §);
      }
      
      public function §`!%§(param1:b2Transform) : void
      {
         this.§[m§.graphics.lineStyle(this.§>$§,16711680,this.§`L§);
         this.§[m§.graphics.moveTo(param1.position.x * this.§for §,param1.position.y * this.§for §);
         this.§[m§.graphics.lineTo((param1.position.x + this.§9!J§ * param1.R.col1.x) * this.§for §,(param1.position.y + this.§9!J§ * param1.R.col1.y) * this.§for §);
         this.§[m§.graphics.lineStyle(this.§>$§,65280,this.§`L§);
         this.§[m§.graphics.moveTo(param1.position.x * this.§for §,param1.position.y * this.§for §);
         this.§[m§.graphics.lineTo((param1.position.x + this.§9!J§ * param1.R.col2.x) * this.§for §,(param1.position.y + this.§9!J§ * param1.R.col2.y) * this.§for §);
      }
   }
}
