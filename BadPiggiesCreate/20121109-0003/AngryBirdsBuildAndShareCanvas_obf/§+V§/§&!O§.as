package §+V§
{
   import §1" §.§#!j§;
   import §7t§.§<^§;
   import §;" §.Quest;
   import §=!7§.§9"8§;
   import §^!k§.§;!T§;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §&!O§ extends Sprite
   {
       
      
      private var § !F§:§<^§;
      
      private var §7!n§:§<^§;
      
      private var §5!L§:§4!z§;
      
      private var §?I§:§1",§;
      
      private var §2Y§:§1",§;
      
      private var §,J§:§1",§;
      
      public function §&!O§(param1:§<^§, param2:§<^§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§ !F§ = param1;
            while(true)
            {
               this.§7!n§ = param2;
               loop2:
               while(true)
               {
                  this.§5!L§ = new §4!z§(this.§ !F§,this.§7!n§);
                  loop3:
                  while(true)
                  {
                     this.§?I§ = new §1",§(this.§ !F§);
                     addr109:
                     while(true)
                     {
                        addChild(this.§5!L§);
                        do
                        {
                           addChild(this.§?I§);
                           continue loop3;
                        }
                        while(!_loc4_);
                        
                        if(!_loc3_)
                        {
                           return;
                        }
                        continue loop2;
                     }
                  }
               }
               if(_loc4_ || param2)
               {
                  mouseEnabled = false;
                  while(!_loc3_)
                  {
                     mouseChildren = false;
                     if(_loc3_)
                     {
                        continue;
                     }
                     §§goto(addr30);
                  }
                  continue loop0;
               }
            }
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:§9"8§ = null;
         if(_loc4_ || this)
         {
            if(!stage)
            {
               if(_loc4_)
               {
                  return;
               }
               loop0:
               do
               {
                  removeChild(this.§,J§);
                  while(true)
                  {
                     this.§,J§ = null;
                     while(_loc4_)
                     {
                        parent.setChildIndex(this,parent.numChildren - 1);
                        if(!_loc5_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(_loc5_ && this);
               
               addr520:
            }
            else
            {
               addr276:
               §§push(§#!j§.§[E§);
               loop3:
               while(true)
               {
                  §§push(§§pop().§3d§);
                  loop4:
                  while(true)
                  {
                     §§push(§§pop().§<J§());
                     loop5:
                     while(true)
                     {
                        §§push(!§§pop());
                        loop6:
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc4_)
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§#!j§.§[E§);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§§pop().§3d§);
                                          if(!(_loc4_ || _loc2_))
                                          {
                                             break;
                                          }
                                          §§push(§§pop().§3!^§().indexOf(this.§ !F§.object) == -1);
                                          while(true)
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop11:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               §§push(this.§ !F§);
                                                               if(_loc4_ || this)
                                                               {
                                                                  §§push(§§pop().visible);
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(_loc4_ || param1)
                                                                     {
                                                                        if(!(_loc5_ && _loc2_))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(!(_loc4_ || _loc3_))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       loop19:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             loop20:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   while(!_loc5_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(_loc4_ || _loc3_)
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         §§push(§#!j§.§[E§);
                                                                                                         if(_loc4_ || _loc2_)
                                                                                                         {
                                                                                                            §§goto(addr148);
                                                                                                            §§push(§§pop().§9L§);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr329);
                                                                                                         }
                                                                                                         §§goto(addr519);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr318);
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop5;
                                                                                                   addr228:
                                                                                                }
                                                                                                if(!(_loc4_ || this))
                                                                                                {
                                                                                                   continue loop12;
                                                                                                }
                                                                                                §§pop();
                                                                                                if(_loc4_ || this)
                                                                                                {
                                                                                                   §§push(§#!j§.§[E§);
                                                                                                   if(!(_loc5_ && this))
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         continue loop8;
                                                                                                      }
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      §§push(§§pop().§9L§);
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         §§push(§§pop().§;!1§);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§push(Quest.§[R§);
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  §§push(!§§pop());
                                                                                                                  if(_loc4_ || this)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           if(_loc5_ && this)
                                                                                                                           {
                                                                                                                              continue loop20;
                                                                                                                           }
                                                                                                                           _loc2_ = §§pop();
                                                                                                                           if(_loc4_ || _loc2_)
                                                                                                                           {
                                                                                                                              this.§5!L§.visible = _loc2_;
                                                                                                                              if(!(_loc5_ && this))
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    this.§?I§.visible = _loc2_;
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc2_);
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             continue loop10;
                                                                                                                                          }
                                                                                                                                          §§push(!§§pop());
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             addr56:
                                                                                                                                             §§pop();
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                if(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§ !F§);
                                                                                                                                                }
                                                                                                                                                continue;
                                                                                                                                                break loop13;
                                                                                                                                             }
                                                                                                                                             §§goto(addr520);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       continue loop19;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr472:
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       break loop20;
                                                                                                                                    }
                                                                                                                                    addr519:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       §§goto(addr520);
                                                                                                                                    }
                                                                                                                                    return;
                                                                                                                                    addr479:
                                                                                                                                 }
                                                                                                                                 §§goto(addr519);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           _loc3_ = §#!j§.§[E§.§<!_§.§"p§().§+!m§().§7>§(this.§ !F§.object as §;!T§);
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              addr456:
                                                                                                                              §§push(Boolean(this.§,J§));
                                                                                                                              if(Boolean(this.§,J§))
                                                                                                                              {
                                                                                                                                 addr458:
                                                                                                                                 §§pop();
                                                                                                                                 addr459:
                                                                                                                                 §§push(this.§,J§);
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().object.object == _loc3_);
                                                                                                                                    if(!(_loc5_ && param1))
                                                                                                                                    {
                                                                                                                                       if(_loc4_ || this)
                                                                                                                                       {
                                                                                                                                          if(_loc4_ || this)
                                                                                                                                          {
                                                                                                                                             addr447:
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                addr448:
                                                                                                                                                removeChild(this.§,J§);
                                                                                                                                                this.§,J§ = null;
                                                                                                                                                addr407:
                                                                                                                                                if(_loc4_ || param1)
                                                                                                                                                {
                                                                                                                                                   addr379:
                                                                                                                                                   §§push(this.§,J§);
                                                                                                                                                   if(_loc4_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() == null)
                                                                                                                                                      {
                                                                                                                                                         addr391:
                                                                                                                                                         if(_loc4_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               addr395:
                                                                                                                                                               this.§,J§ = new §1",§(new §<^§(_loc3_));
                                                                                                                                                               addr366:
                                                                                                                                                               addChild(this.§,J§);
                                                                                                                                                               addr402:
                                                                                                                                                               if(!(_loc5_ && this))
                                                                                                                                                               {
                                                                                                                                                                  addr343:
                                                                                                                                                                  parent.setChildIndex(this,0);
                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc5_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc4_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           if(false)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr366);
                                                                                                                                                                           }
                                                                                                                                                                           addr460:
                                                                                                                                                                           §§goto(addr519);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr407);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr402);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr366);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr391);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr459);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr448);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr343);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr459);
                                                                                                                                                }
                                                                                                                                                addr452:
                                                                                                                                                §§goto(addr452);
                                                                                                                                             }
                                                                                                                                             §§goto(addr379);
                                                                                                                                          }
                                                                                                                                          §§goto(addr456);
                                                                                                                                       }
                                                                                                                                       §§goto(addr458);
                                                                                                                                    }
                                                                                                                                    §§goto(addr447);
                                                                                                                                 }
                                                                                                                                 §§goto(addr456);
                                                                                                                              }
                                                                                                                              §§goto(addr447);
                                                                                                                           }
                                                                                                                           §§goto(addr395);
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     addr310:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc4_ || this)
                                                                                                                        {
                                                                                                                           addr318:
                                                                                                                           if(parent)
                                                                                                                           {
                                                                                                                              if(_loc4_ || param1)
                                                                                                                              {
                                                                                                                                 §§goto(addr327);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr519);
                                                                                                                                 §§push(Boolean(parent));
                                                                                                                                 addr478:
                                                                                                                              }
                                                                                                                              §§goto(addr519);
                                                                                                                           }
                                                                                                                           §§goto(addr460);
                                                                                                                        }
                                                                                                                        §§goto(addr327);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(Boolean(this.§,J§));
                                                                                                                        if(!(_loc5_ && this))
                                                                                                                        {
                                                                                                                           addr471:
                                                                                                                           §§goto(addr472);
                                                                                                                           §§push(§§pop());
                                                                                                                        }
                                                                                                                        §§goto(addr519);
                                                                                                                     }
                                                                                                                     addr117:
                                                                                                                  }
                                                                                                                  §§goto(addr519);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                               if(_loc4_ || param1)
                                                                                                               {
                                                                                                                  §§push(!§§pop());
                                                                                                                  continue loop10;
                                                                                                               }
                                                                                                            }
                                                                                                            addr151:
                                                                                                            §§goto(addr519);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                            }
                                                                                                            addr149:
                                                                                                         }
                                                                                                         §§goto(addr151);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                         addr148:
                                                                                                      }
                                                                                                      §§goto(addr149);
                                                                                                   }
                                                                                                   §§goto(addr329);
                                                                                                }
                                                                                                §§goto(addr318);
                                                                                             }
                                                                                             §§pop();
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§goto(addr478);
                                                                                             }
                                                                                             §§goto(addr520);
                                                                                          }
                                                                                          §§goto(addr117);
                                                                                       }
                                                                                    }
                                                                                    addr167:
                                                                                 }
                                                                              }
                                                                              §§goto(addr472);
                                                                           }
                                                                           continue loop11;
                                                                           addr216:
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     §§goto(addr471);
                                                                  }
                                                                  §§goto(addr228);
                                                               }
                                                               break;
                                                            }
                                                            continue loop7;
                                                         }
                                                         §§push(§§pop().object is §;!T§);
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr310);
                                                         }
                                                         §§goto(addr471);
                                                      }
                                                   }
                                                   §§goto(addr216);
                                                }
                                             }
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                                 §§goto(addr471);
                              }
                              §§goto(addr269);
                           }
                           §§goto(addr472);
                        }
                     }
                  }
               }
            }
            §§goto(addr479);
         }
         §§goto(addr276);
      }
      
      public function get start() : §<^§
      {
         return this.§ !F§;
      }
      
      public function get end() : §<^§
      {
         return this.§7!n§;
      }
   }
}
