package §3#h§
{
   import §1#F§.b2Color;
   import §1#F§.b2internal;
   import §6!R§.b2Transform;
   import §6!R§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var § !m§:uint = 1;
      
      public static var §#!V§:uint = 2;
      
      public static var §&w§:uint = 4;
      
      public static var §<#9§:uint = 8;
      
      public static var §3#3§:uint = 16;
      
      public static var §-"4§:uint = 32;
       
      
      private var §?"S§:uint;
      
      b2internal var §'h§:Sprite;
      
      private var §%$3§:Number = 1.0;
      
      private var §6!T§:Number = 1.0;
      
      private var §%#%§:Number = 1.0;
      
      private var §4#5§:Number = 1.0;
      
      private var §]Y§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§?"S§ = 0;
      }
      
      public function §8$5§(param1:uint) : void
      {
         this.§?"S§ = param1;
      }
      
      public function §%"2§() : uint
      {
         return this.§?"S§;
      }
      
      public function §`!n§(param1:uint) : void
      {
         this.§?"S§ |= param1;
      }
      
      public function §!#9§(param1:uint) : void
      {
         this.§?"S§ &= ~param1;
      }
      
      public function §2$@§(param1:Sprite) : void
      {
         this.§'h§ = param1;
      }
      
      public function §]"c§() : Sprite
      {
         return this.§'h§;
      }
      
      public function §7D§(param1:Number) : void
      {
         this.§%$3§ = param1;
      }
      
      public function §`",§() : Number
      {
         return this.§%$3§;
      }
      
      public function §+"#§(param1:Number) : void
      {
         this.§6!T§ = param1;
      }
      
      public function §6"H§() : Number
      {
         return this.§6!T§;
      }
      
      public function §1" §(param1:Number) : void
      {
         this.§%#%§ = param1;
      }
      
      public function §+"3§() : Number
      {
         return this.§%#%§;
      }
      
      public function §"#e§(param1:Number) : void
      {
         this.§4#5§ = param1;
      }
      
      public function §@"R§() : Number
      {
         return this.§4#5§;
      }
      
      public function §,#k§(param1:Number) : void
      {
         this.§]Y§ = param1;
      }
      
      public function §'$4§() : Number
      {
         return this.§]Y§;
      }
      
      public function §%"3§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§'h§.graphics.lineStyle(this.§6!T§,param3.color,this.§%#%§);
         this.§'h§.graphics.moveTo(param1[0].x * this.§%$3§,param1[0].y * this.§%$3§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§'h§.graphics.lineTo(param1[_loc4_].x * this.§%$3§,param1[_loc4_].y * this.§%$3§);
            _loc4_++;
         }
         this.§'h§.graphics.lineTo(param1[0].x * this.§%$3§,param1[0].y * this.§%$3§);
      }
      
      public function § #h§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§'h§.graphics.lineStyle(this.§6!T§,param3.color,this.§%#%§);
         this.§'h§.graphics.moveTo(param1[0].x * this.§%$3§,param1[0].y * this.§%$3§);
         this.§'h§.graphics.beginFill(param3.color,this.§4#5§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§'h§.graphics.lineTo(param1[_loc4_].x * this.§%$3§,param1[_loc4_].y * this.§%$3§);
            _loc4_++;
         }
         this.§'h§.graphics.lineTo(param1[0].x * this.§%$3§,param1[0].y * this.§%$3§);
         this.§'h§.graphics.endFill();
      }
      
      public function §9"Q§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§'h§.graphics.lineStyle(this.§6!T§,param3.color,this.§%#%§);
         this.§'h§.graphics.drawCircle(param1.x * this.§%$3§,param1.y * this.§%$3§,param2 * this.§%$3§);
      }
      
      public function §!b§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§'h§.graphics.lineStyle(this.§6!T§,param4.color,this.§%#%§);
         this.§'h§.graphics.moveTo(0,0);
         this.§'h§.graphics.beginFill(param4.color,this.§4#5§);
         this.§'h§.graphics.drawCircle(param1.x * this.§%$3§,param1.y * this.§%$3§,param2 * this.§%$3§);
         this.§'h§.graphics.endFill();
         this.§'h§.graphics.moveTo(param1.x * this.§%$3§,param1.y * this.§%$3§);
         this.§'h§.graphics.lineTo((param1.x + param3.x * param2) * this.§%$3§,(param1.y + param3.y * param2) * this.§%$3§);
      }
      
      public function §;#I§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§'h§.graphics.lineStyle(this.§6!T§,param3.color,this.§%#%§);
         this.§'h§.graphics.moveTo(param1.x * this.§%$3§,param1.y * this.§%$3§);
         this.§'h§.graphics.lineTo(param2.x * this.§%$3§,param2.y * this.§%$3§);
      }
      
      public function § !2§(param1:b2Transform) : void
      {
         this.§'h§.graphics.lineStyle(this.§6!T§,16711680,this.§%#%§);
         this.§'h§.graphics.moveTo(param1.position.x * this.§%$3§,param1.position.y * this.§%$3§);
         this.§'h§.graphics.lineTo((param1.position.x + this.§]Y§ * param1.R.col1.x) * this.§%$3§,(param1.position.y + this.§]Y§ * param1.R.col1.y) * this.§%$3§);
         this.§'h§.graphics.lineStyle(this.§6!T§,65280,this.§%#%§);
         this.§'h§.graphics.moveTo(param1.position.x * this.§%$3§,param1.position.y * this.§%$3§);
         this.§'h§.graphics.lineTo((param1.position.x + this.§]Y§ * param1.R.col2.x) * this.§%$3§,(param1.position.y + this.§]Y§ * param1.R.col2.y) * this.§%$3§);
      }
   }
}
