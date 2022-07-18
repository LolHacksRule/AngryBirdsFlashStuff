package §+#$§
{
   import §5"i§.b2Color;
   import §5"i§.b2internal;
   import §[R§.b2Transform;
   import §[R§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §;#F§:uint = 1;
      
      public static var §'"l§:uint = 2;
      
      public static var §##Q§:uint = 4;
      
      public static var §]5§:uint = 8;
      
      public static var §>"v§:uint = 16;
      
      public static var §@# §:uint = 32;
       
      
      private var §2u§:uint;
      
      b2internal var §3"k§:Sprite;
      
      private var §>!-§:Number = 1.0;
      
      private var §-`§:Number = 1.0;
      
      private var §9#I§:Number = 1.0;
      
      private var §##S§:Number = 1.0;
      
      private var §[#7§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§2u§ = 0;
      }
      
      public function §="4§(param1:uint) : void
      {
         this.§2u§ = param1;
      }
      
      public function §0"k§() : uint
      {
         return this.§2u§;
      }
      
      public function §%"%§(param1:uint) : void
      {
         this.§2u§ |= param1;
      }
      
      public function §0#-§(param1:uint) : void
      {
         this.§2u§ &= ~param1;
      }
      
      public function §6!v§(param1:Sprite) : void
      {
         this.§3"k§ = param1;
      }
      
      public function §]#8§() : Sprite
      {
         return this.§3"k§;
      }
      
      public function §#!k§(param1:Number) : void
      {
         this.§>!-§ = param1;
      }
      
      public function §`"`§() : Number
      {
         return this.§>!-§;
      }
      
      public function §[#$§(param1:Number) : void
      {
         this.§-`§ = param1;
      }
      
      public function §+"[§() : Number
      {
         return this.§-`§;
      }
      
      public function §6#[§(param1:Number) : void
      {
         this.§9#I§ = param1;
      }
      
      public function §7!1§() : Number
      {
         return this.§9#I§;
      }
      
      public function §9!x§(param1:Number) : void
      {
         this.§##S§ = param1;
      }
      
      public function §<"7§() : Number
      {
         return this.§##S§;
      }
      
      public function §3G§(param1:Number) : void
      {
         this.§[#7§ = param1;
      }
      
      public function §%"N§() : Number
      {
         return this.§[#7§;
      }
      
      public function §2=§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§3"k§.graphics.lineStyle(this.§-`§,param3.color,this.§9#I§);
         this.§3"k§.graphics.moveTo(param1[0].x * this.§>!-§,param1[0].y * this.§>!-§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§3"k§.graphics.lineTo(param1[_loc4_].x * this.§>!-§,param1[_loc4_].y * this.§>!-§);
            _loc4_++;
         }
         this.§3"k§.graphics.lineTo(param1[0].x * this.§>!-§,param1[0].y * this.§>!-§);
      }
      
      public function §3"<§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§3"k§.graphics.lineStyle(this.§-`§,param3.color,this.§9#I§);
         this.§3"k§.graphics.moveTo(param1[0].x * this.§>!-§,param1[0].y * this.§>!-§);
         this.§3"k§.graphics.beginFill(param3.color,this.§##S§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§3"k§.graphics.lineTo(param1[_loc4_].x * this.§>!-§,param1[_loc4_].y * this.§>!-§);
            _loc4_++;
         }
         this.§3"k§.graphics.lineTo(param1[0].x * this.§>!-§,param1[0].y * this.§>!-§);
         this.§3"k§.graphics.endFill();
      }
      
      public function §]!_§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§3"k§.graphics.lineStyle(this.§-`§,param3.color,this.§9#I§);
         this.§3"k§.graphics.drawCircle(param1.x * this.§>!-§,param1.y * this.§>!-§,param2 * this.§>!-§);
      }
      
      public function §=! §(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§3"k§.graphics.lineStyle(this.§-`§,param4.color,this.§9#I§);
         this.§3"k§.graphics.moveTo(0,0);
         this.§3"k§.graphics.beginFill(param4.color,this.§##S§);
         this.§3"k§.graphics.drawCircle(param1.x * this.§>!-§,param1.y * this.§>!-§,param2 * this.§>!-§);
         this.§3"k§.graphics.endFill();
         this.§3"k§.graphics.moveTo(param1.x * this.§>!-§,param1.y * this.§>!-§);
         this.§3"k§.graphics.lineTo((param1.x + param3.x * param2) * this.§>!-§,(param1.y + param3.y * param2) * this.§>!-§);
      }
      
      public function §,"B§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§3"k§.graphics.lineStyle(this.§-`§,param3.color,this.§9#I§);
         this.§3"k§.graphics.moveTo(param1.x * this.§>!-§,param1.y * this.§>!-§);
         this.§3"k§.graphics.lineTo(param2.x * this.§>!-§,param2.y * this.§>!-§);
      }
      
      public function §?!G§(param1:b2Transform) : void
      {
         this.§3"k§.graphics.lineStyle(this.§-`§,16711680,this.§9#I§);
         this.§3"k§.graphics.moveTo(param1.position.x * this.§>!-§,param1.position.y * this.§>!-§);
         this.§3"k§.graphics.lineTo((param1.position.x + this.§[#7§ * param1.R.col1.x) * this.§>!-§,(param1.position.y + this.§[#7§ * param1.R.col1.y) * this.§>!-§);
         this.§3"k§.graphics.lineStyle(this.§-`§,65280,this.§9#I§);
         this.§3"k§.graphics.moveTo(param1.position.x * this.§>!-§,param1.position.y * this.§>!-§);
         this.§3"k§.graphics.lineTo((param1.position.x + this.§[#7§ * param1.R.col2.x) * this.§>!-§,(param1.position.y + this.§[#7§ * param1.R.col2.y) * this.§>!-§);
      }
   }
}
