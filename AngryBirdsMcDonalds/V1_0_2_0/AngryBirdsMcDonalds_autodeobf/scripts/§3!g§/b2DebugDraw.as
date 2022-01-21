package §3!g§
{
   import §"U§.b2Transform;
   import §"U§.b2Vec2;
   import §=!X§.b2Color;
   import §=!X§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §6!;§:uint = 1;
      
      public static var §-[§:uint = 2;
      
      public static var §#A§:uint = 4;
      
      public static var §&Q§:uint = 8;
      
      public static var §>!,§:uint = 16;
      
      public static var §?E§:uint = 32;
       
      
      private var §&!@§:uint;
      
      b2internal var §%!P§:Sprite;
      
      private var §&b§:Number = 1.0;
      
      private var §%v§:Number = 1.0;
      
      private var §5!D§:Number = 1.0;
      
      private var §6!l§:Number = 1.0;
      
      private var §=!>§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§&!@§ = 0;
      }
      
      public function §"!0§(param1:uint) : void
      {
         this.§&!@§ = param1;
      }
      
      public function §2!e§() : uint
      {
         return this.§&!@§;
      }
      
      public function §"!%§(param1:uint) : void
      {
         this.§&!@§ |= param1;
      }
      
      public function §"!_§(param1:uint) : void
      {
         this.§&!@§ &= ~param1;
      }
      
      public function §?!=§(param1:Sprite) : void
      {
         this.§%!P§ = param1;
      }
      
      public function §<!h§() : Sprite
      {
         return this.§%!P§;
      }
      
      public function §6!`§(param1:Number) : void
      {
         this.§&b§ = param1;
      }
      
      public function §&!4§() : Number
      {
         return this.§&b§;
      }
      
      public function §9a§(param1:Number) : void
      {
         this.§%v§ = param1;
      }
      
      public function §7!D§() : Number
      {
         return this.§%v§;
      }
      
      public function §;s§(param1:Number) : void
      {
         this.§5!D§ = param1;
      }
      
      public function §7!5§() : Number
      {
         return this.§5!D§;
      }
      
      public function §true§(param1:Number) : void
      {
         this.§6!l§ = param1;
      }
      
      public function §'!=§() : Number
      {
         return this.§6!l§;
      }
      
      public function § !l§(param1:Number) : void
      {
         this.§=!>§ = param1;
      }
      
      public function §;!L§() : Number
      {
         return this.§=!>§;
      }
      
      public function §@J§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§%!P§.graphics.lineStyle(this.§%v§,param3.color,this.§5!D§);
         this.§%!P§.graphics.moveTo(param1[0].x * this.§&b§,param1[0].y * this.§&b§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§%!P§.graphics.lineTo(param1[_loc4_].x * this.§&b§,param1[_loc4_].y * this.§&b§);
            _loc4_++;
         }
         this.§%!P§.graphics.lineTo(param1[0].x * this.§&b§,param1[0].y * this.§&b§);
      }
      
      public function §1F§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§%!P§.graphics.lineStyle(this.§%v§,param3.color,this.§5!D§);
         this.§%!P§.graphics.moveTo(param1[0].x * this.§&b§,param1[0].y * this.§&b§);
         this.§%!P§.graphics.beginFill(param3.color,this.§6!l§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§%!P§.graphics.lineTo(param1[_loc4_].x * this.§&b§,param1[_loc4_].y * this.§&b§);
            _loc4_++;
         }
         this.§%!P§.graphics.lineTo(param1[0].x * this.§&b§,param1[0].y * this.§&b§);
         this.§%!P§.graphics.endFill();
      }
      
      public function §=m§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§%!P§.graphics.lineStyle(this.§%v§,param3.color,this.§5!D§);
         this.§%!P§.graphics.drawCircle(param1.x * this.§&b§,param1.y * this.§&b§,param2 * this.§&b§);
      }
      
      public function §%!,§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§%!P§.graphics.lineStyle(this.§%v§,param4.color,this.§5!D§);
         this.§%!P§.graphics.moveTo(0,0);
         this.§%!P§.graphics.beginFill(param4.color,this.§6!l§);
         this.§%!P§.graphics.drawCircle(param1.x * this.§&b§,param1.y * this.§&b§,param2 * this.§&b§);
         this.§%!P§.graphics.endFill();
         this.§%!P§.graphics.moveTo(param1.x * this.§&b§,param1.y * this.§&b§);
         this.§%!P§.graphics.lineTo((param1.x + param3.x * param2) * this.§&b§,(param1.y + param3.y * param2) * this.§&b§);
      }
      
      public function §[!4§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§%!P§.graphics.lineStyle(this.§%v§,param3.color,this.§5!D§);
         this.§%!P§.graphics.moveTo(param1.x * this.§&b§,param1.y * this.§&b§);
         this.§%!P§.graphics.lineTo(param2.x * this.§&b§,param2.y * this.§&b§);
      }
      
      public function §!M§(param1:b2Transform) : void
      {
         this.§%!P§.graphics.lineStyle(this.§%v§,16711680,this.§5!D§);
         this.§%!P§.graphics.moveTo(param1.position.x * this.§&b§,param1.position.y * this.§&b§);
         this.§%!P§.graphics.lineTo((param1.position.x + this.§=!>§ * param1.R.col1.x) * this.§&b§,(param1.position.y + this.§=!>§ * param1.R.col1.y) * this.§&b§);
         this.§%!P§.graphics.lineStyle(this.§%v§,65280,this.§5!D§);
         this.§%!P§.graphics.moveTo(param1.position.x * this.§&b§,param1.position.y * this.§&b§);
         this.§%!P§.graphics.lineTo((param1.position.x + this.§=!>§ * param1.R.col2.x) * this.§&b§,(param1.position.y + this.§=!>§ * param1.R.col2.y) * this.§&b§);
      }
   }
}
