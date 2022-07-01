package §7z§
{
   import §+L§.b2Transform;
   import §+L§.b2Vec2;
   import §^+§.b2Color;
   import §^+§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §3"5§:uint = 1;
      
      public static var §1"-§:uint = 2;
      
      public static var §!!=§:uint = 4;
      
      public static var §=t§:uint = 8;
      
      public static var §`r§:uint = 16;
      
      public static var §<O§:uint = 32;
       
      
      private var §["#§:uint;
      
      b2internal var § !f§:Sprite;
      
      private var §@!p§:Number = 1.0;
      
      private var §&!p§:Number = 1.0;
      
      private var §9"-§:Number = 1.0;
      
      private var §"9§:Number = 1.0;
      
      private var §]p§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§["#§ = 0;
      }
      
      public function §!=§(param1:uint) : void
      {
         this.§["#§ = param1;
      }
      
      public function §^g§() : uint
      {
         return this.§["#§;
      }
      
      public function §[!X§(param1:uint) : void
      {
         this.§["#§ |= param1;
      }
      
      public function §#u§(param1:uint) : void
      {
         this.§["#§ &= ~param1;
      }
      
      public function §4!5§(param1:Sprite) : void
      {
         this.§ !f§ = param1;
      }
      
      public function §6![§() : Sprite
      {
         return this.§ !f§;
      }
      
      public function §=c§(param1:Number) : void
      {
         this.§@!p§ = param1;
      }
      
      public function §=q§() : Number
      {
         return this.§@!p§;
      }
      
      public function §<![§(param1:Number) : void
      {
         this.§&!p§ = param1;
      }
      
      public function §<!Z§() : Number
      {
         return this.§&!p§;
      }
      
      public function §;!e§(param1:Number) : void
      {
         this.§9"-§ = param1;
      }
      
      public function §7!§() : Number
      {
         return this.§9"-§;
      }
      
      public function §>!P§(param1:Number) : void
      {
         this.§"9§ = param1;
      }
      
      public function §5!H§() : Number
      {
         return this.§"9§;
      }
      
      public function §8!1§(param1:Number) : void
      {
         this.§]p§ = param1;
      }
      
      public function §5"2§() : Number
      {
         return this.§]p§;
      }
      
      public function §>!S§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§ !f§.graphics.lineStyle(this.§&!p§,param3.color,this.§9"-§);
         this.§ !f§.graphics.moveTo(param1[0].x * this.§@!p§,param1[0].y * this.§@!p§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§ !f§.graphics.lineTo(param1[_loc4_].x * this.§@!p§,param1[_loc4_].y * this.§@!p§);
            _loc4_++;
         }
         this.§ !f§.graphics.lineTo(param1[0].x * this.§@!p§,param1[0].y * this.§@!p§);
      }
      
      public function §,!2§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§ !f§.graphics.lineStyle(this.§&!p§,param3.color,this.§9"-§);
         this.§ !f§.graphics.moveTo(param1[0].x * this.§@!p§,param1[0].y * this.§@!p§);
         this.§ !f§.graphics.beginFill(param3.color,this.§"9§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§ !f§.graphics.lineTo(param1[_loc4_].x * this.§@!p§,param1[_loc4_].y * this.§@!p§);
            _loc4_++;
         }
         this.§ !f§.graphics.lineTo(param1[0].x * this.§@!p§,param1[0].y * this.§@!p§);
         this.§ !f§.graphics.endFill();
      }
      
      public function §2!#§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§ !f§.graphics.lineStyle(this.§&!p§,param3.color,this.§9"-§);
         this.§ !f§.graphics.drawCircle(param1.x * this.§@!p§,param1.y * this.§@!p§,param2 * this.§@!p§);
      }
      
      public function §+"2§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§ !f§.graphics.lineStyle(this.§&!p§,param4.color,this.§9"-§);
         this.§ !f§.graphics.moveTo(0,0);
         this.§ !f§.graphics.beginFill(param4.color,this.§"9§);
         this.§ !f§.graphics.drawCircle(param1.x * this.§@!p§,param1.y * this.§@!p§,param2 * this.§@!p§);
         this.§ !f§.graphics.endFill();
         this.§ !f§.graphics.moveTo(param1.x * this.§@!p§,param1.y * this.§@!p§);
         this.§ !f§.graphics.lineTo((param1.x + param3.x * param2) * this.§@!p§,(param1.y + param3.y * param2) * this.§@!p§);
      }
      
      public function §,!<§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§ !f§.graphics.lineStyle(this.§&!p§,param3.color,this.§9"-§);
         this.§ !f§.graphics.moveTo(param1.x * this.§@!p§,param1.y * this.§@!p§);
         this.§ !f§.graphics.lineTo(param2.x * this.§@!p§,param2.y * this.§@!p§);
      }
      
      public function §1!C§(param1:b2Transform) : void
      {
         this.§ !f§.graphics.lineStyle(this.§&!p§,16711680,this.§9"-§);
         this.§ !f§.graphics.moveTo(param1.position.x * this.§@!p§,param1.position.y * this.§@!p§);
         this.§ !f§.graphics.lineTo((param1.position.x + this.§]p§ * param1.R.col1.x) * this.§@!p§,(param1.position.y + this.§]p§ * param1.R.col1.y) * this.§@!p§);
         this.§ !f§.graphics.lineStyle(this.§&!p§,65280,this.§9"-§);
         this.§ !f§.graphics.moveTo(param1.position.x * this.§@!p§,param1.position.y * this.§@!p§);
         this.§ !f§.graphics.lineTo((param1.position.x + this.§]p§ * param1.R.col2.x) * this.§@!p§,(param1.position.y + this.§]p§ * param1.R.col2.y) * this.§@!p§);
      }
   }
}
