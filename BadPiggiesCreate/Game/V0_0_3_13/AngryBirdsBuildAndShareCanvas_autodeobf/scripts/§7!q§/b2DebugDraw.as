package §7!q§
{
   import §1!z§.b2Transform;
   import §1!z§.b2Vec2;
   import §[M§.b2Color;
   import §[M§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §2!L§:uint = 1;
      
      public static var §7U§:uint = 2;
      
      public static var §!!m§:uint = 4;
      
      public static var §&H§:uint = 8;
      
      public static var §-!U§:uint = 16;
      
      public static var §import§:uint = 32;
       
      
      private var §"!0§:uint;
      
      b2internal var §,!j§:Sprite;
      
      private var §5!!§:Number = 1.0;
      
      private var §4!X§:Number = 1.0;
      
      private var §?p§:Number = 1.0;
      
      private var §8c§:Number = 1.0;
      
      private var §3!;§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§"!0§ = 0;
      }
      
      public function §;z§(param1:uint) : void
      {
         this.§"!0§ = param1;
      }
      
      public function §&@§() : uint
      {
         return this.§"!0§;
      }
      
      public function §;D§(param1:uint) : void
      {
         this.§"!0§ |= param1;
      }
      
      public function §8!=§(param1:uint) : void
      {
         this.§"!0§ &= ~param1;
      }
      
      public function §`!F§(param1:Sprite) : void
      {
         this.§,!j§ = param1;
      }
      
      public function §-<§() : Sprite
      {
         return this.§,!j§;
      }
      
      public function §3"=§(param1:Number) : void
      {
         this.§5!!§ = param1;
      }
      
      public function §4"'§() : Number
      {
         return this.§5!!§;
      }
      
      public function §2`§(param1:Number) : void
      {
         this.§4!X§ = param1;
      }
      
      public function § !Q§() : Number
      {
         return this.§4!X§;
      }
      
      public function §8!Q§(param1:Number) : void
      {
         this.§?p§ = param1;
      }
      
      public function §%!_§() : Number
      {
         return this.§?p§;
      }
      
      public function §>!j§(param1:Number) : void
      {
         this.§8c§ = param1;
      }
      
      public function §1"&§() : Number
      {
         return this.§8c§;
      }
      
      public function §@@§(param1:Number) : void
      {
         this.§3!;§ = param1;
      }
      
      public function §]!J§() : Number
      {
         return this.§3!;§;
      }
      
      public function §[$§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§,!j§.graphics.lineStyle(this.§4!X§,param3.color,this.§?p§);
         this.§,!j§.graphics.moveTo(param1[0].x * this.§5!!§,param1[0].y * this.§5!!§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§,!j§.graphics.lineTo(param1[_loc4_].x * this.§5!!§,param1[_loc4_].y * this.§5!!§);
            _loc4_++;
         }
         this.§,!j§.graphics.lineTo(param1[0].x * this.§5!!§,param1[0].y * this.§5!!§);
      }
      
      public function §;H§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§,!j§.graphics.lineStyle(this.§4!X§,param3.color,this.§?p§);
         this.§,!j§.graphics.moveTo(param1[0].x * this.§5!!§,param1[0].y * this.§5!!§);
         this.§,!j§.graphics.beginFill(param3.color,this.§8c§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§,!j§.graphics.lineTo(param1[_loc4_].x * this.§5!!§,param1[_loc4_].y * this.§5!!§);
            _loc4_++;
         }
         this.§,!j§.graphics.lineTo(param1[0].x * this.§5!!§,param1[0].y * this.§5!!§);
         this.§,!j§.graphics.endFill();
      }
      
      public function §+N§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§,!j§.graphics.lineStyle(this.§4!X§,param3.color,this.§?p§);
         this.§,!j§.graphics.drawCircle(param1.x * this.§5!!§,param1.y * this.§5!!§,param2 * this.§5!!§);
      }
      
      public function §@w§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§,!j§.graphics.lineStyle(this.§4!X§,param4.color,this.§?p§);
         this.§,!j§.graphics.moveTo(0,0);
         this.§,!j§.graphics.beginFill(param4.color,this.§8c§);
         this.§,!j§.graphics.drawCircle(param1.x * this.§5!!§,param1.y * this.§5!!§,param2 * this.§5!!§);
         this.§,!j§.graphics.endFill();
         this.§,!j§.graphics.moveTo(param1.x * this.§5!!§,param1.y * this.§5!!§);
         this.§,!j§.graphics.lineTo((param1.x + param3.x * param2) * this.§5!!§,(param1.y + param3.y * param2) * this.§5!!§);
      }
      
      public function §-F§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§,!j§.graphics.lineStyle(this.§4!X§,param3.color,this.§?p§);
         this.§,!j§.graphics.moveTo(param1.x * this.§5!!§,param1.y * this.§5!!§);
         this.§,!j§.graphics.lineTo(param2.x * this.§5!!§,param2.y * this.§5!!§);
      }
      
      public function §+!o§(param1:b2Transform) : void
      {
         this.§,!j§.graphics.lineStyle(this.§4!X§,16711680,this.§?p§);
         this.§,!j§.graphics.moveTo(param1.position.x * this.§5!!§,param1.position.y * this.§5!!§);
         this.§,!j§.graphics.lineTo((param1.position.x + this.§3!;§ * param1.R.col1.x) * this.§5!!§,(param1.position.y + this.§3!;§ * param1.R.col1.y) * this.§5!!§);
         this.§,!j§.graphics.lineStyle(this.§4!X§,65280,this.§?p§);
         this.§,!j§.graphics.moveTo(param1.position.x * this.§5!!§,param1.position.y * this.§5!!§);
         this.§,!j§.graphics.lineTo((param1.position.x + this.§3!;§ * param1.R.col2.x) * this.§5!!§,(param1.position.y + this.§3!;§ * param1.R.col2.y) * this.§5!!§);
      }
   }
}
