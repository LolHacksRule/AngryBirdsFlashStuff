package starling.events
{
   import §6![§.DisplayObject;
   import §6![§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §77§:String = "touch";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §77§ = "touch";
         }
      }
      
      private var §#!y§:Vector.<§4!#§>;
      
      private var §,!Z§:Boolean;
      
      private var §;!r§:Boolean;
      
      private var §!_§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§4!#§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || this)
         {
            super(param1,param5);
         }
         loop0:
         while(true)
         {
            §§push(this);
            if(!(_loc8_ && this))
            {
               §§pop().§#!y§ = !!param2 ? param2 : new Vector.<§4!#§>(0);
               loop1:
               while(true)
               {
                  this.§,!Z§ = param3;
                  loop2:
                  while(true)
                  {
                     addr35:
                     while(true)
                     {
                        this.§;!r§ = param4;
                        addr39:
                        while(_loc9_)
                        {
                           continue loop1;
                        }
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr75);
         }
      }
      
      public function §!",§(param1:DisplayObject, param2:String = null) : Vector.<§4!#§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:§4!#§ = null;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc3_:Vector.<§4!#§> = new Vector.<§4!#§>(0);
         var _loc4_:int = this.§#!y§.length;
         var _loc5_:int = 0;
         loop0:
         while(_loc5_ < _loc4_)
         {
            §§push((_loc6_ = this.§#!y§[_loc5_]).target == param1);
            if(_loc9_)
            {
               §§push(§§pop());
               if(!_loc10_)
               {
                  if(!§§pop())
                  {
                     if(_loc9_)
                     {
                        §§pop();
                        if(!_loc10_)
                        {
                           §§push(param1 is DisplayObjectContainer);
                           loop27:
                           while(true)
                           {
                              §§push(§§pop());
                              loop21:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr243:
                                       while(true)
                                       {
                                          §§push((param1 as DisplayObjectContainer).contains(_loc6_.target));
                                          addr222:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                    }
                                    addr242:
                                 }
                                 while(true)
                                 {
                                    addr224:
                                    loop25:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop6:
                                       while(true)
                                       {
                                          _loc7_ = §§pop();
                                          loop7:
                                          while(true)
                                          {
                                             §§push(param2);
                                             loop8:
                                             while(true)
                                             {
                                                §§push(§§pop() == null);
                                                loop9:
                                                while(_loc9_ || param1)
                                                {
                                                   §§push(§§pop());
                                                   loop26:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop19:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            loop3:
                                                            while(true)
                                                            {
                                                               _loc8_ = §§pop();
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  §§push(_loc7_);
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     if(_loc10_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                     loop24:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc10_ && param1)
                                                                        {
                                                                           continue loop26;
                                                                        }
                                                                        if(_loc10_)
                                                                        {
                                                                           continue loop21;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           loop23:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc10_ && param2))
                                                                              {
                                                                                 if(!(_loc9_ || param1))
                                                                                 {
                                                                                    continue loop25;
                                                                                 }
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§pop();
                                                                                    while(_loc10_ && this)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    loop2:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       if(!(_loc10_ && this))
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             continue loop5;
                                                                                          }
                                                                                          if(!(_loc9_ || param2))
                                                                                          {
                                                                                             continue loop3;
                                                                                          }
                                                                                          §§push(Boolean(§§pop()));
                                                                                       }
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          continue loop23;
                                                                                       }
                                                                                       if(_loc10_ && param1)
                                                                                       {
                                                                                          continue loop24;
                                                                                       }
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          loop10:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(!(_loc10_ && this))
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         _loc3_.push(_loc6_);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr243);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr165);
                                                                                                   }
                                                                                                }
                                                                                                loop15:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr62:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc5_++;
                                                                                                      if(_loc9_ || param1)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      break loop10;
                                                                                                   }
                                                                                                   addr207:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc9_ || param1)
                                                                                                      {
                                                                                                         continue loop8;
                                                                                                      }
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr62);
                                                                                          }
                                                                                          while(false)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          continue loop0;
                                                                                          addr105:
                                                                                          addr73:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr204:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             continue loop27;
                                                                                          }
                                                                                          §§pop();
                                                                                       }
                                                                                       §§goto(addr207);
                                                                                    }
                                                                                    addr165:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr242);
                                                                                 }
                                                                                 §§goto(addr243);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       continue loop19;
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                                 addr185:
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr105);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr204);
                                                   }
                                                }
                                                §§goto(addr222);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           addr240:
                        }
                        §§goto(addr73);
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr224);
               }
               §§goto(addr203);
            }
            §§goto(addr240);
         }
         return _loc3_;
      }
      
      public function §?5§(param1:DisplayObject, param2:String = null) : §4!#§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Vector.<§4!#§> = this.§!",§(param1,param2);
         if(!_loc5_)
         {
            if(_loc3_.length > 0)
            {
               if(!_loc5_)
               {
                  §§goto(addr50);
               }
            }
            return null;
         }
         addr50:
         return _loc3_[0];
      }
      
      public function §6!p§(param1:DisplayObject) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Vector.<§4!#§> = null;
         var _loc3_:* = 0;
         if(_loc4_ || _loc2_)
         {
            if(this.§?5§(param1) == null)
            {
               if(!(_loc5_ && _loc3_))
               {
                  §§goto(addr40);
               }
            }
            _loc2_ = this.§!",§(param1);
            if(!(_loc5_ && param1))
            {
               _loc3_ = int(_loc2_.length - 1);
            }
            do
            {
               §§push(_loc3_);
               if(!(_loc5_ && param1))
               {
                  if(_loc4_ || _loc3_)
                  {
                     if(§§pop() < 0)
                     {
                        if(!(_loc4_ || this))
                        {
                           continue;
                        }
                        if(_loc4_)
                        {
                           §§push(false);
                           if(!(_loc5_ && param1))
                           {
                              return §§pop();
                           }
                           addr131:
                           return §§pop();
                        }
                     }
                     else if(_loc2_[_loc3_].phase != §"",§.§5!=§)
                     {
                        break;
                     }
                     §§push(_loc3_);
                  }
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
            }
            while(!_loc5_);
            
            §§goto(addr131);
            §§push(true);
         }
         addr40:
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§!_§;
      }
      
      public function get §,q§() : Vector.<§4!#§>
      {
         return this.§#!y§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§,!Z§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§;!r§;
      }
   }
}
