package §#I§
{
   import §&H§.b2Transform;
   import §&H§.b2Vec2;
   import §@!3§.b2Color;
   import §@!3§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §6!t§:uint = 1;
      
      public static var §5!?§:uint = 2;
      
      public static var §]U§:uint = 4;
      
      public static var §0Y§:uint = 8;
      
      public static var §]c§:uint = 16;
      
      public static var §9,§:uint = 32;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || b2DebugDraw)
         {
            §6!t§ = 1;
            loop0:
            while(true)
            {
               §5!?§ = 2;
               while(true)
               {
                  §]U§ = 4;
                  loop2:
                  while(true)
                  {
                     §0Y§ = 8;
                     while(_loc2_)
                     {
                        §]c§ = 16;
                        while(_loc2_)
                        {
                           if(!_loc1_)
                           {
                              continue;
                           }
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
                  addr50:
                  if(_loc2_)
                  {
                     return;
                     addr62:
                  }
               }
            }
         }
         while(true)
         {
            §9,§ = 32;
            if(_loc2_ || b2DebugDraw)
            {
               §§goto(addr50);
            }
            §§goto(addr67);
         }
         §§goto(addr62);
      }
      
      private var §+!y§:uint;
      
      b2internal var §^D§:Sprite;
      
      private var §1L§:Number = 1.0;
      
      private var §-!,§:Number = 1.0;
      
      private var §=!@§:Number = 1.0;
      
      private var §6!&§:Number = 1.0;
      
      private var §'#§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
            do
            {
               this.§+!y§ = 0;
            }
            while(_loc1_);
            
         }
      }
      
      public function §[+§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§+!y§ = param1;
         }
      }
      
      public function §!!^§() : uint
      {
         return this.§+!y§;
      }
      
      public function § true§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§+!y§ |= param1;
         }
      }
      
      public function §8B§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+!y§ &= ~param1;
         }
      }
      
      public function §[!B§(param1:Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§^D§ = param1;
         }
      }
      
      public function §^!w§() : Sprite
      {
         return this.§^D§;
      }
      
      public function §=!_§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1L§ = param1;
         }
      }
      
      public function §5y§() : Number
      {
         return this.§1L§;
      }
      
      public function §[b§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§-!,§ = param1;
         }
      }
      
      public function §?!9§() : Number
      {
         return this.§-!,§;
      }
      
      public function §6!N§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§=!@§ = param1;
         }
      }
      
      public function §'L§() : Number
      {
         return this.§=!@§;
      }
      
      public function §8!4§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§6!&§ = param1;
         }
      }
      
      public function §=;§() : Number
      {
         return this.§6!&§;
      }
      
      public function §^!D§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§'#§ = param1;
         }
      }
      
      public function §1!u§() : Number
      {
         return this.§'#§;
      }
      
      public function §6!s§(param1:Array, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§^D§.graphics.lineStyle(this.§-!,§,param3.color,this.§=!@§);
            if(!_loc6_)
            {
               this.§^D§.graphics.moveTo(param1[0].x * this.§1L§,param1[0].y * this.§1L§);
            }
         }
         var _loc4_:int = 1;
         while(true)
         {
            if(_loc4_ >= param2)
            {
               if(_loc5_ || param3)
               {
                  if(!(_loc5_ || this))
                  {
                     continue;
                  }
                  if(!_loc6_)
                  {
                     this.§^D§.graphics.lineTo(param1[0].x * this.§1L§,param1[0].y * this.§1L§);
                     break;
                  }
                  _loc4_++;
                  continue;
                  addr137:
               }
               break;
            }
            this.§^D§.graphics.lineTo(param1[_loc4_].x * this.§1L§,param1[_loc4_].y * this.§1L§);
            §§goto(addr137);
         }
      }
      
      public function §#b§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            this.§^D§.graphics.lineStyle(this.§-!,§,param3.color,this.§=!@§);
         }
         while(true)
         {
            while(true)
            {
               this.§^D§.graphics.moveTo(param1[0].x * this.§1L§,param1[0].y * this.§1L§);
               do
               {
                  this.§^D§.graphics.beginFill(param3.color,this.§6!&§);
               }
               while(_loc6_ && this);
               
               if(!_loc6_)
               {
                  if(true)
                  {
                     var _loc4_:int = 1;
                     loop3:
                     while(true)
                     {
                        if(_loc4_ >= param2)
                        {
                           if(_loc5_)
                           {
                              this.§^D§.graphics.lineTo(param1[0].x * this.§1L§,param1[0].y * this.§1L§);
                           }
                           while(!(_loc6_ && param3))
                           {
                              this.§^D§.graphics.endFill();
                              if(!(_loc5_ || this))
                              {
                                 continue;
                              }
                              if(!(_loc6_ && param2))
                              {
                                 break loop3;
                              }
                              _loc4_++;
                              break;
                              addr177:
                           }
                           continue;
                        }
                        this.§^D§.graphics.lineTo(param1[_loc4_].x * this.§1L§,param1[_loc4_].y * this.§1L§);
                        §§goto(addr177);
                     }
                  }
                  continue;
                  return;
               }
               break;
            }
         }
      }
      
      public function §,k§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            this.§^D§.graphics.lineStyle(this.§-!,§,param3.color,this.§=!@§);
         }
         do
         {
            this.§^D§.graphics.drawCircle(param1.x * this.§1L§,param1.y * this.§1L§,param2 * this.§1L§);
         }
         while(_loc5_);
         
      }
      
      public function § !z§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            this.§^D§.graphics.lineStyle(this.§-!,§,param4.color,this.§=!@§);
            while(true)
            {
               this.§^D§.graphics.moveTo(0,0);
               addr160:
               while(true)
               {
                  this.§^D§.graphics.beginFill(param4.color,this.§6!&§);
                  addr69:
                  if(!(_loc6_ && param3))
                  {
                     return;
                     addr86:
                  }
               }
               addr130:
               if(!_loc5_)
               {
                  continue;
               }
               this.§^D§.graphics.endFill();
               do
               {
                  this.§^D§.graphics.moveTo(param1.x * this.§1L§,param1.y * this.§1L§);
                  do
                  {
                     this.§^D§.graphics.lineTo((param1.x + param3.x * param2) * this.§1L§,(param1.y + param3.y * param2) * this.§1L§);
                  }
                  while(!(_loc5_ || param2));
                  
               }
               while(_loc6_);
               
               if(_loc5_ || param2)
               {
                  §§goto(addr69);
               }
               loop3:
               while(true)
               {
                  if(_loc5_)
                  {
                     §§goto(addr130);
                  }
                  else
                  {
                     while(true)
                     {
                        this.§^D§.graphics.drawCircle(param1.x * this.§1L§,param1.y * this.§1L§,param2 * this.§1L§);
                        continue loop3;
                     }
                     §§goto(addr86);
                     addr152:
                  }
               }
               addr142:
               §§goto(addr160);
            }
         }
         §§goto(addr152);
      }
      
      public function §-!E§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            this.§^D§.graphics.lineStyle(this.§-!,§,param3.color,this.§=!@§);
         }
         while(true)
         {
            this.§^D§.graphics.moveTo(param1.x * this.§1L§,param1.y * this.§1L§);
            while(!_loc5_)
            {
               this.§^D§.graphics.lineTo(param2.x * this.§1L§,param2.y * this.§1L§);
               if(!(_loc5_ && param2))
               {
                  return;
               }
            }
         }
      }
      
      public function §+6§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^D§.graphics.lineStyle(this.§-!,§,16711680,this.§=!@§);
         }
         loop0:
         while(true)
         {
            this.§^D§.graphics.moveTo(param1.position.x * this.§1L§,param1.position.y * this.§1L§);
            loop1:
            while(true)
            {
               this.§^D§.graphics.lineTo((param1.position.x + this.§'#§ * param1.R.col1.x) * this.§1L§,(param1.position.y + this.§'#§ * param1.R.col1.y) * this.§1L§);
               while(true)
               {
                  this.§^D§.graphics.lineStyle(this.§-!,§,65280,this.§=!@§);
                  while(_loc3_ || _loc3_)
                  {
                     this.§^D§.graphics.moveTo(param1.position.x * this.§1L§,param1.position.y * this.§1L§);
                     while(_loc3_ || _loc3_)
                     {
                        if(_loc3_)
                        {
                           this.§^D§.graphics.lineTo((param1.position.x + this.§'#§ * param1.R.col2.x) * this.§1L§,(param1.position.y + this.§'#§ * param1.R.col2.y) * this.§1L§);
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           continue;
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
   }
}
