package §'!&§
{
   import §9t§.b2Transform;
   import §9t§.b2Vec2;
   import §@!'§.b2Color;
   import §@!'§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §`!a§:uint = 1;
      
      public static var §%H§:uint = 2;
      
      public static var §=§:uint = 4;
      
      public static var §[!4§:uint = 8;
      
      public static var §7!P§:uint = 16;
      
      public static var §<!Y§:uint = 32;
       
      
      private var §-!]§:uint;
      
      b2internal var §97§:Sprite;
      
      private var §`!J§:Number = 1.0;
      
      private var §5!T§:Number = 1.0;
      
      private var §@!7§:Number = 1.0;
      
      private var §!!$§:Number = 1.0;
      
      private var §@";§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§-!]§ = 0;
      }
      
      public function §2X§(param1:uint) : void
      {
         this.§-!]§ = param1;
      }
      
      public function §"a§() : uint
      {
         return this.§-!]§;
      }
      
      public function §]N§(param1:uint) : void
      {
         this.§-!]§ |= param1;
      }
      
      public function §"!7§(param1:uint) : void
      {
         this.§-!]§ &= ~param1;
      }
      
      public function §0"$§(param1:Sprite) : void
      {
         this.§97§ = param1;
      }
      
      public function §9!L§() : Sprite
      {
         return this.§97§;
      }
      
      public function §>"-§(param1:Number) : void
      {
         this.§`!J§ = param1;
      }
      
      public function § "@§() : Number
      {
         return this.§`!J§;
      }
      
      public function §5l§(param1:Number) : void
      {
         this.§5!T§ = param1;
      }
      
      public function §8C§() : Number
      {
         return this.§5!T§;
      }
      
      public function § !H§(param1:Number) : void
      {
         this.§@!7§ = param1;
      }
      
      public function §4!8§() : Number
      {
         return this.§@!7§;
      }
      
      public function §^v§(param1:Number) : void
      {
         this.§!!$§ = param1;
      }
      
      public function §1",§() : Number
      {
         return this.§!!$§;
      }
      
      public function §[!3§(param1:Number) : void
      {
         this.§@";§ = param1;
      }
      
      public function §!!L§() : Number
      {
         return this.§@";§;
      }
      
      public function §?I§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§97§.graphics.lineStyle(this.§5!T§,param3.color,this.§@!7§);
         this.§97§.graphics.moveTo(param1[0].x * this.§`!J§,param1[0].y * this.§`!J§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§97§.graphics.lineTo(param1[_loc4_].x * this.§`!J§,param1[_loc4_].y * this.§`!J§);
            _loc4_++;
         }
         this.§97§.graphics.lineTo(param1[0].x * this.§`!J§,param1[0].y * this.§`!J§);
      }
      
      public function §2!g§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§97§.graphics.lineStyle(this.§5!T§,param3.color,this.§@!7§);
         this.§97§.graphics.moveTo(param1[0].x * this.§`!J§,param1[0].y * this.§`!J§);
         this.§97§.graphics.beginFill(param3.color,this.§!!$§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§97§.graphics.lineTo(param1[_loc4_].x * this.§`!J§,param1[_loc4_].y * this.§`!J§);
            _loc4_++;
         }
         this.§97§.graphics.lineTo(param1[0].x * this.§`!J§,param1[0].y * this.§`!J§);
         this.§97§.graphics.endFill();
      }
      
      public function §%!c§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§97§.graphics.lineStyle(this.§5!T§,param3.color,this.§@!7§);
         this.§97§.graphics.drawCircle(param1.x * this.§`!J§,param1.y * this.§`!J§,param2 * this.§`!J§);
      }
      
      public function §+"2§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§97§.graphics.lineStyle(this.§5!T§,param4.color,this.§@!7§);
         this.§97§.graphics.moveTo(0,0);
         this.§97§.graphics.beginFill(param4.color,this.§!!$§);
         this.§97§.graphics.drawCircle(param1.x * this.§`!J§,param1.y * this.§`!J§,param2 * this.§`!J§);
         this.§97§.graphics.endFill();
         this.§97§.graphics.moveTo(param1.x * this.§`!J§,param1.y * this.§`!J§);
         this.§97§.graphics.lineTo((param1.x + param3.x * param2) * this.§`!J§,(param1.y + param3.y * param2) * this.§`!J§);
      }
      
      public function §[!d§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§97§.graphics.lineStyle(this.§5!T§,param3.color,this.§@!7§);
         this.§97§.graphics.moveTo(param1.x * this.§`!J§,param1.y * this.§`!J§);
         this.§97§.graphics.lineTo(param2.x * this.§`!J§,param2.y * this.§`!J§);
      }
      
      public function §6y§(param1:b2Transform) : void
      {
         this.§97§.graphics.lineStyle(this.§5!T§,16711680,this.§@!7§);
         this.§97§.graphics.moveTo(param1.position.x * this.§`!J§,param1.position.y * this.§`!J§);
         this.§97§.graphics.lineTo((param1.position.x + this.§@";§ * param1.R.col1.x) * this.§`!J§,(param1.position.y + this.§@";§ * param1.R.col1.y) * this.§`!J§);
         this.§97§.graphics.lineStyle(this.§5!T§,65280,this.§@!7§);
         this.§97§.graphics.moveTo(param1.position.x * this.§`!J§,param1.position.y * this.§`!J§);
         this.§97§.graphics.lineTo((param1.position.x + this.§@";§ * param1.R.col2.x) * this.§`!J§,(param1.position.y + this.§@";§ * param1.R.col2.y) * this.§`!J§);
      }
   }
}
