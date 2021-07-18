package §20§
{
   import §'!O§.§#!_§;
   import §'!O§.§<r§;
   import §'!O§.§=j§;
   import §2`§.HighscoreSidebar;
   import §3Q§.§+!]§;
   import §3Y§.§4!_§;
   import §3Y§.§7!>§;
   import §5!1§.§"!X§;
   import §8P§.§1A§;
   import §9b§.§"!S§;
   import §;!3§.§;!P§;
   import §<u§.§]!Q§;
   import §@R§.set;
   import §^!5§.§,4§;
   
   public class §9!C§ extends Popup
   {
      
      private static var §`!2§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §`!2§ = §0!f§;
         }
      }
      
      private var §!!f§:StatePopupManager;
      
      private var §<5§:Boolean = false;
      
      public function §9!C§(param1:§]!Q§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(set.§=!^§(§`!2§),param1);
            while(true)
            {
               §>K§ = param1;
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.§!!f§ = param2;
                     do
                     {
                        this.§!!f§.addEventListener(§+!]§.§0!S§,this.onUiInteraction);
                     }
                     while(_loc3_ && param1);
                     
                     if(_loc4_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr73);
      }
      
      private function onUiInteraction(param1:§+!]§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.uiInteractionHandler(param1.§78§,param1.§<Y§,param1.§4H§);
         }
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || this)
         {
            if("LOGOUT_YES" !== _loc4_)
            {
               if("LOGOUT_NO" === _loc4_)
               {
                  §§goto(addr80);
               }
               else
               {
                  §§push(2);
               }
               addr98:
               switch(§§pop())
               {
                  case 0:
                     this.preClose();
                     if(!_loc5_)
                     {
                        addr27:
                        this.§<5§ = true;
                        if(!_loc5_)
                        {
                           break;
                        }
                        break;
                     }
                     break;
                  case 1:
                     this.preClose();
                     if(!_loc5_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr27);
                     }
               }
               return;
            }
            if(!(_loc5_ && param3))
            {
               addr73:
               §§push(0);
               if(!_loc6_)
               {
                  addr93:
               }
            }
            else
            {
               addr80:
               §§push(1);
               if(!_loc5_)
               {
                  §§goto(addr93);
               }
            }
            §§goto(addr98);
            §§goto(addr80);
         }
         §§goto(addr73);
      }
      
      override public function close() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = 0;
         if(_loc3_ || _loc3_)
         {
            super.close();
            while(true)
            {
               this.deActivate();
               addr249:
               if(!(_loc3_ || _loc1_))
               {
                  continue;
               }
               while(true)
               {
                  §§push(§-Z§.§ !6§);
                  loop3:
                  while(true)
                  {
                     if(§§pop())
                     {
                        §-Z§.§5P§();
                        break;
                     }
                     loop4:
                     while(true)
                     {
                        §§push(0);
                        loop5:
                        while(true)
                        {
                           _loc1_ = §§pop();
                           loop6:
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(_loc2_)
                                 {
                                    continue loop5;
                                 }
                                 if(§§pop() >= §"!b§.§2F§.length)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       this.§<5§ = false;
                                       loop9:
                                       while(!(_loc2_ && _loc2_))
                                       {
                                          §#!_§.§<!9§ = true;
                                          loop10:
                                          while(!(_loc2_ && _loc3_))
                                          {
                                             if(!_loc3_)
                                             {
                                                addr233:
                                                §"!b§.§2F§[_loc1_].close();
                                                addr230:
                                                break;
                                             }
                                             §,L§.§8!F§ = new §7!>§("");
                                             loop11:
                                             while(true)
                                             {
                                                §4!_§.§,t§ = new §;!P§();
                                                while(true)
                                                {
                                                   §"!S§.§99§();
                                                   addr145:
                                                   while(!_loc2_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   continue loop9;
                                                   addr101:
                                                   if(!(_loc3_ || _loc3_))
                                                   {
                                                      continue;
                                                   }
                                                   §,4§.§&O§(§,4§.§`Y§(HighscoreSidebar.§1!§));
                                                   loop19:
                                                   while(true)
                                                   {
                                                      §,L§.§+w§.§9^§(§<r§.§@o§);
                                                      while(true)
                                                      {
                                                         if(_loc3_ || _loc1_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         continue loop19;
                                                         addr81:
                                                         §=j§.sHighscoreSidebar.reset();
                                                         if(!(_loc3_ || this))
                                                         {
                                                            continue;
                                                         }
                                                         addr42:
                                                         if(!(_loc2_ && _loc3_))
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(_loc3_ || _loc1_)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     §§goto(addr27);
                                                                  }
                                                                  break loop3;
                                                               }
                                                               continue loop4;
                                                            }
                                                            continue loop10;
                                                         }
                                                         loop18:
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  loop16:
                                                                  while(!_loc2_)
                                                                  {
                                                                     addr141:
                                                                     §§push(§"!S§.§-!7§);
                                                                     if(_loc3_ || this)
                                                                     {
                                                                        §§push(false);
                                                                        if(_loc3_)
                                                                        {
                                                                           §§pop().§3g§(§§pop());
                                                                           while(true)
                                                                           {
                                                                              §<r§.§>!D§ = §#!_§.§@o§;
                                                                              continue loop18;
                                                                           }
                                                                           addr123:
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(false);
                                                                           §§goto(addr141);
                                                                        }
                                                                        addr127:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop().§%2§(§§pop());
                                                                        continue loop16;
                                                                     }
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr101);
                                                            }
                                                            §§goto(addr123);
                                                         }
                                                         §§goto(addr145);
                                                      }
                                                      continue loop11;
                                                   }
                                                }
                                             }
                                          }
                                          _loc1_++;
                                          break;
                                       }
                                       continue loop7;
                                    }
                                 }
                                 else
                                 {
                                    §§push(§"!b§.§2F§);
                                    if(_loc3_)
                                    {
                                       §§push(_loc1_);
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§push(§§pop()[§§pop()] is Popup);
                                          if(!(_loc3_ || _loc2_))
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             §§goto(addr230);
                                          }
                                          §§goto(addr201);
                                       }
                                       §§goto(addr233);
                                    }
                                 }
                                 §§goto(addr233);
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(this.§<5§)
         {
            if(!_loc3_)
            {
               continue;
            }
            §§goto(addr249);
         }
         addr27:
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1)
            {
               while(true)
               {
                  mClip.scaleX = 0;
                  addr131:
                  while(true)
                  {
                     mClip.scaleY = 0;
                     while(true)
                     {
                        if(§@J§ != null)
                        {
                           continue;
                        }
                        loop4:
                        while(true)
                        {
                           §@J§ = §"!X§.§ s§.§%!;§(this.mClip,{
                              "scaleX":1,
                              "scaleY":1
                           },{
                              "scaleX":0,
                              "scaleY":0
                           },0.25,§"!X§.§<!e§);
                           while(true)
                           {
                              §@J§.play();
                              addr55:
                              while(_loc3_ || _loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    continue;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
                  addr44:
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  return;
                  addr51:
               }
            }
            while(true)
            {
               super.open(param1);
               if(_loc3_ || _loc2_)
               {
                  if(!_loc2_)
                  {
                     if(!(_loc2_ && this))
                     {
                        §§goto(addr44);
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr101);
               }
               §§goto(addr55);
            }
            §§goto(addr51);
         }
         §§goto(addr108);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.preClose(param1);
            loop0:
            while(param1)
            {
               do
               {
                  if(_loc2_ || this)
                  {
                     if(§@J§ != null)
                     {
                        addr101:
                        while(true)
                        {
                           §@J§.stop();
                           addr103:
                           while(true)
                           {
                           }
                        }
                        addr101:
                     }
                     while(true)
                     {
                        §@J§ = §"!X§.§ s§.§%!;§(this.mClip,{
                           "scaleX":0,
                           "scaleY":0
                        },null,0.25,§"!X§.§@4§);
                        do
                        {
                           §@J§.play();
                        }
                        while(!(_loc2_ || _loc2_));
                        
                        if(!_loc2_)
                        {
                           continue;
                        }
                        if(!(_loc3_ && param1))
                        {
                           break;
                        }
                        §§goto(addr101);
                     }
                     continue;
                  }
                  continue loop0;
               }
               while(!(_loc2_ || this));
               
               break;
            }
            return;
         }
         §§goto(addr101);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§!!f§.removeEventListener(§+!]§.§0!S§,this.onUiInteraction);
         }
         do
         {
            super.deActivate();
         }
         while(!_loc2_);
         
      }
   }
}
