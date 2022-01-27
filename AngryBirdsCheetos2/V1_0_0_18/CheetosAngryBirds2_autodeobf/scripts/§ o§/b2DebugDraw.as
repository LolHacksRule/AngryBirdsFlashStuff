package § o§
{
   import §"0§.b2Color;
   import §"0§.b2internal;
   import §6!H§.b2Transform;
   import §6!H§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §4O§:uint = 1;
      
      public static var §?!1§:uint = 2;
      
      public static var §]k§:uint = 4;
      
      public static var §=t§:uint = 8;
      
      public static var §<!9§:uint = 16;
      
      public static var §0l§:uint = 32;
       
      
      private var §+0§:uint;
      
      b2internal var §5,§:Sprite;
      
      private var §]§:Number = 1.0;
      
      private var §8!`§:Number = 1.0;
      
      private var §<! §:Number = 1.0;
      
      private var §2!7§:Number = 1.0;
      
      private var §<!Y§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§+0§ = 0;
      }
      
      public function §2!9§(param1:uint) : void
      {
         this.§+0§ = param1;
      }
      
      public function §5!h§() : uint
      {
         return this.§+0§;
      }
      
      public function §`o§(param1:uint) : void
      {
         this.§+0§ |= param1;
      }
      
      public function § !Y§(param1:uint) : void
      {
         this.§+0§ &= ~param1;
      }
      
      public function §5!>§(param1:Sprite) : void
      {
         this.§5,§ = param1;
      }
      
      public function §%!R§() : Sprite
      {
         return this.§5,§;
      }
      
      public function §9y§(param1:Number) : void
      {
         this.§]§ = param1;
      }
      
      public function §'b§() : Number
      {
         return this.§]§;
      }
      
      public function §<F§(param1:Number) : void
      {
         this.§8!`§ = param1;
      }
      
      public function §+!F§() : Number
      {
         return this.§8!`§;
      }
      
      public function §]!@§(param1:Number) : void
      {
         this.§<! § = param1;
      }
      
      public function §!!8§() : Number
      {
         return this.§<! §;
      }
      
      public function §?B§(param1:Number) : void
      {
         this.§2!7§ = param1;
      }
      
      public function §'!J§() : Number
      {
         return this.§2!7§;
      }
      
      public function §2!d§(param1:Number) : void
      {
         this.§<!Y§ = param1;
      }
      
      public function §^q§() : Number
      {
         return this.§<!Y§;
      }
      
      public function §]!1§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§5,§.graphics.lineStyle(this.§8!`§,param3.color,this.§<! §);
         this.§5,§.graphics.moveTo(param1[0].x * this.§]§,param1[0].y * this.§]§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§5,§.graphics.lineTo(param1[_loc4_].x * this.§]§,param1[_loc4_].y * this.§]§);
            _loc4_++;
         }
         this.§5,§.graphics.lineTo(param1[0].x * this.§]§,param1[0].y * this.§]§);
      }
      
      public function §>!c§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§5,§.graphics.lineStyle(this.§8!`§,param3.color,this.§<! §);
         this.§5,§.graphics.moveTo(param1[0].x * this.§]§,param1[0].y * this.§]§);
         this.§5,§.graphics.beginFill(param3.color,this.§2!7§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§5,§.graphics.lineTo(param1[_loc4_].x * this.§]§,param1[_loc4_].y * this.§]§);
            _loc4_++;
         }
         this.§5,§.graphics.lineTo(param1[0].x * this.§]§,param1[0].y * this.§]§);
         this.§5,§.graphics.endFill();
      }
      
      public function §%!<§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§5,§.graphics.lineStyle(this.§8!`§,param3.color,this.§<! §);
         this.§5,§.graphics.drawCircle(param1.x * this.§]§,param1.y * this.§]§,param2 * this.§]§);
      }
      
      public function §%]§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§5,§.graphics.lineStyle(this.§8!`§,param4.color,this.§<! §);
         this.§5,§.graphics.moveTo(0,0);
         this.§5,§.graphics.beginFill(param4.color,this.§2!7§);
         this.§5,§.graphics.drawCircle(param1.x * this.§]§,param1.y * this.§]§,param2 * this.§]§);
         this.§5,§.graphics.endFill();
         this.§5,§.graphics.moveTo(param1.x * this.§]§,param1.y * this.§]§);
         this.§5,§.graphics.lineTo((param1.x + param3.x * param2) * this.§]§,(param1.y + param3.y * param2) * this.§]§);
      }
      
      public function § W§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§5,§.graphics.lineStyle(this.§8!`§,param3.color,this.§<! §);
         this.§5,§.graphics.moveTo(param1.x * this.§]§,param1.y * this.§]§);
         this.§5,§.graphics.lineTo(param2.x * this.§]§,param2.y * this.§]§);
      }
      
      public function §7!8§(param1:b2Transform) : void
      {
         this.§5,§.graphics.lineStyle(this.§8!`§,16711680,this.§<! §);
         this.§5,§.graphics.moveTo(param1.position.x * this.§]§,param1.position.y * this.§]§);
         this.§5,§.graphics.lineTo((param1.position.x + this.§<!Y§ * param1.R.col1.x) * this.§]§,(param1.position.y + this.§<!Y§ * param1.R.col1.y) * this.§]§);
         this.§5,§.graphics.lineStyle(this.§8!`§,65280,this.§<! §);
         this.§5,§.graphics.moveTo(param1.position.x * this.§]§,param1.position.y * this.§]§);
         this.§5,§.graphics.lineTo((param1.position.x + this.§<!Y§ * param1.R.col2.x) * this.§]§,(param1.position.y + this.§<!Y§ * param1.R.col2.y) * this.§]§);
      }
   }
}
