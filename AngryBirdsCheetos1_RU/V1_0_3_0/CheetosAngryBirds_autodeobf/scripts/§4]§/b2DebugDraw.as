package §4]§
{
   import §#,§.b2Color;
   import §#,§.b2internal;
   import §[R§.b2Transform;
   import §[R§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §0[§:uint = 1;
      
      public static var §[,§:uint = 2;
      
      public static var §=m§:uint = 4;
      
      public static var §]!-§:uint = 8;
      
      public static var §^@§:uint = 16;
      
      public static var §,!_§:uint = 32;
       
      
      private var §;!<§:uint;
      
      b2internal var §^[§:Sprite;
      
      private var §<b§:Number = 1.0;
      
      private var §%2§:Number = 1.0;
      
      private var §"1§:Number = 1.0;
      
      private var §=5§:Number = 1.0;
      
      private var §]!+§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§;!<§ = 0;
      }
      
      public function §&&§(param1:uint) : void
      {
         this.§;!<§ = param1;
      }
      
      public function §0!+§() : uint
      {
         return this.§;!<§;
      }
      
      public function §75§(param1:uint) : void
      {
         this.§;!<§ |= param1;
      }
      
      public function §^h§(param1:uint) : void
      {
         this.§;!<§ &= ~param1;
      }
      
      public function §6!O§(param1:Sprite) : void
      {
         this.§^[§ = param1;
      }
      
      public function §<!<§() : Sprite
      {
         return this.§^[§;
      }
      
      public function §>!X§(param1:Number) : void
      {
         this.§<b§ = param1;
      }
      
      public function §8!M§() : Number
      {
         return this.§<b§;
      }
      
      public function §@!Y§(param1:Number) : void
      {
         this.§%2§ = param1;
      }
      
      public function §2m§() : Number
      {
         return this.§%2§;
      }
      
      public function §>!'§(param1:Number) : void
      {
         this.§"1§ = param1;
      }
      
      public function §]>§() : Number
      {
         return this.§"1§;
      }
      
      public function §`!0§(param1:Number) : void
      {
         this.§=5§ = param1;
      }
      
      public function §>^§() : Number
      {
         return this.§=5§;
      }
      
      public function §^'§(param1:Number) : void
      {
         this.§]!+§ = param1;
      }
      
      public function §0!5§() : Number
      {
         return this.§]!+§;
      }
      
      public function §6!>§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§^[§.graphics.lineStyle(this.§%2§,param3.color,this.§"1§);
         this.§^[§.graphics.moveTo(param1[0].x * this.§<b§,param1[0].y * this.§<b§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§^[§.graphics.lineTo(param1[_loc4_].x * this.§<b§,param1[_loc4_].y * this.§<b§);
            _loc4_++;
         }
         this.§^[§.graphics.lineTo(param1[0].x * this.§<b§,param1[0].y * this.§<b§);
      }
      
      public function §^G§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§^[§.graphics.lineStyle(this.§%2§,param3.color,this.§"1§);
         this.§^[§.graphics.moveTo(param1[0].x * this.§<b§,param1[0].y * this.§<b§);
         this.§^[§.graphics.beginFill(param3.color,this.§=5§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§^[§.graphics.lineTo(param1[_loc4_].x * this.§<b§,param1[_loc4_].y * this.§<b§);
            _loc4_++;
         }
         this.§^[§.graphics.lineTo(param1[0].x * this.§<b§,param1[0].y * this.§<b§);
         this.§^[§.graphics.endFill();
      }
      
      public function §?&§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§^[§.graphics.lineStyle(this.§%2§,param3.color,this.§"1§);
         this.§^[§.graphics.drawCircle(param1.x * this.§<b§,param1.y * this.§<b§,param2 * this.§<b§);
      }
      
      public function §+u§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§^[§.graphics.lineStyle(this.§%2§,param4.color,this.§"1§);
         this.§^[§.graphics.moveTo(0,0);
         this.§^[§.graphics.beginFill(param4.color,this.§=5§);
         this.§^[§.graphics.drawCircle(param1.x * this.§<b§,param1.y * this.§<b§,param2 * this.§<b§);
         this.§^[§.graphics.endFill();
         this.§^[§.graphics.moveTo(param1.x * this.§<b§,param1.y * this.§<b§);
         this.§^[§.graphics.lineTo((param1.x + param3.x * param2) * this.§<b§,(param1.y + param3.y * param2) * this.§<b§);
      }
      
      public function §"v§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§^[§.graphics.lineStyle(this.§%2§,param3.color,this.§"1§);
         this.§^[§.graphics.moveTo(param1.x * this.§<b§,param1.y * this.§<b§);
         this.§^[§.graphics.lineTo(param2.x * this.§<b§,param2.y * this.§<b§);
      }
      
      public function §1m§(param1:b2Transform) : void
      {
         this.§^[§.graphics.lineStyle(this.§%2§,16711680,this.§"1§);
         this.§^[§.graphics.moveTo(param1.position.x * this.§<b§,param1.position.y * this.§<b§);
         this.§^[§.graphics.lineTo((param1.position.x + this.§]!+§ * param1.R.col1.x) * this.§<b§,(param1.position.y + this.§]!+§ * param1.R.col1.y) * this.§<b§);
         this.§^[§.graphics.lineStyle(this.§%2§,65280,this.§"1§);
         this.§^[§.graphics.moveTo(param1.position.x * this.§<b§,param1.position.y * this.§<b§);
         this.§^[§.graphics.lineTo((param1.position.x + this.§]!+§ * param1.R.col2.x) * this.§<b§,(param1.position.y + this.§]!+§ * param1.R.col2.y) * this.§<b§);
      }
   }
}
