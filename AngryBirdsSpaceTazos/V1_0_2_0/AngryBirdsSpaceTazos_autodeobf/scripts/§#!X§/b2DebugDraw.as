package §#!X§
{
   import §&!S§.b2Transform;
   import §&!S§.b2Vec2;
   import §@!@§.b2Color;
   import §@!@§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §["9§:uint = 1;
      
      public static var §=!M§:uint = 2;
      
      public static var § !b§:uint = 4;
      
      public static var §7&§:uint = 8;
      
      public static var § "+§:uint = 16;
      
      public static var §'E§:uint = 32;
       
      
      private var §]!l§:uint;
      
      b2internal var §-!i§:Sprite;
      
      private var §`"C§:Number = 1.0;
      
      private var §]!Z§:Number = 1.0;
      
      private var §#i§:Number = 1.0;
      
      private var §<"8§:Number = 1.0;
      
      private var §>!_§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§]!l§ = 0;
      }
      
      public function §2b§(param1:uint) : void
      {
         this.§]!l§ = param1;
      }
      
      public function §^R§() : uint
      {
         return this.§]!l§;
      }
      
      public function §3y§(param1:uint) : void
      {
         this.§]!l§ |= param1;
      }
      
      public function §6!n§(param1:uint) : void
      {
         this.§]!l§ &= ~param1;
      }
      
      public function §2!5§(param1:Sprite) : void
      {
         this.§-!i§ = param1;
      }
      
      public function §>!Z§() : Sprite
      {
         return this.§-!i§;
      }
      
      public function § "9§(param1:Number) : void
      {
         this.§`"C§ = param1;
      }
      
      public function §,h§() : Number
      {
         return this.§`"C§;
      }
      
      public function §<`§(param1:Number) : void
      {
         this.§]!Z§ = param1;
      }
      
      public function §#t§() : Number
      {
         return this.§]!Z§;
      }
      
      public function § !"§(param1:Number) : void
      {
         this.§#i§ = param1;
      }
      
      public function §<!O§() : Number
      {
         return this.§#i§;
      }
      
      public function §#m§(param1:Number) : void
      {
         this.§<"8§ = param1;
      }
      
      public function §>!W§() : Number
      {
         return this.§<"8§;
      }
      
      public function §2v§(param1:Number) : void
      {
         this.§>!_§ = param1;
      }
      
      public function §0!k§() : Number
      {
         return this.§>!_§;
      }
      
      public function §8!,§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§-!i§.graphics.lineStyle(this.§]!Z§,param3.color,this.§#i§);
         this.§-!i§.graphics.moveTo(param1[0].x * this.§`"C§,param1[0].y * this.§`"C§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§-!i§.graphics.lineTo(param1[_loc4_].x * this.§`"C§,param1[_loc4_].y * this.§`"C§);
            _loc4_++;
         }
         this.§-!i§.graphics.lineTo(param1[0].x * this.§`"C§,param1[0].y * this.§`"C§);
      }
      
      public function §3! §(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§-!i§.graphics.lineStyle(this.§]!Z§,param3.color,this.§#i§);
         this.§-!i§.graphics.moveTo(param1[0].x * this.§`"C§,param1[0].y * this.§`"C§);
         this.§-!i§.graphics.beginFill(param3.color,this.§<"8§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§-!i§.graphics.lineTo(param1[_loc4_].x * this.§`"C§,param1[_loc4_].y * this.§`"C§);
            _loc4_++;
         }
         this.§-!i§.graphics.lineTo(param1[0].x * this.§`"C§,param1[0].y * this.§`"C§);
         this.§-!i§.graphics.endFill();
      }
      
      public function §=!t§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§-!i§.graphics.lineStyle(this.§]!Z§,param3.color,this.§#i§);
         this.§-!i§.graphics.drawCircle(param1.x * this.§`"C§,param1.y * this.§`"C§,param2 * this.§`"C§);
      }
      
      public function §?! §(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§-!i§.graphics.lineStyle(this.§]!Z§,param4.color,this.§#i§);
         this.§-!i§.graphics.moveTo(0,0);
         this.§-!i§.graphics.beginFill(param4.color,this.§<"8§);
         this.§-!i§.graphics.drawCircle(param1.x * this.§`"C§,param1.y * this.§`"C§,param2 * this.§`"C§);
         this.§-!i§.graphics.endFill();
         this.§-!i§.graphics.moveTo(param1.x * this.§`"C§,param1.y * this.§`"C§);
         this.§-!i§.graphics.lineTo((param1.x + param3.x * param2) * this.§`"C§,(param1.y + param3.y * param2) * this.§`"C§);
      }
      
      public function §-!X§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§-!i§.graphics.lineStyle(this.§]!Z§,param3.color,this.§#i§);
         this.§-!i§.graphics.moveTo(param1.x * this.§`"C§,param1.y * this.§`"C§);
         this.§-!i§.graphics.lineTo(param2.x * this.§`"C§,param2.y * this.§`"C§);
      }
      
      public function §;!q§(param1:b2Transform) : void
      {
         this.§-!i§.graphics.lineStyle(this.§]!Z§,16711680,this.§#i§);
         this.§-!i§.graphics.moveTo(param1.position.x * this.§`"C§,param1.position.y * this.§`"C§);
         this.§-!i§.graphics.lineTo((param1.position.x + this.§>!_§ * param1.R.col1.x) * this.§`"C§,(param1.position.y + this.§>!_§ * param1.R.col1.y) * this.§`"C§);
         this.§-!i§.graphics.lineStyle(this.§]!Z§,65280,this.§#i§);
         this.§-!i§.graphics.moveTo(param1.position.x * this.§`"C§,param1.position.y * this.§`"C§);
         this.§-!i§.graphics.lineTo((param1.position.x + this.§>!_§ * param1.R.col2.x) * this.§`"C§,(param1.position.y + this.§>!_§ * param1.R.col2.y) * this.§`"C§);
      }
   }
}
