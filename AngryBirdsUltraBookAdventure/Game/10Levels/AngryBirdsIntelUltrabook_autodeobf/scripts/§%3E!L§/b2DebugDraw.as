package §>!L§
{
   import §+!g§.b2Color;
   import §+!g§.b2internal;
   import §>!8§.b2Transform;
   import §>!8§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §,x§:uint = 1;
      
      public static var §`h§:uint = 2;
      
      public static var §@S§:uint = 4;
      
      public static var §=!Z§:uint = 8;
      
      public static var §^!a§:uint = 16;
      
      public static var §-C§:uint = 32;
       
      
      private var §,U§:uint;
      
      b2internal var §3t§:Sprite;
      
      private var §6?§:Number = 1.0;
      
      private var §7!Q§:Number = 1.0;
      
      private var §;!k§:Number = 1.0;
      
      private var §;Y§:Number = 1.0;
      
      private var §16§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§,U§ = 0;
      }
      
      public function §%x§(param1:uint) : void
      {
         this.§,U§ = param1;
      }
      
      public function §,s§() : uint
      {
         return this.§,U§;
      }
      
      public function §#l§(param1:uint) : void
      {
         this.§,U§ |= param1;
      }
      
      public function §[!f§(param1:uint) : void
      {
         this.§,U§ &= ~param1;
      }
      
      public function §=Z§(param1:Sprite) : void
      {
         this.§3t§ = param1;
      }
      
      public function §<!N§() : Sprite
      {
         return this.§3t§;
      }
      
      public function §"!J§(param1:Number) : void
      {
         this.§6?§ = param1;
      }
      
      public function §"s§() : Number
      {
         return this.§6?§;
      }
      
      public function §9'§(param1:Number) : void
      {
         this.§7!Q§ = param1;
      }
      
      public function §@!_§() : Number
      {
         return this.§7!Q§;
      }
      
      public function §1!"§(param1:Number) : void
      {
         this.§;!k§ = param1;
      }
      
      public function §2!b§() : Number
      {
         return this.§;!k§;
      }
      
      public function §,c§(param1:Number) : void
      {
         this.§;Y§ = param1;
      }
      
      public function §9!J§() : Number
      {
         return this.§;Y§;
      }
      
      public function §"!C§(param1:Number) : void
      {
         this.§16§ = param1;
      }
      
      public function §@t§() : Number
      {
         return this.§16§;
      }
      
      public function §]!2§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§3t§.graphics.lineStyle(this.§7!Q§,param3.color,this.§;!k§);
         this.§3t§.graphics.moveTo(param1[0].x * this.§6?§,param1[0].y * this.§6?§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§3t§.graphics.lineTo(param1[_loc4_].x * this.§6?§,param1[_loc4_].y * this.§6?§);
            _loc4_++;
         }
         this.§3t§.graphics.lineTo(param1[0].x * this.§6?§,param1[0].y * this.§6?§);
      }
      
      public function §`w§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§3t§.graphics.lineStyle(this.§7!Q§,param3.color,this.§;!k§);
         this.§3t§.graphics.moveTo(param1[0].x * this.§6?§,param1[0].y * this.§6?§);
         this.§3t§.graphics.beginFill(param3.color,this.§;Y§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§3t§.graphics.lineTo(param1[_loc4_].x * this.§6?§,param1[_loc4_].y * this.§6?§);
            _loc4_++;
         }
         this.§3t§.graphics.lineTo(param1[0].x * this.§6?§,param1[0].y * this.§6?§);
         this.§3t§.graphics.endFill();
      }
      
      public function § k§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§3t§.graphics.lineStyle(this.§7!Q§,param3.color,this.§;!k§);
         this.§3t§.graphics.drawCircle(param1.x * this.§6?§,param1.y * this.§6?§,param2 * this.§6?§);
      }
      
      public function §>g§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§3t§.graphics.lineStyle(this.§7!Q§,param4.color,this.§;!k§);
         this.§3t§.graphics.moveTo(0,0);
         this.§3t§.graphics.beginFill(param4.color,this.§;Y§);
         this.§3t§.graphics.drawCircle(param1.x * this.§6?§,param1.y * this.§6?§,param2 * this.§6?§);
         this.§3t§.graphics.endFill();
         this.§3t§.graphics.moveTo(param1.x * this.§6?§,param1.y * this.§6?§);
         this.§3t§.graphics.lineTo((param1.x + param3.x * param2) * this.§6?§,(param1.y + param3.y * param2) * this.§6?§);
      }
      
      public function §-!!§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§3t§.graphics.lineStyle(this.§7!Q§,param3.color,this.§;!k§);
         this.§3t§.graphics.moveTo(param1.x * this.§6?§,param1.y * this.§6?§);
         this.§3t§.graphics.lineTo(param2.x * this.§6?§,param2.y * this.§6?§);
      }
      
      public function §%j§(param1:b2Transform) : void
      {
         this.§3t§.graphics.lineStyle(this.§7!Q§,16711680,this.§;!k§);
         this.§3t§.graphics.moveTo(param1.position.x * this.§6?§,param1.position.y * this.§6?§);
         this.§3t§.graphics.lineTo((param1.position.x + this.§16§ * param1.R.col1.x) * this.§6?§,(param1.position.y + this.§16§ * param1.R.col1.y) * this.§6?§);
         this.§3t§.graphics.lineStyle(this.§7!Q§,65280,this.§;!k§);
         this.§3t§.graphics.moveTo(param1.position.x * this.§6?§,param1.position.y * this.§6?§);
         this.§3t§.graphics.lineTo((param1.position.x + this.§16§ * param1.R.col2.x) * this.§6?§,(param1.position.y + this.§16§ * param1.R.col2.y) * this.§6?§);
      }
   }
}
