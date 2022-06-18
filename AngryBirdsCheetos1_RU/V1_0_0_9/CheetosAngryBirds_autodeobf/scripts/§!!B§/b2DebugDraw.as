package §!!B§
{
   import §;0§.b2Color;
   import §;0§.b2internal;
   import §;U§.b2Transform;
   import §;U§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §6! §:uint = 1;
      
      public static var §?e§:uint = 2;
      
      public static var §`_§:uint = 4;
      
      public static var §1!]§:uint = 8;
      
      public static var §<s§:uint = 16;
      
      public static var §<!N§:uint = 32;
       
      
      private var § !%§:uint;
      
      b2internal var §>!9§:Sprite;
      
      private var § !C§:Number = 1.0;
      
      private var §72§:Number = 1.0;
      
      private var §@!A§:Number = 1.0;
      
      private var §@v§:Number = 1.0;
      
      private var §-e§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§ !%§ = 0;
      }
      
      public function § !`§(param1:uint) : void
      {
         this.§ !%§ = param1;
      }
      
      public function §<!#§() : uint
      {
         return this.§ !%§;
      }
      
      public function §23§(param1:uint) : void
      {
         this.§ !%§ |= param1;
      }
      
      public function §0;§(param1:uint) : void
      {
         this.§ !%§ &= ~param1;
      }
      
      public function §7!!§(param1:Sprite) : void
      {
         this.§>!9§ = param1;
      }
      
      public function §4X§() : Sprite
      {
         return this.§>!9§;
      }
      
      public function §,!&§(param1:Number) : void
      {
         this.§ !C§ = param1;
      }
      
      public function §@E§() : Number
      {
         return this.§ !C§;
      }
      
      public function § L§(param1:Number) : void
      {
         this.§72§ = param1;
      }
      
      public function §"c§() : Number
      {
         return this.§72§;
      }
      
      public function §<z§(param1:Number) : void
      {
         this.§@!A§ = param1;
      }
      
      public function §7!=§() : Number
      {
         return this.§@!A§;
      }
      
      public function §=z§(param1:Number) : void
      {
         this.§@v§ = param1;
      }
      
      public function §6!9§() : Number
      {
         return this.§@v§;
      }
      
      public function §,n§(param1:Number) : void
      {
         this.§-e§ = param1;
      }
      
      public function §6!H§() : Number
      {
         return this.§-e§;
      }
      
      public function §"i§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§>!9§.graphics.lineStyle(this.§72§,param3.color,this.§@!A§);
         this.§>!9§.graphics.moveTo(param1[0].x * this.§ !C§,param1[0].y * this.§ !C§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§>!9§.graphics.lineTo(param1[_loc4_].x * this.§ !C§,param1[_loc4_].y * this.§ !C§);
            _loc4_++;
         }
         this.§>!9§.graphics.lineTo(param1[0].x * this.§ !C§,param1[0].y * this.§ !C§);
      }
      
      public function §4U§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§>!9§.graphics.lineStyle(this.§72§,param3.color,this.§@!A§);
         this.§>!9§.graphics.moveTo(param1[0].x * this.§ !C§,param1[0].y * this.§ !C§);
         this.§>!9§.graphics.beginFill(param3.color,this.§@v§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§>!9§.graphics.lineTo(param1[_loc4_].x * this.§ !C§,param1[_loc4_].y * this.§ !C§);
            _loc4_++;
         }
         this.§>!9§.graphics.lineTo(param1[0].x * this.§ !C§,param1[0].y * this.§ !C§);
         this.§>!9§.graphics.endFill();
      }
      
      public function §7"§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§>!9§.graphics.lineStyle(this.§72§,param3.color,this.§@!A§);
         this.§>!9§.graphics.drawCircle(param1.x * this.§ !C§,param1.y * this.§ !C§,param2 * this.§ !C§);
      }
      
      public function §<G§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§>!9§.graphics.lineStyle(this.§72§,param4.color,this.§@!A§);
         this.§>!9§.graphics.moveTo(0,0);
         this.§>!9§.graphics.beginFill(param4.color,this.§@v§);
         this.§>!9§.graphics.drawCircle(param1.x * this.§ !C§,param1.y * this.§ !C§,param2 * this.§ !C§);
         this.§>!9§.graphics.endFill();
         this.§>!9§.graphics.moveTo(param1.x * this.§ !C§,param1.y * this.§ !C§);
         this.§>!9§.graphics.lineTo((param1.x + param3.x * param2) * this.§ !C§,(param1.y + param3.y * param2) * this.§ !C§);
      }
      
      public function § N§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§>!9§.graphics.lineStyle(this.§72§,param3.color,this.§@!A§);
         this.§>!9§.graphics.moveTo(param1.x * this.§ !C§,param1.y * this.§ !C§);
         this.§>!9§.graphics.lineTo(param2.x * this.§ !C§,param2.y * this.§ !C§);
      }
      
      public function §1!9§(param1:b2Transform) : void
      {
         this.§>!9§.graphics.lineStyle(this.§72§,16711680,this.§@!A§);
         this.§>!9§.graphics.moveTo(param1.position.x * this.§ !C§,param1.position.y * this.§ !C§);
         this.§>!9§.graphics.lineTo((param1.position.x + this.§-e§ * param1.R.col1.x) * this.§ !C§,(param1.position.y + this.§-e§ * param1.R.col1.y) * this.§ !C§);
         this.§>!9§.graphics.lineStyle(this.§72§,65280,this.§@!A§);
         this.§>!9§.graphics.moveTo(param1.position.x * this.§ !C§,param1.position.y * this.§ !C§);
         this.§>!9§.graphics.lineTo((param1.position.x + this.§-e§ * param1.R.col2.x) * this.§ !C§,(param1.position.y + this.§-e§ * param1.R.col2.y) * this.§ !C§);
      }
   }
}
