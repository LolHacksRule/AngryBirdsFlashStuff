package §>"_§
{
   import §7!I§.b2Color;
   import §7!I§.b2internal;
   import §7"A§.b2Transform;
   import §7"A§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var each:uint = 1;
      
      public static var §!"F§:uint = 2;
      
      public static var §8"d§:uint = 4;
      
      public static var §>!l§:uint = 8;
      
      public static var §#H§:uint = 16;
      
      public static var §+U§:uint = 32;
       
      
      private var §,n§:uint;
      
      b2internal var §`"E§:Sprite;
      
      private var §7<§:Number = 1.0;
      
      private var §5"?§:Number = 1.0;
      
      private var §0!v§:Number = 1.0;
      
      private var §5?§:Number = 1.0;
      
      private var §%"l§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§,n§ = 0;
      }
      
      public function §,k§(param1:uint) : void
      {
         this.§,n§ = param1;
      }
      
      public function §0"8§() : uint
      {
         return this.§,n§;
      }
      
      public function §%<§(param1:uint) : void
      {
         this.§,n§ |= param1;
      }
      
      public function §#N§(param1:uint) : void
      {
         this.§,n§ &= ~param1;
      }
      
      public function §8"#§(param1:Sprite) : void
      {
         this.§`"E§ = param1;
      }
      
      public function §3!c§() : Sprite
      {
         return this.§`"E§;
      }
      
      public function §-"b§(param1:Number) : void
      {
         this.§7<§ = param1;
      }
      
      public function §,2§() : Number
      {
         return this.§7<§;
      }
      
      public function §#!D§(param1:Number) : void
      {
         this.§5"?§ = param1;
      }
      
      public function §^"I§() : Number
      {
         return this.§5"?§;
      }
      
      public function §1#+§(param1:Number) : void
      {
         this.§0!v§ = param1;
      }
      
      public function §0!_§() : Number
      {
         return this.§0!v§;
      }
      
      public function §#"j§(param1:Number) : void
      {
         this.§5?§ = param1;
      }
      
      public function §]H§() : Number
      {
         return this.§5?§;
      }
      
      public function §!v§(param1:Number) : void
      {
         this.§%"l§ = param1;
      }
      
      public function §1#"§() : Number
      {
         return this.§%"l§;
      }
      
      public function §;!F§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§`"E§.graphics.lineStyle(this.§5"?§,param3.color,this.§0!v§);
         this.§`"E§.graphics.moveTo(param1[0].x * this.§7<§,param1[0].y * this.§7<§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§`"E§.graphics.lineTo(param1[_loc4_].x * this.§7<§,param1[_loc4_].y * this.§7<§);
            _loc4_++;
         }
         this.§`"E§.graphics.lineTo(param1[0].x * this.§7<§,param1[0].y * this.§7<§);
      }
      
      public function §>0§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§`"E§.graphics.lineStyle(this.§5"?§,param3.color,this.§0!v§);
         this.§`"E§.graphics.moveTo(param1[0].x * this.§7<§,param1[0].y * this.§7<§);
         this.§`"E§.graphics.beginFill(param3.color,this.§5?§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§`"E§.graphics.lineTo(param1[_loc4_].x * this.§7<§,param1[_loc4_].y * this.§7<§);
            _loc4_++;
         }
         this.§`"E§.graphics.lineTo(param1[0].x * this.§7<§,param1[0].y * this.§7<§);
         this.§`"E§.graphics.endFill();
      }
      
      public function §^s§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§`"E§.graphics.lineStyle(this.§5"?§,param3.color,this.§0!v§);
         this.§`"E§.graphics.drawCircle(param1.x * this.§7<§,param1.y * this.§7<§,param2 * this.§7<§);
      }
      
      public function §=!b§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§`"E§.graphics.lineStyle(this.§5"?§,param4.color,this.§0!v§);
         this.§`"E§.graphics.moveTo(0,0);
         this.§`"E§.graphics.beginFill(param4.color,this.§5?§);
         this.§`"E§.graphics.drawCircle(param1.x * this.§7<§,param1.y * this.§7<§,param2 * this.§7<§);
         this.§`"E§.graphics.endFill();
         this.§`"E§.graphics.moveTo(param1.x * this.§7<§,param1.y * this.§7<§);
         this.§`"E§.graphics.lineTo((param1.x + param3.x * param2) * this.§7<§,(param1.y + param3.y * param2) * this.§7<§);
      }
      
      public function §5i§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§`"E§.graphics.lineStyle(this.§5"?§,param3.color,this.§0!v§);
         this.§`"E§.graphics.moveTo(param1.x * this.§7<§,param1.y * this.§7<§);
         this.§`"E§.graphics.lineTo(param2.x * this.§7<§,param2.y * this.§7<§);
      }
      
      public function §7"-§(param1:b2Transform) : void
      {
         this.§`"E§.graphics.lineStyle(this.§5"?§,16711680,this.§0!v§);
         this.§`"E§.graphics.moveTo(param1.position.x * this.§7<§,param1.position.y * this.§7<§);
         this.§`"E§.graphics.lineTo((param1.position.x + this.§%"l§ * param1.R.col1.x) * this.§7<§,(param1.position.y + this.§%"l§ * param1.R.col1.y) * this.§7<§);
         this.§`"E§.graphics.lineStyle(this.§5"?§,65280,this.§0!v§);
         this.§`"E§.graphics.moveTo(param1.position.x * this.§7<§,param1.position.y * this.§7<§);
         this.§`"E§.graphics.lineTo((param1.position.x + this.§%"l§ * param1.R.col2.x) * this.§7<§,(param1.position.y + this.§%"l§ * param1.R.col2.y) * this.§7<§);
      }
   }
}
