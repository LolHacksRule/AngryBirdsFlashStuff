package §]p§
{
   import §6g§.§&N§;
   import §6g§.§[!@§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §9!,§ extends EventDispatcher implements §&N§
   {
      
      private static const §"[§:int = 10;
      
      public static var SERVER_DATA_INVALID:String = "SERVER_DATA_INVALID";
      
      public static var SERVER_CALL_COMPLETE:String = "SERVER_CALL_COMPLETE";
      
      private static var §5! §:§9!,§ = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §9!,§))
         {
            §"[§ = 10;
            while(true)
            {
               SERVER_DATA_INVALID = "SERVER_DATA_INVALID";
            }
            addr78:
         }
         while(true)
         {
            SERVER_CALL_COMPLETE = "SERVER_CALL_COMPLETE";
            for(; !_loc1_; §5! § = null,if(!(_loc1_ && _loc2_))
            {
               return;
            })
            {
               if(!_loc1_)
               {
                  continue;
               }
               §§goto(addr78);
            }
         }
      }
      
      private var §33§:int = 0;
      
      private var §%r§:int = 0;
      
      private var §1!@§:Boolean = false;
      
      public function §9!,§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function get §>o§() : §9!,§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(§5! §);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() == null)
               {
                  if(_loc1_)
                  {
                     §5! § = new §9!,§();
                     addr49:
                     §§push(§5! §);
                  }
               }
               §§goto(addr49);
            }
            return §§pop();
         }
         §§goto(addr49);
      }
      
      public function §>!9§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§1!@§ = true;
            do
            {
               this.§#!<§();
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public function §+d§() : int
      {
         return this.§33§;
      }
      
      public function §#!<§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:String = null;
         var _loc2_:Object = null;
         var _loc3_:§^s§ = null;
         if(_loc4_)
         {
            §§push(this.§@?§());
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     _loc1_ = "levelComplete";
                     if(_loc4_ || _loc2_)
                     {
                        _loc2_ = {};
                        _loc3_ = new §^s§(_loc2_,§!D§.§1P§ + _loc1_,this,§^s§.§<r§);
                     }
                     else
                     {
                        addr94:
                        dispatchEvent(new Event(SERVER_CALL_COMPLETE));
                     }
                  }
               }
               else
               {
                  addr81:
                  if(this.§1!@§)
                  {
                     if(!(_loc5_ && this))
                     {
                        this.§1!@§ = false;
                        if(!_loc5_)
                        {
                           §§goto(addr94);
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr81);
         }
         §§goto(addr94);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc2_:Object = §[!@§.§'!N§((param1.currentTarget as URLLoader).data);
         if(!_loc5_)
         {
            §§push(Boolean(_loc2_));
            §§push(Boolean(_loc2_));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(_loc2_.f == null);
                        loop3:
                        while(true)
                        {
                           if(_loc5_ && _loc2_)
                           {
                              continue loop1;
                           }
                           §§push(!§§pop());
                           if(!_loc5_)
                           {
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                              }
                              addr184:
                           }
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    while(true)
                                    {
                                       §§push(_loc2_.m == null);
                                       addr141:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          addr142:
                                          while(!_loc5_)
                                          {
                                          }
                                          continue loop3;
                                       }
                                    }
                                    addr190:
                                 }
                                 while(§§pop())
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          §§push(§^s§.§?0§(_loc2_.f));
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop());
                                          }
                                          do
                                          {
                                             _loc3_ = §§pop();
                                             §§push(_loc3_);
                                          }
                                          while(!_loc6_);
                                          
                                          if(§§pop() == _loc2_.m)
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   continue loop8;
                                                }
                                                §§push(§^s§.§+d§(_loc2_.f));
                                                if(_loc6_)
                                                {
                                                   §§push(int(§§pop()));
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      addr121:
                                                      §§push(§§pop());
                                                      if(!(_loc5_ && this))
                                                      {
                                                         _loc4_ = §§pop();
                                                         addr130:
                                                         §§push(-1);
                                                      }
                                                      if(§§pop() != §§pop())
                                                      {
                                                         loop11:
                                                         while(true)
                                                         {
                                                            this.§33§ = _loc4_;
                                                            while(true)
                                                            {
                                                               §§push(this.§1!@§);
                                                               if(!(_loc6_ || _loc2_))
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc5_)
                                                               {
                                                                  break loop10;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  break loop8;
                                                               }
                                                               addr40:
                                                               while(true)
                                                               {
                                                                  this.§1!@§ = false;
                                                                  if(_loc5_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  dispatchEvent(new Event(SERVER_CALL_COMPLETE));
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr142);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         dispatchEvent(new Event(SERVER_DATA_INVALID));
                                                         if(_loc6_)
                                                         {
                                                            addr50:
                                                            break loop8;
                                                         }
                                                         §§goto(addr190);
                                                      }
                                                   }
                                                   §§goto(addr130);
                                                }
                                                §§goto(addr121);
                                             }
                                             §§goto(addr141);
                                          }
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    break;
                                 }
                                 return;
                              }
                              break loop3;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr184);
            }
         }
         §§goto(addr50);
      }
      
      public function §9>§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'r§(param1:IOErrorEvent) : void
      {
      }
      
      private function §@?§() : Boolean
      {
         return true;
      }
   }
}
