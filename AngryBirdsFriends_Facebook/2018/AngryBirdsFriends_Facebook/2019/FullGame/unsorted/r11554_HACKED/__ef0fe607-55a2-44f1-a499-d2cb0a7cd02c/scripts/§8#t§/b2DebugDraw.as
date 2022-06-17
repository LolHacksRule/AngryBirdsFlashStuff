package §8#t§
{
   import §[!3§.b2Color;
   import §[!3§.b2internal;
   import §`# §.b2Transform;
   import §`# §.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §]!B§:uint = 1;
      
      public static var §?!5§:uint = 2;
      
      public static var §[!Y§:uint = 4;
      
      public static var §;!D§:uint = 8;
      
      public static var §+8§:uint = 16;
      
      public static var §&!Y§:uint = 32;
       
      
      private var §>!0§:uint;
      
      b2internal var §^"@§:Sprite;
      
      private var §-z§:Number = 1.0;
      
      private var §1"K§:Number = 1.0;
      
      private var §&U§:Number = 1.0;
      
      private var §&#9§:Number = 1.0;
      
      private var §!#l§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§>!0§ = 0;
      }
      
      public function §+##§(param1:uint) : void
      {
         this.§>!0§ = param1;
      }
      
      public function §@!`§() : uint
      {
         return this.§>!0§;
      }
      
      public function §"+§(param1:uint) : void
      {
         this.§>!0§ |= param1;
      }
      
      public function §,"=§(param1:uint) : void
      {
         this.§>!0§ &= ~param1;
      }
      
      public function § 0§(param1:Sprite) : void
      {
         this.§^"@§ = param1;
      }
      
      public function §#!V§() : Sprite
      {
         return this.§^"@§;
      }
      
      public function §0$>§(param1:Number) : void
      {
         this.§-z§ = param1;
      }
      
      public function §`#%§() : Number
      {
         return this.§-z§;
      }
      
      public function §7"j§(param1:Number) : void
      {
         this.§1"K§ = param1;
      }
      
      public function §6!!§() : Number
      {
         return this.§1"K§;
      }
      
      public function §2""§(param1:Number) : void
      {
         this.§&U§ = param1;
      }
      
      public function §+#2§() : Number
      {
         return this.§&U§;
      }
      
      public function §'!R§(param1:Number) : void
      {
         this.§&#9§ = param1;
      }
      
      public function §&""§() : Number
      {
         return this.§&#9§;
      }
      
      public function §!#4§(param1:Number) : void
      {
         this.§!#l§ = param1;
      }
      
      public function §6!H§() : Number
      {
         return this.§!#l§;
      }
      
      public function §4#%§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§^"@§.graphics.lineStyle(this.§1"K§,param3.color,this.§&U§);
         this.§^"@§.graphics.moveTo(param1[0].x * this.§-z§,param1[0].y * this.§-z§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§^"@§.graphics.lineTo(param1[_loc4_].x * this.§-z§,param1[_loc4_].y * this.§-z§);
            _loc4_++;
         }
         this.§^"@§.graphics.lineTo(param1[0].x * this.§-z§,param1[0].y * this.§-z§);
      }
      
      public function §+"!§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§^"@§.graphics.lineStyle(this.§1"K§,param3.color,this.§&U§);
         this.§^"@§.graphics.moveTo(param1[0].x * this.§-z§,param1[0].y * this.§-z§);
         this.§^"@§.graphics.beginFill(param3.color,this.§&#9§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§^"@§.graphics.lineTo(param1[_loc4_].x * this.§-z§,param1[_loc4_].y * this.§-z§);
            _loc4_++;
         }
         this.§^"@§.graphics.lineTo(param1[0].x * this.§-z§,param1[0].y * this.§-z§);
         this.§^"@§.graphics.endFill();
      }
      
      public function §2!A§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§^"@§.graphics.lineStyle(this.§1"K§,param3.color,this.§&U§);
         this.§^"@§.graphics.drawCircle(param1.x * this.§-z§,param1.y * this.§-z§,param2 * this.§-z§);
      }
      
      public function §0#8§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§^"@§.graphics.lineStyle(this.§1"K§,param4.color,this.§&U§);
         this.§^"@§.graphics.moveTo(0,0);
         this.§^"@§.graphics.beginFill(param4.color,this.§&#9§);
         this.§^"@§.graphics.drawCircle(param1.x * this.§-z§,param1.y * this.§-z§,param2 * this.§-z§);
         this.§^"@§.graphics.endFill();
         this.§^"@§.graphics.moveTo(param1.x * this.§-z§,param1.y * this.§-z§);
         this.§^"@§.graphics.lineTo((param1.x + param3.x * param2) * this.§-z§,(param1.y + param3.y * param2) * this.§-z§);
      }
      
      public function §;$D§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§^"@§.graphics.lineStyle(this.§1"K§,param3.color,this.§&U§);
         this.§^"@§.graphics.moveTo(param1.x * this.§-z§,param1.y * this.§-z§);
         this.§^"@§.graphics.lineTo(param2.x * this.§-z§,param2.y * this.§-z§);
      }
      
      public function §2!f§(param1:b2Transform) : void
      {
         this.§^"@§.graphics.lineStyle(this.§1"K§,16711680,this.§&U§);
         this.§^"@§.graphics.moveTo(param1.position.x * this.§-z§,param1.position.y * this.§-z§);
         this.§^"@§.graphics.lineTo((param1.position.x + this.§!#l§ * param1.R.col1.x) * this.§-z§,(param1.position.y + this.§!#l§ * param1.R.col1.y) * this.§-z§);
         this.§^"@§.graphics.lineStyle(this.§1"K§,65280,this.§&U§);
         this.§^"@§.graphics.moveTo(param1.position.x * this.§-z§,param1.position.y * this.§-z§);
         this.§^"@§.graphics.lineTo((param1.position.x + this.§!#l§ * param1.R.col2.x) * this.§-z§,(param1.position.y + this.§!#l§ * param1.R.col2.y) * this.§-z§);
      }
   }
}
