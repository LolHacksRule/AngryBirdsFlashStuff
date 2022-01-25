package §=!U§
{
   import §"!R§.b2Color;
   import §"!R§.b2internal;
   import flash.display.Sprite;
   import §implements§.b2Transform;
   import §implements§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §[!9§:uint = 1;
      
      public static var §3D§:uint = 2;
      
      public static var § !-§:uint = 4;
      
      public static var §7!-§:uint = 8;
      
      public static var §1!K§:uint = 16;
      
      public static var §"!6§:uint = 32;
       
      
      private var §,!9§:uint;
      
      b2internal var §2!W§:Sprite;
      
      private var §^!S§:Number = 1.0;
      
      private var §[!X§:Number = 1.0;
      
      private var §`!3§:Number = 1.0;
      
      private var §]N§:Number = 1.0;
      
      private var §0!;§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§,!9§ = 0;
      }
      
      public function §+s§(param1:uint) : void
      {
         this.§,!9§ = param1;
      }
      
      public function §`!&§() : uint
      {
         return this.§,!9§;
      }
      
      public function §4!D§(param1:uint) : void
      {
         this.§,!9§ |= param1;
      }
      
      public function §-!_§(param1:uint) : void
      {
         this.§,!9§ &= ~param1;
      }
      
      public function §-D§(param1:Sprite) : void
      {
         this.§2!W§ = param1;
      }
      
      public function §else §() : Sprite
      {
         return this.§2!W§;
      }
      
      public function §+k§(param1:Number) : void
      {
         this.§^!S§ = param1;
      }
      
      public function §%y§() : Number
      {
         return this.§^!S§;
      }
      
      public function §^[§(param1:Number) : void
      {
         this.§[!X§ = param1;
      }
      
      public function §7]§() : Number
      {
         return this.§[!X§;
      }
      
      public function §0P§(param1:Number) : void
      {
         this.§`!3§ = param1;
      }
      
      public function §4!W§() : Number
      {
         return this.§`!3§;
      }
      
      public function §%!C§(param1:Number) : void
      {
         this.§]N§ = param1;
      }
      
      public function §'p§() : Number
      {
         return this.§]N§;
      }
      
      public function §,v§(param1:Number) : void
      {
         this.§0!;§ = param1;
      }
      
      public function §+N§() : Number
      {
         return this.§0!;§;
      }
      
      public function §,_§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§2!W§.graphics.lineStyle(this.§[!X§,param3.color,this.§`!3§);
         this.§2!W§.graphics.moveTo(param1[0].x * this.§^!S§,param1[0].y * this.§^!S§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§2!W§.graphics.lineTo(param1[_loc4_].x * this.§^!S§,param1[_loc4_].y * this.§^!S§);
            _loc4_++;
         }
         this.§2!W§.graphics.lineTo(param1[0].x * this.§^!S§,param1[0].y * this.§^!S§);
      }
      
      public function §-X§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§2!W§.graphics.lineStyle(this.§[!X§,param3.color,this.§`!3§);
         this.§2!W§.graphics.moveTo(param1[0].x * this.§^!S§,param1[0].y * this.§^!S§);
         this.§2!W§.graphics.beginFill(param3.color,this.§]N§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§2!W§.graphics.lineTo(param1[_loc4_].x * this.§^!S§,param1[_loc4_].y * this.§^!S§);
            _loc4_++;
         }
         this.§2!W§.graphics.lineTo(param1[0].x * this.§^!S§,param1[0].y * this.§^!S§);
         this.§2!W§.graphics.endFill();
      }
      
      public function §-!&§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§2!W§.graphics.lineStyle(this.§[!X§,param3.color,this.§`!3§);
         this.§2!W§.graphics.drawCircle(param1.x * this.§^!S§,param1.y * this.§^!S§,param2 * this.§^!S§);
      }
      
      public function §-[§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§2!W§.graphics.lineStyle(this.§[!X§,param4.color,this.§`!3§);
         this.§2!W§.graphics.moveTo(0,0);
         this.§2!W§.graphics.beginFill(param4.color,this.§]N§);
         this.§2!W§.graphics.drawCircle(param1.x * this.§^!S§,param1.y * this.§^!S§,param2 * this.§^!S§);
         this.§2!W§.graphics.endFill();
         this.§2!W§.graphics.moveTo(param1.x * this.§^!S§,param1.y * this.§^!S§);
         this.§2!W§.graphics.lineTo((param1.x + param3.x * param2) * this.§^!S§,(param1.y + param3.y * param2) * this.§^!S§);
      }
      
      public function §;H§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§2!W§.graphics.lineStyle(this.§[!X§,param3.color,this.§`!3§);
         this.§2!W§.graphics.moveTo(param1.x * this.§^!S§,param1.y * this.§^!S§);
         this.§2!W§.graphics.lineTo(param2.x * this.§^!S§,param2.y * this.§^!S§);
      }
      
      public function §?w§(param1:b2Transform) : void
      {
         this.§2!W§.graphics.lineStyle(this.§[!X§,16711680,this.§`!3§);
         this.§2!W§.graphics.moveTo(param1.position.x * this.§^!S§,param1.position.y * this.§^!S§);
         this.§2!W§.graphics.lineTo((param1.position.x + this.§0!;§ * param1.R.col1.x) * this.§^!S§,(param1.position.y + this.§0!;§ * param1.R.col1.y) * this.§^!S§);
         this.§2!W§.graphics.lineStyle(this.§[!X§,65280,this.§`!3§);
         this.§2!W§.graphics.moveTo(param1.position.x * this.§^!S§,param1.position.y * this.§^!S§);
         this.§2!W§.graphics.lineTo((param1.position.x + this.§0!;§ * param1.R.col2.x) * this.§^!S§,(param1.position.y + this.§0!;§ * param1.R.col2.y) * this.§^!S§);
      }
   }
}
