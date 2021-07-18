package § "!§
{
   import §2!o§.§?j§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §-"$§ extends § ! §
   {
       
      
      private var §8<§:MovieClip;
      
      private var §1e§:Boolean;
      
      public function §-"$§(param1:String, param2:String, param3:MovieClip, param4:Boolean = false, param5:String = null)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param2)
         {
            this.§8<§ = param3;
            do
            {
               super(param1,param2,param4,param5);
            }
            while(!(_loc6_ || param2));
            
         }
      }
      
      public function set §&s§(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§8<§ = param1;
         }
      }
      
      public function get §&s§() : MovieClip
      {
         return this.§8<§;
      }
      
      public function get §5"$§() : Boolean
      {
         return this.§1e§;
      }
      
      override protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            §§push(§§findproperty(§'""§));
            if(!(_loc6_ && param3))
            {
               §§push(param4);
               if(_loc7_)
               {
                  §§push(§§pop());
                  if(_loc7_ || this)
                  {
                     addr38:
                     §§push(§§pop());
                     if(_loc7_ || this)
                     {
                        if(!§§pop())
                        {
                           if(_loc7_)
                           {
                              §§pop();
                              addr50:
                              §§push(§!"O§.§'"O§);
                              if(!_loc6_)
                              {
                                 §§push(§§pop());
                                 if(_loc6_)
                                 {
                                 }
                                 addr82:
                                 §§pop().§'""§ = §§pop();
                                 if(!_loc6_)
                                 {
                                    §'F§ = param1;
                                    loop0:
                                    while(true)
                                    {
                                       §3!a§ = §?j§.§1"[§ == param1;
                                       loop1:
                                       while(true)
                                       {
                                          §@2§(param1,param2,param3);
                                          loop2:
                                          while(§3!a§)
                                          {
                                             loop3:
                                             for(; !_loc6_; if(!(_loc6_ && param1))
                                             {
                                                continue loop0;
                                             })
                                             {
                                                §-!d§.push(this);
                                                loop4:
                                                while(true)
                                                {
                                                   addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
                                                   while(true)
                                                   {
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         continue loop3;
                                                      }
                                                      continue loop4;
                                                      addr145:
                                                      addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
                                                      if(!(_loc6_ && this))
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            addr106:
                                                            break loop2;
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                          }
                                          return;
                                       }
                                    }
                                 }
                                 §§goto(addr106);
                              }
                           }
                        }
                        §§push(§§pop());
                     }
                     var _loc5_:* = §§pop();
                     if(_loc7_)
                     {
                        §§push(§§pop());
                        if(!(_loc6_ && param2))
                        {
                           addr79:
                           param4 = §§pop();
                           §§push(_loc5_);
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr82);
               }
               §§goto(addr38);
            }
            §§goto(addr50);
         }
         §§goto(addr106);
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            if(§`F§)
            {
               while(true)
               {
                  §§push(§`F§ is §]"@§);
                  addr195:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §]"@§(§`F§).dispose();
                           addr200:
                           while(true)
                           {
                           }
                        }
                        addr196:
                     }
                  }
               }
               addr192:
            }
            while(true)
            {
               §>!k§ = true;
               while(true)
               {
                  if(_loc7_ || param3)
                  {
                     §`F§ = new §]"@§(param1,§'""§,true);
                     loop6:
                     while(true)
                     {
                        this.§8<§.visible = false;
                        while(true)
                        {
                           this.§1e§ = true;
                           loop8:
                           for(; !(_loc6_ && param3); if(_loc7_ || param2)
                           {
                              continue loop6;
                           })
                           {
                              §`F§.visible = true;
                              loop9:
                              while(_loc7_)
                              {
                                 §§push(Boolean(§`F§));
                                 if(!_loc6_)
                                 {
                                    if(§§pop())
                                    {
                                       loop18:
                                       while(true)
                                       {
                                          §§pop();
                                          addr133:
                                          loop14:
                                          while(true)
                                          {
                                             §§push(param5);
                                             if(_loc7_ || param1)
                                             {
                                                if(_loc6_ && param1)
                                                {
                                                   continue loop18;
                                                }
                                                if(!_loc6_)
                                                {
                                                   §§push(!§§pop());
                                                   while(true)
                                                   {
                                                      break loop14;
                                                      §§goto(addr85);
                                                   }
                                                   addr85:
                                                   addr96:
                                                }
                                                else
                                                {
                                                   §§goto(addr195);
                                                }
                                             }
                                             break;
                                          }
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   §`F§.x = 35;
                                                   while(true)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   addr101:
                                                   while(true)
                                                   {
                                                      if(_loc7_ || param1)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         continue loop9;
                                                      }
                                                      §§goto(addr133);
                                                   }
                                                   §§goto(addr195);
                                                }
                                                addr60:
                                             }
                                             while(true)
                                             {
                                                addChild(§`F§);
                                                §§goto(addr101);
                                             }
                                          }
                                       }
                                       addr132:
                                    }
                                    §§goto(addr96);
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr200);
                           }
                        }
                        if(!(_loc7_ || this))
                        {
                           continue;
                        }
                        §§goto(addr60);
                     }
                     addr177:
                  }
                  break;
                  if(_loc6_ && this)
                  {
                     continue;
                  }
                  if(_loc7_)
                  {
                     return;
                  }
                  §§goto(addr192);
               }
               §§goto(addr196);
            }
         }
         §§goto(addr177);
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(§`F§)
            {
               if(!(_loc3_ && this))
               {
                  §]"@§(§`F§).§ "Y§();
               }
            }
         }
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§`F§)
            {
               if(!(_loc2_ && param1))
               {
                  addr28:
                  §]"@§(§`F§).dispose();
               }
            }
            return;
         }
         §§goto(addr28);
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            this.§1e§ = false;
            loop0:
            while(true)
            {
               this.§8<§.visible = true;
               while(§`F§)
               {
                  if(!(_loc5_ && param1))
                  {
                     if(!_loc4_)
                     {
                        continue loop0;
                     }
                     §`F§.visible = false;
                  }
                  if(!_loc5_)
                  {
                     addr65:
                     break;
                  }
               }
               return;
            }
         }
         §§goto(addr65);
      }
   }
}
