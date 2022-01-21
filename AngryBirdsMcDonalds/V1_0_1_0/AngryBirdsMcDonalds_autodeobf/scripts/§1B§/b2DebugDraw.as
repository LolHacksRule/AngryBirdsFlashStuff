package §1B§
{
   import §!R§.b2Transform;
   import §!R§.b2Vec2;
   import §9i§.b2Color;
   import §9i§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §4-§:uint = 1;
      
      public static var §"<§:uint = 2;
      
      public static var §4!K§:uint = 4;
      
      public static var §&h§:uint = 8;
      
      public static var §4!P§:uint = 16;
      
      public static var §]m§:uint = 32;
       
      
      private var §5!B§:uint;
      
      b2internal var §1!k§:Sprite;
      
      private var §3H§:Number = 1.0;
      
      private var §7!6§:Number = 1.0;
      
      private var §,!1§:Number = 1.0;
      
      private var §&V§:Number = 1.0;
      
      private var §5%§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§5!B§ = 0;
      }
      
      public function §4!e§(param1:uint) : void
      {
         this.§5!B§ = param1;
      }
      
      public function §+;§() : uint
      {
         return this.§5!B§;
      }
      
      public function §5!D§(param1:uint) : void
      {
         this.§5!B§ |= param1;
      }
      
      public function §4!m§(param1:uint) : void
      {
         this.§5!B§ &= ~param1;
      }
      
      public function §;!b§(param1:Sprite) : void
      {
         this.§1!k§ = param1;
      }
      
      public function §"k§() : Sprite
      {
         return this.§1!k§;
      }
      
      public function § if§(param1:Number) : void
      {
         this.§3H§ = param1;
      }
      
      public function §8Q§() : Number
      {
         return this.§3H§;
      }
      
      public function §9!&§(param1:Number) : void
      {
         this.§7!6§ = param1;
      }
      
      public function §!c§() : Number
      {
         return this.§7!6§;
      }
      
      public function §+J§(param1:Number) : void
      {
         this.§,!1§ = param1;
      }
      
      public function §"!Q§() : Number
      {
         return this.§,!1§;
      }
      
      public function §@p§(param1:Number) : void
      {
         this.§&V§ = param1;
      }
      
      public function §?!%§() : Number
      {
         return this.§&V§;
      }
      
      public function §^y§(param1:Number) : void
      {
         this.§5%§ = param1;
      }
      
      public function §5J§() : Number
      {
         return this.§5%§;
      }
      
      public function §8! §(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§1!k§.graphics.lineStyle(this.§7!6§,param3.color,this.§,!1§);
         this.§1!k§.graphics.moveTo(param1[0].x * this.§3H§,param1[0].y * this.§3H§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§1!k§.graphics.lineTo(param1[_loc4_].x * this.§3H§,param1[_loc4_].y * this.§3H§);
            _loc4_++;
         }
         this.§1!k§.graphics.lineTo(param1[0].x * this.§3H§,param1[0].y * this.§3H§);
      }
      
      public function §'F§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§1!k§.graphics.lineStyle(this.§7!6§,param3.color,this.§,!1§);
         this.§1!k§.graphics.moveTo(param1[0].x * this.§3H§,param1[0].y * this.§3H§);
         this.§1!k§.graphics.beginFill(param3.color,this.§&V§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§1!k§.graphics.lineTo(param1[_loc4_].x * this.§3H§,param1[_loc4_].y * this.§3H§);
            _loc4_++;
         }
         this.§1!k§.graphics.lineTo(param1[0].x * this.§3H§,param1[0].y * this.§3H§);
         this.§1!k§.graphics.endFill();
      }
      
      public function §<d§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§1!k§.graphics.lineStyle(this.§7!6§,param3.color,this.§,!1§);
         this.§1!k§.graphics.drawCircle(param1.x * this.§3H§,param1.y * this.§3H§,param2 * this.§3H§);
      }
      
      public function §?!3§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§1!k§.graphics.lineStyle(this.§7!6§,param4.color,this.§,!1§);
         this.§1!k§.graphics.moveTo(0,0);
         this.§1!k§.graphics.beginFill(param4.color,this.§&V§);
         this.§1!k§.graphics.drawCircle(param1.x * this.§3H§,param1.y * this.§3H§,param2 * this.§3H§);
         this.§1!k§.graphics.endFill();
         this.§1!k§.graphics.moveTo(param1.x * this.§3H§,param1.y * this.§3H§);
         this.§1!k§.graphics.lineTo((param1.x + param3.x * param2) * this.§3H§,(param1.y + param3.y * param2) * this.§3H§);
      }
      
      public function §?d§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§1!k§.graphics.lineStyle(this.§7!6§,param3.color,this.§,!1§);
         this.§1!k§.graphics.moveTo(param1.x * this.§3H§,param1.y * this.§3H§);
         this.§1!k§.graphics.lineTo(param2.x * this.§3H§,param2.y * this.§3H§);
      }
      
      public function §7!_§(param1:b2Transform) : void
      {
         this.§1!k§.graphics.lineStyle(this.§7!6§,16711680,this.§,!1§);
         this.§1!k§.graphics.moveTo(param1.position.x * this.§3H§,param1.position.y * this.§3H§);
         this.§1!k§.graphics.lineTo((param1.position.x + this.§5%§ * param1.R.col1.x) * this.§3H§,(param1.position.y + this.§5%§ * param1.R.col1.y) * this.§3H§);
         this.§1!k§.graphics.lineStyle(this.§7!6§,65280,this.§,!1§);
         this.§1!k§.graphics.moveTo(param1.position.x * this.§3H§,param1.position.y * this.§3H§);
         this.§1!k§.graphics.lineTo((param1.position.x + this.§5%§ * param1.R.col2.x) * this.§3H§,(param1.position.y + this.§5%§ * param1.R.col2.y) * this.§3H§);
      }
   }
}
