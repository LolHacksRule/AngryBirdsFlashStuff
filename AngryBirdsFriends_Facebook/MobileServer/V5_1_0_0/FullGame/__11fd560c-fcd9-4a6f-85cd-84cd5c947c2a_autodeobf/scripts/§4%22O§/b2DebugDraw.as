package §4"O§
{
   import § "%§.b2Transform;
   import § "%§.b2Vec2;
   import §,!s§.b2Color;
   import §,!s§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var § !P§:uint = 1;
      
      public static var §`$7§:uint = 2;
      
      public static var §-q§:uint = 4;
      
      public static var §=#a§:uint = 8;
      
      public static var §##r§:uint = 16;
      
      public static var §0"&§:uint = 32;
       
      
      private var §#!x§:uint;
      
      b2internal var §7"D§:Sprite;
      
      private var §2$!§:Number = 1.0;
      
      private var §1#z§:Number = 1.0;
      
      private var § !+§:Number = 1.0;
      
      private var § "H§:Number = 1.0;
      
      private var §,@§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§#!x§ = 0;
      }
      
      public function § '§(param1:uint) : void
      {
         this.§#!x§ = param1;
      }
      
      public function § "@§() : uint
      {
         return this.§#!x§;
      }
      
      public function §>!a§(param1:uint) : void
      {
         this.§#!x§ |= param1;
      }
      
      public function §9#!§(param1:uint) : void
      {
         this.§#!x§ &= ~param1;
      }
      
      public function §^"'§(param1:Sprite) : void
      {
         this.§7"D§ = param1;
      }
      
      public function §<!Q§() : Sprite
      {
         return this.§7"D§;
      }
      
      public function §4$9§(param1:Number) : void
      {
         this.§2$!§ = param1;
      }
      
      public function §-"w§() : Number
      {
         return this.§2$!§;
      }
      
      public function §^D§(param1:Number) : void
      {
         this.§1#z§ = param1;
      }
      
      public function §-#6§() : Number
      {
         return this.§1#z§;
      }
      
      public function §7"5§(param1:Number) : void
      {
         this.§ !+§ = param1;
      }
      
      public function §`#y§() : Number
      {
         return this.§ !+§;
      }
      
      public function §<E§(param1:Number) : void
      {
         this.§ "H§ = param1;
      }
      
      public function §5%§() : Number
      {
         return this.§ "H§;
      }
      
      public function §9#M§(param1:Number) : void
      {
         this.§,@§ = param1;
      }
      
      public function §<#"§() : Number
      {
         return this.§,@§;
      }
      
      public function §>#h§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§7"D§.graphics.lineStyle(this.§1#z§,param3.color,this.§ !+§);
         this.§7"D§.graphics.moveTo(param1[0].x * this.§2$!§,param1[0].y * this.§2$!§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§7"D§.graphics.lineTo(param1[_loc4_].x * this.§2$!§,param1[_loc4_].y * this.§2$!§);
            _loc4_++;
         }
         this.§7"D§.graphics.lineTo(param1[0].x * this.§2$!§,param1[0].y * this.§2$!§);
      }
      
      public function §^"D§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§7"D§.graphics.lineStyle(this.§1#z§,param3.color,this.§ !+§);
         this.§7"D§.graphics.moveTo(param1[0].x * this.§2$!§,param1[0].y * this.§2$!§);
         this.§7"D§.graphics.beginFill(param3.color,this.§ "H§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§7"D§.graphics.lineTo(param1[_loc4_].x * this.§2$!§,param1[_loc4_].y * this.§2$!§);
            _loc4_++;
         }
         this.§7"D§.graphics.lineTo(param1[0].x * this.§2$!§,param1[0].y * this.§2$!§);
         this.§7"D§.graphics.endFill();
      }
      
      public function §!R§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§7"D§.graphics.lineStyle(this.§1#z§,param3.color,this.§ !+§);
         this.§7"D§.graphics.drawCircle(param1.x * this.§2$!§,param1.y * this.§2$!§,param2 * this.§2$!§);
      }
      
      public function §+i§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§7"D§.graphics.lineStyle(this.§1#z§,param4.color,this.§ !+§);
         this.§7"D§.graphics.moveTo(0,0);
         this.§7"D§.graphics.beginFill(param4.color,this.§ "H§);
         this.§7"D§.graphics.drawCircle(param1.x * this.§2$!§,param1.y * this.§2$!§,param2 * this.§2$!§);
         this.§7"D§.graphics.endFill();
         this.§7"D§.graphics.moveTo(param1.x * this.§2$!§,param1.y * this.§2$!§);
         this.§7"D§.graphics.lineTo((param1.x + param3.x * param2) * this.§2$!§,(param1.y + param3.y * param2) * this.§2$!§);
      }
      
      public function §,#m§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§7"D§.graphics.lineStyle(this.§1#z§,param3.color,this.§ !+§);
         this.§7"D§.graphics.moveTo(param1.x * this.§2$!§,param1.y * this.§2$!§);
         this.§7"D§.graphics.lineTo(param2.x * this.§2$!§,param2.y * this.§2$!§);
      }
      
      public function §4!K§(param1:b2Transform) : void
      {
         this.§7"D§.graphics.lineStyle(this.§1#z§,16711680,this.§ !+§);
         this.§7"D§.graphics.moveTo(param1.position.x * this.§2$!§,param1.position.y * this.§2$!§);
         this.§7"D§.graphics.lineTo((param1.position.x + this.§,@§ * param1.R.col1.x) * this.§2$!§,(param1.position.y + this.§,@§ * param1.R.col1.y) * this.§2$!§);
         this.§7"D§.graphics.lineStyle(this.§1#z§,65280,this.§ !+§);
         this.§7"D§.graphics.moveTo(param1.position.x * this.§2$!§,param1.position.y * this.§2$!§);
         this.§7"D§.graphics.lineTo((param1.position.x + this.§,@§ * param1.R.col2.x) * this.§2$!§,(param1.position.y + this.§,@§ * param1.R.col2.y) * this.§2$!§);
      }
   }
}
