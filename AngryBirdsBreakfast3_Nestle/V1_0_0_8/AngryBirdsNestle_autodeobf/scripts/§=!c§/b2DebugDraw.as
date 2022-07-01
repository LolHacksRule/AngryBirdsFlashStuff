package §=!c§
{
   import §7!F§.b2Color;
   import §7!F§.b2internal;
   import §[K§.b2Transform;
   import §[K§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §<]§:uint = 1;
      
      public static var § ! §:uint = 2;
      
      public static var §,"+§:uint = 4;
      
      public static var §&"4§:uint = 8;
      
      public static var §8!?§:uint = 16;
      
      public static var §<C§:uint = 32;
       
      
      private var §;^§:uint;
      
      b2internal var §#U§:Sprite;
      
      private var §'F§:Number = 1.0;
      
      private var §75§:Number = 1.0;
      
      private var §3]§:Number = 1.0;
      
      private var §2s§:Number = 1.0;
      
      private var §!'§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§;^§ = 0;
      }
      
      public function §="2§(param1:uint) : void
      {
         this.§;^§ = param1;
      }
      
      public function §6n§() : uint
      {
         return this.§;^§;
      }
      
      public function §%D§(param1:uint) : void
      {
         this.§;^§ |= param1;
      }
      
      public function §?!r§(param1:uint) : void
      {
         this.§;^§ &= ~param1;
      }
      
      public function §+!i§(param1:Sprite) : void
      {
         this.§#U§ = param1;
      }
      
      public function §3&§() : Sprite
      {
         return this.§#U§;
      }
      
      public function §[[§(param1:Number) : void
      {
         this.§'F§ = param1;
      }
      
      public function §?j§() : Number
      {
         return this.§'F§;
      }
      
      public function §=!g§(param1:Number) : void
      {
         this.§75§ = param1;
      }
      
      public function § !Y§() : Number
      {
         return this.§75§;
      }
      
      public function §0!9§(param1:Number) : void
      {
         this.§3]§ = param1;
      }
      
      public function §6m§() : Number
      {
         return this.§3]§;
      }
      
      public function §4!n§(param1:Number) : void
      {
         this.§2s§ = param1;
      }
      
      public function §1!O§() : Number
      {
         return this.§2s§;
      }
      
      public function §2k§(param1:Number) : void
      {
         this.§!'§ = param1;
      }
      
      public function §@!r§() : Number
      {
         return this.§!'§;
      }
      
      public function §6"7§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§#U§.graphics.lineStyle(this.§75§,param3.color,this.§3]§);
         this.§#U§.graphics.moveTo(param1[0].x * this.§'F§,param1[0].y * this.§'F§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§#U§.graphics.lineTo(param1[_loc4_].x * this.§'F§,param1[_loc4_].y * this.§'F§);
            _loc4_++;
         }
         this.§#U§.graphics.lineTo(param1[0].x * this.§'F§,param1[0].y * this.§'F§);
      }
      
      public function §"o§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§#U§.graphics.lineStyle(this.§75§,param3.color,this.§3]§);
         this.§#U§.graphics.moveTo(param1[0].x * this.§'F§,param1[0].y * this.§'F§);
         this.§#U§.graphics.beginFill(param3.color,this.§2s§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§#U§.graphics.lineTo(param1[_loc4_].x * this.§'F§,param1[_loc4_].y * this.§'F§);
            _loc4_++;
         }
         this.§#U§.graphics.lineTo(param1[0].x * this.§'F§,param1[0].y * this.§'F§);
         this.§#U§.graphics.endFill();
      }
      
      public function §=!B§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§#U§.graphics.lineStyle(this.§75§,param3.color,this.§3]§);
         this.§#U§.graphics.drawCircle(param1.x * this.§'F§,param1.y * this.§'F§,param2 * this.§'F§);
      }
      
      public function §]R§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§#U§.graphics.lineStyle(this.§75§,param4.color,this.§3]§);
         this.§#U§.graphics.moveTo(0,0);
         this.§#U§.graphics.beginFill(param4.color,this.§2s§);
         this.§#U§.graphics.drawCircle(param1.x * this.§'F§,param1.y * this.§'F§,param2 * this.§'F§);
         this.§#U§.graphics.endFill();
         this.§#U§.graphics.moveTo(param1.x * this.§'F§,param1.y * this.§'F§);
         this.§#U§.graphics.lineTo((param1.x + param3.x * param2) * this.§'F§,(param1.y + param3.y * param2) * this.§'F§);
      }
      
      public function §-"2§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§#U§.graphics.lineStyle(this.§75§,param3.color,this.§3]§);
         this.§#U§.graphics.moveTo(param1.x * this.§'F§,param1.y * this.§'F§);
         this.§#U§.graphics.lineTo(param2.x * this.§'F§,param2.y * this.§'F§);
      }
      
      public function §<#§(param1:b2Transform) : void
      {
         this.§#U§.graphics.lineStyle(this.§75§,16711680,this.§3]§);
         this.§#U§.graphics.moveTo(param1.position.x * this.§'F§,param1.position.y * this.§'F§);
         this.§#U§.graphics.lineTo((param1.position.x + this.§!'§ * param1.R.col1.x) * this.§'F§,(param1.position.y + this.§!'§ * param1.R.col1.y) * this.§'F§);
         this.§#U§.graphics.lineStyle(this.§75§,65280,this.§3]§);
         this.§#U§.graphics.moveTo(param1.position.x * this.§'F§,param1.position.y * this.§'F§);
         this.§#U§.graphics.lineTo((param1.position.x + this.§!'§ * param1.R.col2.x) * this.§'F§,(param1.position.y + this.§!'§ * param1.R.col2.y) * this.§'F§);
      }
   }
}
