package §%i§
{
   import §1!t§.§!!G§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import flash.display.MovieClip;
   
   public class §7"0§ extends §!!G§
   {
       
      
      private var §-!D§:§6!K§;
      
      public function §7"0§(param1:XML, param2:§0!Y§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param2,param3);
            loop0:
            while(true)
            {
               targetSprite.buttonMode = true;
               addr115:
               while(true)
               {
                  targetSprite.mouseChildren = false;
                  continue loop0;
               }
            }
         }
         §§goto(addr60);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(param1 != §[E§)
            {
               targetSprite.useHandCursor = true;
               loop0:
               while(true)
               {
                  if(_loc3_)
                  {
                     while(true)
                     {
                        targetSprite.buttonMode = true;
                        continue loop0;
                     }
                     addr107:
                  }
                  else
                  {
                     while(true)
                     {
                        targetSprite.buttonMode = false;
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              super.setComponentState(param1);
                              if(_loc3_ || param1)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    continue loop0;
                                 }
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    continue loop3;
                                 }
                                 addr98:
                                 targetSprite.mouseChildren = false;
                              }
                              continue loop0;
                           }
                           return;
                           addr91:
                           if(!(_loc3_ || _loc2_))
                           {
                              continue;
                           }
                           §§goto(addr98);
                        }
                     }
                     addr119:
                  }
               }
            }
            while(true)
            {
               targetSprite.useHandCursor = false;
               §§goto(addr119);
            }
         }
         §§goto(addr107);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§63§)
            {
               if(_loc2_)
               {
                  §§push(param1);
                  loop0:
                  while(§§pop() != §+"B§)
                  {
                     §§push(param1);
                     if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     }
                     if(§§pop() == §'!P§)
                     {
                        if(_loc2_)
                        {
                           §§push(this.§-!D§);
                           loop1:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 §§push(null);
                                 if(_loc2_)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!(_loc3_ && param1))
                                          {
                                             §§push(this.§-!D§);
                                             loop2:
                                             while(true)
                                             {
                                                if(_loc2_ || _loc2_)
                                                {
                                                   §§pop().stop();
                                                   addr129:
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            addr138:
                                                            while(true)
                                                            {
                                                               this.§-!D§ = §0W§.§&"5§.§]!r§(mClip,{
                                                                  "scaleX":1,
                                                                  "scaleY":1
                                                               },null,0.1);
                                                               §§goto(addr138);
                                                            }
                                                            addr60:
                                                         }
                                                         else
                                                         {
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(this.§-!D§);
                                                               addr142:
                                                               while(true)
                                                               {
                                                                  §§pop().play();
                                                                  addr143:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           super.setComponentVisualState(param1);
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr55:
                                                                           addr74:
                                                                           while(_loc2_)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                              continue loop16;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        return;
                                                                        addr23:
                                                                     }
                                                                     addr190:
                                                                     while(true)
                                                                     {
                                                                        addr161:
                                                                        while(true)
                                                                        {
                                                                           this.§-!D§ = §0W§.§&"5§.§]!r§(mClip,{
                                                                              "scaleX":1.1,
                                                                              "scaleY":1.1
                                                                           },null,0.1);
                                                                           continue loop17;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop17;
                                                               }
                                                            }
                                                            addr175:
                                                         }
                                                         §§goto(addr74);
                                                      }
                                                      §§goto(addr143);
                                                   }
                                                   addr129:
                                                }
                                                addr185:
                                                while(true)
                                                {
                                                   §§push(null);
                                                   addr186:
                                                   while(true)
                                                   {
                                                      if(§§pop() != §§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§-!D§);
                                                            addr189:
                                                            while(true)
                                                            {
                                                               §§pop().stop();
                                                               §§goto(addr190);
                                                            }
                                                         }
                                                         addr187:
                                                      }
                                                      §§goto(addr161);
                                                   }
                                                   break loop0;
                                                }
                                             }
                                          }
                                          §§goto(addr187);
                                       }
                                       §§goto(addr129);
                                    }
                                    §§goto(addr60);
                                 }
                                 §§goto(addr186);
                              }
                              §§goto(addr189);
                           }
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr23);
                  }
               }
               while(true)
               {
                  §§goto(addr185);
               }
            }
            §§goto(addr23);
         }
         §§goto(addr175);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§-!D§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§-!D§);
                     addr55:
                     while(true)
                     {
                        §§pop().stop();
                        addr56:
                        while(true)
                        {
                        }
                     }
                  }
                  addr53:
               }
               while(true)
               {
                  super.viewWidth = param1;
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr53);
               }
               return;
            }
            §§goto(addr55);
         }
         §§goto(addr56);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§-!D§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  addr72:
                  while(true)
                  {
                     §§push(this.§-!D§);
                     addr74:
                     while(true)
                     {
                        §§pop().stop();
                        addr75:
                        while(true)
                        {
                        }
                     }
                  }
                  addr72:
               }
               while(true)
               {
                  super.viewHeight = param1;
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  if(_loc2_ || _loc2_)
                  {
                     break;
                  }
                  §§goto(addr72);
               }
               return;
            }
            §§goto(addr74);
         }
         §§goto(addr72);
      }
   }
}
