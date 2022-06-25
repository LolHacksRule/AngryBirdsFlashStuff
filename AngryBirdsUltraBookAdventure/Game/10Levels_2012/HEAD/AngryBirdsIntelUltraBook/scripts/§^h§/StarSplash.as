package §^h§
{
   import §-!>§.§4!T§;
   import §<!G§.TweenManager;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class StarSplash extends Sprite
   {
      
      public static const STARSPLASH_LEFT:int = 0;
      
      public static const STARSPLASH_CENTER:int = 1;
      
      public static const STARSPLASH_RIGHT:int = 2;
      
      public static const STARSPLASH_BADGE:int = 3;
      
      {
         var STARSPLASH_LEFT:Boolean = true;
         var STARSPLASH_CENTER:Boolean = false;
         if(!STARSPLASH_CENTER)
         {
            loop0:
            while(true)
            {
               STARSPLASH_LEFT = 0;
               while(true)
               {
                  loop2:
                  while(!(STARSPLASH_CENTER && StarSplash))
                  {
                     STARSPLASH_CENTER = 1;
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           STARSPLASH_RIGHT = 2;
                           addr75:
                           while(!STARSPLASH_CENTER)
                           {
                              continue loop3;
                           }
                           continue loop2;
                           addr31:
                           if(!(STARSPLASH_CENTER && StarSplash))
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      private const §"!6§:uint = 40;
      
      private const §][§:Number = 0.3;
      
      private const §^!7§:Number = 25;
      
      private const §@!<§:Number = 10;
      
      private const §2!V§:Number = 9;
      
      private var §2+§:int;
      
      private var §@O§:int;
      
      private var §#!§:Array;
      
      private var §<g§:Array;
      
      private var §&w§:Point;
      
      private var §;§:int;
      
      public function StarSplash(stageWidth:int, stageHeight:int, posX:Number, posY:Number, starPos:int, starCount:int = 40)
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_ || posX)
         {
         }
         var star:§1!T§ = null;
         var absX:Number = NaN;
         var absY:Number = NaN;
         if(_loc13_ || stageHeight)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              while(true)
                              {
                                 super();
                                 loop7:
                                 while(_loc13_)
                                 {
                                    if(!_loc13_)
                                    {
                                       continue loop2;
                                    }
                                    loop8:
                                    while(true)
                                    {
                                       loop9:
                                       for(; _loc13_; loop11:
                                       while(!(_loc14_ && posX))
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             while(_loc13_)
                                             {
                                                loop16:
                                                while(_loc13_ || posX)
                                                {
                                                   if(_loc13_)
                                                   {
                                                      loop17:
                                                      while(true)
                                                      {
                                                         if(!_loc13_)
                                                         {
                                                            continue loop16;
                                                         }
                                                         if(_loc14_)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc14_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         loop18:
                                                         do
                                                         {
                                                            this.§@O§ = stageHeight;
                                                            while(true)
                                                            {
                                                               if(_loc13_)
                                                               {
                                                                  addr52:
                                                                  if(_loc14_ && posX)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!_loc14_)
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  continue;
                                                               }
                                                               continue loop17;
                                                            }
                                                            addr85:
                                                            while(_loc13_)
                                                            {
                                                               continue loop8;
                                                               §§goto(addr52);
                                                            }
                                                            §§goto(addr131);
                                                         }
                                                         while(false);
                                                         
                                                         var scaleMin:Number = Math.min(§4!T§.§=!_§,§4!T§.§`!Y§);
                                                         if(_loc14_ && stageWidth)
                                                         {
                                                         }
                                                         var scaleMax:Number = Math.max(§4!T§.§=!_§,§4!T§.§`!Y§);
                                                         if(!(_loc14_ && stageWidth))
                                                         {
                                                            loop20:
                                                            while(true)
                                                            {
                                                               §§push(posX);
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  §§push(§4!T§.§`!Y§);
                                                                  addr353:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() / §§pop());
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        loop24:
                                                                        while(true)
                                                                        {
                                                                           posX = §§pop();
                                                                           loop25:
                                                                           while(true)
                                                                           {
                                                                              loop26:
                                                                              while(true)
                                                                              {
                                                                                 §§push(posY);
                                                                                 if(!(_loc14_ && posX))
                                                                                 {
                                                                                    if(_loc14_ && posX)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop21;
                                                                                 }
                                                                                 addr335:
                                                                                 if(!(_loc13_ || stageWidth))
                                                                                 {
                                                                                    continue loop24;
                                                                                 }
                                                                                 posY = §§pop();
                                                                                 loop27:
                                                                                 while(true)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       this.§;§ = starPos;
                                                                                       loop29:
                                                                                       while(true)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             this.§&w§ = new Point(posX,posY);
                                                                                             addr292:
                                                                                             while(true)
                                                                                             {
                                                                                                addr275:
                                                                                                while(_loc13_)
                                                                                                {
                                                                                                   continue loop26;
                                                                                                }
                                                                                                continue loop27;
                                                                                             }
                                                                                             addr237:
                                                                                             if(!(_loc13_ || posX))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                continue loop25;
                                                                                             }
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                continue loop20;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                loop36:
                                                                                                do
                                                                                                {
                                                                                                   this.§<g§ = [];
                                                                                                   while(_loc13_)
                                                                                                   {
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         if(_loc13_ || posX)
                                                                                                         {
                                                                                                            addr215:
                                                                                                            if(_loc13_ || stageHeight)
                                                                                                            {
                                                                                                               continue loop36;
                                                                                                            }
                                                                                                            continue loop29;
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§goto(addr275);
                                                                                                   }
                                                                                                   addr235:
                                                                                                   while(!_loc14_)
                                                                                                   {
                                                                                                      §§goto(addr237);
                                                                                                   }
                                                                                                   §§goto(addr292);
                                                                                                }
                                                                                                while(false);
                                                                                                
                                                                                                §§push(0);
                                                                                                if(_loc13_)
                                                                                                {
                                                                                                   §§push(int(§§pop()));
                                                                                                }
                                                                                                var i:* = §§pop();
                                                                                                loop38:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(i >= starCount)
                                                                                                   {
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         if(_loc13_ || stageHeight)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         return;
                                                                                                         addr537:
                                                                                                      }
                                                                                                      do
                                                                                                      {
                                                                                                         this.scaleY = scaleMax;
                                                                                                         while(_loc14_ && stageHeight)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      while(_loc14_ && this);
                                                                                                      
                                                                                                      addr545:
                                                                                                      if(!_loc13_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr545);
                                                                                                         }
                                                                                                         addr549:
                                                                                                      }
                                                                                                      §§goto(addr537);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      if(_loc14_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(§§findproperty(§1!T§));
                                                                                                      §§push(Math.random() * 40);
                                                                                                      if(_loc13_ || stageWidth)
                                                                                                      {
                                                                                                         §§push(§§pop() + 10);
                                                                                                      }
                                                                                                      star = new §§pop().§1!T§(§§pop());
                                                                                                      if(_loc13_)
                                                                                                      {
                                                                                                         loop39:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            star.x = -2000;
                                                                                                            while(true)
                                                                                                            {
                                                                                                               while(!(_loc14_ && this))
                                                                                                               {
                                                                                                                  star.y = -2000;
                                                                                                                  continue loop39;
                                                                                                                  addr445:
                                                                                                                  if(!(_loc13_ || stageWidth))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  this.§#!§[i] = star;
                                                                                                                  loop46:
                                                                                                                  while(!_loc14_)
                                                                                                                  {
                                                                                                                     do
                                                                                                                     {
                                                                                                                        do
                                                                                                                        {
                                                                                                                           §§push(i);
                                                                                                                           if(!(_loc14_ && posX))
                                                                                                                           {
                                                                                                                              §§push(§§pop() + 1);
                                                                                                                              if(!(_loc14_ && posX))
                                                                                                                              {
                                                                                                                                 §§push(int(§§pop()));
                                                                                                                              }
                                                                                                                           }
                                                                                                                           i = §§pop();
                                                                                                                        }
                                                                                                                        while(!_loc13_);
                                                                                                                        
                                                                                                                        if(_loc13_)
                                                                                                                        {
                                                                                                                           addr413:
                                                                                                                           if(!(_loc14_ && stageHeight))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           continue loop39;
                                                                                                                        }
                                                                                                                        continue loop46;
                                                                                                                     }
                                                                                                                     while(false);
                                                                                                                     
                                                                                                                     continue loop38;
                                                                                                                  }
                                                                                                                  loop45:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc14_)
                                                                                                                     {
                                                                                                                        addr438:
                                                                                                                        if(_loc14_ && stageHeight)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§goto(addr445);
                                                                                                                     }
                                                                                                                     addr458:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop45;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.addChild(star);
                                                                                                                     §§goto(addr458);
                                                                                                                     §§goto(addr438);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr458);
                                                                                                   }
                                                                                                }
                                                                                                this.scaleX = scaleMax;
                                                                                                §§goto(addr549);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr235);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop23;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr248);
                                                      }
                                                      continue loop11;
                                                   }
                                                   continue loop12;
                                                }
                                             }
                                             continue loop3;
                                          }
                                       })
                                       {
                                          while(true)
                                          {
                                             continue loop9;
                                          }
                                       }
                                       continue loop0;
                                       if(_loc13_ || posX)
                                       {
                                          if(_loc13_)
                                          {
                                             continue loop4;
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(_loc14_ && stageHeight)
                  {
                     continue;
                  }
                  this.§2+§ = stageWidth;
                  §§goto(addr73);
               }
            }
         }
         while(true)
         {
            §§goto(addr85);
         }
      }
      
      public function clean() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
         }
         var cleanThisStar:§1!T§ = null;
         if(_loc3_ || _loc2_)
         {
         }
         loop0:
         while(true)
         {
            §§push(this.§#!§);
            if(!(_loc2_ && _loc2_))
            {
               while(true)
               {
                  if(§§pop().length <= 0)
                  {
                     addr216:
                     if(!(_loc2_ && this))
                     {
                        addr151:
                        §§push(this.§<g§);
                        break loop0;
                     }
                     this.§#!§ = [];
                     loop10:
                     while(true)
                     {
                        this.§<g§ = [];
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              continue;
                           }
                           continue loop10;
                        }
                     }
                     return;
                     addr212:
                  }
                  if(_loc2_ && cleanThisStar)
                  {
                     break;
                  }
                  §§push(this.§#!§);
                  if(_loc2_)
                  {
                     continue;
                  }
                  cleanThisStar = §§pop().shift();
                  if(_loc3_)
                  {
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           cleanThisStar.clean();
                           while(!_loc3_)
                           {
                           }
                           if(!(_loc3_ || _loc3_))
                           {
                              break;
                              addr68:
                           }
                           while(false)
                           {
                              continue loop3;
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr68);
               }
               addr111:
               §§push(this.§<g§);
               if(!_loc2_)
               {
                  cleanThisStar = §§pop().shift();
                  if(_loc2_ && _loc3_)
                  {
                  }
                  loop7:
                  while(true)
                  {
                     addr137:
                     while(true)
                     {
                        cleanThisStar.clean();
                        continue loop7;
                     }
                     §§goto(addr151);
                  }
               }
               break;
            }
            break;
         }
         while(true)
         {
            if(§§pop().length <= 0)
            {
               if(!(_loc2_ && cleanThisStar))
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr216);
                  }
                  break;
               }
               break;
            }
            if(_loc2_)
            {
               break;
            }
            §§goto(addr111);
         }
         §§goto(addr212);
      }
      
      public function update(deltaTime:Number) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         if(!_loc15_)
         {
         }
         var deleteFlag:* = false;
         var star:§1!T§ = null;
         var randomVelocity:Number = NaN;
         var randomRadian:Number = NaN;
         var randomVx:Number = NaN;
         var randomVy:Number = NaN;
         var scaleStart:Number = NaN;
         var scaleEnd:Number = NaN;
         var velocityMin:Number = NaN;
         var velocityMax:Number = NaN;
         var splicedStar:Object = null;
         if(!_loc16_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(_loc15_)
                  {
                     do
                     {
                        do
                        {
                           if(!_loc16_)
                           {
                              if(!_loc16_)
                              {
                                 §§push(deltaTime);
                                 if(_loc15_ || len)
                                 {
                                    §§push(§§pop() / 20);
                                    if(_loc16_)
                                    {
                                       continue;
                                    }
                                 }
                                 §§push(Number(§§pop()));
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                        while(deltaTime = §§pop(), _loc16_);
                        
                     }
                     while(!(_loc15_ || deleteFlag));
                     
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§#!§);
            if(_loc15_)
            {
               if(§§pop().length <= 0)
               {
                  if(_loc15_ || len)
                  {
                     addr1057:
                  }
                  addr1058:
                  §§push(this.§<g§);
                  break;
               }
               loop6:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc16_)
                        {
                           continue loop6;
                        }
                        if(_loc15_ || deleteFlag)
                        {
                           if(_loc15_)
                           {
                              continue;
                           }
                           continue loop7;
                        }
                     }
                     §§goto(addr1058);
                  }
               }
               §§goto(addr1057);
            }
            break;
         }
         var len:int = §§pop().length;
         if(_loc15_ || this)
         {
         }
         §§push(len);
         if(!_loc16_)
         {
            §§push(int(§§pop() - 1));
         }
         var i:* = §§pop();
         if(_loc15_ || this)
         {
            loop9:
            while(true)
            {
               if(i < 0)
               {
                  if(!(_loc16_ && deleteFlag))
                  {
                     break;
                  }
               }
               else
               {
                  loop10:
                  while(true)
                  {
                     loop11:
                     while(true)
                     {
                        §§push(false);
                        if(_loc15_ || deltaTime)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        deleteFlag = §§pop();
                        if(!(_loc15_ || len))
                        {
                           break loop9;
                        }
                        if(!_loc15_)
                        {
                           continue loop10;
                        }
                        if(_loc16_ && deleteFlag)
                        {
                           break;
                        }
                        while(true)
                        {
                           if(false)
                           {
                              continue loop11;
                           }
                           star = this.§<g§[i];
                           if(_loc15_ || len)
                           {
                              loop13:
                              while(true)
                              {
                                 §§push(star);
                                 §§push(star.§&i§);
                                 if(!(_loc16_ && deleteFlag))
                                 {
                                    §§push(this.§][§);
                                    if(!_loc16_)
                                    {
                                       §§push(§§pop() * deltaTime);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().§&i§ = §§pop();
                                 if(!_loc15_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(star.§&i§ > this.§2!V§)
                                    {
                                       while(true)
                                       {
                                          addr1463:
                                          while(true)
                                          {
                                             star.§&i§ = this.§2!V§;
                                             addr1455:
                                             while(true)
                                             {
                                                addr1449:
                                                while(true)
                                                {
                                                   addr1158:
                                                   if(_loc15_ || len)
                                                   {
                                                      continue loop13;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr1462:
                                    }
                                    while(true)
                                    {
                                       star.x += star.§#C§ * deltaTime;
                                       §§goto(addr1449);
                                    }
                                 }
                              }
                              continue loop9;
                           }
                           §§goto(addr1446);
                        }
                     }
                  }
               }
               §§goto(addr1616);
            }
            addr1616:
            return;
         }
         §§goto(addr1095);
      }
   }
}
