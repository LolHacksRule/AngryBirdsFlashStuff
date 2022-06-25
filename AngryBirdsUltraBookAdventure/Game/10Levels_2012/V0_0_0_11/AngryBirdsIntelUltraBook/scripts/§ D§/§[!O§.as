package § D§
{
   import §'b§.ExternalInterfaceHandler;
   import §0P§.Starling;
   import §6b§.Base64;
   import §=?§.SoundEngine;
   import §?![§.JPGEncoder;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §[!O§ extends EventDispatcher
   {
       
      
      private var §^!5§:Boolean;
      
      private var §'!'§:Stage;
      
      private var §"!&§:Boolean = false;
      
      public function §[!O§(stage:Stage)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc3_)
         {
         }
         if(_loc3_ || this)
         {
            while(true)
            {
               addr64:
               if(_loc3_ || this)
               {
                  return;
               }
            }
         }
         loop1:
         while(true)
         {
            super();
            while(true)
            {
               loop3:
               while(true)
               {
                  this.§'!'§ = stage;
                  loop4:
                  for(; _loc3_; if(_loc2_ && _loc2_)
                  {
                     continue;
                  },§§goto(addr64))
                  {
                     loop5:
                     while(true)
                     {
                        this.init();
                        while(true)
                        {
                           if(_loc3_)
                           {
                              continue loop3;
                           }
                           continue loop5;
                           addr102:
                           if(!(_loc2_ && this))
                           {
                              continue loop4;
                           }
                        }
                        continue loop3;
                     }
                  }
                  continue loop1;
               }
               if(!(_loc3_ || this))
               {
                  continue;
               }
               §§goto(addr102);
            }
         }
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               ExternalInterfaceHandler.addCallback("pause",this.§&h§);
               while(true)
               {
                  loop2:
                  while(!_loc1_)
                  {
                     while(true)
                     {
                        ExternalInterfaceHandler.addCallback("resume",this.§"n§);
                        while(_loc1_ && _loc1_)
                        {
                        }
                        if(!(_loc1_ && this))
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      private function §&h§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!(_loc1_ && this))
         {
            loop0:
            while(true)
            {
               §§push(this.§"!&§);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  break;
               }
               loop1:
               while(true)
               {
                  addr204:
                  while(true)
                  {
                     this.§"!&§ = true;
                     addr190:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
               loop7:
               while(true)
               {
                  if(_loc1_ && _loc1_)
                  {
                     continue loop0;
                  }
                  §]!B§.pause();
                  loop8:
                  while(!(_loc1_ && this))
                  {
                     continue loop7;
                     addr81:
                     if(_loc1_ && this)
                     {
                        continue;
                     }
                     §§push(AngryBirdsFP11.§5V§);
                     if(_loc2_)
                     {
                        §§pop().externalPause();
                        loop15:
                        for(; !_loc1_; if(_loc1_ && _loc1_)
                        {
                           continue;
                        },addr42:,if(!(_loc1_ && _loc1_))
                        {
                           if(!_loc1_)
                           {
                              break loop0;
                           }
                           §§goto(addr178);
                        }
                        else
                        {
                           while(true)
                           {
                              if(_loc2_ || this)
                              {
                                 addr74:
                                 if(_loc1_ && _loc1_)
                                 {
                                    continue loop7;
                                 }
                                 §§goto(addr81);
                              }
                              addr120:
                              while(_loc2_)
                              {
                                 §§goto(addr113);
                              }
                              §§goto(addr42);
                           }
                           continue loop8;
                           addr67:
                        },§§goto(addr190))
                        {
                           if(!_loc1_)
                           {
                              continue;
                           }
                           addr113:
                           while(true)
                           {
                              this.§-!f§();
                              break loop15;
                           }
                        }
                        while(!(_loc1_ && _loc2_))
                        {
                           §§goto(addr67);
                        }
                        §§goto(addr204);
                     }
                     while(true)
                     {
                        §§pop().§"§();
                        §§goto(addr120);
                        §§goto(addr98);
                     }
                     addr98:
                  }
                  while(true)
                  {
                     continue loop7;
                     §§goto(addr138);
                  }
                  addr138:
               }
            }
            return;
         }
         while(true)
         {
            §§push(this);
            §§push(§]!B§.isPaused);
            if(_loc2_)
            {
               §§push(!§§pop());
            }
            §§pop().§^!5§ = §§pop();
            §§goto(addr175);
         }
      }
      
      private function §"n§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc1_)
         {
            loop0:
            while(true)
            {
               §§push(this.§"!&§);
               if(!_loc2_)
               {
                  §§push(!§§pop());
               }
               loop1:
               while(!§§pop())
               {
                  loop2:
                  while(true)
                  {
                     this.§"!&§ = false;
                     while(true)
                     {
                        while(!(_loc2_ && _loc2_))
                        {
                           continue loop0;
                           loop9:
                           while(!(_loc2_ && _loc1_))
                           {
                              if(_loc2_ && _loc2_)
                              {
                                 continue loop2;
                              }
                              while(true)
                              {
                                 SoundEngine.§?!$§(AngryBirdsFP11.sSoundsEnabled);
                                 while(true)
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       §§push(AngryBirdsFP11.§5V§);
                                       while(true)
                                       {
                                          §§pop().externalResume();
                                          while(!_loc2_)
                                          {
                                             while(!(_loc2_ && this))
                                             {
                                                continue loop12;
                                             }
                                          }
                                          §§push(AngryBirdsFP11.§5V§);
                                          addr99:
                                          continue loop9;
                                          if(!_loc1_)
                                          {
                                             continue;
                                          }
                                          §§pop().§6![§();
                                          loop16:
                                          while(true)
                                          {
                                             if(_loc1_)
                                             {
                                                if(_loc1_)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      continue;
                                                   }
                                                   addr157:
                                                   while(true)
                                                   {
                                                      addr158:
                                                      while(true)
                                                      {
                                                         §]!B§.resume();
                                                         break loop16;
                                                      }
                                                   }
                                                }
                                                break;
                                             }
                                             §§goto(addr75);
                                          }
                                          while(_loc1_)
                                          {
                                             continue loop9;
                                          }
                                          §§goto(addr158);
                                       }
                                    }
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          if(_loc1_)
                                          {
                                             return;
                                          }
                                          break loop1;
                                       }
                                       return;
                                       addr203:
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(this.§^!5§);
                     if(!(_loc1_ || _loc2_))
                     {
                        continue loop1;
                     }
                     if(§§pop())
                     {
                        §§goto(addr157);
                     }
                     §§goto(addr112);
                  }
               }
               §§goto(addr203);
            }
         }
         §§goto(addr185);
      }
      
      public function §-!f§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_)
         {
         }
         do
         {
            Starling.§!!F§.§+!f§ = this.§#h§;
            while(_loc2_ && _loc1_)
            {
            }
         }
         while(!(_loc1_ || this));
         
      }
      
      private function §#h§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc7_)
         {
         }
         if(_loc7_)
         {
            while(true)
            {
               while(!(_loc8_ && height))
               {
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           while(true)
                           {
                              while(_loc7_ || height)
                              {
                                 while(true)
                                 {
                                    dispatchEvent(new Event(Event.INIT));
                                    continue loop4;
                                 }
                                 if(!(_loc8_ && width))
                                 {
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr95);
      }
   }
}
