package §]=§
{
   import §&L§.b2Transform;
   import §&L§.b2Vec2;
   import §+!,§.b2Color;
   import §+!,§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §>!>§:uint = 1;
      
      public static var §^!c§:uint = 2;
      
      public static var §+o§:uint = 4;
      
      public static var §<C§:uint = 8;
      
      public static var §`8§:uint = 16;
      
      public static var § y§:uint = 32;
       
      
      private var §,!,§:uint;
      
      b2internal var §21§:Sprite;
      
      private var §`S§:Number = 1.0;
      
      private var §,8§:Number = 1.0;
      
      private var §'$§:Number = 1.0;
      
      private var §,!;§:Number = 1.0;
      
      private var §!!V§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§,!,§ = 0;
      }
      
      public function §^§(param1:uint) : void
      {
         this.§,!,§ = param1;
      }
      
      public function §throw§() : uint
      {
         return this.§,!,§;
      }
      
      public function §1;§(param1:uint) : void
      {
         this.§,!,§ |= param1;
      }
      
      public function §?[§(param1:uint) : void
      {
         this.§,!,§ &= ~param1;
      }
      
      public function §2@§(param1:Sprite) : void
      {
         this.§21§ = param1;
      }
      
      public function §-!3§() : Sprite
      {
         return this.§21§;
      }
      
      public function §!x§(param1:Number) : void
      {
         this.§`S§ = param1;
      }
      
      public function §&[§() : Number
      {
         return this.§`S§;
      }
      
      public function §7!#§(param1:Number) : void
      {
         this.§,8§ = param1;
      }
      
      public function §,!Y§() : Number
      {
         return this.§,8§;
      }
      
      public function §^!V§(param1:Number) : void
      {
         this.§'$§ = param1;
      }
      
      public function §'f§() : Number
      {
         return this.§'$§;
      }
      
      public function §;!%§(param1:Number) : void
      {
         this.§,!;§ = param1;
      }
      
      public function §`W§() : Number
      {
         return this.§,!;§;
      }
      
      public function §6!3§(param1:Number) : void
      {
         this.§!!V§ = param1;
      }
      
      public function §%-§() : Number
      {
         return this.§!!V§;
      }
      
      public function §[!^§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§21§.graphics.lineStyle(this.§,8§,param3.color,this.§'$§);
         this.§21§.graphics.moveTo(param1[0].x * this.§`S§,param1[0].y * this.§`S§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§21§.graphics.lineTo(param1[_loc4_].x * this.§`S§,param1[_loc4_].y * this.§`S§);
            _loc4_++;
         }
         this.§21§.graphics.lineTo(param1[0].x * this.§`S§,param1[0].y * this.§`S§);
      }
      
      public function §1@§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§21§.graphics.lineStyle(this.§,8§,param3.color,this.§'$§);
         this.§21§.graphics.moveTo(param1[0].x * this.§`S§,param1[0].y * this.§`S§);
         this.§21§.graphics.beginFill(param3.color,this.§,!;§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§21§.graphics.lineTo(param1[_loc4_].x * this.§`S§,param1[_loc4_].y * this.§`S§);
            _loc4_++;
         }
         this.§21§.graphics.lineTo(param1[0].x * this.§`S§,param1[0].y * this.§`S§);
         this.§21§.graphics.endFill();
      }
      
      public function §97§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§21§.graphics.lineStyle(this.§,8§,param3.color,this.§'$§);
         this.§21§.graphics.drawCircle(param1.x * this.§`S§,param1.y * this.§`S§,param2 * this.§`S§);
      }
      
      public function §[a§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§21§.graphics.lineStyle(this.§,8§,param4.color,this.§'$§);
         this.§21§.graphics.moveTo(0,0);
         this.§21§.graphics.beginFill(param4.color,this.§,!;§);
         this.§21§.graphics.drawCircle(param1.x * this.§`S§,param1.y * this.§`S§,param2 * this.§`S§);
         this.§21§.graphics.endFill();
         this.§21§.graphics.moveTo(param1.x * this.§`S§,param1.y * this.§`S§);
         this.§21§.graphics.lineTo((param1.x + param3.x * param2) * this.§`S§,(param1.y + param3.y * param2) * this.§`S§);
      }
      
      public function §^p§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§21§.graphics.lineStyle(this.§,8§,param3.color,this.§'$§);
         this.§21§.graphics.moveTo(param1.x * this.§`S§,param1.y * this.§`S§);
         this.§21§.graphics.lineTo(param2.x * this.§`S§,param2.y * this.§`S§);
      }
      
      public function §#!^§(param1:b2Transform) : void
      {
         this.§21§.graphics.lineStyle(this.§,8§,16711680,this.§'$§);
         this.§21§.graphics.moveTo(param1.position.x * this.§`S§,param1.position.y * this.§`S§);
         this.§21§.graphics.lineTo((param1.position.x + this.§!!V§ * param1.R.col1.x) * this.§`S§,(param1.position.y + this.§!!V§ * param1.R.col1.y) * this.§`S§);
         this.§21§.graphics.lineStyle(this.§,8§,65280,this.§'$§);
         this.§21§.graphics.moveTo(param1.position.x * this.§`S§,param1.position.y * this.§`S§);
         this.§21§.graphics.lineTo((param1.position.x + this.§!!V§ * param1.R.col2.x) * this.§`S§,(param1.position.y + this.§!!V§ * param1.R.col2.y) * this.§`S§);
      }
   }
}
