package §`a§
{
   import § !+§.§%L§;
   import §"! §.§4p§;
   import §"! §.§=!%§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.TouchEvent;
   
   public class DisplayObject extends EventDispatcher
   {
      
      private static var §2!P§:Vector.<DisplayObject>;
      
      private static var §9!Q§:Rectangle;
      
      private static var §,!?§:Matrix;
      
      private static var §@b§:Matrix;
      
      protected static var §4!7§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §2!P§ = new Vector.<DisplayObject>(0);
            while(true)
            {
               §9!Q§ = new Rectangle();
               addr50:
               if(_loc1_ && DisplayObject)
               {
                  continue;
               }
               §4!7§ = 0;
               addr57:
               if(_loc2_)
               {
                  addr30:
                  if(_loc1_)
                  {
                     loop2:
                     while(true)
                     {
                        §@b§ = new Matrix();
                        addr48:
                        addr69:
                        while(!_loc1_)
                        {
                           §§goto(addr50);
                           §§goto(addr57);
                        }
                        while(true)
                        {
                           §,!?§ = new Matrix();
                           continue loop2;
                        }
                     }
                  }
                  return;
               }
               §§goto(addr48);
            }
         }
         §§goto(addr69);
      }
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §^D§:Number;
      
      private var §%B§:Number;
      
      private var §`!T§:Number;
      
      private var §%K§:Number;
      
      private var §,E§:Number;
      
      private var mAlpha:Number;
      
      private var § true§:Boolean;
      
      private var §;6§:Boolean;
      
      private var mName:String;
      
      private var §;;§:Number;
      
      private var §,q§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(_loc2_ || _loc3_)
            {
               if(getQualifiedClassName(this) == "starling.display::DisplayObject")
               {
                  if(_loc2_)
                  {
                     §§goto(addr34);
                  }
               }
               else
               {
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this.§,E§ = 0);
                  if(!(_loc3_ && _loc2_))
                  {
                     var _loc1_:*;
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§%B§ = §§pop();
                  §§push(_loc1_);
                  if(_loc2_)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§^D§ = §§pop();
                  §§push(_loc1_);
                  if(!(_loc3_ && _loc1_))
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().mY = §§pop();
                  §§pop().mX = _loc1_;
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(this);
                     §§push(this);
                     §§push(this.mAlpha = 1);
                     if(_loc2_)
                     {
                        §§push(_loc1_ = §§pop());
                     }
                     §§pop().§%K§ = §§pop();
                     §§pop().§`!T§ = _loc1_;
                     if(_loc2_ || _loc2_)
                     {
                     }
                     §§goto(addr147);
                  }
               }
               this.§;6§ = _loc1_ = true;
               this.§ true§ = _loc1_;
               if(_loc2_)
               {
                  this.§;;§ = -1;
               }
            }
            addr147:
            return;
         }
         addr34:
         throw new §4p§();
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.removeEventListeners();
         }
      }
      
      public function §,r§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.§,q§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr77:
                     this.§,q§.removeChild(this);
                     addr79:
                     while(true)
                     {
                     }
                     addr79:
                  }
                  §§goto(addr79);
               }
               while(param1)
               {
                  if(_loc2_)
                  {
                     this.dispose();
                  }
                  if(!(_loc3_ && param1))
                  {
                     break;
                  }
                  §§goto(addr79);
               }
               return;
            }
         }
         §§goto(addr77);
      }
      
      public function §`! §(param1:DisplayObject, param2:Matrix = null) : Matrix
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            if(param2)
            {
               if(_loc5_)
               {
                  param2.identity();
                  if(_loc5_)
                  {
                     addr36:
                     if(param1 == this)
                     {
                        if(_loc5_)
                        {
                           §§goto(addr41);
                        }
                     }
                     else
                     {
                        §§push(param1 == this.§,q§);
                        while(true)
                        {
                           §§push(§§pop());
                           loop15:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop16:
                                 while(true)
                                 {
                                    §§pop();
                                    addr417:
                                    while(true)
                                    {
                                       §§push(param1 == null);
                                       addr406:
                                       loop18:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          addr407:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr409:
                                                   while(true)
                                                   {
                                                      §§push(this.§,q§ == null);
                                                   }
                                                }
                                                addr408:
                                             }
                                             continue loop18;
                                          }
                                       }
                                       continue loop16;
                                    }
                                 }
                                 addr416:
                              }
                              while(true)
                              {
                                 loop23:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop24:
                                       while(true)
                                       {
                                          §§push(this.§^D§);
                                          loop25:
                                          while(true)
                                          {
                                             §§push(0);
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                loop27:
                                                while(true)
                                                {
                                                   §§push(!§§pop());
                                                   loop28:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop29:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop30:
                                                            while(!_loc6_)
                                                            {
                                                               §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(this.§%B§);
                                                                  addr359:
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     addr360:
                                                                     while(_loc5_)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        while(true)
                                                                        {
                                                                           §§push(!§§pop());
                                                                        }
                                                                     }
                                                                     continue loop27;
                                                                  }
                                                                  loop38:
                                                                  while(!(_loc6_ && _loc3_))
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        loop39:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§`!T§);
                                                                           loop40:
                                                                           while(true)
                                                                           {
                                                                              §§push(1);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 loop42:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       loop43:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc6_ && this))
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                loop44:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         loop50:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               loop51:
                                                                                                               while(_loc5_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     param2.scale(this.§`!T§,this.§%K§);
                                                                                                                     loop1:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr246:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§,E§);
                                                                                                                           loop3:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              loop4:
                                                                                                                              while(_loc5_ || this)
                                                                                                                              {
                                                                                                                                 if(§§pop() != §§pop())
                                                                                                                                 {
                                                                                                                                    param2.rotate(this.§,E§);
                                                                                                                                    loop5:
                                                                                                                                    for(; !(_loc6_ && param1); while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc6_ && param2)
                                                                                                                                       {
                                                                                                                                          continue loop5;
                                                                                                                                       }
                                                                                                                                       if(!(_loc5_ || _loc3_))
                                                                                                                                       {
                                                                                                                                          continue loop1;
                                                                                                                                       }
                                                                                                                                       §§goto(addr245);
                                                                                                                                       §§goto(addr230);
                                                                                                                                    },§§goto(addr161))
                                                                                                                                    {
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          continue loop24;
                                                                                                                                       }
                                                                                                                                       if(_loc5_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             addr158:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.mX);
                                                                                                                                                addr161:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §§push(0);
                                                                                                                                                      while(_loc5_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() == §§pop());
                                                                                                                                                         if(!(_loc6_ && param1))
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc5_ || _loc3_))
                                                                                                                                                            {
                                                                                                                                                               continue loop43;
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc6_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop50;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(!(_loc5_ || param1))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop44;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc6_ && param1)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop29;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc5_ || param2))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop15;
                                                                                                                                                                     }
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc5_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc6_ && param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop5;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!(_loc5_ || param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop51;
                                                                                                                                                                                 }
                                                                                                                                                                                 param2.translate(this.mX,this.mY);
                                                                                                                                                                                 if(!(_loc5_ || _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    break loop23;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr157:
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                           addr114:
                                                                                                                                                                           if(!(_loc6_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop28;
                                                                                                                                                                        }
                                                                                                                                                                        return param2;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc5_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           addr230:
                                                                                                                                                                           §§pop();
                                                                                                                                                                           continue loop5;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop27;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr407);
                                                                                                                                                                  }
                                                                                                                                                                  addr107:
                                                                                                                                                                  if(_loc6_ && param2)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr114);
                                                                                                                                                               }
                                                                                                                                                               continue loop50;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr408);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr223);
                                                                                                                                                         §§push(0);
                                                                                                                                                         if(!(_loc5_ || param1))
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() == §§pop());
                                                                                                                                                         if(!(_loc6_ && param1))
                                                                                                                                                         {
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop42;
                                                                                                                                                               }
                                                                                                                                                               addr100:
                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                               if(!(_loc6_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr107);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr223);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     break loop51;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr406);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr363);
                                                                                                                                                               addr348:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr407);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr100);
                                                                                                                                                      }
                                                                                                                                                      continue loop4;
                                                                                                                                                   }
                                                                                                                                                   §§push(this.mY);
                                                                                                                                                   addr245:
                                                                                                                                                   continue loop3;
                                                                                                                                                   if(_loc6_ && param2)
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc5_ || _loc3_))
                                                                                                                                                   {
                                                                                                                                                      continue loop25;
                                                                                                                                                   }
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      continue loop40;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr79);
                                                                                                                                                }
                                                                                                                                                §§goto(addr359);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr278:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr417);
                                                                                                                                       }
                                                                                                                                       §§goto(addr407);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       param2.translate(-this.§^D§,-this.§%B§);
                                                                                                                                       continue loop38;
                                                                                                                                    }
                                                                                                                                    addr366:
                                                                                                                                 }
                                                                                                                                 §§goto(addr158);
                                                                                                                              }
                                                                                                                              §§goto(addr360);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               while(!_loc6_)
                                                                                                               {
                                                                                                                  §§push(this.§%K§);
                                                                                                                  continue loop25;
                                                                                                               }
                                                                                                               continue loop38;
                                                                                                            }
                                                                                                            §§goto(addr246);
                                                                                                         }
                                                                                                      }
                                                                                                      addr306:
                                                                                                   }
                                                                                                   §§goto(addr348);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr416);
                                                                                             }
                                                                                             §§goto(addr417);
                                                                                          }
                                                                                          addr365:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                continue loop39;
                                                                                             }
                                                                                             §§goto(addr366);
                                                                                             continue loop43;
                                                                                          }
                                                                                       }
                                                                                       continue loop23;
                                                                                    }
                                                                                    continue loop30;
                                                                                 }
                                                                                 addr289:
                                                                                 §§push(1);
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    §§push(§§pop() == §§pop());
                                                                                    continue loop28;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr409);
                                                                  }
                                                               }
                                                            }
                                                            continue loop15;
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr365);
                                                            §§goto(addr363);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       if(param1 == null)
                                       {
                                          break;
                                       }
                                       if(param1.§,q§ != this)
                                       {
                                          addr470:
                                          §2!P§.length = 0;
                                          if(_loc6_ && _loc3_)
                                          {
                                             §§goto(addr470);
                                          }
                                          if(_loc5_)
                                          {
                                             §§goto(addr482);
                                          }
                                          else
                                          {
                                             §§goto(addr490);
                                          }
                                          return param2;
                                       }
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          param1.§`! §(this,param2);
                                          if(_loc5_)
                                          {
                                             param2.invert();
                                             addr490:
                                          }
                                          else
                                          {
                                             addr482:
                                             if(true)
                                             {
                                                var _loc3_:DisplayObject = null;
                                                var _loc4_:DisplayObject = this;
                                                if(_loc5_)
                                                {
                                                   addr515:
                                                   if(_loc4_)
                                                   {
                                                      §2!P§.push(_loc4_);
                                                      if(_loc5_ || param2)
                                                      {
                                                         addr511:
                                                         _loc4_ = _loc4_.parent;
                                                         §§goto(addr515);
                                                      }
                                                   }
                                                   _loc4_ = param1;
                                                   if(_loc5_ || param1)
                                                   {
                                                      addr533:
                                                      §§push(Boolean(_loc4_));
                                                      if(_loc5_ || this)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§goto(addr546);
                                                            }
                                                         }
                                                         §§goto(addr559);
                                                      }
                                                      addr546:
                                                      §§pop();
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         addr559:
                                                         addr554:
                                                         if(§2!P§.indexOf(_loc4_) == -1)
                                                         {
                                                            _loc4_ = _loc4_.parent;
                                                            §§goto(addr533);
                                                         }
                                                         if(_loc5_)
                                                         {
                                                            if(_loc4_ == null)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  §§goto(addr567);
                                                               }
                                                            }
                                                         }
                                                         _loc3_ = _loc4_;
                                                         _loc4_ = this;
                                                         if(_loc5_ || this)
                                                         {
                                                            addr607:
                                                            if(_loc4_ != _loc3_)
                                                            {
                                                               _loc4_.§`! §(_loc4_.§,q§,§,!?§);
                                                               if(_loc5_ || this)
                                                               {
                                                                  param2.concat(§,!?§);
                                                                  if(_loc5_)
                                                                  {
                                                                     _loc4_ = _loc4_.parent;
                                                                     §§goto(addr607);
                                                                  }
                                                               }
                                                               addr614:
                                                               _loc4_ = param1;
                                                               if(!_loc6_)
                                                               {
                                                                  addr647:
                                                                  if(_loc4_ != _loc3_)
                                                                  {
                                                                     _loc4_.§`! §(_loc4_.§,q§,§,!?§);
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        §@b§.concat(§,!?§);
                                                                        if(_loc5_ || param2)
                                                                        {
                                                                           addr643:
                                                                           _loc4_ = _loc4_.parent;
                                                                           §§goto(addr647);
                                                                        }
                                                                     }
                                                                     §§goto(addr657);
                                                                  }
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     addr657:
                                                                     §@b§.invert();
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        addr676:
                                                                        param2.concat(§@b§);
                                                                     }
                                                                     return param2;
                                                                  }
                                                                  §§goto(addr676);
                                                               }
                                                               §§goto(addr643);
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               addr612:
                                                               §@b§.identity();
                                                            }
                                                            §§goto(addr614);
                                                         }
                                                         §§goto(addr612);
                                                      }
                                                      addr567:
                                                      throw new ArgumentError("Object not connected to target");
                                                   }
                                                   §§goto(addr554);
                                                }
                                                §§goto(addr511);
                                             }
                                          }
                                          §§goto(addr484);
                                       }
                                       §§goto(addr490);
                                    }
                                 }
                                 _loc4_ = this;
                                 addr446:
                                 if(_loc4_)
                                 {
                                    _loc4_.§`! §(_loc4_.§,q§,§,!?§);
                                    if(!(_loc6_ && param1))
                                    {
                                       param2.concat(§,!?§);
                                       _loc4_ = _loc4_.parent;
                                       §§goto(addr446);
                                    }
                                 }
                                 return param2;
                              }
                           }
                        }
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr310);
               }
               §§goto(addr278);
            }
            else
            {
               param2 = new Matrix();
            }
            §§goto(addr36);
         }
         addr41:
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §=!%§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.§ true§);
                              if(!_loc4_)
                              {
                                 §§push(!§§pop());
                                 if(!(_loc4_ && param2))
                                 {
                                    if(_loc4_ && param1)
                                    {
                                       break;
                                    }
                                    §§push(§§pop());
                                    if(_loc4_ && param2)
                                    {
                                       continue loop2;
                                    }
                                    if(§§pop())
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                return null;
                                             }
                                             else
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   addr36:
                                                   while(this.getBounds(this,§9!Q§).containsPoint(param1))
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(!(_loc4_ && param2))
                                                            {
                                                               break loop7;
                                                            }
                                                            continue loop4;
                                                         }
                                                         loop6:
                                                         while(true)
                                                         {
                                                            §§push(this.§;6§);
                                                            if(_loc3_)
                                                            {
                                                               §§push(!§§pop());
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            addr126:
                                                            while(!_loc4_)
                                                            {
                                                               §§pop();
                                                               continue loop6;
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop8;
                                                   }
                                                   addr24:
                                                   §§push(null);
                                                   if(!(_loc4_ && this))
                                                   {
                                                      return §§pop();
                                                   }
                                                }
                                             }
                                             return §§pop();
                                          }
                                          §§goto(addr36);
                                       }
                                       return this;
                                       addr90:
                                    }
                                 }
                              }
                              §§goto(addr126);
                           }
                           continue loop1;
                        }
                     }
                     §§goto(addr90);
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            §@b§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§`! §(_loc2_.§,q§,§,!?§);
            if(!_loc4_)
            {
               §@b§.concat(§,!?§);
               if(!(_loc3_ || param1))
               {
                  break;
               }
            }
            _loc2_ = _loc2_.parent;
         }
         return §@b§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            §@b§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(!(_loc3_ && _loc3_))
               {
                  break;
               }
               §§goto(addr83);
            }
            _loc2_.§`! §(_loc2_.§,q§,§,!?§);
            if(_loc3_)
            {
               break;
            }
            §@b§.concat(§,!?§);
            if(_loc3_ && param1)
            {
               break;
            }
            _loc2_ = _loc2_.parent;
         }
         §@b§.invert();
         addr83:
         return §@b§.transformPoint(param1);
      }
      
      public function render(param1:§%L§, param2:Number) : void
      {
         throw new §=!%§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TouchEvent = null;
         if(_loc4_ || param1)
         {
            if(param1 is TouchEvent)
            {
               if(!(_loc3_ && param1))
               {
                  _loc2_ = param1 as TouchEvent;
                  if(!(_loc3_ && _loc2_))
                  {
                     if(_loc2_.timestamp == this.§;;§)
                     {
                        if(_loc4_ || this)
                        {
                           return;
                        }
                     }
                  }
                  this.§;;§ = _loc2_.timestamp;
               }
               §§goto(addr92);
            }
            super.dispatchEvent(param1);
         }
         addr92:
      }
      
      function § !8§(param1:DisplayObjectContainer) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(true)
         {
            §§push(_loc2_ == this);
            if(_loc7_)
            {
               continue;
            }
            §§push(!§§pop());
            if(!(_loc7_ && param1))
            {
               if(§§pop())
               {
                  if(_loc8_)
                  {
                     addr49:
                     §§pop();
                     if(!_loc8_)
                     {
                        §§goto(addr71);
                     }
                     §§push(_loc2_ == null);
                     if(_loc7_ && _loc3_)
                     {
                        continue;
                     }
                  }
                  §§push(!§§pop());
               }
               continue;
            }
            §§goto(addr49);
         }
         if(_loc8_)
         {
            if(_loc2_ == this)
            {
               if(!_loc7_)
               {
                  addr71:
                  throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
               }
            }
         }
         _loc3_ = §]!K§();
         if(_loc8_ || this)
         {
            §§push(param1 == this.§,q§);
            if(_loc8_)
            {
               §§push(!§§pop());
               if(!(_loc7_ && param1))
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc7_)
                  {
                     §§push(§§pop());
                     if(!_loc7_)
                     {
                        if(§§pop())
                        {
                           if(_loc8_ || _loc3_)
                           {
                              §§pop();
                              if(!(_loc7_ && _loc2_))
                              {
                                 §§push(this.§,q§);
                                 if(_loc8_ || this)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!(_loc7_ && this))
                                    {
                                       addr143:
                                       §§push(§§pop());
                                       if(!(_loc7_ && param1))
                                       {
                                          addr151:
                                          if(§§pop())
                                          {
                                             if(!(_loc7_ && _loc2_))
                                             {
                                                addr169:
                                                §§pop();
                                                if(_loc8_)
                                                {
                                                   §§push(_loc3_.length > 0);
                                                   if(!_loc8_)
                                                   {
                                                   }
                                                   addr283:
                                                   if(§§pop())
                                                   {
                                                      if(_loc8_ || this)
                                                      {
                                                         addr292:
                                                         var _loc5_:* = 0;
                                                         addr291:
                                                         if(_loc8_)
                                                         {
                                                            addr295:
                                                            var _loc6_:* = _loc3_;
                                                            if(_loc8_ || param1)
                                                            {
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  §§push(§§hasnext(_loc6_,_loc5_));
                                                                  addr329:
                                                                  addr332:
                                                                  while(§§pop())
                                                                  {
                                                                     _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                     if(!_loc7_)
                                                                     {
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  §§goto(addr331);
                                                               }
                                                               addr328:
                                                            }
                                                            while(true)
                                                            {
                                                               this.addEventListeningObject(this,_loc4_);
                                                               §§goto(addr328);
                                                            }
                                                         }
                                                         §§goto(addr331);
                                                      }
                                                   }
                                                   §§goto(addr331);
                                                }
                                                §§goto(addr291);
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc8_)
                                             {
                                                addr181:
                                                §§push(0);
                                                if(!(_loc7_ && param1))
                                                {
                                                   _loc5_ = §§pop();
                                                   if(_loc8_ || param1)
                                                   {
                                                      _loc6_ = _loc3_;
                                                      if(_loc7_)
                                                      {
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc6_,_loc5_));
                                                         if(_loc8_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(_loc8_ || param1)
                                                               {
                                                                  if(!(_loc7_ && _loc2_))
                                                                  {
                                                                     if(_loc8_ || param1)
                                                                     {
                                                                        addr247:
                                                                        this.§,q§ = param1;
                                                                        if(_loc7_ && this)
                                                                        {
                                                                        }
                                                                        §§goto(addr331);
                                                                     }
                                                                     addr259:
                                                                     §§push(Boolean(this.§,q§));
                                                                     if(!(_loc7_ && _loc2_))
                                                                     {
                                                                        addr268:
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc7_ && _loc3_))
                                                                           {
                                                                              addr276:
                                                                              §§pop();
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§goto(addr283);
                                                                                 §§push(_loc3_.length > 0);
                                                                              }
                                                                              §§goto(addr291);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr283);
                                                                  }
                                                                  §§goto(addr295);
                                                               }
                                                               addr331:
                                                            }
                                                            _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                            if(_loc8_ || param1)
                                                            {
                                                               this.removeEventListeningObject(this,_loc4_);
                                                            }
                                                            continue;
                                                            return;
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr329);
                                                   }
                                                   §§goto(addr295);
                                                }
                                                §§goto(addr292);
                                             }
                                             §§goto(addr332);
                                          }
                                          §§goto(addr247);
                                       }
                                       §§goto(addr268);
                                    }
                                    §§goto(addr276);
                                 }
                                 §§goto(addr259);
                              }
                              §§goto(addr181);
                           }
                           §§goto(addr283);
                        }
                        §§goto(addr143);
                     }
                     §§goto(addr151);
                  }
                  §§goto(addr283);
               }
               §§goto(addr169);
            }
            §§goto(addr268);
         }
         §§goto(addr292);
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(this.§,q§);
            if(_loc3_ || param1)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr57:
                     this.§,q§.removeEventListeningObject(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr57);
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§,q§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     addr47:
                     this.§,q§.addEventListeningObject(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.dispatchEvent(param1);
         }
      }
      
      public function get §%!=§() : Matrix
      {
         return this.§`! §(this.§,q§);
      }
      
      public function get §],§() : Rectangle
      {
         return this.getBounds(this.§,q§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§,q§,§9!Q§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§`!T§ = 1;
         }
         §§push(this.width);
         if(_loc4_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            if(_loc2_ == 0)
            {
               this.scaleX = 1;
               if(!_loc3_)
               {
                  if(_loc3_)
                  {
                     addr79:
                     §§push(this);
                     §§push(param1);
                     if(_loc4_)
                     {
                        §§push(§§pop() / _loc2_);
                     }
                     §§pop().scaleX = §§pop();
                     addr86:
                  }
                  return;
               }
               §§goto(addr86);
            }
         }
         §§goto(addr79);
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§,q§,§9!Q§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§%K§ = 1;
         }
         §§push(this.height);
         if(_loc3_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            if(_loc2_ == 0)
            {
               this.scaleY = 1;
               if(_loc3_)
               {
                  addr57:
               }
               else
               {
                  addr85:
               }
               return;
            }
            if(!_loc4_)
            {
               §§push(this);
               §§push(param1);
               if(!(_loc4_ && param1))
               {
                  §§push(§§pop() / _loc2_);
               }
               §§pop().scaleY = §§pop();
            }
            §§goto(addr85);
         }
         §§goto(addr57);
      }
      
      public function get root() : DisplayObject
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:DisplayObject = this;
         loop0:
         while(true)
         {
            §§push(_loc1_.parent);
            while(§§pop())
            {
               §§push(_loc1_.parent);
               if(_loc2_)
               {
                  continue loop0;
               }
            }
            return _loc1_;
         }
      }
      
      override public function addEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super.addEventListener(param1,param2);
            do
            {
               this.addEventListeningObject(this,param1);
            }
            while(!_loc4_);
            
         }
      }
      
      override public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.removeEventListener(param1,param2);
            loop0:
            for(; !hasEventListener(param1); while(true)
            {
               if(_loc4_ || this)
               {
                  break loop0;
               }
               continue loop0;
            })
            {
               if(_loc3_)
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.removeEventListeningObject(this,param1);
            §§goto(addr45);
         }
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:Array = §]!K§();
         if(!(_loc7_ && this))
         {
            super.removeEventListeners(param1);
            if(!_loc7_)
            {
               §§goto(addr35);
            }
            §§goto(addr48);
         }
         addr35:
         if(param1 == null)
         {
            addr48:
            for each(_loc3_ in _loc2_)
            {
               if(!_loc7_)
               {
                  this.removeEventListeningObject(this,_loc3_);
               }
            }
            if(_loc7_ && _loc3_)
            {
            }
         }
         else
         {
            this.removeEventListeningObject(this,param1);
         }
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mX = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.mY = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§^D§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§^D§ = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§%B§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§%B§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§`!T§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§`!T§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§%K§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§%K§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§,E§;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(-Math.PI);
               if(!_loc3_)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(!_loc3_)
                        {
                           loop1:
                           while(true)
                           {
                              §§push(param1);
                              if(!_loc3_)
                              {
                                 if(_loc2_ || param1)
                                 {
                                    if(!(_loc3_ && param1))
                                    {
                                       if(§§pop() <= Math.PI)
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             this.§,E§ = param1;
                                          }
                                          if(!_loc3_)
                                          {
                                             return;
                                          }
                                          continue;
                                       }
                                       addr87:
                                       §§push(param1);
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             §§push(Math.PI * 2);
                                             while(true)
                                             {
                                                §§push(§§pop() - §§pop());
                                                addr94:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   addr95:
                                                   while(_loc2_ || _loc2_)
                                                   {
                                                      param1 = §§pop();
                                                      continue loop1;
                                                   }
                                                }
                                             }
                                             addr93:
                                          }
                                          else
                                          {
                                             addr131:
                                             §§push(Number(§§pop()));
                                          }
                                          param1 = §§pop();
                                          break loop1;
                                       }
                                       addr87:
                                    }
                                    §§goto(addr87);
                                 }
                                 §§goto(addr94);
                              }
                              §§goto(addr95);
                           }
                           continue;
                           addr21:
                        }
                        while(true)
                        {
                           if(_loc3_ && _loc2_)
                           {
                              continue loop0;
                           }
                           §§goto(addr21);
                        }
                     }
                     else
                     {
                        §§push(param1);
                        if(!_loc3_)
                        {
                           addr130:
                           §§push(§§pop() + Math.PI * 2);
                        }
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr130);
               }
               §§goto(addr93);
            }
            §§goto(addr87);
         }
      }
      
      public function get alpha() : Number
      {
         return this.mAlpha;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this);
            if(!_loc3_)
            {
               §§push(param1);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop() < 0);
                  if(!(_loc3_ && param1))
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           §§push(0);
                           if(!_loc3_)
                           {
                              addr59:
                              §§push(Number(§§pop()));
                              if(_loc3_ && this)
                              {
                              }
                              §§goto(addr98);
                           }
                        }
                        else
                        {
                           addr74:
                           §§push(Number(1));
                           if(!(_loc3_ && param1))
                           {
                              addr93:
                           }
                        }
                        §§goto(addr98);
                     }
                     else
                     {
                        §§push(param1);
                        if(!_loc3_)
                        {
                           §§goto(addr73);
                        }
                     }
                     §§goto(addr93);
                  }
                  addr73:
                  if(§§pop() > 1)
                  {
                     §§goto(addr74);
                  }
                  else
                  {
                     §§push(param1);
                     if(!_loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  addr98:
                  §§pop().mAlpha = §§pop();
                  return;
               }
               §§goto(addr59);
            }
            §§goto(addr74);
         }
         §§goto(addr59);
      }
      
      public function get visible() : Boolean
      {
         return this.§ true§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ true§ = param1;
         }
      }
      
      public function get §=!;§() : Boolean
      {
         return this.§;6§;
      }
      
      public function set §=!;§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§;6§ = param1;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.mName = param1;
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§,q§;
      }
      
      public function get stage() : Stage
      {
         return this.root as Stage;
      }
      
      public function set color(param1:uint) : void
      {
      }
   }
}
