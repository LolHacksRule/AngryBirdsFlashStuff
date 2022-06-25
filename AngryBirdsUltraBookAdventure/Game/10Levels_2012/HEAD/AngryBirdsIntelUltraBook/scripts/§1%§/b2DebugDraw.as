package §1%§
{
   import §8!H§.b2Color;
   import §8!H§.b2internal;
   import §?!&§.b2Transform;
   import §?!&§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §'!J§:uint = 1;
      
      public static var §#W§:uint = 2;
      
      public static var §!V§:uint = 4;
      
      public static var §',§:uint = 8;
      
      public static var §9!F§:uint = 16;
      
      public static var §,!M§:uint = 32;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'!J§ = 1;
            while(true)
            {
               §#W§ = 2;
               addr81:
               while(!_loc1_)
               {
                  §!V§ = 4;
               }
            }
         }
         loop2:
         while(true)
         {
            §',§ = 8;
            while(true)
            {
               §9!F§ = 16;
               while(_loc2_ || b2DebugDraw)
               {
                  §,!M§ = 32;
                  if(!_loc2_)
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     continue loop2;
                  }
                  if(_loc2_)
                  {
                     break loop2;
                  }
                  §§goto(addr81);
               }
            }
         }
      }
      
      private var §#!k§:uint;
      
      b2internal var § y§:Sprite;
      
      private var §;%§:Number = 1.0;
      
      private var § R§:Number = 1.0;
      
      private var §[s§:Number = 1.0;
      
      private var §#A§:Number = 1.0;
      
      private var §[C§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
            do
            {
               this.§#!k§ = 0;
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      public function §7?§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§#!k§ = param1;
         }
      }
      
      public function §-r§() : uint
      {
         return this.§#!k§;
      }
      
      public function §1!§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§#!k§ |= param1;
         }
      }
      
      public function §]!b§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§#!k§ &= ~param1;
         }
      }
      
      public function §try§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§ y§ = param1;
         }
      }
      
      public function §%!4§() : Sprite
      {
         return this.§ y§;
      }
      
      public function §!4§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§;%§ = param1;
         }
      }
      
      public function §<_§() : Number
      {
         return this.§;%§;
      }
      
      public function §'&§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§ R§ = param1;
         }
      }
      
      public function §^&§() : Number
      {
         return this.§ R§;
      }
      
      public function §]V§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§[s§ = param1;
         }
      }
      
      public function §`!J§() : Number
      {
         return this.§[s§;
      }
      
      public function §24§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§#A§ = param1;
         }
      }
      
      public function §%s§() : Number
      {
         return this.§#A§;
      }
      
      public function §]!W§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§[C§ = param1;
         }
      }
      
      public function §>!K§() : Number
      {
         return this.§[C§;
      }
      
      public function §6]§(param1:Array, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            this.§ y§.graphics.lineStyle(this.§ R§,param3.color,this.§[s§);
            if(_loc5_ || param2)
            {
               this.§ y§.graphics.moveTo(param1[0].x * this.§;%§,param1[0].y * this.§;%§);
            }
         }
         §§push(1);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc6_ && param1))
            {
               if(_loc5_)
               {
                  if(!(_loc6_ && param3))
                  {
                     if(§§pop() >= param2)
                     {
                        if(!_loc6_)
                        {
                           this.§ y§.graphics.lineTo(param1[0].x * this.§;%§,param1[0].y * this.§;%§);
                        }
                        if(_loc5_ || this)
                        {
                           break;
                        }
                        loop1:
                        while(!_loc5_)
                        {
                           while(true)
                           {
                              _loc4_ = §§pop();
                              continue loop1;
                           }
                        }
                        continue;
                     }
                     this.§ y§.graphics.lineTo(param1[_loc4_].x * this.§;%§,param1[_loc4_].y * this.§;%§);
                     while(true)
                     {
                        §§push(_loc4_);
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop() + 1);
                  }
               }
               while(true)
               {
               }
            }
            §§goto(addr143);
         }
      }
      
      public function §[! §(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            this.§ y§.graphics.lineStyle(this.§ R§,param3.color,this.§[s§);
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§ y§.graphics.moveTo(param1[0].x * this.§;%§,param1[0].y * this.§;%§);
                  do
                  {
                     this.§ y§.graphics.beginFill(param3.color,this.§#A§);
                  }
                  while(!_loc5_);
                  
                  if(_loc5_ || param1)
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     §§push(1);
                     if(_loc5_)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc4_:* = §§pop();
                     while(true)
                     {
                        §§push(_loc4_);
                        if(!(_loc6_ && param2))
                        {
                           if(!_loc6_)
                           {
                              if(_loc5_ || param3)
                              {
                                 if(§§pop() >= param2)
                                 {
                                    if(!_loc6_)
                                    {
                                       if(!(_loc6_ && this))
                                       {
                                          this.§ y§.graphics.lineTo(param1[0].x * this.§;%§,param1[0].y * this.§;%§);
                                       }
                                       else
                                       {
                                          addr177:
                                          _loc4_++;
                                          addr175:
                                          continue;
                                          addr200:
                                       }
                                    }
                                    do
                                    {
                                       this.§ y§.graphics.endFill();
                                    }
                                    while(!_loc5_);
                                    
                                    if(!(_loc6_ && param3))
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 this.§ y§.graphics.lineTo(param1[_loc4_].x * this.§;%§,param1[_loc4_].y * this.§;%§);
                                 §§goto(addr200);
                              }
                           }
                           §§goto(addr175);
                        }
                        §§goto(addr177);
                     }
                     return;
                     addr43:
                  }
                  break;
               }
            }
         }
         §§goto(addr43);
      }
      
      public function §8[§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            this.§ y§.graphics.lineStyle(this.§ R§,param3.color,this.§[s§);
         }
         do
         {
            this.§ y§.graphics.drawCircle(param1.x * this.§;%§,param1.y * this.§;%§,param2 * this.§;%§);
         }
         while(_loc4_ && this);
         
      }
      
      public function §[5§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§ y§.graphics.lineStyle(this.§ R§,param4.color,this.§[s§);
         }
         loop0:
         while(true)
         {
            this.§ y§.graphics.moveTo(0,0);
            while(true)
            {
               this.§ y§.graphics.beginFill(param4.color,this.§#A§);
               while(_loc6_)
               {
                  if(_loc6_)
                  {
                     this.§ y§.graphics.drawCircle(param1.x * this.§;%§,param1.y * this.§;%§,param2 * this.§;%§);
                     while(_loc6_)
                     {
                        this.§ y§.graphics.endFill();
                        do
                        {
                           this.§ y§.graphics.moveTo(param1.x * this.§;%§,param1.y * this.§;%§);
                           do
                           {
                              this.§ y§.graphics.lineTo((param1.x + param3.x * param2) * this.§;%§,(param1.y + param3.y * param2) * this.§;%§);
                           }
                           while(!_loc6_);
                           
                        }
                        while(!(_loc6_ || param3));
                        
                        if(!_loc5_)
                        {
                           return;
                        }
                     }
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function §0!3§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§ y§.graphics.lineStyle(this.§ R§,param3.color,this.§[s§);
            while(true)
            {
               this.§ y§.graphics.moveTo(param1.x * this.§;%§,param1.y * this.§;%§);
               while(!_loc4_)
               {
                  this.§ y§.graphics.lineTo(param2.x * this.§;%§,param2.y * this.§;%§);
                  if(!(_loc4_ && this))
                  {
                     return;
                     addr57:
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      public function §`!`§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§ y§.graphics.lineStyle(this.§ R§,16711680,this.§[s§);
         }
         loop0:
         while(true)
         {
            this.§ y§.graphics.moveTo(param1.position.x * this.§;%§,param1.position.y * this.§;%§);
            addr187:
            while(true)
            {
               this.§ y§.graphics.lineTo((param1.position.x + this.§[C§ * param1.R.col1.x) * this.§;%§,(param1.position.y + this.§[C§ * param1.R.col1.y) * this.§;%§);
               do
               {
                  this.§ y§.graphics.lineStyle(this.§ R§,65280,this.§[s§);
                  continue loop0;
               }
               while(!_loc2_);
               
               return;
            }
         }
      }
   }
}
