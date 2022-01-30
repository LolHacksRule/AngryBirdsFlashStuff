package §;'§
{
   import § !%§.b2Color;
   import § !%§.b2internal;
   import §,!k§.b2Transform;
   import §,!k§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §2!=§:uint = 1;
      
      public static var §?!Q§:uint = 2;
      
      public static var §^u§:uint = 4;
      
      public static var §^"%§:uint = 8;
      
      public static var §'U§:uint = 16;
      
      public static var §#!i§:uint = 32;
       
      
      private var §9!`§:uint;
      
      b2internal var §]v§:Sprite;
      
      private var §8F§:Number = 1.0;
      
      private var §=K§:Number = 1.0;
      
      private var §>!F§:Number = 1.0;
      
      private var §`!W§:Number = 1.0;
      
      private var §-l§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§9!`§ = 0;
      }
      
      public function § "&§(param1:uint) : void
      {
         this.§9!`§ = param1;
      }
      
      public function §5!"§() : uint
      {
         return this.§9!`§;
      }
      
      public function §8!=§(param1:uint) : void
      {
         this.§9!`§ |= param1;
      }
      
      public function §var §(param1:uint) : void
      {
         this.§9!`§ &= ~param1;
      }
      
      public function §5!x§(param1:Sprite) : void
      {
         this.§]v§ = param1;
      }
      
      public function §,!M§() : Sprite
      {
         return this.§]v§;
      }
      
      public function §5!Q§(param1:Number) : void
      {
         this.§8F§ = param1;
      }
      
      public function §<!T§() : Number
      {
         return this.§8F§;
      }
      
      public function §8!$§(param1:Number) : void
      {
         this.§=K§ = param1;
      }
      
      public function §9!F§() : Number
      {
         return this.§=K§;
      }
      
      public function §7N§(param1:Number) : void
      {
         this.§>!F§ = param1;
      }
      
      public function §6"0§() : Number
      {
         return this.§>!F§;
      }
      
      public function §2!L§(param1:Number) : void
      {
         this.§`!W§ = param1;
      }
      
      public function §3I§() : Number
      {
         return this.§`!W§;
      }
      
      public function §'",§(param1:Number) : void
      {
         this.§-l§ = param1;
      }
      
      public function §7"%§() : Number
      {
         return this.§-l§;
      }
      
      public function §1A§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§]v§.graphics.lineStyle(this.§=K§,param3.color,this.§>!F§);
         this.§]v§.graphics.moveTo(param1[0].x * this.§8F§,param1[0].y * this.§8F§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§]v§.graphics.lineTo(param1[_loc4_].x * this.§8F§,param1[_loc4_].y * this.§8F§);
            _loc4_++;
         }
         this.§]v§.graphics.lineTo(param1[0].x * this.§8F§,param1[0].y * this.§8F§);
      }
      
      public function §,V§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§]v§.graphics.lineStyle(this.§=K§,param3.color,this.§>!F§);
         this.§]v§.graphics.moveTo(param1[0].x * this.§8F§,param1[0].y * this.§8F§);
         this.§]v§.graphics.beginFill(param3.color,this.§`!W§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§]v§.graphics.lineTo(param1[_loc4_].x * this.§8F§,param1[_loc4_].y * this.§8F§);
            _loc4_++;
         }
         this.§]v§.graphics.lineTo(param1[0].x * this.§8F§,param1[0].y * this.§8F§);
         this.§]v§.graphics.endFill();
      }
      
      public function §5!K§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§]v§.graphics.lineStyle(this.§=K§,param3.color,this.§>!F§);
         this.§]v§.graphics.drawCircle(param1.x * this.§8F§,param1.y * this.§8F§,param2 * this.§8F§);
      }
      
      public function §^!m§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§]v§.graphics.lineStyle(this.§=K§,param4.color,this.§>!F§);
         this.§]v§.graphics.moveTo(0,0);
         this.§]v§.graphics.beginFill(param4.color,this.§`!W§);
         this.§]v§.graphics.drawCircle(param1.x * this.§8F§,param1.y * this.§8F§,param2 * this.§8F§);
         this.§]v§.graphics.endFill();
         this.§]v§.graphics.moveTo(param1.x * this.§8F§,param1.y * this.§8F§);
         this.§]v§.graphics.lineTo((param1.x + param3.x * param2) * this.§8F§,(param1.y + param3.y * param2) * this.§8F§);
      }
      
      public function §-d§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§]v§.graphics.lineStyle(this.§=K§,param3.color,this.§>!F§);
         this.§]v§.graphics.moveTo(param1.x * this.§8F§,param1.y * this.§8F§);
         this.§]v§.graphics.lineTo(param2.x * this.§8F§,param2.y * this.§8F§);
      }
      
      public function §9!P§(param1:b2Transform) : void
      {
         this.§]v§.graphics.lineStyle(this.§=K§,16711680,this.§>!F§);
         this.§]v§.graphics.moveTo(param1.position.x * this.§8F§,param1.position.y * this.§8F§);
         this.§]v§.graphics.lineTo((param1.position.x + this.§-l§ * param1.R.col1.x) * this.§8F§,(param1.position.y + this.§-l§ * param1.R.col1.y) * this.§8F§);
         this.§]v§.graphics.lineStyle(this.§=K§,65280,this.§>!F§);
         this.§]v§.graphics.moveTo(param1.position.x * this.§8F§,param1.position.y * this.§8F§);
         this.§]v§.graphics.lineTo((param1.position.x + this.§-l§ * param1.R.col2.x) * this.§8F§,(param1.position.y + this.§-l§ * param1.R.col2.y) * this.§8F§);
      }
   }
}
