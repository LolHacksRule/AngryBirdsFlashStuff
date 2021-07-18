package § "!§
{
   import §2!o§.§?j§;
   import flash.events.Event;
   
   public class §'q§ extends § ! §
   {
       
      
      public function §'q§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param2)
         {
            §§push(§§findproperty(§'""§));
            if(!(_loc7_ && param3))
            {
               §§push(param4);
               if(_loc6_ || param2)
               {
                  §§push(§§pop());
                  if(_loc6_ || this)
                  {
                     §§push(§§pop());
                     if(_loc6_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc7_ && param1))
                           {
                              addr68:
                              §§pop();
                              §§push(§!"O§.§'"O§);
                              if(_loc6_ || param1)
                              {
                                 §§push(§§pop());
                                 if(_loc6_ || param1)
                                 {
                                 }
                                 addr101:
                                 §§pop().§'""§ = §§pop();
                                 if(!(_loc7_ && this))
                                 {
                                    §'F§ = param1;
                                    while(true)
                                    {
                                       §3!a§ = §?j§.§1"[§ == param1;
                                       loop1:
                                       while(!_loc7_)
                                       {
                                          while(true)
                                          {
                                             §@2§(param1,param2,param3);
                                             if(_loc6_)
                                             {
                                                break;
                                             }
                                             continue loop1;
                                          }
                                          return;
                                       }
                                    }
                                 }
                                 §§goto(addr142);
                              }
                              §§goto(addr101);
                           }
                        }
                        §§push(§§pop());
                     }
                     var _loc5_:* = §§pop();
                     if(!(_loc7_ && param2))
                     {
                        §§push(§§pop());
                        if(!_loc7_)
                        {
                           addr98:
                           param4 = §§pop();
                           §§push(_loc5_);
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr68);
               }
               §§goto(addr101);
            }
            §§goto(addr68);
         }
         §§goto(addr132);
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §]"@§(§`F§).§ "Y§();
         }
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §]"@§(§`F§).dispose();
         }
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            if(§`F§)
            {
               while(true)
               {
                  if(§`F§ is §]"@§)
                  {
                     while(true)
                     {
                        §]"@§(§`F§).dispose();
                        addr113:
                        while(true)
                        {
                        }
                     }
                     addr109:
                  }
               }
               addr105:
            }
            while(true)
            {
               §]C§ = true;
               while(_loc7_)
               {
                  §`F§ = new §]"@§(param1,§'""§,true);
                  loop5:
                  while(_loc7_ || param2)
                  {
                     §`F§.visible = true;
                     do
                     {
                        addChild(§`F§);
                        for(; _loc7_ || param1; §]"@§(§`F§).§ "Y§(),if(_loc6_)
                        {
                           continue;
                        },§§goto(addr31))
                        {
                           if(_loc7_)
                           {
                              if(_loc7_)
                              {
                                 continue;
                              }
                              §§goto(addr105);
                           }
                           §§goto(addr113);
                        }
                        continue loop5;
                     }
                     while(_loc6_ && param3);
                     
                     return;
                  }
               }
               §§goto(addr109);
            }
         }
         §§goto(addr69);
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(§`F§)
            {
               if(!_loc5_)
               {
                  addr22:
                  §`F§.visible = false;
               }
            }
            return;
         }
         §§goto(addr22);
      }
   }
}
