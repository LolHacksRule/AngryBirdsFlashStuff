package §^#W§
{
   import §#f§.§3@§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   
   public class §>!W§
   {
       
      
      private var txt:String;
      
      public var §2#;§:§@#§;
      
      public var §,"_§:§@#§;
      
      private var paused:Boolean = false;
      
      private var §'"M§:TextField;
      
      public var §50§:Boolean = false;
      
      public var §>d§:Boolean = false;
      
      public function §>!W§(param1:TextField)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super();
            do
            {
               this.§%!e§ = param1;
            }
            while(_loc3_);
            
         }
      }
      
      public function §#!c§(param1:§@#§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§2#;§ = param1;
            do
            {
               this.§>d§ = true;
            }
            while(_loc2_);
            
         }
      }
      
      private function §8!%§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§50§ = false;
            loop0:
            while(!this.paused)
            {
               if(_loc3_)
               {
                  while(true)
                  {
                     this.complete();
                  }
                  addr50:
               }
               while(true)
               {
                  if(!_loc2_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      private function §,G§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1.keyCode == Keyboard.BACKSPACE);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.paused = false;
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              break loop0;
                           }
                        }
                        addr19:
                        return;
                        addr76:
                     }
                     if(!(_loc3_ && this))
                     {
                        break;
                     }
                     addr95:
                     while(true)
                     {
                        §§push(param1.keyCode == Keyboard.DELETE);
                        if(!(_loc3_ && param1))
                        {
                           continue loop0;
                        }
                     }
                     continue loop0;
                  }
                  this.paused = true;
                  §§goto(addr76);
                  addr64:
               }
               while(true)
               {
                  §§pop();
                  §§goto(addr95);
               }
            }
         }
         §§goto(addr19);
      }
      
      public function complete() : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = 0;
         var _loc8_:* = null;
         var _loc9_:Array = null;
         var _loc10_:int = 0;
         if(!_loc12_)
         {
            this.§50§ = false;
         }
         var _loc1_:String = this.§'"M§.text.charAt(this.§'"M§.caretIndex);
         if(_loc11_ || _loc2_)
         {
            §§push(this.§'"M§.caretIndex < this.§'"M§.text.length);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(_loc1_);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop() == "");
                                 if(!_loc12_)
                                 {
                                    §§push(!§§pop());
                                    while(true)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc11_ || _loc2_))
                                          {
                                             continue loop1;
                                          }
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc12_ && this))
                                                      {
                                                         if(_loc11_ || _loc3_)
                                                         {
                                                            return;
                                                         }
                                                         loop7:
                                                         while(true)
                                                         {
                                                            if(_loc12_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            §§push(_loc1_);
                                                            if(_loc12_ && _loc2_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            §§push(§§pop() == " ");
                                                            if(_loc12_ && _loc2_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            if(!(_loc12_ && _loc1_))
                                                            {
                                                               if(_loc11_ || _loc2_)
                                                               {
                                                                  if(!_loc12_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               continue loop9;
                                                            }
                                                            addr132:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop7;
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(false)
                                                            {
                                                               continue loop4;
                                                            }
                                                         }
                                                         addr113:
                                                      }
                                                   }
                                                   §§push(§3@§.§3b§(this.§'"M§));
                                                   if(!_loc12_)
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                   var _loc2_:* = §§pop();
                                                   var _loc3_:String = this.§'"M§.text.substr(_loc2_,this.§'"M§.caretIndex);
                                                   var _loc4_:Array = _loc3_.split("");
                                                   if(_loc11_)
                                                   {
                                                      §§push(this.§,"_§);
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(!§§pop());
                                                         loop14:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() < 1);
                                                                        if(!_loc11_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc12_)
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        loop26:
                                                                        while(true)
                                                                        {
                                                                           §§push(int(this.§'"M§.caretIndex));
                                                                           if(!(_loc11_ || this))
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc7_ = §§pop();
                                                                           do
                                                                           {
                                                                              if(_loc11_ || _loc1_)
                                                                              {
                                                                                 if(_loc12_ && _loc2_)
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 §§push(§3@§.§+"O§(this.§'"M§));
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc11_ || this)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    addr325:
                                                                                    _loc10_ = (_loc9_ = §§pop().split(" ")).indexOf(_loc8_);
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          §§push(§§pop() + _loc5_);
                                                                                       }
                                                                                       _loc8_ = §§pop();
                                                                                       _loc9_.splice(_loc10_,1,_loc8_);
                                                                                       addr373:
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          this.§'"M§.text = _loc9_.join(" ");
                                                                                          addr364:
                                                                                          if(!_loc12_)
                                                                                          {
                                                                                             addr347:
                                                                                             this.§'"M§.setSelection(_loc7_,_loc7_ + _loc5_.length);
                                                                                             this.§50§ = true;
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr347);
                                                                                                   }
                                                                                                   §§goto(addr394);
                                                                                                }
                                                                                                §§goto(addr364);
                                                                                             }
                                                                                             addr356:
                                                                                             §§goto(addr356);
                                                                                          }
                                                                                          §§goto(addr373);
                                                                                       }
                                                                                       addr393:
                                                                                       §§goto(addr393);
                                                                                    }
                                                                                    §§goto(addr347);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    loop24:
                                                                                    while(_loc11_ || _loc3_)
                                                                                    {
                                                                                       _loc6_ = §§pop();
                                                                                       while(!(_loc12_ && _loc3_))
                                                                                       {
                                                                                          continue loop26;
                                                                                       }
                                                                                       loop21:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc11_ || _loc3_)
                                                                                          {
                                                                                             loop22:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                if(!(_loc11_ || _loc3_))
                                                                                                {
                                                                                                   continue loop24;
                                                                                                }
                                                                                                if(!(_loc12_ && this))
                                                                                                {
                                                                                                   if(!_loc12_)
                                                                                                   {
                                                                                                      if(§§pop().length <= 0)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop24;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                      }
                                                                                                      addr314:
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         _loc5_ = §§pop();
                                                                                                         continue loop21;
                                                                                                      }
                                                                                                   }
                                                                                                   addr289:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc5_ = §§pop();
                                                                                                   continue loop22;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr394);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                             }
                                                                                             addr310:
                                                                                          }
                                                                                          §§goto(addr314);
                                                                                       }
                                                                                       addr271:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr289);
                                                                                       §§goto(addr263);
                                                                                    }
                                                                                    addr263:
                                                                                    addr288:
                                                                                 }
                                                                                 §§goto(addr394);
                                                                              }
                                                                              §§goto(addr316);
                                                                           }
                                                                           while(_loc8_ = §§pop(), !_loc11_);
                                                                           
                                                                           if(_loc11_)
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr325);
                                                                                 §§push(_loc6_);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr259);
                                                                              }
                                                                              addr394:
                                                                              return;
                                                                           }
                                                                           §§goto(addr271);
                                                                        }
                                                                     }
                                                                     continue loop15;
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§push(this.§,"_§);
                                                                  if(_loc12_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr288);
                                                                  §§push(§§pop().§#"_§(_loc4_));
                                                               }
                                                            }
                                                            continue loop13;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr310);
                                                }
                                             }
                                             addr96:
                                          }
                                       }
                                    }
                                    addr122:
                                 }
                                 §§goto(addr132);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr122);
               }
            }
         }
         §§goto(addr113);
      }
      
      public function §&!z§(param1:String, param2:Boolean = false, param3:Boolean = true) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            §§push(this.§,"_§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr141:
                        while(true)
                        {
                           §§push(param2);
                           addr98:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              addr99:
                              while(!(_loc5_ || param2))
                              {
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           §§push(param3);
                           if(!(_loc4_ && param2))
                           {
                              if(_loc5_)
                              {
                                 if(!(_loc4_ && param3))
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc4_ && param2))
                                       {
                                          if(!(_loc4_ && this))
                                          {
                                             if(!_loc4_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   addr85:
                                                   §§push(this.§2#;§.contains(param1));
                                                   if(_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   addr121:
                                                   while(!§§pop())
                                                   {
                                                      continue loop6;
                                                   }
                                                }
                                                else
                                                {
                                                   while(!_loc4_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§goto(addr141);
                                                   addr108:
                                                }
                                             }
                                             §§goto(addr133);
                                          }
                                          continue;
                                       }
                                       §§goto(addr85);
                                    }
                                    §§push(false);
                                    if(!_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          return §§pop();
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr85);
                                 }
                                 §§goto(addr99);
                              }
                              addr133:
                              return true;
                           }
                           §§goto(addr85);
                        }
                        if(!(_loc4_ && param2))
                        {
                           break;
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr108);
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr141);
      }
      
      public function get §%!e§() : TextField
      {
         return this.§'"M§;
      }
      
      public function set §%!e§(param1:TextField) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var value:TextField = param1;
         try
         {
            try
            {
               this.§'"M§.removeEventListener(Event.CHANGE,this.§8!%§);
               if(!_loc5_)
               {
                  this.§'"M§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§,G§);
                  if(_loc6_)
                  {
                     addr56:
                     §§push(-1);
                     if(_loc6_ || this)
                     {
                        this.§'"M§ = value;
                        if(!(_loc5_ && _loc3_))
                        {
                           this.§'"M§.addEventListener(Event.CHANGE,this.§8!%§);
                           if(_loc6_ || param1)
                           {
                           }
                           addr142:
                           switch(§§pop())
                           {
                              case 0:
                                 §§goto(addr93);
                              default:
                                 §§goto(addr143);
                           }
                        }
                        this.§'"M§.addEventListener(KeyboardEvent.KEY_DOWN,this.§,G§);
                     }
                     §§goto(addr142);
                     addr42:
                  }
                  addr143:
                  return;
               }
               §§goto(addr42);
            }
            catch(e:Error)
            {
               var _loc3_:* = e;
            }
            §§goto(addr56);
         }
         catch(_loc_e_:*)
         {
            addr93:
            throw _loc4_;
         }
      }
      
      public function §]#Z§(param1:String) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var str:String = param1;
         try
         {
            return this.§2#;§.§]#Z§(str);
         }
         catch(e:Error)
         {
            var _loc3_:* = e;
            if(!(_loc4_ && _loc3_))
            {
               §§push(§,"_§);
               if(_loc5_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        addr70:
                        §§push(§,"_§);
                     }
                  }
                  throw new Error("No correct case found");
               }
               return §§pop().§]#Z§(str);
            }
            §§goto(addr70);
         }
      }
   }
}
