package §=9§
{
   import §-!G§.b2Transform;
   import §-!G§.b2Vec2;
   import §7"'§.b2Color;
   import §7"'§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §=F§:uint = 1;
      
      public static var §^!-§:uint = 2;
      
      public static var §6a§:uint = 4;
      
      public static var §7!3§:uint = 8;
      
      public static var §6c§:uint = 16;
      
      public static var §`!6§:uint = 32;
       
      
      private var §-!<§:uint;
      
      b2internal var §9!j§:Sprite;
      
      private var §2!0§:Number = 1.0;
      
      private var §7!,§:Number = 1.0;
      
      private var §'F§:Number = 1.0;
      
      private var §,p§:Number = 1.0;
      
      private var § a§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§-!<§ = 0;
      }
      
      public function §0!-§(param1:uint) : void
      {
         this.§-!<§ = param1;
      }
      
      public function §5S§() : uint
      {
         return this.§-!<§;
      }
      
      public function §7Q§(param1:uint) : void
      {
         this.§-!<§ |= param1;
      }
      
      public function §8!t§(param1:uint) : void
      {
         this.§-!<§ &= ~param1;
      }
      
      public function §2u§(param1:Sprite) : void
      {
         this.§9!j§ = param1;
      }
      
      public function §!J§() : Sprite
      {
         return this.§9!j§;
      }
      
      public function §8M§(param1:Number) : void
      {
         this.§2!0§ = param1;
      }
      
      public function §,t§() : Number
      {
         return this.§2!0§;
      }
      
      public function §?!V§(param1:Number) : void
      {
         this.§7!,§ = param1;
      }
      
      public function §2C§() : Number
      {
         return this.§7!,§;
      }
      
      public function §[!N§(param1:Number) : void
      {
         this.§'F§ = param1;
      }
      
      public function §&>§() : Number
      {
         return this.§'F§;
      }
      
      public function §3!W§(param1:Number) : void
      {
         this.§,p§ = param1;
      }
      
      public function §3!&§() : Number
      {
         return this.§,p§;
      }
      
      public function §[!K§(param1:Number) : void
      {
         this.§ a§ = param1;
      }
      
      public function § [§() : Number
      {
         return this.§ a§;
      }
      
      public function §3=§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§9!j§.graphics.lineStyle(this.§7!,§,param3.color,this.§'F§);
         this.§9!j§.graphics.moveTo(param1[0].x * this.§2!0§,param1[0].y * this.§2!0§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§9!j§.graphics.lineTo(param1[_loc4_].x * this.§2!0§,param1[_loc4_].y * this.§2!0§);
            _loc4_++;
         }
         this.§9!j§.graphics.lineTo(param1[0].x * this.§2!0§,param1[0].y * this.§2!0§);
      }
      
      public function §3w§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§9!j§.graphics.lineStyle(this.§7!,§,param3.color,this.§'F§);
         this.§9!j§.graphics.moveTo(param1[0].x * this.§2!0§,param1[0].y * this.§2!0§);
         this.§9!j§.graphics.beginFill(param3.color,this.§,p§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§9!j§.graphics.lineTo(param1[_loc4_].x * this.§2!0§,param1[_loc4_].y * this.§2!0§);
            _loc4_++;
         }
         this.§9!j§.graphics.lineTo(param1[0].x * this.§2!0§,param1[0].y * this.§2!0§);
         this.§9!j§.graphics.endFill();
      }
      
      public function §6s§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§9!j§.graphics.lineStyle(this.§7!,§,param3.color,this.§'F§);
         this.§9!j§.graphics.drawCircle(param1.x * this.§2!0§,param1.y * this.§2!0§,param2 * this.§2!0§);
      }
      
      public function §<"5§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§9!j§.graphics.lineStyle(this.§7!,§,param4.color,this.§'F§);
         this.§9!j§.graphics.moveTo(0,0);
         this.§9!j§.graphics.beginFill(param4.color,this.§,p§);
         this.§9!j§.graphics.drawCircle(param1.x * this.§2!0§,param1.y * this.§2!0§,param2 * this.§2!0§);
         this.§9!j§.graphics.endFill();
         this.§9!j§.graphics.moveTo(param1.x * this.§2!0§,param1.y * this.§2!0§);
         this.§9!j§.graphics.lineTo((param1.x + param3.x * param2) * this.§2!0§,(param1.y + param3.y * param2) * this.§2!0§);
      }
      
      public function §#!0§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§9!j§.graphics.lineStyle(this.§7!,§,param3.color,this.§'F§);
         this.§9!j§.graphics.moveTo(param1.x * this.§2!0§,param1.y * this.§2!0§);
         this.§9!j§.graphics.lineTo(param2.x * this.§2!0§,param2.y * this.§2!0§);
      }
      
      public function §#!W§(param1:b2Transform) : void
      {
         this.§9!j§.graphics.lineStyle(this.§7!,§,16711680,this.§'F§);
         this.§9!j§.graphics.moveTo(param1.position.x * this.§2!0§,param1.position.y * this.§2!0§);
         this.§9!j§.graphics.lineTo((param1.position.x + this.§ a§ * param1.R.col1.x) * this.§2!0§,(param1.position.y + this.§ a§ * param1.R.col1.y) * this.§2!0§);
         this.§9!j§.graphics.lineStyle(this.§7!,§,65280,this.§'F§);
         this.§9!j§.graphics.moveTo(param1.position.x * this.§2!0§,param1.position.y * this.§2!0§);
         this.§9!j§.graphics.lineTo((param1.position.x + this.§ a§ * param1.R.col2.x) * this.§2!0§,(param1.position.y + this.§ a§ * param1.R.col2.y) * this.§2!0§);
      }
   }
}
