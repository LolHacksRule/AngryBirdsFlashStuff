package §-0§
{
   import §@g§.b2Color;
   import §@g§.b2internal;
   import §^!%§.b2Transform;
   import §^!%§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §"a§:uint = 1;
      
      public static var §-!7§:uint = 2;
      
      public static var §4P§:uint = 4;
      
      public static var §4!6§:uint = 8;
      
      public static var §5!4§:uint = 16;
      
      public static var §#!§:uint = 32;
       
      
      private var §^c§:uint;
      
      b2internal var §,F§:Sprite;
      
      private var §4g§:Number = 1.0;
      
      private var §?s§:Number = 1.0;
      
      private var §[!]§:Number = 1.0;
      
      private var set:Number = 1.0;
      
      private var §var§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§^c§ = 0;
      }
      
      public function §;z§(param1:uint) : void
      {
         this.§^c§ = param1;
      }
      
      public function §6_§() : uint
      {
         return this.§^c§;
      }
      
      public function §6!E§(param1:uint) : void
      {
         this.§^c§ |= param1;
      }
      
      public function §6G§(param1:uint) : void
      {
         this.§^c§ &= ~param1;
      }
      
      public function §&`§(param1:Sprite) : void
      {
         this.§,F§ = param1;
      }
      
      public function §0!j§() : Sprite
      {
         return this.§,F§;
      }
      
      public function §&y§(param1:Number) : void
      {
         this.§4g§ = param1;
      }
      
      public function §07§() : Number
      {
         return this.§4g§;
      }
      
      public function §1!U§(param1:Number) : void
      {
         this.§?s§ = param1;
      }
      
      public function §[D§() : Number
      {
         return this.§?s§;
      }
      
      public function §#!6§(param1:Number) : void
      {
         this.§[!]§ = param1;
      }
      
      public function §>X§() : Number
      {
         return this.§[!]§;
      }
      
      public function §=3§(param1:Number) : void
      {
         this.set = param1;
      }
      
      public function § x§() : Number
      {
         return this.set;
      }
      
      public function §?t§(param1:Number) : void
      {
         this.§var§ = param1;
      }
      
      public function §-S§() : Number
      {
         return this.§var§;
      }
      
      public function §>!0§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§,F§.graphics.lineStyle(this.§?s§,param3.color,this.§[!]§);
         this.§,F§.graphics.moveTo(param1[0].x * this.§4g§,param1[0].y * this.§4g§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§,F§.graphics.lineTo(param1[_loc4_].x * this.§4g§,param1[_loc4_].y * this.§4g§);
            _loc4_++;
         }
         this.§,F§.graphics.lineTo(param1[0].x * this.§4g§,param1[0].y * this.§4g§);
      }
      
      public function §&p§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§,F§.graphics.lineStyle(this.§?s§,param3.color,this.§[!]§);
         this.§,F§.graphics.moveTo(param1[0].x * this.§4g§,param1[0].y * this.§4g§);
         this.§,F§.graphics.beginFill(param3.color,this.set);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§,F§.graphics.lineTo(param1[_loc4_].x * this.§4g§,param1[_loc4_].y * this.§4g§);
            _loc4_++;
         }
         this.§,F§.graphics.lineTo(param1[0].x * this.§4g§,param1[0].y * this.§4g§);
         this.§,F§.graphics.endFill();
      }
      
      public function §`!M§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§,F§.graphics.lineStyle(this.§?s§,param3.color,this.§[!]§);
         this.§,F§.graphics.drawCircle(param1.x * this.§4g§,param1.y * this.§4g§,param2 * this.§4g§);
      }
      
      public function §1N§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§,F§.graphics.lineStyle(this.§?s§,param4.color,this.§[!]§);
         this.§,F§.graphics.moveTo(0,0);
         this.§,F§.graphics.beginFill(param4.color,this.set);
         this.§,F§.graphics.drawCircle(param1.x * this.§4g§,param1.y * this.§4g§,param2 * this.§4g§);
         this.§,F§.graphics.endFill();
         this.§,F§.graphics.moveTo(param1.x * this.§4g§,param1.y * this.§4g§);
         this.§,F§.graphics.lineTo((param1.x + param3.x * param2) * this.§4g§,(param1.y + param3.y * param2) * this.§4g§);
      }
      
      public function §4O§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§,F§.graphics.lineStyle(this.§?s§,param3.color,this.§[!]§);
         this.§,F§.graphics.moveTo(param1.x * this.§4g§,param1.y * this.§4g§);
         this.§,F§.graphics.lineTo(param2.x * this.§4g§,param2.y * this.§4g§);
      }
      
      public function §@s§(param1:b2Transform) : void
      {
         this.§,F§.graphics.lineStyle(this.§?s§,16711680,this.§[!]§);
         this.§,F§.graphics.moveTo(param1.position.x * this.§4g§,param1.position.y * this.§4g§);
         this.§,F§.graphics.lineTo((param1.position.x + this.§var§ * param1.R.col1.x) * this.§4g§,(param1.position.y + this.§var§ * param1.R.col1.y) * this.§4g§);
         this.§,F§.graphics.lineStyle(this.§?s§,65280,this.§[!]§);
         this.§,F§.graphics.moveTo(param1.position.x * this.§4g§,param1.position.y * this.§4g§);
         this.§,F§.graphics.lineTo((param1.position.x + this.§var§ * param1.R.col2.x) * this.§4g§,(param1.position.y + this.§var§ * param1.R.col2.y) * this.§4g§);
      }
   }
}
