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
         if(_loc7_ || this)
         {
            this.§2!N§ = param3;
         }
         do
         {
            super(param1,param2,param4,param5);
         }
         while(_loc6_);
         
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
               if(!(_loc6_ && param2))
               {
                  §§push(§§pop());
                  if(!(_loc6_ && param3))
                  {
                     §§push(§§pop());
                     if(!_loc6_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc6_ && param3))
                           {
                              addr59:
                              §§pop();
                              §§push(§14§.§93§);
                              if(_loc7_ || param3)
                              {
                                 addr69:
                                 §§push(§§pop());
                                 if(!(_loc6_ && param1))
                                 {
                                    addr77:
                                    var _loc5_:*;
                                    §§push(_loc5_ = §§pop());
                                    if(_loc7_)
                                    {
                                       §§goto(addr102);
                                    }
                                    §§goto(addr99);
                                 }
                              }
                           }
                           addr102:
                           §§push(§§pop());
                           if(!(_loc6_ && this))
                           {
                              addr99:
                              param4 = §§pop();
                              §§push(_loc5_);
                           }
                           §§pop().§#!@§ = §§pop();
                           if(_loc7_ || param1)
                           {
                              §][§ = param1;
                              while(true)
                              {
                                 §&"!§ = §+p§.§!!I§ == param1;
                                 addr192:
                                 while(true)
                                 {
                                    §+C§(param1,param2,param3);
                                 }
                              }
                              addr196:
                              addr110:
                           }
                           loop0:
                           while(§&"!§)
                           {
                              loop1:
                              for(; !(_loc6_ && this); if(!(_loc6_ && param1))
                              {
                                 if(_loc7_ || param3)
                                 {
                                    break loop0;
                                 }
                                 continue loop0;
                              })
                              {
                                 if(_loc7_ || param1)
                                 {
                                    §"x§.push(this);
                                    while(true)
                                    {
                                       addEventListener(Event.ADDED_TO_STAGE,§#Z§);
                                       while(!_loc6_)
                                       {
                                          addEventListener(Event.REMOVED_FROM_STAGE,§=!?§);
                                          if(_loc7_)
                                          {
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr196);
                                 }
                              }
                              §§goto(addr192);
                           }
                           return;
                        }
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr59);
               }
               §§goto(addr69);
            }
            §§goto(addr59);
         }
         §§goto(addr110);
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            §[Y§ = true;
            while(true)
            {
               §4!^§ = new §>!N§(param1,§#!@§,true);
               addr133:
               while(true)
               {
                  this.§2!N§.visible = false;
               }
            }
            addr137:
         }
         loop2:
         while(true)
         {
            this.§?§ = true;
            loop3:
            while(true)
            {
               if(!(_loc7_ && param1))
               {
                  if(!_loc7_)
                  {
                     §4!^§.visible = true;
                     loop4:
                     for(; !_loc7_; if(!(_loc7_ && this))
                     {
                        addr19:
                        return;
                     })
                     {
                        §§push(Boolean(§4!^§));
                        loop5:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          continue loop3;
                                       }
                                       addr66:
                                       if(!(_loc7_ && this))
                                       {
                                          continue loop4;
                                       }
                                       loop7:
                                       while(true)
                                       {
                                          §§push(param5);
                                          if(!(_loc6_ || param3))
                                          {
                                             continue loop9;
                                          }
                                          if(!_loc7_)
                                          {
                                             continue loop5;
                                          }
                                          addr86:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop7;
                                          }
                                       }
                                    }
                                    §§goto(addr19);
                                 }
                              }
                              addr42:
                           }
                           §§goto(addr86);
                        }
                     }
                     §§goto(addr137);
                  }
                  break;
               }
               continue loop2;
            }
            §§goto(addr133);
         }
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§?§ = false;
            while(true)
            {
               this.§2!N§.visible = true;
               while(!_loc5_)
               {
                  if(_loc4_ || this)
                  {
                     §4!^§.visible = false;
                     addr29:
                     return;
                     addr48:
                  }
               }
            }
         }
         while(§4!^§)
         {
            if(!_loc5_)
            {
               §§goto(addr38);
            }
            §§goto(addr48);
         }
         §§goto(addr29);
      }
   }
}
