package §0"!§
{
   import §'!_§.b2Color;
   import §'!_§.b2internal;
   import §@!E§.b2Transform;
   import §@!E§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §5!j§:uint = 1;
      
      public static var §7!8§:uint = 2;
      
      public static var §;"-§:uint = 4;
      
      public static var §9§:uint = 8;
      
      public static var §&!C§:uint = 16;
      
      public static var §6o§:uint = 32;
       
      
      private var §^b§:uint;
      
      b2internal var §@! §:Sprite;
      
      private var §]!C§:Number = 1.0;
      
      private var §@!<§:Number = 1.0;
      
      private var §5J§:Number = 1.0;
      
      private var §&?§:Number = 1.0;
      
      private var §!J§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§^b§ = 0;
      }
      
      public function §throw§(param1:uint) : void
      {
         this.§^b§ = param1;
      }
      
      public function §`!?§() : uint
      {
         return this.§^b§;
      }
      
      public function §>K§(param1:uint) : void
      {
         this.§^b§ |= param1;
      }
      
      public function §4!]§(param1:uint) : void
      {
         this.§^b§ &= ~param1;
      }
      
      public function § "5§(param1:Sprite) : void
      {
         this.§@! § = param1;
      }
      
      public function §<Z§() : Sprite
      {
         return this.§@! §;
      }
      
      public function §#"§(param1:Number) : void
      {
         this.§]!C§ = param1;
      }
      
      public function §3Z§() : Number
      {
         return this.§]!C§;
      }
      
      public function §0!s§(param1:Number) : void
      {
         this.§@!<§ = param1;
      }
      
      public function §-"6§() : Number
      {
         return this.§@!<§;
      }
      
      public function §4"§(param1:Number) : void
      {
         this.§5J§ = param1;
      }
      
      public function §""!§() : Number
      {
         return this.§5J§;
      }
      
      public function §;!_§(param1:Number) : void
      {
         this.§&?§ = param1;
      }
      
      public function §+!Q§() : Number
      {
         return this.§&?§;
      }
      
      public function §'!w§(param1:Number) : void
      {
         this.§!J§ = param1;
      }
      
      public function §#o§() : Number
      {
         return this.§!J§;
      }
      
      public function §&!,§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§@! §.graphics.lineStyle(this.§@!<§,param3.color,this.§5J§);
         this.§@! §.graphics.moveTo(param1[0].x * this.§]!C§,param1[0].y * this.§]!C§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§@! §.graphics.lineTo(param1[_loc4_].x * this.§]!C§,param1[_loc4_].y * this.§]!C§);
            _loc4_++;
         }
         this.§@! §.graphics.lineTo(param1[0].x * this.§]!C§,param1[0].y * this.§]!C§);
      }
      
      public function §,X§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§@! §.graphics.lineStyle(this.§@!<§,param3.color,this.§5J§);
         this.§@! §.graphics.moveTo(param1[0].x * this.§]!C§,param1[0].y * this.§]!C§);
         this.§@! §.graphics.beginFill(param3.color,this.§&?§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§@! §.graphics.lineTo(param1[_loc4_].x * this.§]!C§,param1[_loc4_].y * this.§]!C§);
            _loc4_++;
         }
         this.§@! §.graphics.lineTo(param1[0].x * this.§]!C§,param1[0].y * this.§]!C§);
         this.§@! §.graphics.endFill();
      }
      
      public function §5!"§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§@! §.graphics.lineStyle(this.§@!<§,param3.color,this.§5J§);
         this.§@! §.graphics.drawCircle(param1.x * this.§]!C§,param1.y * this.§]!C§,param2 * this.§]!C§);
      }
      
      public function §7H§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§@! §.graphics.lineStyle(this.§@!<§,param4.color,this.§5J§);
         this.§@! §.graphics.moveTo(0,0);
         this.§@! §.graphics.beginFill(param4.color,this.§&?§);
         this.§@! §.graphics.drawCircle(param1.x * this.§]!C§,param1.y * this.§]!C§,param2 * this.§]!C§);
         this.§@! §.graphics.endFill();
         this.§@! §.graphics.moveTo(param1.x * this.§]!C§,param1.y * this.§]!C§);
         this.§@! §.graphics.lineTo((param1.x + param3.x * param2) * this.§]!C§,(param1.y + param3.y * param2) * this.§]!C§);
      }
      
      public function §9!U§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§@! §.graphics.lineStyle(this.§@!<§,param3.color,this.§5J§);
         this.§@! §.graphics.moveTo(param1.x * this.§]!C§,param1.y * this.§]!C§);
         this.§@! §.graphics.lineTo(param2.x * this.§]!C§,param2.y * this.§]!C§);
      }
      
      public function §^c§(param1:b2Transform) : void
      {
         this.§@! §.graphics.lineStyle(this.§@!<§,16711680,this.§5J§);
         this.§@! §.graphics.moveTo(param1.position.x * this.§]!C§,param1.position.y * this.§]!C§);
         this.§@! §.graphics.lineTo((param1.position.x + this.§!J§ * param1.R.col1.x) * this.§]!C§,(param1.position.y + this.§!J§ * param1.R.col1.y) * this.§]!C§);
         this.§@! §.graphics.lineStyle(this.§@!<§,65280,this.§5J§);
         this.§@! §.graphics.moveTo(param1.position.x * this.§]!C§,param1.position.y * this.§]!C§);
         this.§@! §.graphics.lineTo((param1.position.x + this.§!J§ * param1.R.col2.x) * this.§]!C§,(param1.position.y + this.§!J§ * param1.R.col2.y) * this.§]!C§);
      }
   }
}
