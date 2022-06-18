package §4!&§
{
   import §&!+§.b2Transform;
   import §&!+§.b2Vec2;
   import §8!%§.b2Color;
   import §8!%§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §53§:uint = 1;
      
      public static var §#!1§:uint = 2;
      
      public static var §<+§:uint = 4;
      
      public static var §^!@§:uint = 8;
      
      public static var §=[§:uint = 16;
      
      public static var §+1§:uint = 32;
       
      
      private var §[@§:uint;
      
      b2internal var §#&§:Sprite;
      
      private var §#,§:Number = 1.0;
      
      private var §"H§:Number = 1.0;
      
      private var § s§:Number = 1.0;
      
      private var §?4§:Number = 1.0;
      
      private var §=!9§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§[@§ = 0;
      }
      
      public function §,L§(param1:uint) : void
      {
         this.§[@§ = param1;
      }
      
      public function §'V§() : uint
      {
         return this.§[@§;
      }
      
      public function §"W§(param1:uint) : void
      {
         this.§[@§ |= param1;
      }
      
      public function §2D§(param1:uint) : void
      {
         this.§[@§ &= ~param1;
      }
      
      public function §9+§(param1:Sprite) : void
      {
         this.§#&§ = param1;
      }
      
      public function §+!C§() : Sprite
      {
         return this.§#&§;
      }
      
      public function §?!'§(param1:Number) : void
      {
         this.§#,§ = param1;
      }
      
      public function §7g§() : Number
      {
         return this.§#,§;
      }
      
      public function §[C§(param1:Number) : void
      {
         this.§"H§ = param1;
      }
      
      public function §5P§() : Number
      {
         return this.§"H§;
      }
      
      public function §'9§(param1:Number) : void
      {
         this.§ s§ = param1;
      }
      
      public function §,!'§() : Number
      {
         return this.§ s§;
      }
      
      public function §[O§(param1:Number) : void
      {
         this.§?4§ = param1;
      }
      
      public function §0!R§() : Number
      {
         return this.§?4§;
      }
      
      public function §=!C§(param1:Number) : void
      {
         this.§=!9§ = param1;
      }
      
      public function §;![§() : Number
      {
         return this.§=!9§;
      }
      
      public function §1P§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§#&§.graphics.lineStyle(this.§"H§,param3.color,this.§ s§);
         this.§#&§.graphics.moveTo(param1[0].x * this.§#,§,param1[0].y * this.§#,§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§#&§.graphics.lineTo(param1[_loc4_].x * this.§#,§,param1[_loc4_].y * this.§#,§);
            _loc4_++;
         }
         this.§#&§.graphics.lineTo(param1[0].x * this.§#,§,param1[0].y * this.§#,§);
      }
      
      public function §'!=§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§#&§.graphics.lineStyle(this.§"H§,param3.color,this.§ s§);
         this.§#&§.graphics.moveTo(param1[0].x * this.§#,§,param1[0].y * this.§#,§);
         this.§#&§.graphics.beginFill(param3.color,this.§?4§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§#&§.graphics.lineTo(param1[_loc4_].x * this.§#,§,param1[_loc4_].y * this.§#,§);
            _loc4_++;
         }
         this.§#&§.graphics.lineTo(param1[0].x * this.§#,§,param1[0].y * this.§#,§);
         this.§#&§.graphics.endFill();
      }
      
      public function §=!^§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§#&§.graphics.lineStyle(this.§"H§,param3.color,this.§ s§);
         this.§#&§.graphics.drawCircle(param1.x * this.§#,§,param1.y * this.§#,§,param2 * this.§#,§);
      }
      
      public function §!K§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§#&§.graphics.lineStyle(this.§"H§,param4.color,this.§ s§);
         this.§#&§.graphics.moveTo(0,0);
         this.§#&§.graphics.beginFill(param4.color,this.§?4§);
         this.§#&§.graphics.drawCircle(param1.x * this.§#,§,param1.y * this.§#,§,param2 * this.§#,§);
         this.§#&§.graphics.endFill();
         this.§#&§.graphics.moveTo(param1.x * this.§#,§,param1.y * this.§#,§);
         this.§#&§.graphics.lineTo((param1.x + param3.x * param2) * this.§#,§,(param1.y + param3.y * param2) * this.§#,§);
      }
      
      public function § null§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§#&§.graphics.lineStyle(this.§"H§,param3.color,this.§ s§);
         this.§#&§.graphics.moveTo(param1.x * this.§#,§,param1.y * this.§#,§);
         this.§#&§.graphics.lineTo(param2.x * this.§#,§,param2.y * this.§#,§);
      }
      
      public function §;8§(param1:b2Transform) : void
      {
         this.§#&§.graphics.lineStyle(this.§"H§,16711680,this.§ s§);
         this.§#&§.graphics.moveTo(param1.position.x * this.§#,§,param1.position.y * this.§#,§);
         this.§#&§.graphics.lineTo((param1.position.x + this.§=!9§ * param1.R.col1.x) * this.§#,§,(param1.position.y + this.§=!9§ * param1.R.col1.y) * this.§#,§);
         this.§#&§.graphics.lineStyle(this.§"H§,65280,this.§ s§);
         this.§#&§.graphics.moveTo(param1.position.x * this.§#,§,param1.position.y * this.§#,§);
         this.§#&§.graphics.lineTo((param1.position.x + this.§=!9§ * param1.R.col2.x) * this.§#,§,(param1.position.y + this.§=!9§ * param1.R.col2.y) * this.§#,§);
      }
   }
}
