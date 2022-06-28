package §`w§
{
   import §7!u§.b2Color;
   import §7!u§.b2internal;
   import §>H§.b2Transform;
   import §>H§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §;!s§:uint = 1;
      
      public static var §5!9§:uint = 2;
      
      public static var §<9§:uint = 4;
      
      public static var §!-§:uint = 8;
      
      public static var §;!o§:uint = 16;
      
      public static var §%!n§:uint = 32;
       
      
      private var §+H§:uint;
      
      b2internal var §%C§:Sprite;
      
      private var §^!c§:Number = 1.0;
      
      private var §^0§:Number = 1.0;
      
      private var §>!5§:Number = 1.0;
      
      private var §;!l§:Number = 1.0;
      
      private var §!B§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§+H§ = 0;
      }
      
      public function §%!A§(param1:uint) : void
      {
         this.§+H§ = param1;
      }
      
      public function §3F§() : uint
      {
         return this.§+H§;
      }
      
      public function §4!3§(param1:uint) : void
      {
         this.§+H§ |= param1;
      }
      
      public function §^!e§(param1:uint) : void
      {
         this.§+H§ &= ~param1;
      }
      
      public function §%o§(param1:Sprite) : void
      {
         this.§%C§ = param1;
      }
      
      public function §"t§() : Sprite
      {
         return this.§%C§;
      }
      
      public function §^!k§(param1:Number) : void
      {
         this.§^!c§ = param1;
      }
      
      public function §?!-§() : Number
      {
         return this.§^!c§;
      }
      
      public function §6M§(param1:Number) : void
      {
         this.§^0§ = param1;
      }
      
      public function §'!<§() : Number
      {
         return this.§^0§;
      }
      
      public function §"!3§(param1:Number) : void
      {
         this.§>!5§ = param1;
      }
      
      public function §&!?§() : Number
      {
         return this.§>!5§;
      }
      
      public function §+^§(param1:Number) : void
      {
         this.§;!l§ = param1;
      }
      
      public function §[!L§() : Number
      {
         return this.§;!l§;
      }
      
      public function §8i§(param1:Number) : void
      {
         this.§!B§ = param1;
      }
      
      public function §`!g§() : Number
      {
         return this.§!B§;
      }
      
      public function §6!j§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§%C§.graphics.lineStyle(this.§^0§,param3.color,this.§>!5§);
         this.§%C§.graphics.moveTo(param1[0].x * this.§^!c§,param1[0].y * this.§^!c§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§%C§.graphics.lineTo(param1[_loc4_].x * this.§^!c§,param1[_loc4_].y * this.§^!c§);
            _loc4_++;
         }
         this.§%C§.graphics.lineTo(param1[0].x * this.§^!c§,param1[0].y * this.§^!c§);
      }
      
      public function §`u§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§%C§.graphics.lineStyle(this.§^0§,param3.color,this.§>!5§);
         this.§%C§.graphics.moveTo(param1[0].x * this.§^!c§,param1[0].y * this.§^!c§);
         this.§%C§.graphics.beginFill(param3.color,this.§;!l§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§%C§.graphics.lineTo(param1[_loc4_].x * this.§^!c§,param1[_loc4_].y * this.§^!c§);
            _loc4_++;
         }
         this.§%C§.graphics.lineTo(param1[0].x * this.§^!c§,param1[0].y * this.§^!c§);
         this.§%C§.graphics.endFill();
      }
      
      public function §<!L§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§%C§.graphics.lineStyle(this.§^0§,param3.color,this.§>!5§);
         this.§%C§.graphics.drawCircle(param1.x * this.§^!c§,param1.y * this.§^!c§,param2 * this.§^!c§);
      }
      
      public function §%u§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§%C§.graphics.lineStyle(this.§^0§,param4.color,this.§>!5§);
         this.§%C§.graphics.moveTo(0,0);
         this.§%C§.graphics.beginFill(param4.color,this.§;!l§);
         this.§%C§.graphics.drawCircle(param1.x * this.§^!c§,param1.y * this.§^!c§,param2 * this.§^!c§);
         this.§%C§.graphics.endFill();
         this.§%C§.graphics.moveTo(param1.x * this.§^!c§,param1.y * this.§^!c§);
         this.§%C§.graphics.lineTo((param1.x + param3.x * param2) * this.§^!c§,(param1.y + param3.y * param2) * this.§^!c§);
      }
      
      public function §32§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§%C§.graphics.lineStyle(this.§^0§,param3.color,this.§>!5§);
         this.§%C§.graphics.moveTo(param1.x * this.§^!c§,param1.y * this.§^!c§);
         this.§%C§.graphics.lineTo(param2.x * this.§^!c§,param2.y * this.§^!c§);
      }
      
      public function § 0§(param1:b2Transform) : void
      {
         this.§%C§.graphics.lineStyle(this.§^0§,16711680,this.§>!5§);
         this.§%C§.graphics.moveTo(param1.position.x * this.§^!c§,param1.position.y * this.§^!c§);
         this.§%C§.graphics.lineTo((param1.position.x + this.§!B§ * param1.R.col1.x) * this.§^!c§,(param1.position.y + this.§!B§ * param1.R.col1.y) * this.§^!c§);
         this.§%C§.graphics.lineStyle(this.§^0§,65280,this.§>!5§);
         this.§%C§.graphics.moveTo(param1.position.x * this.§^!c§,param1.position.y * this.§^!c§);
         this.§%C§.graphics.lineTo((param1.position.x + this.§!B§ * param1.R.col2.x) * this.§^!c§,(param1.position.y + this.§!B§ * param1.R.col2.y) * this.§^!c§);
      }
   }
}
