package §1!+§
{
   import §%!9§.b2Transform;
   import §%!9§.b2Vec2;
   import §9#K§.b2Color;
   import §9#K§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §!N§:uint = 1;
      
      public static var §[#<§:uint = 2;
      
      public static var §[!5§:uint = 4;
      
      public static var §0#+§:uint = 8;
      
      public static var §?#W§:uint = 16;
      
      public static var §2s§:uint = 32;
       
      
      private var §&"z§:uint;
      
      b2internal var §7#w§:Sprite;
      
      private var §=! §:Number = 1.0;
      
      private var §<!s§:Number = 1.0;
      
      private var §=!M§:Number = 1.0;
      
      private var §4$$§:Number = 1.0;
      
      private var §0E§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§&"z§ = 0;
      }
      
      public function §;i§(param1:uint) : void
      {
         this.§&"z§ = param1;
      }
      
      public function §+"S§() : uint
      {
         return this.§&"z§;
      }
      
      public function § "V§(param1:uint) : void
      {
         this.§&"z§ |= param1;
      }
      
      public function §>W§(param1:uint) : void
      {
         this.§&"z§ &= ~param1;
      }
      
      public function §2$>§(param1:Sprite) : void
      {
         this.§7#w§ = param1;
      }
      
      public function §5w§() : Sprite
      {
         return this.§7#w§;
      }
      
      public function §<"H§(param1:Number) : void
      {
         this.§=! § = param1;
      }
      
      public function §0@§() : Number
      {
         return this.§=! §;
      }
      
      public function §5"6§(param1:Number) : void
      {
         this.§<!s§ = param1;
      }
      
      public function § $9§() : Number
      {
         return this.§<!s§;
      }
      
      public function §7=§(param1:Number) : void
      {
         this.§=!M§ = param1;
      }
      
      public function §^"H§() : Number
      {
         return this.§=!M§;
      }
      
      public function §4!!§(param1:Number) : void
      {
         this.§4$$§ = param1;
      }
      
      public function §0e§() : Number
      {
         return this.§4$$§;
      }
      
      public function §[$!§(param1:Number) : void
      {
         this.§0E§ = param1;
      }
      
      public function §6!a§() : Number
      {
         return this.§0E§;
      }
      
      public function §`6§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§7#w§.graphics.lineStyle(this.§<!s§,param3.color,this.§=!M§);
         this.§7#w§.graphics.moveTo(param1[0].x * this.§=! §,param1[0].y * this.§=! §);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§7#w§.graphics.lineTo(param1[_loc4_].x * this.§=! §,param1[_loc4_].y * this.§=! §);
            _loc4_++;
         }
         this.§7#w§.graphics.lineTo(param1[0].x * this.§=! §,param1[0].y * this.§=! §);
      }
      
      public function §'+§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§7#w§.graphics.lineStyle(this.§<!s§,param3.color,this.§=!M§);
         this.§7#w§.graphics.moveTo(param1[0].x * this.§=! §,param1[0].y * this.§=! §);
         this.§7#w§.graphics.beginFill(param3.color,this.§4$$§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§7#w§.graphics.lineTo(param1[_loc4_].x * this.§=! §,param1[_loc4_].y * this.§=! §);
            _loc4_++;
         }
         this.§7#w§.graphics.lineTo(param1[0].x * this.§=! §,param1[0].y * this.§=! §);
         this.§7#w§.graphics.endFill();
      }
      
      public function § !D§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§7#w§.graphics.lineStyle(this.§<!s§,param3.color,this.§=!M§);
         this.§7#w§.graphics.drawCircle(param1.x * this.§=! §,param1.y * this.§=! §,param2 * this.§=! §);
      }
      
      public function §1H§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§7#w§.graphics.lineStyle(this.§<!s§,param4.color,this.§=!M§);
         this.§7#w§.graphics.moveTo(0,0);
         this.§7#w§.graphics.beginFill(param4.color,this.§4$$§);
         this.§7#w§.graphics.drawCircle(param1.x * this.§=! §,param1.y * this.§=! §,param2 * this.§=! §);
         this.§7#w§.graphics.endFill();
         this.§7#w§.graphics.moveTo(param1.x * this.§=! §,param1.y * this.§=! §);
         this.§7#w§.graphics.lineTo((param1.x + param3.x * param2) * this.§=! §,(param1.y + param3.y * param2) * this.§=! §);
      }
      
      public function §?"3§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§7#w§.graphics.lineStyle(this.§<!s§,param3.color,this.§=!M§);
         this.§7#w§.graphics.moveTo(param1.x * this.§=! §,param1.y * this.§=! §);
         this.§7#w§.graphics.lineTo(param2.x * this.§=! §,param2.y * this.§=! §);
      }
      
      public function §-#2§(param1:b2Transform) : void
      {
         this.§7#w§.graphics.lineStyle(this.§<!s§,16711680,this.§=!M§);
         this.§7#w§.graphics.moveTo(param1.position.x * this.§=! §,param1.position.y * this.§=! §);
         this.§7#w§.graphics.lineTo((param1.position.x + this.§0E§ * param1.R.col1.x) * this.§=! §,(param1.position.y + this.§0E§ * param1.R.col1.y) * this.§=! §);
         this.§7#w§.graphics.lineStyle(this.§<!s§,65280,this.§=!M§);
         this.§7#w§.graphics.moveTo(param1.position.x * this.§=! §,param1.position.y * this.§=! §);
         this.§7#w§.graphics.lineTo((param1.position.x + this.§0E§ * param1.R.col2.x) * this.§=! §,(param1.position.y + this.§0E§ * param1.R.col2.y) * this.§=! §);
      }
   }
}
