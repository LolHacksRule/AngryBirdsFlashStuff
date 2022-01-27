package §0!?§
{
   import §0!=§.b2Transform;
   import §0!=§.b2Vec2;
   import §0^§.b2Color;
   import §0^§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §-!>§:uint = 1;
      
      public static var §"&§:uint = 2;
      
      public static var §`J§:uint = 4;
      
      public static var §"!K§:uint = 8;
      
      public static var §^!1§:uint = 16;
      
      public static var §&!3§:uint = 32;
       
      
      private var §0!5§:uint;
      
      b2internal var §7V§:Sprite;
      
      private var §7u§:Number = 1.0;
      
      private var §>!;§:Number = 1.0;
      
      private var §`m§:Number = 1.0;
      
      private var §%&§:Number = 1.0;
      
      private var §8h§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§0!5§ = 0;
      }
      
      public function §7S§(param1:uint) : void
      {
         this.§0!5§ = param1;
      }
      
      public function §6S§() : uint
      {
         return this.§0!5§;
      }
      
      public function §3!$§(param1:uint) : void
      {
         this.§0!5§ |= param1;
      }
      
      public function §,M§(param1:uint) : void
      {
         this.§0!5§ &= ~param1;
      }
      
      public function §+!K§(param1:Sprite) : void
      {
         this.§7V§ = param1;
      }
      
      public function §<9§() : Sprite
      {
         return this.§7V§;
      }
      
      public function §8!$§(param1:Number) : void
      {
         this.§7u§ = param1;
      }
      
      public function §]l§() : Number
      {
         return this.§7u§;
      }
      
      public function §^!7§(param1:Number) : void
      {
         this.§>!;§ = param1;
      }
      
      public function §,!4§() : Number
      {
         return this.§>!;§;
      }
      
      public function §<+§(param1:Number) : void
      {
         this.§`m§ = param1;
      }
      
      public function §<e§() : Number
      {
         return this.§`m§;
      }
      
      public function §^g§(param1:Number) : void
      {
         this.§%&§ = param1;
      }
      
      public function §-w§() : Number
      {
         return this.§%&§;
      }
      
      public function §7!+§(param1:Number) : void
      {
         this.§8h§ = param1;
      }
      
      public function §!!b§() : Number
      {
         return this.§8h§;
      }
      
      public function §%z§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§7V§.graphics.lineStyle(this.§>!;§,param3.color,this.§`m§);
         this.§7V§.graphics.moveTo(param1[0].x * this.§7u§,param1[0].y * this.§7u§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§7V§.graphics.lineTo(param1[_loc4_].x * this.§7u§,param1[_loc4_].y * this.§7u§);
            _loc4_++;
         }
         this.§7V§.graphics.lineTo(param1[0].x * this.§7u§,param1[0].y * this.§7u§);
      }
      
      public function §>G§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§7V§.graphics.lineStyle(this.§>!;§,param3.color,this.§`m§);
         this.§7V§.graphics.moveTo(param1[0].x * this.§7u§,param1[0].y * this.§7u§);
         this.§7V§.graphics.beginFill(param3.color,this.§%&§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§7V§.graphics.lineTo(param1[_loc4_].x * this.§7u§,param1[_loc4_].y * this.§7u§);
            _loc4_++;
         }
         this.§7V§.graphics.lineTo(param1[0].x * this.§7u§,param1[0].y * this.§7u§);
         this.§7V§.graphics.endFill();
      }
      
      public function §[i§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§7V§.graphics.lineStyle(this.§>!;§,param3.color,this.§`m§);
         this.§7V§.graphics.drawCircle(param1.x * this.§7u§,param1.y * this.§7u§,param2 * this.§7u§);
      }
      
      public function §%x§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§7V§.graphics.lineStyle(this.§>!;§,param4.color,this.§`m§);
         this.§7V§.graphics.moveTo(0,0);
         this.§7V§.graphics.beginFill(param4.color,this.§%&§);
         this.§7V§.graphics.drawCircle(param1.x * this.§7u§,param1.y * this.§7u§,param2 * this.§7u§);
         this.§7V§.graphics.endFill();
         this.§7V§.graphics.moveTo(param1.x * this.§7u§,param1.y * this.§7u§);
         this.§7V§.graphics.lineTo((param1.x + param3.x * param2) * this.§7u§,(param1.y + param3.y * param2) * this.§7u§);
      }
      
      public function §`!S§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§7V§.graphics.lineStyle(this.§>!;§,param3.color,this.§`m§);
         this.§7V§.graphics.moveTo(param1.x * this.§7u§,param1.y * this.§7u§);
         this.§7V§.graphics.lineTo(param2.x * this.§7u§,param2.y * this.§7u§);
      }
      
      public function §-!_§(param1:b2Transform) : void
      {
         this.§7V§.graphics.lineStyle(this.§>!;§,16711680,this.§`m§);
         this.§7V§.graphics.moveTo(param1.position.x * this.§7u§,param1.position.y * this.§7u§);
         this.§7V§.graphics.lineTo((param1.position.x + this.§8h§ * param1.R.col1.x) * this.§7u§,(param1.position.y + this.§8h§ * param1.R.col1.y) * this.§7u§);
         this.§7V§.graphics.lineStyle(this.§>!;§,65280,this.§`m§);
         this.§7V§.graphics.moveTo(param1.position.x * this.§7u§,param1.position.y * this.§7u§);
         this.§7V§.graphics.lineTo((param1.position.x + this.§8h§ * param1.R.col2.x) * this.§7u§,(param1.position.y + this.§8h§ * param1.R.col2.y) * this.§7u§);
      }
   }
}
