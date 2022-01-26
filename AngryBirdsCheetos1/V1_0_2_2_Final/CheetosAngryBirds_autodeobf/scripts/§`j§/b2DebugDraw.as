package §`j§
{
   import §0!G§.b2Transform;
   import §0!G§.b2Vec2;
   import §2!F§.b2Color;
   import §2!F§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §?A§:uint = 1;
      
      public static var §1d§:uint = 2;
      
      public static var §#! §:uint = 4;
      
      public static var §#!3§:uint = 8;
      
      public static var §7!C§:uint = 16;
      
      public static var §-!+§:uint = 32;
       
      
      private var §;c§:uint;
      
      b2internal var §-X§:Sprite;
      
      private var §"!J§:Number = 1.0;
      
      private var §8]§:Number = 1.0;
      
      private var §<!E§:Number = 1.0;
      
      private var §=i§:Number = 1.0;
      
      private var §=!&§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§;c§ = 0;
      }
      
      public function §#!_§(param1:uint) : void
      {
         this.§;c§ = param1;
      }
      
      public function §'!F§() : uint
      {
         return this.§;c§;
      }
      
      public function §#!H§(param1:uint) : void
      {
         this.§;c§ |= param1;
      }
      
      public function §-z§(param1:uint) : void
      {
         this.§;c§ &= ~param1;
      }
      
      public function §`!O§(param1:Sprite) : void
      {
         this.§-X§ = param1;
      }
      
      public function §5^§() : Sprite
      {
         return this.§-X§;
      }
      
      public function §8;§(param1:Number) : void
      {
         this.§"!J§ = param1;
      }
      
      public function §?1§() : Number
      {
         return this.§"!J§;
      }
      
      public function §7y§(param1:Number) : void
      {
         this.§8]§ = param1;
      }
      
      public function §@&§() : Number
      {
         return this.§8]§;
      }
      
      public function §9!7§(param1:Number) : void
      {
         this.§<!E§ = param1;
      }
      
      public function §^!$§() : Number
      {
         return this.§<!E§;
      }
      
      public function §'k§(param1:Number) : void
      {
         this.§=i§ = param1;
      }
      
      public function §3!§() : Number
      {
         return this.§=i§;
      }
      
      public function §,!=§(param1:Number) : void
      {
         this.§=!&§ = param1;
      }
      
      public function §1!E§() : Number
      {
         return this.§=!&§;
      }
      
      public function §2!'§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§-X§.graphics.lineStyle(this.§8]§,param3.color,this.§<!E§);
         this.§-X§.graphics.moveTo(param1[0].x * this.§"!J§,param1[0].y * this.§"!J§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§-X§.graphics.lineTo(param1[_loc4_].x * this.§"!J§,param1[_loc4_].y * this.§"!J§);
            _loc4_++;
         }
         this.§-X§.graphics.lineTo(param1[0].x * this.§"!J§,param1[0].y * this.§"!J§);
      }
      
      public function §1!>§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§-X§.graphics.lineStyle(this.§8]§,param3.color,this.§<!E§);
         this.§-X§.graphics.moveTo(param1[0].x * this.§"!J§,param1[0].y * this.§"!J§);
         this.§-X§.graphics.beginFill(param3.color,this.§=i§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§-X§.graphics.lineTo(param1[_loc4_].x * this.§"!J§,param1[_loc4_].y * this.§"!J§);
            _loc4_++;
         }
         this.§-X§.graphics.lineTo(param1[0].x * this.§"!J§,param1[0].y * this.§"!J§);
         this.§-X§.graphics.endFill();
      }
      
      public function §=!9§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§-X§.graphics.lineStyle(this.§8]§,param3.color,this.§<!E§);
         this.§-X§.graphics.drawCircle(param1.x * this.§"!J§,param1.y * this.§"!J§,param2 * this.§"!J§);
      }
      
      public function §85§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§-X§.graphics.lineStyle(this.§8]§,param4.color,this.§<!E§);
         this.§-X§.graphics.moveTo(0,0);
         this.§-X§.graphics.beginFill(param4.color,this.§=i§);
         this.§-X§.graphics.drawCircle(param1.x * this.§"!J§,param1.y * this.§"!J§,param2 * this.§"!J§);
         this.§-X§.graphics.endFill();
         this.§-X§.graphics.moveTo(param1.x * this.§"!J§,param1.y * this.§"!J§);
         this.§-X§.graphics.lineTo((param1.x + param3.x * param2) * this.§"!J§,(param1.y + param3.y * param2) * this.§"!J§);
      }
      
      public function §;n§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§-X§.graphics.lineStyle(this.§8]§,param3.color,this.§<!E§);
         this.§-X§.graphics.moveTo(param1.x * this.§"!J§,param1.y * this.§"!J§);
         this.§-X§.graphics.lineTo(param2.x * this.§"!J§,param2.y * this.§"!J§);
      }
      
      public function §]!-§(param1:b2Transform) : void
      {
         this.§-X§.graphics.lineStyle(this.§8]§,16711680,this.§<!E§);
         this.§-X§.graphics.moveTo(param1.position.x * this.§"!J§,param1.position.y * this.§"!J§);
         this.§-X§.graphics.lineTo((param1.position.x + this.§=!&§ * param1.R.col1.x) * this.§"!J§,(param1.position.y + this.§=!&§ * param1.R.col1.y) * this.§"!J§);
         this.§-X§.graphics.lineStyle(this.§8]§,65280,this.§<!E§);
         this.§-X§.graphics.moveTo(param1.position.x * this.§"!J§,param1.position.y * this.§"!J§);
         this.§-X§.graphics.lineTo((param1.position.x + this.§=!&§ * param1.R.col2.x) * this.§"!J§,(param1.position.y + this.§=!&§ * param1.R.col2.y) * this.§"!J§);
      }
   }
}
