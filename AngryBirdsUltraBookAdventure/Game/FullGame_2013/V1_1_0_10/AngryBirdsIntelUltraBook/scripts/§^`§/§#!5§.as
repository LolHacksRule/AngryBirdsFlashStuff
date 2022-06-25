package §^`§
{
   import §-5§.§+p§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §#!5§ extends §,!K§
   {
       
      
      private var §2!N§:MovieClip;
      
      private var §?§:Boolean;
      
      public function §#!5§(param1:String, param2:String, param3:MovieClip, param4:Boolean = false, param5:String = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param2))
         {
            this.§2!N§ = param3;
         }
         do
         {
            super(param1,param2,param4,param5);
         }
         while(!(_loc7_ || param3));
         
      }
      
      public function set §2s§(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2!N§ = param1;
         }
      }
      
      public function get §2s§() : MovieClip
      {
         return this.§2!N§;
      }
      
      public function get §3!_§() : Boolean
      {
         return this.§?§;
      }
      
      override protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || this)
         {
            §§push(§§findproperty(§#!@§));
            if(_loc7_ || param1)
            {
               §§push(param4);
               if(_loc7_)
               {
                  §§push(§§pop());
                  if(!(_loc6_ && this))
                  {
                     addr43:
                     §§push(§§pop());
                     if(_loc7_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc6_ && param3))
                           {
                              addr54:
                              §§pop();
                              §§push(§14§.§93§);
                              if(!(_loc6_ && param1))
                              {
                                 §§push(§§pop());
                                 if(!_loc6_)
                                 {
                                    addr67:
                                    var _loc5_:*;
                                    §§push(_loc5_ = §§pop());
                                    if(!_loc6_)
                                    {
                                       addr87:
                                       §§push(§§pop());
                                       if(!_loc6_)
                                       {
                                          addr84:
                                          param4 = §§pop();
                                          §§push(_loc5_);
                                       }
                                       §§pop().§#!@§ = §§pop();
                                       if(_loc7_ || param2)
                                       {
                                          §][§ = param1;
                                          loop0:
                                          while(true)
                                          {
                                             §&"!§ = §+p§.§!!I§ == param1;
                                             addr167:
                                             loop5:
                                             while(true)
                                             {
                                                §+C§(param1,param2,param3);
                                                loop3:
                                                for(; §&"!§; continue loop5)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §"x§.push(this);
                                                   }
                                                   loop4:
                                                   while(true)
                                                   {
                                                      if(_loc6_ && param1)
                                                      {
                                                         continue loop5;
                                                      }
                                                      while(true)
                                                      {
                                                         addEventListener(Event.ADDED_TO_STAGE,§#Z§);
                                                         while(true)
                                                         {
                                                            if(!(_loc6_ && this))
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop4;
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                }
                                                return;
                                             }
                                          }
                                       }
                                       §§goto(addr152);
                                    }
                                    §§goto(addr84);
                                 }
                              }
                              §§goto(addr87);
                           }
                        }
                     }
                     §§goto(addr67);
                  }
                  §§goto(addr54);
               }
               §§goto(addr43);
            }
            §§goto(addr54);
         }
         §§goto(addr167);
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && this))
         {
            §[Y§ = true;
            loop0:
            while(true)
            {
               §4!^§ = new §>!N§(param1,§#!@§,true);
               while(true)
               {
                  this.§2!N§.visible = false;
                  while(true)
                  {
                     this.§?§ = true;
                     while(!(_loc6_ && param1))
                     {
                        §4!^§.visible = true;
                        while(!_loc6_)
                        {
                           §§push(Boolean(§4!^§));
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                 }
                                 addr80:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§goto(addr49);
                                 }
                                 addr48:
                              }
                              §§goto(addr81);
                              addr40:
                              if(!(_loc7_ || this))
                              {
                                 continue;
                              }
                              §§goto(addr48);
                              §§push(!§§pop());
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(param5);
            if(!_loc6_)
            {
               if(_loc7_ || param1)
               {
                  §§goto(addr40);
               }
               §§goto(addr80);
            }
            addr49:
            while(§§pop())
            {
               if(_loc7_ || param1)
               {
                  if(!_loc7_)
                  {
                     while(_loc7_)
                     {
                        continue loop1;
                     }
                     continue loop3;
                     addr81:
                  }
                  addChild(§4!^§);
               }
               if(_loc7_)
               {
                  break;
               }
               continue loop4;
            }
            return;
         }
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            this.§?§ = false;
            loop0:
            while(true)
            {
               this.§2!N§.visible = true;
               loop1:
               while(true)
               {
                  if(!(_loc4_ && param3))
                  {
                     if(§4!^§)
                     {
                        if(!_loc4_)
                        {
                           while(true)
                           {
                              §4!^§.visible = false;
                           }
                           addr54:
                        }
                        while(true)
                        {
                           if(_loc5_)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr54);
      }
   }
}
