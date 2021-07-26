package starling.events
{
   import §'!6§.DisplayObject;
   import §'!6§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §<!M§:String = "touch";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §<!M§ = "touch";
         }
      }
      
      private var §^f§:Vector.<§;!G§>;
      
      private var §`"Y§:Boolean;
      
      private var §>!Q§:Boolean;
      
      private var §7!y§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§;!G§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            super(param1,param5);
         }
         loop0:
         while(true)
         {
            §§push(this);
            if(!_loc8_)
            {
               §§pop().§^f§ = !!param2 ? param2 : new Vector.<§;!G§>(0);
               while(true)
               {
                  this.§`"Y§ = param3;
                  loop2:
                  while(!_loc8_)
                  {
                     loop3:
                     while(true)
                     {
                        this.§>!Q§ = param4;
                        while(_loc9_)
                        {
                           this.§7!y§ = -1;
                           if(!(_loc8_ && param3))
                           {
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr65);
         }
      }
      
      public function §&F§(param1:DisplayObject, param2:String = null) : Vector.<§;!G§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:§;!G§ = null;
         var _loc7_:* = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§;!G§> = new Vector.<§;!G§>(0);
         var _loc4_:int = this.§^f§.length;
         var _loc5_:int = 0;
         loop0:
         while(_loc5_ < _loc4_)
         {
            §§push((_loc6_ = this.§^f§[_loc5_]).target == param1);
            if(_loc9_)
            {
               §§push(§§pop());
               if(!_loc10_)
               {
                  if(!§§pop())
                  {
                     if(_loc9_ || param2)
                     {
                        §§pop();
                        if(_loc9_ || param1)
                        {
                           §§push(param1 is DisplayObjectContainer);
                           while(true)
                           {
                              §§push(§§pop());
                              addr256:
                              loop18:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr258:
                                       while(true)
                                       {
                                          §§push((param1 as DisplayObjectContainer).contains(_loc6_.target));
                                          addr245:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                    }
                                    addr257:
                                 }
                                 while(true)
                                 {
                                    addr247:
                                    loop23:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr248:
                                       while(true)
                                       {
                                          if(!_loc9_)
                                          {
                                             continue loop18;
                                          }
                                          addr250:
                                          _loc7_ = §§pop();
                                          loop5:
                                          while(true)
                                          {
                                             §§push(param2);
                                             loop6:
                                             while(true)
                                             {
                                                addr233:
                                                §§push(§§pop() == null);
                                                addr234:
                                                if(§§pop() == null)
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      §§pop();
                                                      continue loop6;
                                                   }
                                                   continue loop23;
                                                }
                                             }
                                             while(true)
                                             {
                                                addr208:
                                                while(true)
                                                {
                                                   addr209:
                                                   addr210:
                                                   _loc8_ = §§pop();
                                                   if(!(_loc10_ && this))
                                                   {
                                                      break;
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
                        }
                        loop2:
                        while(true)
                        {
                           §§push(_loc7_);
                           loop3:
                           for(; _loc9_ || _loc3_; if(_loc10_ && _loc3_)
                           {
                              continue;
                           },if(_loc9_ || _loc3_)
                           {
                              if(_loc9_ || _loc3_)
                              {
                                 if(!(_loc10_ && _loc3_))
                                 {
                                    §§goto(addr139);
                                    §§push(Boolean(§§pop()));
                                 }
                                 §§goto(addr257);
                              }
                              §§goto(addr245);
                           },§§goto(addr233))
                           {
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop8:
                                 while(!_loc10_)
                                 {
                                    §§push(§§pop());
                                    if(_loc9_)
                                    {
                                       if(!(_loc10_ && param2))
                                       {
                                          if(§§pop())
                                          {
                                             loop9:
                                             while(!_loc10_)
                                             {
                                                §§pop();
                                                loop10:
                                                while(true)
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_);
                                                      if(_loc9_ || param1)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            continue loop8;
                                                         }
                                                         continue loop9;
                                                      }
                                                      addr139:
                                                      if(_loc10_ && this)
                                                      {
                                                         break;
                                                         addr146:
                                                      }
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               _loc5_++;
                                                               if(!(_loc9_ || this))
                                                               {
                                                                  continue loop10;
                                                               }
                                                               if(!_loc10_)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break loop12;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  §§goto(addr237);
                                                               }
                                                            }
                                                            addr72:
                                                         }
                                                         while(_loc9_ || this)
                                                         {
                                                            _loc3_.push(_loc6_);
                                                            continue loop10;
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop0;
                                                   }
                                                   §§goto(addr209);
                                                }
                                             }
                                             §§goto(addr248);
                                          }
                                          §§goto(addr146);
                                       }
                                       §§goto(addr256);
                                    }
                                    §§goto(addr233);
                                 }
                                 §§goto(addr234);
                              }
                           }
                           §§goto(addr208);
                        }
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr247);
               }
               §§goto(addr256);
            }
            §§goto(addr247);
         }
         return _loc3_;
      }
      
      public function §=+§(param1:DisplayObject, param2:String = null) : §;!G§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Vector.<§;!G§> = this.§&F§(param1,param2);
         if(!(_loc4_ && param1))
         {
            if(_loc3_.length > 0)
            {
               if(!(_loc4_ && param2))
               {
                  §§goto(addr51);
               }
            }
            return null;
         }
         addr51:
         return _loc3_[0];
      }
      
      public function §4g§(param1:DisplayObject) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Vector.<§;!G§> = null;
         var _loc3_:* = 0;
         if(!_loc4_)
         {
            if(this.§=+§(param1) == null)
            {
               if(!(_loc4_ && this))
               {
                  §§goto(addr36);
               }
            }
            _loc2_ = this.§&F§(param1);
            if(_loc5_ || this)
            {
               _loc3_ = int(_loc2_.length - 1);
            }
            while(true)
            {
               §§push(_loc3_);
               if(!_loc4_)
               {
                  if(_loc5_ || _loc3_)
                  {
                     if(§§pop() < 0)
                     {
                        if(!_loc5_)
                        {
                           continue;
                        }
                        if(!(_loc4_ && param1))
                        {
                           if(_loc5_ || param1)
                           {
                              §§push(false);
                              if(!(_loc4_ && _loc3_))
                              {
                                 return §§pop();
                              }
                              addr127:
                              return §§pop();
                           }
                           break;
                        }
                     }
                     else if(_loc2_[_loc3_].phase != §'! §.§2!3§)
                     {
                        break;
                     }
                     §§push(_loc3_);
                  }
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
            }
            §§goto(addr127);
            §§push(true);
         }
         addr36:
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§7!y§;
      }
      
      public function get §+$§() : Vector.<§;!G§>
      {
         return this.§^f§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§`"Y§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§>!Q§;
      }
   }
}
