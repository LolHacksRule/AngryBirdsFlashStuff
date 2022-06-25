package §]=§
{
   import §&L§.b2Transform;
   import §&L§.b2Vec2;
   import §+!,§.b2Color;
   import §+!,§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §>!>§:uint = 1;
      
      public static var §^!c§:uint = 2;
      
      public static var §+o§:uint = 4;
      
      public static var §<C§:uint = 8;
      
      public static var §`8§:uint = 16;
      
      public static var § y§:uint = 32;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §>!>§ = 1;
            while(true)
            {
               §^!c§ = 2;
               addr81:
               while(!_loc1_)
               {
                  §+o§ = 4;
               }
            }
         }
         loop2:
         while(true)
         {
            §<C§ = 8;
            while(true)
            {
               §`8§ = 16;
               while(_loc2_ || b2DebugDraw)
               {
                  § y§ = 32;
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
      
      private var §,!,§:uint;
      
      b2internal var §21§:Sprite;
      
      private var §`S§:Number = 1.0;
      
      private var §,8§:Number = 1.0;
      
      private var §'$§:Number = 1.0;
      
      private var §,!;§:Number = 1.0;
      
      private var §!!V§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
            do
            {
               this.§,!,§ = 0;
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      public function §^§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§,!,§ = param1;
         }
      }
      
      public function §throw§() : uint
      {
         return this.§,!,§;
      }
      
      public function §1;§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§,!,§ |= param1;
         }
      }
      
      public function §?[§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§,!,§ &= ~param1;
         }
      }
      
      public function §2@§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§21§ = param1;
         }
      }
      
      public function §-!3§() : Sprite
      {
         return this.§21§;
      }
      
      public function §!x§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§`S§ = param1;
         }
      }
      
      public function §&[§() : Number
      {
         return this.§`S§;
      }
      
      public function §7!#§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§,8§ = param1;
         }
      }
      
      public function §,!Y§() : Number
      {
         return this.§,8§;
      }
      
      public function §^!V§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§'$§ = param1;
         }
      }
      
      public function §'f§() : Number
      {
         return this.§'$§;
      }
      
      public function §;!%§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§,!;§ = param1;
         }
      }
      
      public function §`W§() : Number
      {
         return this.§,!;§;
      }
      
      public function §6!3§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§!!V§ = param1;
         }
      }
      
      public function §%-§() : Number
      {
         return this.§!!V§;
      }
      
      public function §[!^§(param1:Array, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            this.§21§.graphics.lineStyle(this.§,8§,param3.color,this.§'$§);
            if(_loc5_ || param2)
            {
               this.§21§.graphics.moveTo(param1[0].x * this.§`S§,param1[0].y * this.§`S§);
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
                           this.§21§.graphics.lineTo(param1[0].x * this.§`S§,param1[0].y * this.§`S§);
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
                     this.§21§.graphics.lineTo(param1[_loc4_].x * this.§`S§,param1[_loc4_].y * this.§`S§);
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
      
      public function §1@§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            this.§21§.graphics.lineStyle(this.§,8§,param3.color,this.§'$§);
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§21§.graphics.moveTo(param1[0].x * this.§`S§,param1[0].y * this.§`S§);
                  do
                  {
                     this.§21§.graphics.beginFill(param3.color,this.§,!;§);
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
                                          this.§21§.graphics.lineTo(param1[0].x * this.§`S§,param1[0].y * this.§`S§);
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
                                       this.§21§.graphics.endFill();
                                    }
                                    while(!_loc5_);
                                    
                                    if(!(_loc6_ && param3))
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 this.§21§.graphics.lineTo(param1[_loc4_].x * this.§`S§,param1[_loc4_].y * this.§`S§);
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
      
      public function §97§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            this.§21§.graphics.lineStyle(this.§,8§,param3.color,this.§'$§);
         }
         do
         {
            this.§21§.graphics.drawCircle(param1.x * this.§`S§,param1.y * this.§`S§,param2 * this.§`S§);
         }
         while(_loc4_ && this);
         
      }
      
      public function §[a§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§21§.graphics.lineStyle(this.§,8§,param4.color,this.§'$§);
         }
         loop0:
         while(true)
         {
            this.§21§.graphics.moveTo(0,0);
            while(true)
            {
               this.§21§.graphics.beginFill(param4.color,this.§,!;§);
               while(_loc6_)
               {
                  if(_loc6_)
                  {
                     this.§21§.graphics.drawCircle(param1.x * this.§`S§,param1.y * this.§`S§,param2 * this.§`S§);
                     while(_loc6_)
                     {
                        this.§21§.graphics.endFill();
                        do
                        {
                           this.§21§.graphics.moveTo(param1.x * this.§`S§,param1.y * this.§`S§);
                           do
                           {
                              this.§21§.graphics.lineTo((param1.x + param3.x * param2) * this.§`S§,(param1.y + param3.y * param2) * this.§`S§);
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
      
      public function §^p§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§21§.graphics.lineStyle(this.§,8§,param3.color,this.§'$§);
            while(true)
            {
               this.§21§.graphics.moveTo(param1.x * this.§`S§,param1.y * this.§`S§);
               while(!_loc4_)
               {
                  this.§21§.graphics.lineTo(param2.x * this.§`S§,param2.y * this.§`S§);
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
      
      public function §#!^§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§21§.graphics.lineStyle(this.§,8§,16711680,this.§'$§);
         }
         loop0:
         while(true)
         {
            this.§21§.graphics.moveTo(param1.position.x * this.§`S§,param1.position.y * this.§`S§);
            addr187:
            while(true)
            {
               this.§21§.graphics.lineTo((param1.position.x + this.§!!V§ * param1.R.col1.x) * this.§`S§,(param1.position.y + this.§!!V§ * param1.R.col1.y) * this.§`S§);
               do
               {
                  this.§21§.graphics.lineStyle(this.§,8§,65280,this.§'$§);
                  continue loop0;
               }
               while(!_loc2_);
               
               return;
            }
         }
      }
   }
}
