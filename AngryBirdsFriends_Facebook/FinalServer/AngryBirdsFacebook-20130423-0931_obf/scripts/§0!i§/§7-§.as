package §0!i§
{
   import §,l§.§+I§;
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §5!Y§.§9"6§;
   import §5!Y§.§]!I§;
   import §9@§.§1!j§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §7-§ extends EventDispatcher
   {
       
      
      private var §;9§:§3d§;
      
      public function §7-§(param1:String, param2:String, param3:int)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            super();
         }
         do
         {
            this.§@!j§(param1,param2,param3);
         }
         while(_loc5_ && param3);
         
      }
      
      private function §@!j§(param1:String, param2:String, param3:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            §§push(this.§;9§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(_loc6_ || param3)
                  {
                     break;
                  }
                  while(true)
                  {
                     addr56:
                     if(!(_loc6_ || param1))
                     {
                        continue;
                     }
                     if(false)
                     {
                        loop10:
                        while(true)
                        {
                           §§push(this.§;9§);
                           addr68:
                           loop11:
                           while(!(_loc5_ && this))
                           {
                              §§pop().addEventListener(§9G§.§33§,this.§]4§);
                              while(true)
                              {
                                 §§push(this.§;9§);
                                 if(_loc6_)
                                 {
                                    continue;
                                 }
                                 continue loop11;
                              }
                              while(_loc6_)
                              {
                                 §§pop().addEventListener(Event.COMPLETE,this.§17§);
                                 §§goto(addr123);
                                 §§goto(addr30);
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              if(_loc6_)
                              {
                                 §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]4§);
                                 break loop10;
                              }
                              break;
                              §§goto(addr68);
                           }
                           §§goto(addr107);
                        }
                        while(true)
                        {
                           if(_loc6_)
                           {
                              §§goto(addr65);
                           }
                           break;
                           §§goto(addr42);
                        }
                        addr65:
                        §§goto(addr112);
                     }
                     §§push(§9!7§);
                     §§push(AngryBirdsFP11.§?8§ + "/draw/submitentry/");
                     if(!_loc5_)
                     {
                        §§push(param1);
                        if(_loc6_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc5_ && param3))
                           {
                              §§push("/");
                              if(_loc6_ || this)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc6_)
                                 {
                                    addr189:
                                    §§push(§§pop() + param2);
                                    if(!_loc5_)
                                    {
                                       addr193:
                                       addr192:
                                       §§push(§§pop() + "/");
                                       if(_loc6_ || param1)
                                       {
                                       }
                                       §§goto(addr203);
                                    }
                                 }
                                 addr203:
                                 var _loc4_:URLRequest = §§pop().§,!l§(§§pop());
                                 if(_loc6_ || param2)
                                 {
                                    this.§;9§.load(_loc4_);
                                 }
                                 return;
                                 §§push(§§pop() + param3);
                              }
                              §§goto(addr193);
                           }
                           §§goto(addr192);
                        }
                        §§goto(addr189);
                     }
                     §§goto(addr193);
                  }
               }
               while(true)
               {
                  this.§;9§ = new §3d§();
                  §§goto(addr136);
               }
            }
            return;
         }
         §§goto(addr112);
      }
      
      private function §17§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[2] = null;
            while(true)
            {
               §§push(§§newactivation());
               if(_loc5_ && _loc2_)
               {
                  break;
               }
               §§pop().§§slot[1] = param1;
               loop2:
               while(!_loc5_)
               {
                  §§push(this.§;9§);
                  loop3:
                  while(true)
                  {
                     §§pop().removeEventListener(Event.COMPLETE,this.§17§);
                     loop4:
                     while(true)
                     {
                        §§push(this.§;9§);
                        while(true)
                        {
                           §§pop().removeEventListener(IOErrorEvent.IO_ERROR,this.§]4§);
                           while(!_loc5_)
                           {
                              while(true)
                              {
                                 §§push(this.§;9§);
                                 continue loop3;
                                 §§goto(addr45);
                              }
                           }
                           continue loop2;
                           addr26:
                           if(!(_loc5_ && this))
                           {
                              addr33:
                              §§pop().removeEventListener(§9G§.§33§,this.§]4§);
                              if(!(_loc4_ || _loc3_))
                              {
                                 while(!_loc5_)
                                 {
                                    §§push(this.§;9§);
                                    if(!_loc4_)
                                    {
                                       continue loop3;
                                    }
                                    §§goto(addr26);
                                    §§goto(addr33);
                                 }
                                 continue loop4;
                                 addr69:
                              }
                              addr45:
                              if(!(_loc4_ || _loc3_))
                              {
                                 break loop7;
                              }
                              if(false)
                              {
                                 continue loop7;
                              }
                              try
                              {
                                 §§push(§§newactivation());
                                 if(!_loc5_)
                                 {
                                    §§pop().§§slot[2] = JSON.parse(this.§;9§.data);
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(§§newactivation());
                                       if(_loc4_)
                                       {
                                          §§goto(addr164);
                                       }
                                       addr217:
                                       if(!(rawJSONData.errorMessage is String))
                                       {
                                          dispatchEvent(new §]q§(§]q§.§@!u§,false,false,rawJSONData));
                                          addr186:
                                          if(!_loc4_)
                                          {
                                             §§goto(addr186);
                                          }
                                          if(_loc5_)
                                          {
                                             §§goto(addr218);
                                          }
                                       }
                                       §§goto(addr218);
                                    }
                                    addr218:
                                    throw new Error("SubmitEntryToDraw error:" + rawJSONData.errorMessage);
                                 }
                              }
                              catch(error:Error)
                              {
                                 throw new Error("Error parsing JSON: " + §;9§.data,§1!j§.§%e§);
                              }
                           }
                           continue;
                           addr164:
                           §§push(Boolean(§§pop().§§slot[2].errorMessage));
                           if(_loc4_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    §§goto(addr173);
                                 }
                              }
                              §§goto(addr217);
                           }
                           addr173:
                           §§pop();
                           if(_loc4_ || _loc2_)
                           {
                              §§goto(addr217);
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §]4§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§;9§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§17§);
            }
            addr124:
         }
         loop1:
         while(true)
         {
            §§push(this.§;9§);
            loop2:
            while(true)
            {
               §§pop().removeEventListener(IOErrorEvent.IO_ERROR,this.§]4§);
               loop3:
               while(_loc2_ || _loc3_)
               {
                  §§push(this.§;9§);
                  while(_loc2_)
                  {
                     §§pop().removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]4§);
                     loop5:
                     while(true)
                     {
                        §§push(this.§;9§);
                        if(!_loc2_)
                        {
                           break;
                        }
                        if(!_loc3_)
                        {
                           §§pop().removeEventListener(§9G§.§33§,this.§]4§);
                           while(_loc2_)
                           {
                              if(param1.type != §9G§.§33§)
                              {
                                 §9"6§.§#!o§();
                                 loop7:
                                 while(true)
                                 {
                                    if(!(_loc3_ && param1))
                                    {
                                       if(_loc2_)
                                       {
                                          continue;
                                       }
                                       addr63:
                                       while(true)
                                       {
                                          §9"6§.§>_§(§]!I§.§`'§);
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop7;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 if(_loc2_)
                                 {
                                    return;
                                 }
                                 continue;
                              }
                              §§goto(addr63);
                           }
                           continue loop3;
                        }
                        §§goto(addr124);
                     }
                  }
                  continue loop2;
               }
               continue loop1;
            }
         }
      }
      
      public function get §9"%§() : §+I§
      {
         return §%"S§.§!C§.§9"%§;
      }
   }
}
