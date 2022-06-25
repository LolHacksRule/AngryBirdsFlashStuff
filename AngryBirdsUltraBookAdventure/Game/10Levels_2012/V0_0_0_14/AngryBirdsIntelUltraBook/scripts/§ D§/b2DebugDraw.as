package § D§
{
   import §8>§.b2Transform;
   import §8>§.b2Vec2;
   import §;u§.b2Color;
   import §;u§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §[b§:uint = 1;
      
      public static var §"g§:uint = 2;
      
      public static var § else§:uint = 4;
      
      public static var §;!#§:uint = 8;
      
      public static var §5x§:uint = 16;
      
      public static var §'§:uint = 32;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §[b§ = 1;
            while(true)
            {
               §"g§ = 2;
               loop1:
               while(true)
               {
                  § else§ = 4;
                  while(true)
                  {
                     §;!#§ = 8;
                     while(_loc1_)
                     {
                        §5x§ = 16;
                        loop4:
                        while(!_loc2_)
                        {
                           while(true)
                           {
                              §'§ = 32;
                              if(!(_loc2_ && b2DebugDraw))
                              {
                                 continue loop1;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
               if(_loc2_ && b2DebugDraw)
               {
                  continue;
               }
               §§goto(addr68);
            }
         }
         §§goto(addr75);
      }
      
      private var §4!;§:uint;
      
      b2internal var §?A§:Sprite;
      
      private var §?!X§:Number = 1.0;
      
      private var §>!4§:Number = 1.0;
      
      private var §[!F§:Number = 1.0;
      
      private var §&s§:Number = 1.0;
      
      private var §!^§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
         do
         {
            this.§4!;§ = 0;
         }
         while(_loc2_ && this);
         
      }
      
      public function §]!>§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§4!;§ = param1;
         }
      }
      
      public function §-Q§() : uint
      {
         return this.§4!;§;
      }
      
      public function §6!%§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4!;§ |= param1;
         }
      }
      
      public function § !Z§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4!;§ &= ~param1;
         }
      }
      
      public function §90§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§?A§ = param1;
         }
      }
      
      public function §1G§() : Sprite
      {
         return this.§?A§;
      }
      
      public function §>!L§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§?!X§ = param1;
         }
      }
      
      public function §`u§() : Number
      {
         return this.§?!X§;
      }
      
      public function §7!A§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§>!4§ = param1;
         }
      }
      
      public function §<!A§() : Number
      {
         return this.§>!4§;
      }
      
      public function §<!N§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[!F§ = param1;
         }
      }
      
      public function §6G§() : Number
      {
         return this.§[!F§;
      }
      
      public function §;!O§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&s§ = param1;
         }
      }
      
      public function §'I§() : Number
      {
         return this.§&s§;
      }
      
      public function § !;§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!^§ = param1;
         }
      }
      
      public function §'p§() : Number
      {
         return this.§!^§;
      }
      
      public function §<!L§(param1:Array, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            this.§?A§.graphics.lineStyle(this.§>!4§,param3.color,this.§[!F§);
            if(_loc6_ || param2)
            {
               this.§?A§.graphics.moveTo(param1[0].x * this.§?!X§,param1[0].y * this.§?!X§);
               addr41:
            }
            var _loc4_:int = 1;
            while(true)
            {
               if(_loc4_ >= param2)
               {
                  if(_loc6_)
                  {
                     this.§?A§.graphics.lineTo(param1[0].x * this.§?!X§,param1[0].y * this.§?!X§);
                  }
                  if(!(_loc6_ || param2))
                  {
                     continue;
                  }
                  if(_loc6_)
                  {
                     break;
                  }
               }
               else
               {
                  this.§?A§.graphics.lineTo(param1[_loc4_].x * this.§?!X§,param1[_loc4_].y * this.§?!X§);
               }
               _loc4_++;
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function §0!8§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            this.§?A§.graphics.lineStyle(this.§>!4§,param3.color,this.§[!F§);
            loop0:
            while(true)
            {
               addr39:
               while(true)
               {
                  this.§?A§.graphics.moveTo(param1[0].x * this.§?!X§,param1[0].y * this.§?!X§);
                  continue loop0;
               }
            }
            addr79:
         }
         while(true)
         {
            this.§?A§.graphics.beginFill(param3.color,this.§&s§);
            if(!_loc5_)
            {
               continue;
            }
            if(!_loc6_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr79);
            }
            §§goto(addr39);
         }
         var _loc4_:int = 1;
         loop3:
         while(true)
         {
            if(_loc4_ >= param2)
            {
               loop4:
               while(true)
               {
                  this.§?A§.graphics.lineTo(param1[0].x * this.§?!X§,param1[0].y * this.§?!X§);
                  while(!(_loc6_ && param2))
                  {
                     this.§?A§.graphics.endFill();
                     if(!_loc5_)
                     {
                        continue;
                     }
                     if(!(_loc5_ || param1))
                     {
                        continue loop4;
                     }
                     if(!_loc6_)
                     {
                        break loop3;
                     }
                  }
                  continue loop3;
               }
            }
            else
            {
               this.§?A§.graphics.lineTo(param1[_loc4_].x * this.§?!X§,param1[_loc4_].y * this.§?!X§);
            }
            _loc4_++;
         }
      }
      
      public function §<!j§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            this.§?A§.graphics.lineStyle(this.§>!4§,param3.color,this.§[!F§);
         }
         do
         {
            this.§?A§.graphics.drawCircle(param1.x * this.§?!X§,param1.y * this.§?!X§,param2 * this.§?!X§);
         }
         while(_loc4_ && this);
         
      }
      
      public function §1!5§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§?A§.graphics.lineStyle(this.§>!4§,param4.color,this.§[!F§);
            while(true)
            {
               this.§?A§.graphics.moveTo(0,0);
               loop1:
               while(true)
               {
                  this.§?A§.graphics.beginFill(param4.color,this.§&s§);
                  addr138:
                  while(true)
                  {
                     this.§?A§.graphics.drawCircle(param1.x * this.§?!X§,param1.y * this.§?!X§,param2 * this.§?!X§);
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      public function §1!D§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§?A§.graphics.lineStyle(this.§>!4§,param3.color,this.§[!F§);
            while(true)
            {
               this.§?A§.graphics.moveTo(param1.x * this.§?!X§,param1.y * this.§?!X§);
               loop1:
               while(!_loc4_)
               {
                  while(true)
                  {
                     this.§?A§.graphics.lineTo(param2.x * this.§?!X§,param2.y * this.§?!X§);
                     if(!(_loc4_ && this))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr84);
      }
      
      public function §&!2§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§?A§.graphics.lineStyle(this.§>!4§,16711680,this.§[!F§);
            while(true)
            {
               this.§?A§.graphics.moveTo(param1.position.x * this.§?!X§,param1.position.y * this.§?!X§);
            }
            addr187:
         }
         loop1:
         while(true)
         {
            this.§?A§.graphics.lineTo((param1.position.x + this.§!^§ * param1.R.col1.x) * this.§?!X§,(param1.position.y + this.§!^§ * param1.R.col1.y) * this.§?!X§);
            loop2:
            do
            {
               if(!_loc2_)
               {
                  continue loop1;
               }
               this.§?A§.graphics.lineStyle(this.§>!4§,65280,this.§[!F§);
               while(_loc2_)
               {
                  this.§?A§.graphics.moveTo(param1.position.x * this.§?!X§,param1.position.y * this.§?!X§);
                  while(!_loc3_)
                  {
                     this.§?A§.graphics.lineTo((param1.position.x + this.§!^§ * param1.R.col2.x) * this.§?!X§,(param1.position.y + this.§!^§ * param1.R.col2.y) * this.§?!X§);
                     if(!_loc3_)
                     {
                        continue loop2;
                     }
                  }
               }
               §§goto(addr187);
            }
            while(_loc3_ && _loc2_);
            
            return;
         }
      }
   }
}
