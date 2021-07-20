package §&!Y§
{
   import §7F§.b2Transform;
   import §7F§.b2Vec2;
   import §@!a§.b2Color;
   import §@!a§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §4!c§:uint = 1;
      
      public static var §>!@§:uint = 2;
      
      public static var §]r§:uint = 4;
      
      public static var §"m§:uint = 8;
      
      public static var §@"E§:uint = 16;
      
      public static var § G§:uint = 32;
       
      
      private var §"$§:uint;
      
      b2internal var §!b§:Sprite;
      
      private var §;+§:Number = 1.0;
      
      private var §5^§:Number = 1.0;
      
      private var §]!2§:Number = 1.0;
      
      private var §'!%§:Number = 1.0;
      
      private var § !g§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§"$§ = 0;
      }
      
      public function §@"H§(param1:uint) : void
      {
         this.§"$§ = param1;
      }
      
      public function §0" §() : uint
      {
         return this.§"$§;
      }
      
      public function §5!,§(param1:uint) : void
      {
         this.§"$§ |= param1;
      }
      
      public function §8!`§(param1:uint) : void
      {
         this.§"$§ &= ~param1;
      }
      
      public function § c§(param1:Sprite) : void
      {
         this.§!b§ = param1;
      }
      
      public function §"k§() : Sprite
      {
         return this.§!b§;
      }
      
      public function §>,§(param1:Number) : void
      {
         this.§;+§ = param1;
      }
      
      public function § $§() : Number
      {
         return this.§;+§;
      }
      
      public function §]J§(param1:Number) : void
      {
         this.§5^§ = param1;
      }
      
      public function §?!C§() : Number
      {
         return this.§5^§;
      }
      
      public function §6!g§(param1:Number) : void
      {
         this.§]!2§ = param1;
      }
      
      public function §%!I§() : Number
      {
         return this.§]!2§;
      }
      
      public function §6"A§(param1:Number) : void
      {
         this.§'!%§ = param1;
      }
      
      public function §;!a§() : Number
      {
         return this.§'!%§;
      }
      
      public function §3!E§(param1:Number) : void
      {
         this.§ !g§ = param1;
      }
      
      public function §+"H§() : Number
      {
         return this.§ !g§;
      }
      
      public function §>!1§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§!b§.graphics.lineStyle(this.§5^§,param3.color,this.§]!2§);
         this.§!b§.graphics.moveTo(param1[0].x * this.§;+§,param1[0].y * this.§;+§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§!b§.graphics.lineTo(param1[_loc4_].x * this.§;+§,param1[_loc4_].y * this.§;+§);
            _loc4_++;
         }
         this.§!b§.graphics.lineTo(param1[0].x * this.§;+§,param1[0].y * this.§;+§);
      }
      
      public function §0!?§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§!b§.graphics.lineStyle(this.§5^§,param3.color,this.§]!2§);
         this.§!b§.graphics.moveTo(param1[0].x * this.§;+§,param1[0].y * this.§;+§);
         this.§!b§.graphics.beginFill(param3.color,this.§'!%§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§!b§.graphics.lineTo(param1[_loc4_].x * this.§;+§,param1[_loc4_].y * this.§;+§);
            _loc4_++;
         }
         this.§!b§.graphics.lineTo(param1[0].x * this.§;+§,param1[0].y * this.§;+§);
         this.§!b§.graphics.endFill();
      }
      
      public function §#G§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§!b§.graphics.lineStyle(this.§5^§,param3.color,this.§]!2§);
         this.§!b§.graphics.drawCircle(param1.x * this.§;+§,param1.y * this.§;+§,param2 * this.§;+§);
      }
      
      public function §!g§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§!b§.graphics.lineStyle(this.§5^§,param4.color,this.§]!2§);
         this.§!b§.graphics.moveTo(0,0);
         this.§!b§.graphics.beginFill(param4.color,this.§'!%§);
         this.§!b§.graphics.drawCircle(param1.x * this.§;+§,param1.y * this.§;+§,param2 * this.§;+§);
         this.§!b§.graphics.endFill();
         this.§!b§.graphics.moveTo(param1.x * this.§;+§,param1.y * this.§;+§);
         this.§!b§.graphics.lineTo((param1.x + param3.x * param2) * this.§;+§,(param1.y + param3.y * param2) * this.§;+§);
      }
      
      public function §+!g§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§!b§.graphics.lineStyle(this.§5^§,param3.color,this.§]!2§);
         this.§!b§.graphics.moveTo(param1.x * this.§;+§,param1.y * this.§;+§);
         this.§!b§.graphics.lineTo(param2.x * this.§;+§,param2.y * this.§;+§);
      }
      
      public function §-!`§(param1:b2Transform) : void
      {
         this.§!b§.graphics.lineStyle(this.§5^§,16711680,this.§]!2§);
         this.§!b§.graphics.moveTo(param1.position.x * this.§;+§,param1.position.y * this.§;+§);
         this.§!b§.graphics.lineTo((param1.position.x + this.§ !g§ * param1.R.col1.x) * this.§;+§,(param1.position.y + this.§ !g§ * param1.R.col1.y) * this.§;+§);
         this.§!b§.graphics.lineStyle(this.§5^§,65280,this.§]!2§);
         this.§!b§.graphics.moveTo(param1.position.x * this.§;+§,param1.position.y * this.§;+§);
         this.§!b§.graphics.lineTo((param1.position.x + this.§ !g§ * param1.R.col2.x) * this.§;+§,(param1.position.y + this.§ !g§ * param1.R.col2.y) * this.§;+§);
      }
   }
}
