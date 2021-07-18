package § !t§
{
   import §<!B§.b2Transform;
   import §<!B§.b2Vec2;
   import §?s§.b2Color;
   import §?s§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §=v§:uint = 1;
      
      public static var §"#§:uint = 2;
      
      public static var §,!5§:uint = 4;
      
      public static var §5!@§:uint = 8;
      
      public static var §8m§:uint = 16;
      
      public static var §55§:uint = 32;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §=v§ = 1;
            §"#§ = 2;
         }
         if(!(_loc1_ && b2DebugDraw))
         {
            §5!@§ = 8;
            if(_loc2_ || _loc1_)
            {
               §8m§ = 16;
               if(_loc2_ || _loc2_)
               {
                  addr80:
                  §55§ = 32;
               }
            }
            return;
         }
         §§goto(addr80);
      }
      
      private var §@z§:uint;
      
      b2internal var §9!D§:Sprite;
      
      private var §5!N§:Number = 1.0;
      
      private var §5d§:Number = 1.0;
      
      private var §,I§:Number = 1.0;
      
      private var §'!C§:Number = 1.0;
      
      private var §-y§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
            if(!(_loc2_ && _loc1_))
            {
               this.§@z§ = 0;
            }
         }
      }
      
      public function §9!3§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§@z§ = param1;
         }
      }
      
      public function §>!&§() : uint
      {
         return this.§@z§;
      }
      
      public function §[!4§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§@z§ |= param1;
         }
      }
      
      public function §@n§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§@z§ &= ~param1;
         }
      }
      
      public function §"!W§(param1:Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§9!D§ = param1;
         }
      }
      
      public function §+!q§() : Sprite
      {
         return this.§9!D§;
      }
      
      public function §?!5§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§5!N§ = param1;
         }
      }
      
      public function §#!b§() : Number
      {
         return this.§5!N§;
      }
      
      public function §0!9§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§5d§ = param1;
         }
      }
      
      public function §+!W§() : Number
      {
         return this.§5d§;
      }
      
      public function §@! §(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§,I§ = param1;
         }
      }
      
      public function §2!8§() : Number
      {
         return this.§,I§;
      }
      
      public function §0!,§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§'!C§ = param1;
         }
      }
      
      public function §6O§() : Number
      {
         return this.§'!C§;
      }
      
      public function §]!U§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§-y§ = param1;
         }
      }
      
      public function §case§() : Number
      {
         return this.§-y§;
      }
      
      public function §<F§(param1:Array, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§9!D§.graphics.lineStyle(this.§5d§,param3.color,this.§,I§);
            if(_loc6_ || param2)
            {
               this.§9!D§.graphics.moveTo(param1[0].x * this.§5!N§,param1[0].y * this.§5!N§);
            }
         }
         var _loc4_:int = 1;
         while(true)
         {
            if(_loc4_ >= param2)
            {
               if(_loc6_)
               {
                  break;
               }
               §§goto(addr129);
            }
            this.§9!D§.graphics.lineTo(param1[_loc4_].x * this.§5!N§,param1[_loc4_].y * this.§5!N§);
            if(!_loc6_)
            {
               break;
            }
            _loc4_++;
            if(_loc6_ || this)
            {
               continue;
            }
            §§goto(addr129);
         }
         this.§9!D§.graphics.lineTo(param1[0].x * this.§5!N§,param1[0].y * this.§5!N§);
         addr129:
      }
      
      public function §`B§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            this.§9!D§.graphics.lineStyle(this.§5d§,param3.color,this.§,I§);
            if(_loc5_)
            {
               addr35:
               this.§9!D§.graphics.moveTo(param1[0].x * this.§5!N§,param1[0].y * this.§5!N§);
               if(_loc5_ || param2)
               {
                  this.§9!D§.graphics.beginFill(param3.color,this.§'!C§);
               }
            }
            var _loc4_:int = 1;
            while(true)
            {
               if(_loc4_ < param2)
               {
                  this.§9!D§.graphics.lineTo(param1[_loc4_].x * this.§5!N§,param1[_loc4_].y * this.§5!N§);
                  if(_loc6_ && param2)
                  {
                     break;
                  }
                  continue;
               }
               if(!_loc6_)
               {
                  addr130:
                  this.§9!D§.graphics.lineTo(param1[0].x * this.§5!N§,param1[0].y * this.§5!N§);
                  if(_loc5_ || param2)
                  {
                     addr155:
                     this.§9!D§.graphics.endFill();
                     break;
                  }
                  break;
               }
               §§goto(addr155);
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function §+e§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§9!D§.graphics.lineStyle(this.§5d§,param3.color,this.§,I§);
            if(_loc4_ || param2)
            {
               this.§9!D§.graphics.drawCircle(param1.x * this.§5!N§,param1.y * this.§5!N§,param2 * this.§5!N§);
            }
         }
      }
      
      public function §%!u§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         this.§9!D§.graphics.lineStyle(this.§5d§,param4.color,this.§,I§);
         this.§9!D§.graphics.moveTo(0,0);
         if(_loc6_)
         {
            this.§9!D§.graphics.beginFill(param4.color,this.§'!C§);
            if(!(_loc5_ && param2))
            {
               this.§9!D§.graphics.drawCircle(param1.x * this.§5!N§,param1.y * this.§5!N§,param2 * this.§5!N§);
               if(!(_loc5_ && param2))
               {
                  this.§9!D§.graphics.endFill();
                  if(_loc5_)
                  {
                  }
                  addr117:
                  this.§9!D§.graphics.lineTo((param1.x + param3.x * param2) * this.§5!N§,(param1.y + param3.y * param2) * this.§5!N§);
                  §§goto(addr141);
               }
               this.§9!D§.graphics.moveTo(param1.x * this.§5!N§,param1.y * this.§5!N§);
               if(_loc5_)
               {
               }
               addr141:
               return;
            }
         }
         §§goto(addr117);
      }
      
      public function §=b§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§9!D§.graphics.lineStyle(this.§5d§,param3.color,this.§,I§);
            if(!_loc4_)
            {
               this.§9!D§.graphics.moveTo(param1.x * this.§5!N§,param1.y * this.§5!N§);
               addr41:
               if(!_loc4_)
               {
                  this.§9!D§.graphics.lineTo(param2.x * this.§5!N§,param2.y * this.§5!N§);
               }
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function §]!M§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.§9!D§.graphics.lineStyle(this.§5d§,16711680,this.§,I§);
         if(!(_loc3_ && _loc3_))
         {
            this.§9!D§.graphics.moveTo(param1.position.x * this.§5!N§,param1.position.y * this.§5!N§);
            if(_loc2_)
            {
               this.§9!D§.graphics.lineTo((param1.position.x + this.§-y§ * param1.R.col1.x) * this.§5!N§,(param1.position.y + this.§-y§ * param1.R.col1.y) * this.§5!N§);
               §§goto(addr50);
            }
            §§goto(addr99);
         }
         addr50:
         if(!(_loc3_ && this))
         {
            addr99:
            this.§9!D§.graphics.lineStyle(this.§5d§,65280,this.§,I§);
            if(_loc2_ || _loc3_)
            {
               this.§9!D§.graphics.moveTo(param1.position.x * this.§5!N§,param1.position.y * this.§5!N§);
               this.§9!D§.graphics.lineTo((param1.position.x + this.§-y§ * param1.R.col2.x) * this.§5!N§,(param1.position.y + this.§-y§ * param1.R.col2.y) * this.§5!N§);
            }
         }
      }
   }
}
