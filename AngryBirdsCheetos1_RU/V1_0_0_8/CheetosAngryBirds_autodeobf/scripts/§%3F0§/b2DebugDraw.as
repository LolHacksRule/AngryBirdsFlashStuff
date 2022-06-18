package §?0§
{
   import §'!3§.b2Color;
   import §'!3§.b2internal;
   import §3q§.b2Transform;
   import §3q§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §@!-§:uint = 1;
      
      public static var §^!%§:uint = 2;
      
      public static var §'n§:uint = 4;
      
      public static var §!$§:uint = 8;
      
      public static var §8'§:uint = 16;
      
      public static var §[!Z§:uint = 32;
       
      
      private var §3L§:uint;
      
      b2internal var §2b§:Sprite;
      
      private var §`!U§:Number = 1.0;
      
      private var §%A§:Number = 1.0;
      
      private var §';§:Number = 1.0;
      
      private var §]&§:Number = 1.0;
      
      private var §=V§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§3L§ = 0;
      }
      
      public function §1;§(param1:uint) : void
      {
         this.§3L§ = param1;
      }
      
      public function §%y§() : uint
      {
         return this.§3L§;
      }
      
      public function §0!J§(param1:uint) : void
      {
         this.§3L§ |= param1;
      }
      
      public function §'R§(param1:uint) : void
      {
         this.§3L§ &= ~param1;
      }
      
      public function §-#§(param1:Sprite) : void
      {
         this.§2b§ = param1;
      }
      
      public function § !-§() : Sprite
      {
         return this.§2b§;
      }
      
      public function §8i§(param1:Number) : void
      {
         this.§`!U§ = param1;
      }
      
      public function §<!7§() : Number
      {
         return this.§`!U§;
      }
      
      public function §0M§(param1:Number) : void
      {
         this.§%A§ = param1;
      }
      
      public function §-j§() : Number
      {
         return this.§%A§;
      }
      
      public function §'2§(param1:Number) : void
      {
         this.§';§ = param1;
      }
      
      public function §<2§() : Number
      {
         return this.§';§;
      }
      
      public function §,k§(param1:Number) : void
      {
         this.§]&§ = param1;
      }
      
      public function §`L§() : Number
      {
         return this.§]&§;
      }
      
      public function §5!=§(param1:Number) : void
      {
         this.§=V§ = param1;
      }
      
      public function §=;§() : Number
      {
         return this.§=V§;
      }
      
      public function §0y§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§2b§.graphics.lineStyle(this.§%A§,param3.color,this.§';§);
         this.§2b§.graphics.moveTo(param1[0].x * this.§`!U§,param1[0].y * this.§`!U§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§2b§.graphics.lineTo(param1[_loc4_].x * this.§`!U§,param1[_loc4_].y * this.§`!U§);
            _loc4_++;
         }
         this.§2b§.graphics.lineTo(param1[0].x * this.§`!U§,param1[0].y * this.§`!U§);
      }
      
      public function § h§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§2b§.graphics.lineStyle(this.§%A§,param3.color,this.§';§);
         this.§2b§.graphics.moveTo(param1[0].x * this.§`!U§,param1[0].y * this.§`!U§);
         this.§2b§.graphics.beginFill(param3.color,this.§]&§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§2b§.graphics.lineTo(param1[_loc4_].x * this.§`!U§,param1[_loc4_].y * this.§`!U§);
            _loc4_++;
         }
         this.§2b§.graphics.lineTo(param1[0].x * this.§`!U§,param1[0].y * this.§`!U§);
         this.§2b§.graphics.endFill();
      }
      
      public function §#8§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§2b§.graphics.lineStyle(this.§%A§,param3.color,this.§';§);
         this.§2b§.graphics.drawCircle(param1.x * this.§`!U§,param1.y * this.§`!U§,param2 * this.§`!U§);
      }
      
      public function §^!"§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§2b§.graphics.lineStyle(this.§%A§,param4.color,this.§';§);
         this.§2b§.graphics.moveTo(0,0);
         this.§2b§.graphics.beginFill(param4.color,this.§]&§);
         this.§2b§.graphics.drawCircle(param1.x * this.§`!U§,param1.y * this.§`!U§,param2 * this.§`!U§);
         this.§2b§.graphics.endFill();
         this.§2b§.graphics.moveTo(param1.x * this.§`!U§,param1.y * this.§`!U§);
         this.§2b§.graphics.lineTo((param1.x + param3.x * param2) * this.§`!U§,(param1.y + param3.y * param2) * this.§`!U§);
      }
      
      public function §9n§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§2b§.graphics.lineStyle(this.§%A§,param3.color,this.§';§);
         this.§2b§.graphics.moveTo(param1.x * this.§`!U§,param1.y * this.§`!U§);
         this.§2b§.graphics.lineTo(param2.x * this.§`!U§,param2.y * this.§`!U§);
      }
      
      public function § !T§(param1:b2Transform) : void
      {
         this.§2b§.graphics.lineStyle(this.§%A§,16711680,this.§';§);
         this.§2b§.graphics.moveTo(param1.position.x * this.§`!U§,param1.position.y * this.§`!U§);
         this.§2b§.graphics.lineTo((param1.position.x + this.§=V§ * param1.R.col1.x) * this.§`!U§,(param1.position.y + this.§=V§ * param1.R.col1.y) * this.§`!U§);
         this.§2b§.graphics.lineStyle(this.§%A§,65280,this.§';§);
         this.§2b§.graphics.moveTo(param1.position.x * this.§`!U§,param1.position.y * this.§`!U§);
         this.§2b§.graphics.lineTo((param1.position.x + this.§=V§ * param1.R.col2.x) * this.§`!U§,(param1.position.y + this.§=V§ * param1.R.col2.y) * this.§`!U§);
      }
   }
}
