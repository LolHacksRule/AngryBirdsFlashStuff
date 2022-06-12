package § " §
{
   import §-!+§.§ 7§;
   import flash.events.Event;
   
   public class §?!e§ extends §2!!§
   {
       
      
      public function §?!e§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            §§push(§§findproperty(§%" §));
            if(!_loc7_)
            {
               §§push(param4);
               if(!(_loc7_ && this))
               {
                  §§push(§§pop());
                  if(_loc6_ || param1)
                  {
                     §§push(§§pop());
                     if(!(_loc7_ && param2))
                     {
                        if(!§§pop())
                        {
                           if(!_loc7_)
                           {
                              §§goto(addr48);
                           }
                           §§goto(addr68);
                        }
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr48);
               }
               §§goto(addr71);
            }
            addr48:
            §§pop();
            §§push(§+!p§.§'"6§);
            if(!(_loc7_ && param2))
            {
               addr68:
               §§push(§§pop());
               if(!_loc7_)
               {
                  addr71:
                  var _loc5_:*;
                  §§push(_loc5_ = §§pop());
                  if(_loc6_ || this)
                  {
                     §§goto(addr91);
                  }
                  §§goto(addr88);
               }
            }
            addr91:
            §§push(§§pop());
            if(!(_loc7_ && param3))
            {
               addr88:
               param4 = §§pop();
               §§push(_loc5_);
            }
            §§pop().§%" § = §§pop();
            if(!(_loc7_ && param1))
            {
               §"S§ = param1;
               addr141:
               while(true)
               {
                  §+e§ = § 7§.§+!z§ == param1;
               }
               addr141:
            }
            while(true)
            {
               §,!K§(param1,param2,param3);
               if(!_loc6_)
               {
                  continue;
               }
               if(_loc6_ || param2)
               {
                  break;
               }
               §§goto(addr141);
            }
            return;
         }
         §§goto(addr141);
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §3!"§(§#!j§).§^!6§();
         }
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §3!"§(§#!j§).dispose();
         }
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            if(§#!j§)
            {
               if(!_loc7_)
               {
                  if(§#!j§ is §3!"§)
                  {
                     while(true)
                     {
                        §3!"§(§#!j§).dispose();
                        addr42:
                        if(_loc7_ && param3)
                        {
                           continue;
                        }
                        return;
                        addr59:
                     }
                  }
                  loop2:
                  while(true)
                  {
                     §?!Y§ = true;
                     while(true)
                     {
                        §#!j§ = new §3!"§(param1,§%" §,true);
                        while(!(_loc7_ && this))
                        {
                           §#!j§.visible = true;
                           loop5:
                           while(!(_loc7_ && param3))
                           {
                              if(!_loc7_)
                              {
                                 addChild(§#!j§);
                                 while(true)
                                 {
                                    §3!"§(§#!j§).§^!6§();
                                    if(!(_loc6_ || param1))
                                    {
                                       continue;
                                    }
                                    if(!_loc6_)
                                    {
                                       continue loop5;
                                    }
                                    §§goto(addr42);
                                 }
                                 §§goto(addr59);
                                 continue;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  addr105:
               }
               while(true)
               {
               }
            }
            §§goto(addr105);
         }
         §§goto(addr64);
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            if(§#!j§)
            {
               if(!(_loc4_ && this))
               {
                  §#!j§.visible = false;
               }
            }
         }
      }
   }
}
