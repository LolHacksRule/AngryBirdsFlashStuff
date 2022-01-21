package §7!5§
{
   import §7!Y§.b2Color;
   import §7!Y§.b2internal;
   import §@![§.b2Transform;
   import §@![§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §>!I§:uint = 1;
      
      public static var §7S§:uint = 2;
      
      public static var §5U§:uint = 4;
      
      public static var § G§:uint = 8;
      
      public static var §"!9§:uint = 16;
      
      public static var §+h§:uint = 32;
       
      
      private var §]!c§:uint;
      
      b2internal var §<3§:Sprite;
      
      private var §0!@§:Number = 1.0;
      
      private var § !&§:Number = 1.0;
      
      private var §2!>§:Number = 1.0;
      
      private var §#Q§:Number = 1.0;
      
      private var §9A§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§]!c§ = 0;
      }
      
      public function §+-§(param1:uint) : void
      {
         this.§]!c§ = param1;
      }
      
      public function §&!E§() : uint
      {
         return this.§]!c§;
      }
      
      public function §'i§(param1:uint) : void
      {
         this.§]!c§ |= param1;
      }
      
      public function §9!o§(param1:uint) : void
      {
         this.§]!c§ &= ~param1;
      }
      
      public function §-!!§(param1:Sprite) : void
      {
         this.§<3§ = param1;
      }
      
      public function §&q§() : Sprite
      {
         return this.§<3§;
      }
      
      public function §%!e§(param1:Number) : void
      {
         this.§0!@§ = param1;
      }
      
      public function §1!&§() : Number
      {
         return this.§0!@§;
      }
      
      public function §"$§(param1:Number) : void
      {
         this.§ !&§ = param1;
      }
      
      public function § F§() : Number
      {
         return this.§ !&§;
      }
      
      public function §?!@§(param1:Number) : void
      {
         this.§2!>§ = param1;
      }
      
      public function §6!C§() : Number
      {
         return this.§2!>§;
      }
      
      public function §<! §(param1:Number) : void
      {
         this.§#Q§ = param1;
      }
      
      public function §'y§() : Number
      {
         return this.§#Q§;
      }
      
      public function §8!<§(param1:Number) : void
      {
         this.§9A§ = param1;
      }
      
      public function §6!B§() : Number
      {
         return this.§9A§;
      }
      
      public function §@!!§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§<3§.graphics.lineStyle(this.§ !&§,param3.color,this.§2!>§);
         this.§<3§.graphics.moveTo(param1[0].x * this.§0!@§,param1[0].y * this.§0!@§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§<3§.graphics.lineTo(param1[_loc4_].x * this.§0!@§,param1[_loc4_].y * this.§0!@§);
            _loc4_++;
         }
         this.§<3§.graphics.lineTo(param1[0].x * this.§0!@§,param1[0].y * this.§0!@§);
      }
      
      public function §@!"§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§<3§.graphics.lineStyle(this.§ !&§,param3.color,this.§2!>§);
         this.§<3§.graphics.moveTo(param1[0].x * this.§0!@§,param1[0].y * this.§0!@§);
         this.§<3§.graphics.beginFill(param3.color,this.§#Q§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§<3§.graphics.lineTo(param1[_loc4_].x * this.§0!@§,param1[_loc4_].y * this.§0!@§);
            _loc4_++;
         }
         this.§<3§.graphics.lineTo(param1[0].x * this.§0!@§,param1[0].y * this.§0!@§);
         this.§<3§.graphics.endFill();
      }
      
      public function §+@§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§<3§.graphics.lineStyle(this.§ !&§,param3.color,this.§2!>§);
         this.§<3§.graphics.drawCircle(param1.x * this.§0!@§,param1.y * this.§0!@§,param2 * this.§0!@§);
      }
      
      public function §-s§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§<3§.graphics.lineStyle(this.§ !&§,param4.color,this.§2!>§);
         this.§<3§.graphics.moveTo(0,0);
         this.§<3§.graphics.beginFill(param4.color,this.§#Q§);
         this.§<3§.graphics.drawCircle(param1.x * this.§0!@§,param1.y * this.§0!@§,param2 * this.§0!@§);
         this.§<3§.graphics.endFill();
         this.§<3§.graphics.moveTo(param1.x * this.§0!@§,param1.y * this.§0!@§);
         this.§<3§.graphics.lineTo((param1.x + param3.x * param2) * this.§0!@§,(param1.y + param3.y * param2) * this.§0!@§);
      }
      
      public function §>!'§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§<3§.graphics.lineStyle(this.§ !&§,param3.color,this.§2!>§);
         this.§<3§.graphics.moveTo(param1.x * this.§0!@§,param1.y * this.§0!@§);
         this.§<3§.graphics.lineTo(param2.x * this.§0!@§,param2.y * this.§0!@§);
      }
      
      public function §5J§(param1:b2Transform) : void
      {
         this.§<3§.graphics.lineStyle(this.§ !&§,16711680,this.§2!>§);
         this.§<3§.graphics.moveTo(param1.position.x * this.§0!@§,param1.position.y * this.§0!@§);
         this.§<3§.graphics.lineTo((param1.position.x + this.§9A§ * param1.R.col1.x) * this.§0!@§,(param1.position.y + this.§9A§ * param1.R.col1.y) * this.§0!@§);
         this.§<3§.graphics.lineStyle(this.§ !&§,65280,this.§2!>§);
         this.§<3§.graphics.moveTo(param1.position.x * this.§0!@§,param1.position.y * this.§0!@§);
         this.§<3§.graphics.lineTo((param1.position.x + this.§9A§ * param1.R.col2.x) * this.§0!@§,(param1.position.y + this.§9A§ * param1.R.col2.y) * this.§0!@§);
      }
   }
}
