package §3!R§
{
   import §6A§.b2Transform;
   import §6A§.b2Vec2;
   import §^P§.b2Color;
   import §^P§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §8!+§:uint = 1;
      
      public static var §;!@§:uint = 2;
      
      public static var §5<§:uint = 4;
      
      public static var §&!^§:uint = 8;
      
      public static var §-g§:uint = 16;
      
      public static var §`!"§:uint = 32;
       
      
      private var §^!@§:uint;
      
      b2internal var §`S§:Sprite;
      
      private var §;z§:Number = 1.0;
      
      private var §=l§:Number = 1.0;
      
      private var §"a§:Number = 1.0;
      
      private var §9%§:Number = 1.0;
      
      private var §9v§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§^!@§ = 0;
      }
      
      public function §=s§(param1:uint) : void
      {
         this.§^!@§ = param1;
      }
      
      public function §8c§() : uint
      {
         return this.§^!@§;
      }
      
      public function §"§(param1:uint) : void
      {
         this.§^!@§ |= param1;
      }
      
      public function §7!a§(param1:uint) : void
      {
         this.§^!@§ &= ~param1;
      }
      
      public function §!6§(param1:Sprite) : void
      {
         this.§`S§ = param1;
      }
      
      public function §"!H§() : Sprite
      {
         return this.§`S§;
      }
      
      public function §2!Y§(param1:Number) : void
      {
         this.§;z§ = param1;
      }
      
      public function §"7§() : Number
      {
         return this.§;z§;
      }
      
      public function §-m§(param1:Number) : void
      {
         this.§=l§ = param1;
      }
      
      public function §+A§() : Number
      {
         return this.§=l§;
      }
      
      public function §1;§(param1:Number) : void
      {
         this.§"a§ = param1;
      }
      
      public function §0!#§() : Number
      {
         return this.§"a§;
      }
      
      public function §!H§(param1:Number) : void
      {
         this.§9%§ = param1;
      }
      
      public function §!!b§() : Number
      {
         return this.§9%§;
      }
      
      public function §0!R§(param1:Number) : void
      {
         this.§9v§ = param1;
      }
      
      public function § M§() : Number
      {
         return this.§9v§;
      }
      
      public function §^!E§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§`S§.graphics.lineStyle(this.§=l§,param3.color,this.§"a§);
         this.§`S§.graphics.moveTo(param1[0].x * this.§;z§,param1[0].y * this.§;z§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§`S§.graphics.lineTo(param1[_loc4_].x * this.§;z§,param1[_loc4_].y * this.§;z§);
            _loc4_++;
         }
         this.§`S§.graphics.lineTo(param1[0].x * this.§;z§,param1[0].y * this.§;z§);
      }
      
      public function §<@§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§`S§.graphics.lineStyle(this.§=l§,param3.color,this.§"a§);
         this.§`S§.graphics.moveTo(param1[0].x * this.§;z§,param1[0].y * this.§;z§);
         this.§`S§.graphics.beginFill(param3.color,this.§9%§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§`S§.graphics.lineTo(param1[_loc4_].x * this.§;z§,param1[_loc4_].y * this.§;z§);
            _loc4_++;
         }
         this.§`S§.graphics.lineTo(param1[0].x * this.§;z§,param1[0].y * this.§;z§);
         this.§`S§.graphics.endFill();
      }
      
      public function §8%§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§`S§.graphics.lineStyle(this.§=l§,param3.color,this.§"a§);
         this.§`S§.graphics.drawCircle(param1.x * this.§;z§,param1.y * this.§;z§,param2 * this.§;z§);
      }
      
      public function §`!7§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§`S§.graphics.lineStyle(this.§=l§,param4.color,this.§"a§);
         this.§`S§.graphics.moveTo(0,0);
         this.§`S§.graphics.beginFill(param4.color,this.§9%§);
         this.§`S§.graphics.drawCircle(param1.x * this.§;z§,param1.y * this.§;z§,param2 * this.§;z§);
         this.§`S§.graphics.endFill();
         this.§`S§.graphics.moveTo(param1.x * this.§;z§,param1.y * this.§;z§);
         this.§`S§.graphics.lineTo((param1.x + param3.x * param2) * this.§;z§,(param1.y + param3.y * param2) * this.§;z§);
      }
      
      public function §6[§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§`S§.graphics.lineStyle(this.§=l§,param3.color,this.§"a§);
         this.§`S§.graphics.moveTo(param1.x * this.§;z§,param1.y * this.§;z§);
         this.§`S§.graphics.lineTo(param2.x * this.§;z§,param2.y * this.§;z§);
      }
      
      public function §@w§(param1:b2Transform) : void
      {
         this.§`S§.graphics.lineStyle(this.§=l§,16711680,this.§"a§);
         this.§`S§.graphics.moveTo(param1.position.x * this.§;z§,param1.position.y * this.§;z§);
         this.§`S§.graphics.lineTo((param1.position.x + this.§9v§ * param1.R.col1.x) * this.§;z§,(param1.position.y + this.§9v§ * param1.R.col1.y) * this.§;z§);
         this.§`S§.graphics.lineStyle(this.§=l§,65280,this.§"a§);
         this.§`S§.graphics.moveTo(param1.position.x * this.§;z§,param1.position.y * this.§;z§);
         this.§`S§.graphics.lineTo((param1.position.x + this.§9v§ * param1.R.col2.x) * this.§;z§,(param1.position.y + this.§9v§ * param1.R.col2.y) * this.§;z§);
      }
   }
}
