package starling.events
{
   import §7!8§.DisplayObject;
   import §7!8§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §1!X§:String = "touch";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §1!X§ = "touch";
         }
      }
      
      private var §6!n§:Vector.<§7M§>;
      
      private var §'"+§:Boolean;
      
      private var §<N§:Boolean;
      
      private var §%!I§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§7M§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param1))
         {
            super(param1,param5);
            loop0:
            while(true)
            {
               §§push(this);
               if(!(_loc9_ && param1))
               {
                  §§pop().§6!n§ = !!param2 ? param2 : new Vector.<§7M§>(0);
                  while(true)
                  {
                     this.§'"+§ = param3;
                     loop2:
                     while(!_loc9_)
                     {
                        do
                        {
                           this.§<N§ = param4;
                           while(_loc8_ || param1)
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                        while(false);
                        
                        var _loc6_:int = param2.length;
                        var _loc7_:int = 0;
                        while(true)
                        {
                           if(_loc7_ >= _loc6_)
                           {
                              if(!_loc9_)
                              {
                                 if(!(_loc9_ && param3))
                                 {
                                    break;
                                 }
                                 addr148:
                                 this.§%!I§ = param2[_loc7_].timestamp;
                                 loop6:
                                 while(true)
                                 {
                                    addr119:
                                    while(true)
                                    {
                                       _loc7_++;
                                       continue loop6;
                                    }
                                 }
                                 addr154:
                              }
                              while(!(_loc8_ || param3))
                              {
                                 §§goto(addr154);
                              }
                              continue;
                           }
                           if(param2[_loc7_].timestamp > this.§%!I§)
                           {
                              §§goto(addr148);
                           }
                           §§goto(addr119);
                        }
                        return;
                     }
                  }
                  addr90:
               }
               §§goto(addr79);
            }
         }
         §§goto(addr90);
      }
      
      public function §4!V§(param1:DisplayObject, param2:String = null) : Vector.<§7M§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:§7M§ = null;
         var _loc7_:* = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§7M§> = new Vector.<§7M§>(0);
         var _loc4_:int = this.§6!n§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            §§push((_loc6_ = this.§6!n§[_loc5_]).target == param1);
            if(_loc9_ || _loc3_)
            {
               §§push(§§pop());
               if(_loc9_ || this)
               {
                  if(!§§pop())
                  {
                     if(_loc9_)
                     {
                        §§pop();
                        if(_loc9_)
                        {
                           §§push(param1 is DisplayObjectContainer);
                           loop1:
                           while(true)
                           {
                              §§push(§§pop());
                              addr261:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr263:
                                       while(true)
                                       {
                                          §§push((param1 as DisplayObjectContainer).contains(_loc6_.target));
                                          addr242:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                    }
                                    addr262:
                                 }
                                 addr243:
                                 while(true)
                                 {
                                    addr244:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr245:
                                       while(true)
                                       {
                                          _loc7_ = §§pop();
                                          addr246:
                                          while(true)
                                          {
                                             §§push(param2);
                                             addr197:
                                             while(true)
                                             {
                                                §§push(§§pop() == null);
                                                continue loop1;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr169);
                     }
                  }
                  §§goto(addr244);
               }
               §§goto(addr163);
            }
            §§goto(addr245);
         }
         return _loc3_;
      }
      
      public function §#0§(param1:DisplayObject, param2:String = null) : §7M§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Vector.<§7M§> = this.§4!V§(param1,param2);
         if(_loc5_)
         {
            if(_loc3_.length > 0)
            {
               if(!_loc4_)
               {
                  §§goto(addr51);
               }
            }
            return null;
         }
         addr51:
         return _loc3_[0];
      }
      
      public function §3!0§(param1:DisplayObject) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Vector.<§7M§> = null;
         var _loc3_:* = 0;
         if(!(_loc5_ && _loc3_))
         {
            if(this.§#0§(param1) == null)
            {
               if(_loc4_ || param1)
               {
                  return false;
               }
            }
         }
         _loc2_ = this.§4!V§(param1);
         if(_loc4_)
         {
            _loc3_ = int(_loc2_.length - 1);
         }
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_ || param1)
            {
               if(§§pop() < 0)
               {
                  if(!(_loc5_ && this))
                  {
                     §§push(false);
                     if(!(_loc5_ && this))
                     {
                        return §§pop();
                     }
                     addr131:
                     return §§pop();
                  }
                  loop2:
                  while(_loc5_ && this)
                  {
                     while(true)
                     {
                        continue loop2;
                     }
                  }
                  continue;
                  addr100:
               }
               else if(_loc2_[_loc3_].phase != §@M§.§2_§)
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  §§goto(addr132);
               }
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
               }
            }
            while(true)
            {
               _loc3_ = §§pop();
               §§goto(addr100);
            }
         }
         §§goto(addr131);
         §§push(true);
      }
      
      public function get timestamp() : Number
      {
         return this.§%!I§;
      }
      
      public function get §,!4§() : Vector.<§7M§>
      {
         return this.§6!n§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§'"+§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§<N§;
      }
   }
}
