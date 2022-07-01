package §9"5§
{
   import §-%§.b2Transform;
   import §-%§.b2Vec2;
   import §>!R§.b2Color;
   import §>!R§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §""4§:uint = 1;
      
      public static var §;!n§:uint = 2;
      
      public static var §<!Z§:uint = 4;
      
      public static var §[Y§:uint = 8;
      
      public static var §03§:uint = 16;
      
      public static var §&;§:uint = 32;
       
      
      private var §&v§:uint;
      
      b2internal var §5!Y§:Sprite;
      
      private var §@!9§:Number = 1.0;
      
      private var §"!M§:Number = 1.0;
      
      private var §&F§:Number = 1.0;
      
      private var §1!Q§:Number = 1.0;
      
      private var §8!J§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§&v§ = 0;
      }
      
      public function §3!I§(param1:uint) : void
      {
         this.§&v§ = param1;
      }
      
      public function §`V§() : uint
      {
         return this.§&v§;
      }
      
      public function §=!p§(param1:uint) : void
      {
         this.§&v§ |= param1;
      }
      
      public function §<!g§(param1:uint) : void
      {
         this.§&v§ &= ~param1;
      }
      
      public function §3>§(param1:Sprite) : void
      {
         this.§5!Y§ = param1;
      }
      
      public function §2=§() : Sprite
      {
         return this.§5!Y§;
      }
      
      public function §7P§(param1:Number) : void
      {
         this.§@!9§ = param1;
      }
      
      public function §<X§() : Number
      {
         return this.§@!9§;
      }
      
      public function §?!#§(param1:Number) : void
      {
         this.§"!M§ = param1;
      }
      
      public function § !l§() : Number
      {
         return this.§"!M§;
      }
      
      public function §4!=§(param1:Number) : void
      {
         this.§&F§ = param1;
      }
      
      public function § null§() : Number
      {
         return this.§&F§;
      }
      
      public function §@J§(param1:Number) : void
      {
         this.§1!Q§ = param1;
      }
      
      public function §"!J§() : Number
      {
         return this.§1!Q§;
      }
      
      public function §>!f§(param1:Number) : void
      {
         this.§8!J§ = param1;
      }
      
      public function §8!p§() : Number
      {
         return this.§8!J§;
      }
      
      public function §5'§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§5!Y§.graphics.lineStyle(this.§"!M§,param3.color,this.§&F§);
         this.§5!Y§.graphics.moveTo(param1[0].x * this.§@!9§,param1[0].y * this.§@!9§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§5!Y§.graphics.lineTo(param1[_loc4_].x * this.§@!9§,param1[_loc4_].y * this.§@!9§);
            _loc4_++;
         }
         this.§5!Y§.graphics.lineTo(param1[0].x * this.§@!9§,param1[0].y * this.§@!9§);
      }
      
      public function §05§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§5!Y§.graphics.lineStyle(this.§"!M§,param3.color,this.§&F§);
         this.§5!Y§.graphics.moveTo(param1[0].x * this.§@!9§,param1[0].y * this.§@!9§);
         this.§5!Y§.graphics.beginFill(param3.color,this.§1!Q§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§5!Y§.graphics.lineTo(param1[_loc4_].x * this.§@!9§,param1[_loc4_].y * this.§@!9§);
            _loc4_++;
         }
         this.§5!Y§.graphics.lineTo(param1[0].x * this.§@!9§,param1[0].y * this.§@!9§);
         this.§5!Y§.graphics.endFill();
      }
      
      public function §=!6§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§5!Y§.graphics.lineStyle(this.§"!M§,param3.color,this.§&F§);
         this.§5!Y§.graphics.drawCircle(param1.x * this.§@!9§,param1.y * this.§@!9§,param2 * this.§@!9§);
      }
      
      public function §#!0§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§5!Y§.graphics.lineStyle(this.§"!M§,param4.color,this.§&F§);
         this.§5!Y§.graphics.moveTo(0,0);
         this.§5!Y§.graphics.beginFill(param4.color,this.§1!Q§);
         this.§5!Y§.graphics.drawCircle(param1.x * this.§@!9§,param1.y * this.§@!9§,param2 * this.§@!9§);
         this.§5!Y§.graphics.endFill();
         this.§5!Y§.graphics.moveTo(param1.x * this.§@!9§,param1.y * this.§@!9§);
         this.§5!Y§.graphics.lineTo((param1.x + param3.x * param2) * this.§@!9§,(param1.y + param3.y * param2) * this.§@!9§);
      }
      
      public function §`!c§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§5!Y§.graphics.lineStyle(this.§"!M§,param3.color,this.§&F§);
         this.§5!Y§.graphics.moveTo(param1.x * this.§@!9§,param1.y * this.§@!9§);
         this.§5!Y§.graphics.lineTo(param2.x * this.§@!9§,param2.y * this.§@!9§);
      }
      
      public function §^!1§(param1:b2Transform) : void
      {
         this.§5!Y§.graphics.lineStyle(this.§"!M§,16711680,this.§&F§);
         this.§5!Y§.graphics.moveTo(param1.position.x * this.§@!9§,param1.position.y * this.§@!9§);
         this.§5!Y§.graphics.lineTo((param1.position.x + this.§8!J§ * param1.R.col1.x) * this.§@!9§,(param1.position.y + this.§8!J§ * param1.R.col1.y) * this.§@!9§);
         this.§5!Y§.graphics.lineStyle(this.§"!M§,65280,this.§&F§);
         this.§5!Y§.graphics.moveTo(param1.position.x * this.§@!9§,param1.position.y * this.§@!9§);
         this.§5!Y§.graphics.lineTo((param1.position.x + this.§8!J§ * param1.R.col2.x) * this.§@!9§,(param1.position.y + this.§8!J§ * param1.R.col2.y) * this.§@!9§);
      }
   }
}
