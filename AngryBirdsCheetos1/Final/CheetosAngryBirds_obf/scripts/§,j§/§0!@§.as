package §,j§
{
   import §#!V§.§&!!§;
   import §#!V§.§';§;
   import §1§.§&!3§;
   import flash.display.MovieClip;
   
   public class §0!@§ extends §&!3§
   {
       
      
      private var §+!F§:§&!!§;
      
      public function §0!@§(param1:XML, param2:§1-§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1,param2,param3);
         }
         loop0:
         while(true)
         {
            if(mClip)
            {
               loop1:
               while(true)
               {
                  mClip.buttonMode = true;
                  addr113:
                  while(true)
                  {
                     mClip.mouseChildren = false;
                     continue loop1;
                  }
               }
            }
            loop5:
            while(true)
            {
               §2!4§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
               loop6:
               while(!_loc5_)
               {
                  §2!4§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                  loop7:
                  for(; !_loc5_; if(_loc5_ && this)
                  {
                     continue;
                  },if(!_loc5_)
                  {
                     break loop5;
                  },§§goto(addr113))
                  {
                     if(!_loc5_)
                     {
                        §2!4§(§6!A§,param1.@MouseOver);
                        while(!_loc5_)
                        {
                           §2!4§(§'!#§,param1.@MouseOut);
                           if(_loc4_)
                           {
                              continue loop7;
                           }
                        }
                        continue loop6;
                     }
                     §§goto(addr89);
                  }
                  continue loop5;
               }
               continue loop0;
            }
            return;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1 != §#!$§)
            {
               mClip.useHandCursor = true;
               while(true)
               {
                  mClip.buttonMode = true;
                  loop1:
                  while(true)
                  {
                     mClip.mouseChildren = false;
                     addr75:
                     loop6:
                     while(true)
                     {
                        addr24:
                        addr44:
                        while(true)
                        {
                           super.setComponentState(param1);
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           continue loop6;
                        }
                        if(!(_loc2_ && _loc3_))
                        {
                           addr61:
                           if(!(_loc2_ && _loc2_))
                           {
                              addr68:
                              if(_loc2_)
                              {
                                 while(true)
                                 {
                                    mClip.useHandCursor = false;
                                    addr109:
                                    while(true)
                                    {
                                       mClip.buttonMode = false;
                                       addr102:
                                       while(true)
                                       {
                                          §§goto(addr24);
                                          §§goto(addr44);
                                       }
                                       §§goto(addr61);
                                    }
                                    §§goto(addr68);
                                 }
                                 addr106:
                              }
                              return;
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr102);
                     }
                  }
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  §§goto(addr44);
               }
            }
            §§goto(addr106);
         }
         §§goto(addr75);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(§!!0§)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  while(§§pop() != §;!F§)
                  {
                     §§push(param1);
                     if(!(_loc3_ || this))
                     {
                        continue;
                     }
                     if(§§pop() == §#i§)
                     {
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              §§push(this.§+!F§);
                              if(!_loc2_)
                              {
                                 §§push(null);
                                 if(!_loc2_)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§push(this.§+!F§);
                                                   break;
                                                }
                                                continue loop0;
                                             }
                                             loop15:
                                             while(true)
                                             {
                                                §§push(this.§+!F§);
                                                addr140:
                                                loop5:
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§pop().play();
                                                      while(true)
                                                      {
                                                         §§goto(addr29);
                                                      }
                                                      addr143:
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop().stop();
                                                      break loop5;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   addr144:
                                                   while(true)
                                                   {
                                                      this.§+!F§ = §';§.§%!O§.§set §(mClip,{
                                                         "scaleX":1.1,
                                                         "scaleY":1.1
                                                      },null,0.1);
                                                      continue loop15;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr143);
                                       }
                                       §§goto(addr122);
                                    }
                                    §§goto(addr52);
                                 }
                                 while(true)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       §§goto(addr178);
                                    }
                                    §§goto(addr144);
                                 }
                                 addr177:
                              }
                              break;
                           }
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 addr114:
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§pop().stop();
                                    §§goto(addr122);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr177);
                                    §§goto(addr114);
                                 }
                                 addr176:
                              }
                              §§goto(addr140);
                           }
                           addr94:
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr29);
                  }
                  while(true)
                  {
                     §§goto(addr176);
                  }
               }
            }
            addr29:
            loop12:
            while(true)
            {
               super.setComponentVisualState(param1);
               if(_loc2_)
               {
                  continue;
               }
               if(_loc3_)
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  break loop5;
               }
               addr122:
               addr122:
               while(_loc3_)
               {
                  §§push(this.§+!F§);
                  if(_loc2_ && _loc2_)
                  {
                     break loop13;
                  }
                  §§pop().play();
                  continue loop12;
               }
               while(true)
               {
                  if(_loc3_ || param1)
                  {
                     if(!(_loc3_ || _loc3_))
                     {
                        break loop1;
                     }
                     while(true)
                     {
                        this.§+!F§ = §';§.§%!O§.§set §(mClip,{
                           "scaleX":1,
                           "scaleY":1
                        },null,0.1);
                        §§goto(addr66);
                     }
                  }
                  addr178:
                  while(true)
                  {
                     §§push(this.§+!F§);
                  }
               }
               addr66:
            }
            return;
         }
         §§goto(addr94);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§+!F§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  addr67:
                  while(true)
                  {
                     §§push(this.§+!F§);
                     addr69:
                     while(true)
                     {
                        §§pop().stop();
                        addr70:
                        while(true)
                        {
                        }
                     }
                  }
                  addr67:
               }
               while(true)
               {
                  super.viewWidth = param1;
                  if(_loc3_ && this)
                  {
                     continue;
                  }
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr67);
               }
               return;
            }
            §§goto(addr69);
         }
         §§goto(addr67);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§+!F§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr70:
                     this.§+!F§.stop();
                  }
                  while(true)
                  {
                  }
                  addr71:
               }
               while(true)
               {
                  super.viewHeight = param1;
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr71);
               }
               return;
               addr45:
            }
            §§goto(addr70);
         }
         §§goto(addr45);
      }
   }
}
