package §5!3§
{
   import §?!O§.TweenManager;
   import §?!Y§.§`S§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class StarSplash extends Sprite
   {
      
      public static const STARSPLASH_LEFT:int = 0;
      
      public static const STARSPLASH_CENTER:int = 1;
      
      public static const STARSPLASH_RIGHT:int = 2;
      
      public static const STARSPLASH_BADGE:int = 3;
      
      {
         var STARSPLASH_LEFT:Boolean = false;
         var STARSPLASH_CENTER:Boolean = true;
         if(!(STARSPLASH_LEFT && STARSPLASH_LEFT))
         {
            loop0:
            while(true)
            {
               STARSPLASH_LEFT = 0;
               while(true)
               {
                  while(STARSPLASH_CENTER || STARSPLASH_LEFT)
                  {
                     STARSPLASH_CENTER = 1;
                     continue loop0;
                     loop7:
                     while(STARSPLASH_CENTER || STARSPLASH_CENTER)
                     {
                        STARSPLASH_BADGE = 3;
                        if(!STARSPLASH_LEFT)
                        {
                           if(STARSPLASH_CENTER)
                           {
                              addr37:
                              if(!(STARSPLASH_CENTER || STARSPLASH_CENTER))
                              {
                                 continue loop0;
                              }
                           }
                           else
                           {
                              while(!(STARSPLASH_LEFT && STARSPLASH_CENTER))
                              {
                                 while(true)
                                 {
                                    continue loop7;
                                 }
                              }
                              while(true)
                              {
                                 STARSPLASH_RIGHT = 2;
                                 §§goto(addr69);
                              }
                              addr69:
                              addr89:
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      private const §>y§:uint = 40;
      
      private const §;K§:Number = 0.3;
      
      private const §3"§:Number = 25;
      
      private const §<!#§:Number = 10;
      
      private const §?%§:Number = 9;
      
      private var §,!g§:int;
      
      private var §,K§:int;
      
      private var §=w§:Array;
      
      private var §+!D§:Array;
      
      private var §=!A§:Point;
      
      private var §',§:int;
      
      public function StarSplash(stageWidth:int, stageHeight:int, posX:Number, posY:Number, starPos:int, starCount:int = 40)
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc14_)
         {
         }
         var star:§ !N§ = null;
         var absX:Number = NaN;
         var absY:Number = NaN;
         if(_loc14_ && stageWidth)
         {
         }
         while(true)
         {
            while(!(_loc14_ && stageWidth))
            {
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
                           loop6:
                           while(true)
                           {
                              super();
                              while(_loc13_)
                              {
                                 while(true)
                                 {
                                    addr136:
                                    while(true)
                                    {
                                       continue loop6;
                                    }
                                 }
                                 loop12:
                                 for(; _loc13_ || posX; while(true)
                                 {
                                    if(!(_loc13_ || posX))
                                    {
                                       continue loop12;
                                    }
                                    if(!(_loc13_ || stageHeight))
                                    {
                                       break;
                                    }
                                    if(!_loc14_)
                                    {
                                       §§goto(addr50);
                                    }
                                    else
                                    {
                                       §§goto(addr139);
                                    }
                                 },continue loop6)
                                 {
                                    if(!_loc13_)
                                    {
                                       continue loop4;
                                    }
                                    loop13:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(_loc13_)
                                          {
                                             continue loop3;
                                          }
                                          addr117:
                                          while(!_loc14_)
                                          {
                                             continue loop12;
                                          }
                                          §§goto(addr136);
                                          addr41:
                                          if(!(_loc13_ || stageHeight))
                                          {
                                             continue;
                                          }
                                          if(false)
                                          {
                                             while(true)
                                             {
                                                this.§,K§ = stageHeight;
                                                addr54:
                                                while(true)
                                                {
                                                   if(!_loc14_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   addr87:
                                                   while(true)
                                                   {
                                                      continue loop12;
                                                   }
                                                }
                                                continue loop13;
                                                §§goto(addr41);
                                             }
                                             continue;
                                             addr50:
                                          }
                                          var scaleMin:Number = Math.min(§`S§.§4+§,§`S§.§`!A§);
                                          if(!_loc13_)
                                          {
                                          }
                                          var scaleMax:Number = Math.max(§`S§.§4+§,§`S§.§`!A§);
                                          if(!_loc14_)
                                          {
                                             addr355:
                                             posX /= §`S§.§`!A§;
                                             addr358:
                                             addr353:
                                             addr350:
                                             addr354:
                                             if(_loc13_ || stageHeight)
                                             {
                                                §§push(posY);
                                                if(_loc13_)
                                                {
                                                   if(!_loc14_)
                                                   {
                                                      if(!_loc14_)
                                                      {
                                                         §§push(§`S§.§4+§);
                                                         if(!(_loc14_ && posX))
                                                         {
                                                            §§push(§§pop() / §§pop());
                                                            if(_loc13_ || this)
                                                            {
                                                               addr334:
                                                               §§push(Number(§§pop()));
                                                               if(_loc13_)
                                                               {
                                                                  posY = §§pop();
                                                                  this.§',§ = starPos;
                                                                  addr306:
                                                                  addr303:
                                                                  if(!(_loc14_ && this))
                                                                  {
                                                                     if(_loc13_)
                                                                     {
                                                                        this.§=!A§ = new Point(posX,posY);
                                                                        addr284:
                                                                        if(_loc13_)
                                                                        {
                                                                           addr255:
                                                                           if(!(_loc14_ && this))
                                                                           {
                                                                              if(_loc13_)
                                                                              {
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    this.§=w§ = [];
                                                                                    addr238:
                                                                                    if(!(_loc14_ && this))
                                                                                    {
                                                                                       if(!(_loc14_ && stageHeight))
                                                                                       {
                                                                                          addr212:
                                                                                          this.§+!D§ = [];
                                                                                          if(!(_loc14_ && stageHeight))
                                                                                          {
                                                                                             if(_loc13_ || stageWidth)
                                                                                             {
                                                                                                if(!(_loc14_ && stageHeight))
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr212);
                                                                                                   }
                                                                                                   §§push(0);
                                                                                                   if(!(_loc14_ && posX))
                                                                                                   {
                                                                                                      §§push(int(§§pop()));
                                                                                                   }
                                                                                                   var i:* = §§pop();
                                                                                                   addr486:
                                                                                                   if(i < starCount)
                                                                                                   {
                                                                                                      if(!(_loc14_ && posX))
                                                                                                      {
                                                                                                         §§push(§§findproperty(§ !N§));
                                                                                                         §§push(Math.random() * 40);
                                                                                                         if(_loc13_)
                                                                                                         {
                                                                                                            §§push(§§pop() + 10);
                                                                                                         }
                                                                                                         star = new §§pop().§ !N§(§§pop());
                                                                                                         if(_loc13_)
                                                                                                         {
                                                                                                            star.x = -2000;
                                                                                                            star.y = -2000;
                                                                                                            addr463:
                                                                                                            addr485:
                                                                                                            addr478:
                                                                                                            addr475:
                                                                                                            if(!(_loc14_ && posX))
                                                                                                            {
                                                                                                               this.addChild(star);
                                                                                                               addr453:
                                                                                                               if(_loc13_ || stageHeight)
                                                                                                               {
                                                                                                                  addr440:
                                                                                                                  if(_loc13_ || stageWidth)
                                                                                                                  {
                                                                                                                     this.§=w§[i] = star;
                                                                                                                     addr428:
                                                                                                                     if(!(_loc14_ && stageHeight))
                                                                                                                     {
                                                                                                                        if(_loc13_)
                                                                                                                        {
                                                                                                                           addr417:
                                                                                                                           if(!_loc14_)
                                                                                                                           {
                                                                                                                              §§push(i);
                                                                                                                              if(!_loc14_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + 1);
                                                                                                                                 if(!_loc14_)
                                                                                                                                 {
                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              i = §§pop();
                                                                                                                              if(_loc13_)
                                                                                                                              {
                                                                                                                                 if(!(_loc14_ && stageHeight))
                                                                                                                                 {
                                                                                                                                    if(!_loc14_)
                                                                                                                                    {
                                                                                                                                       addr415:
                                                                                                                                       if(false)
                                                                                                                                       {
                                                                                                                                          §§goto(addr417);
                                                                                                                                       }
                                                                                                                                       §§goto(addr486);
                                                                                                                                    }
                                                                                                                                    §§goto(addr440);
                                                                                                                                 }
                                                                                                                                 §§goto(addr428);
                                                                                                                              }
                                                                                                                              §§goto(addr417);
                                                                                                                           }
                                                                                                                           §§goto(addr463);
                                                                                                                        }
                                                                                                                        §§goto(addr485);
                                                                                                                     }
                                                                                                                     §§goto(addr453);
                                                                                                                  }
                                                                                                                  §§goto(addr478);
                                                                                                               }
                                                                                                               §§goto(addr475);
                                                                                                            }
                                                                                                            addr483:
                                                                                                            §§goto(addr483);
                                                                                                         }
                                                                                                         §§goto(addr415);
                                                                                                      }
                                                                                                      this.scaleY = scaleMax;
                                                                                                      addr528:
                                                                                                      if(_loc13_)
                                                                                                      {
                                                                                                         if(_loc13_ || this)
                                                                                                         {
                                                                                                            if(!(_loc13_ || stageWidth))
                                                                                                            {
                                                                                                               §§goto(addr528);
                                                                                                            }
                                                                                                            return;
                                                                                                            addr523:
                                                                                                         }
                                                                                                         addr544:
                                                                                                      }
                                                                                                      addr540:
                                                                                                      §§goto(addr540);
                                                                                                   }
                                                                                                   if(_loc13_ || stageWidth)
                                                                                                   {
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         this.scaleX = scaleMax;
                                                                                                         §§goto(addr544);
                                                                                                      }
                                                                                                      §§goto(addr523);
                                                                                                   }
                                                                                                   §§goto(addr528);
                                                                                                }
                                                                                                §§goto(addr212);
                                                                                             }
                                                                                             §§goto(addr238);
                                                                                          }
                                                                                          addr233:
                                                                                          §§goto(addr233);
                                                                                       }
                                                                                       §§goto(addr306);
                                                                                    }
                                                                                    §§goto(addr255);
                                                                                 }
                                                                                 §§goto(addr358);
                                                                              }
                                                                              §§goto(addr306);
                                                                           }
                                                                           §§goto(addr284);
                                                                           addr286:
                                                                        }
                                                                        §§goto(addr303);
                                                                     }
                                                                     §§goto(addr358);
                                                                  }
                                                                  addr337:
                                                                  §§goto(addr337);
                                                               }
                                                               §§goto(addr355);
                                                            }
                                                            §§goto(addr334);
                                                         }
                                                         §§goto(addr353);
                                                      }
                                                      §§goto(addr350);
                                                   }
                                                   §§goto(addr354);
                                                }
                                                §§goto(addr334);
                                             }
                                             addr356:
                                             §§goto(addr356);
                                          }
                                          §§goto(addr286);
                                       }
                                       continue loop3;
                                    }
                                 }
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
      
      public function clean() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && this)
         {
         }
         var cleanThisStar:§ !N§ = null;
         if(_loc3_)
         {
         }
         loop0:
         while(true)
         {
            §§push(this.§=w§);
            if(_loc2_ || cleanThisStar)
            {
               loop1:
               while(true)
               {
                  if(§§pop().length > 0)
                  {
                     if(_loc3_)
                     {
                        break;
                     }
                     continue;
                  }
                  if(_loc2_)
                  {
                     addr155:
                     §§push(this.§+!D§);
                     break loop0;
                  }
                  this.§=w§ = [];
                  while(true)
                  {
                     while(_loc2_)
                     {
                        this.§+!D§ = [];
                        while(!(_loc3_ && _loc2_))
                        {
                           break loop1;
                        }
                     }
                  }
               }
               if(_loc3_ && cleanThisStar)
               {
                  §§goto(addr199);
               }
               return;
            }
            break;
         }
         while(true)
         {
            if(§§pop().length <= 0)
            {
               if(_loc2_)
               {
                  if(_loc2_ || _loc2_)
                  {
                     break;
                  }
                  §§goto(addr211);
               }
               break;
            }
            if(!(_loc2_ || _loc3_))
            {
               break;
            }
            §§push(this.§+!D§);
            if(_loc3_)
            {
               continue;
            }
            cleanThisStar = §§pop().shift();
            if(!(_loc3_ && cleanThisStar))
            {
               while(true)
               {
                  loop8:
                  while(true)
                  {
                     cleanThisStar.clean();
                     while(!(_loc2_ || cleanThisStar))
                     {
                     }
                     if(!(_loc2_ || _loc3_))
                     {
                        break;
                     }
                     while(false)
                     {
                        continue loop8;
                     }
                     §§goto(addr155);
                  }
               }
            }
            §§goto(addr146);
         }
         §§goto(addr170);
      }
      
      public function update(deltaTime:Number) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         if(_loc15_ || deltaTime)
         {
         }
         var deleteFlag:* = false;
         var star:§ !N§ = null;
         var randomVelocity:Number = NaN;
         var randomRadian:Number = NaN;
         var randomVx:Number = NaN;
         var randomVy:Number = NaN;
         var scaleStart:Number = NaN;
         var scaleEnd:Number = NaN;
         var velocityMin:Number = NaN;
         var velocityMax:Number = NaN;
         var splicedStar:Object = null;
         if(!(_loc16_ && deltaTime))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     continue loop0;
                     addr164:
                     loop4:
                     while(!(_loc16_ && len))
                     {
                        while(true)
                        {
                           §§push(deltaTime);
                           if(_loc15_)
                           {
                              §§push(§§pop() / 20);
                              if(_loc15_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           deltaTime = §§pop();
                           if(_loc15_ || this)
                           {
                              addr147:
                              if(!(_loc16_ && this))
                              {
                                 continue loop1;
                              }
                              continue loop0;
                           }
                           continue loop4;
                        }
                        while(true)
                        {
                           §§push(this.§=w§);
                           if(_loc15_)
                           {
                              if(§§pop().length <= 0)
                              {
                                 if(!(_loc16_ && deleteFlag))
                                 {
                                    addr1087:
                                 }
                                 addr1088:
                                 §§push(this.§+!D§);
                                 break;
                              }
                              loop7:
                              while(true)
                              {
                                 loop8:
                                 while(!(_loc16_ && deleteFlag))
                                 {
                                    if(_loc16_ && deltaTime)
                                    {
                                       continue;
                                    }
                                    loop9:
                                    while(!_loc16_)
                                    {
                                       if(!(_loc15_ || deltaTime))
                                       {
                                          break;
                                          addr68:
                                       }
                                       while(true)
                                       {
                                          if(_loc16_)
                                          {
                                             break loop8;
                                          }
                                          if(!(_loc16_ && len))
                                          {
                                             continue loop7;
                                          }
                                          continue loop9;
                                       }
                                       continue loop7;
                                    }
                                    §§goto(addr1088);
                                 }
                              }
                              §§goto(addr1087);
                           }
                           break;
                        }
                        var len:int = §§pop().length;
                        if(_loc15_ || this)
                        {
                        }
                        §§push(len);
                        if(_loc15_)
                        {
                           §§push(int(§§pop() - 1));
                        }
                        var i:* = §§pop();
                        if(!(_loc16_ && this))
                        {
                           while(true)
                           {
                              if(i < 0)
                              {
                                 if(!(_loc16_ && len))
                                 {
                                    addr1600:
                                 }
                              }
                              else
                              {
                                 loop90:
                                 while(true)
                                 {
                                    addr1134:
                                    while(true)
                                    {
                                       §§push(false);
                                       if(!(_loc16_ && deltaTime))
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       deleteFlag = §§pop();
                                       if(_loc15_)
                                       {
                                          if(_loc15_ || this)
                                          {
                                             continue loop90;
                                          }
                                          §§goto(addr1600);
                                       }
                                       break;
                                    }
                                 }
                              }
                              return;
                           }
                        }
                        §§goto(addr1132);
                     }
                  }
               }
            }
         }
         §§goto(addr171);
      }
   }
}
