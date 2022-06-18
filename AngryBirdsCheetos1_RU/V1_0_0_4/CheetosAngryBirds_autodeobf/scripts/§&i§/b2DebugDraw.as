package §&i§
{
   import §"v§.b2Color;
   import §"v§.b2internal;
   import §5!K§.b2Transform;
   import §5!K§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §,!_§:uint = 1;
      
      public static var §"h§:uint = 2;
      
      public static var §[<§:uint = 4;
      
      public static var §]!0§:uint = 8;
      
      public static var §4!G§:uint = 16;
      
      public static var §`!^§:uint = 32;
       
      
      private var §]!C§:uint;
      
      b2internal var §-E§:Sprite;
      
      private var §@[§:Number = 1.0;
      
      private var §^?§:Number = 1.0;
      
      private var §^!M§:Number = 1.0;
      
      private var §^"§:Number = 1.0;
      
      private var §8o§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§]!C§ = 0;
      }
      
      public function §3d§(param1:uint) : void
      {
         this.§]!C§ = param1;
      }
      
      public function §[0§() : uint
      {
         return this.§]!C§;
      }
      
      public function §5t§(param1:uint) : void
      {
         this.§]!C§ |= param1;
      }
      
      public function §2Y§(param1:uint) : void
      {
         this.§]!C§ &= ~param1;
      }
      
      public function §"!J§(param1:Sprite) : void
      {
         this.§-E§ = param1;
      }
      
      public function § S§() : Sprite
      {
         return this.§-E§;
      }
      
      public function §+n§(param1:Number) : void
      {
         this.§@[§ = param1;
      }
      
      public function §;!$§() : Number
      {
         return this.§@[§;
      }
      
      public function §4D§(param1:Number) : void
      {
         this.§^?§ = param1;
      }
      
      public function §4C§() : Number
      {
         return this.§^?§;
      }
      
      public function §+!,§(param1:Number) : void
      {
         this.§^!M§ = param1;
      }
      
      public function §'H§() : Number
      {
         return this.§^!M§;
      }
      
      public function § !N§(param1:Number) : void
      {
         this.§^"§ = param1;
      }
      
      public function §[b§() : Number
      {
         return this.§^"§;
      }
      
      public function §>!`§(param1:Number) : void
      {
         this.§8o§ = param1;
      }
      
      public function §<g§() : Number
      {
         return this.§8o§;
      }
      
      public function §=!A§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§-E§.graphics.lineStyle(this.§^?§,param3.color,this.§^!M§);
         this.§-E§.graphics.moveTo(param1[0].x * this.§@[§,param1[0].y * this.§@[§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§-E§.graphics.lineTo(param1[_loc4_].x * this.§@[§,param1[_loc4_].y * this.§@[§);
            _loc4_++;
         }
         this.§-E§.graphics.lineTo(param1[0].x * this.§@[§,param1[0].y * this.§@[§);
      }
      
      public function §]>§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§-E§.graphics.lineStyle(this.§^?§,param3.color,this.§^!M§);
         this.§-E§.graphics.moveTo(param1[0].x * this.§@[§,param1[0].y * this.§@[§);
         this.§-E§.graphics.beginFill(param3.color,this.§^"§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§-E§.graphics.lineTo(param1[_loc4_].x * this.§@[§,param1[_loc4_].y * this.§@[§);
            _loc4_++;
         }
         this.§-E§.graphics.lineTo(param1[0].x * this.§@[§,param1[0].y * this.§@[§);
         this.§-E§.graphics.endFill();
      }
      
      public function §"I§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§-E§.graphics.lineStyle(this.§^?§,param3.color,this.§^!M§);
         this.§-E§.graphics.drawCircle(param1.x * this.§@[§,param1.y * this.§@[§,param2 * this.§@[§);
      }
      
      public function §[x§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§-E§.graphics.lineStyle(this.§^?§,param4.color,this.§^!M§);
         this.§-E§.graphics.moveTo(0,0);
         this.§-E§.graphics.beginFill(param4.color,this.§^"§);
         this.§-E§.graphics.drawCircle(param1.x * this.§@[§,param1.y * this.§@[§,param2 * this.§@[§);
         this.§-E§.graphics.endFill();
         this.§-E§.graphics.moveTo(param1.x * this.§@[§,param1.y * this.§@[§);
         this.§-E§.graphics.lineTo((param1.x + param3.x * param2) * this.§@[§,(param1.y + param3.y * param2) * this.§@[§);
      }
      
      public function §]!M§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§-E§.graphics.lineStyle(this.§^?§,param3.color,this.§^!M§);
         this.§-E§.graphics.moveTo(param1.x * this.§@[§,param1.y * this.§@[§);
         this.§-E§.graphics.lineTo(param2.x * this.§@[§,param2.y * this.§@[§);
      }
      
      public function §!c§(param1:b2Transform) : void
      {
         this.§-E§.graphics.lineStyle(this.§^?§,16711680,this.§^!M§);
         this.§-E§.graphics.moveTo(param1.position.x * this.§@[§,param1.position.y * this.§@[§);
         this.§-E§.graphics.lineTo((param1.position.x + this.§8o§ * param1.R.col1.x) * this.§@[§,(param1.position.y + this.§8o§ * param1.R.col1.y) * this.§@[§);
         this.§-E§.graphics.lineStyle(this.§^?§,65280,this.§^!M§);
         this.§-E§.graphics.moveTo(param1.position.x * this.§@[§,param1.position.y * this.§@[§);
         this.§-E§.graphics.lineTo((param1.position.x + this.§8o§ * param1.R.col2.x) * this.§@[§,(param1.position.y + this.§8o§ * param1.R.col2.y) * this.§@[§);
      }
   }
}
