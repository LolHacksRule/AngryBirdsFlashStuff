package §-!>§
{
   import §"$§.Starling;
   import §'N§.Base64;
   import §,!#§.ExternalInterfaceHandler;
   import §3!j§.SoundEngine;
   import §`R§.JPGEncoder;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §7U§ extends EventDispatcher
   {
       
      
      private var §10§:Boolean;
      
      private var §?_§:Stage;
      
      private var §"^§:Boolean = false;
      
      public function §7U§(stage:Stage)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_ || stage)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               super();
               while(true)
               {
                  loop3:
                  for(; !(_loc2_ && _loc2_); if(!(_loc2_ && _loc3_))
                  {
                     continue loop1;
                  })
                  {
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                     this.§?_§ = stage;
                     loop4:
                     while(true)
                     {
                        do
                        {
                           this.init();
                           continue loop4;
                        }
                        while(!(_loc3_ || stage));
                        
                        continue loop3;
                     }
                  }
               }
               if(_loc3_ || stage)
               {
                  return;
               }
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
         if(_loc1_)
         {
         }
         do
         {
            ExternalInterfaceHandler.addCallback("pause",this.§^!Z§);
            do
            {
               do
               {
                  ExternalInterfaceHandler.addCallback("resume",this.§4!%§);
                  while(!_loc2_)
                  {
                  }
               }
               while(_loc1_ && _loc1_);
               
            }
            while(!(_loc2_ || this));
            
         }
         while(!_loc2_);
         
      }
      
      private function §^!Z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || this)
         {
            while(true)
            {
               §§push(this.§"^§);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(!§§pop());
               }
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        this.§"^§ = true;
                        loop3:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(this);
                              §§push(§4!T§.isPaused);
                              if(_loc1_)
                              {
                                 §§push(!§§pop());
                              }
                              §§pop().§10§ = §§pop();
                              continue loop1;
                              addr89:
                              if(!(_loc1_ || _loc1_))
                              {
                                 continue;
                              }
                              addr96:
                              §§push(AngryBirdsFP11.§8R§);
                              if(_loc1_)
                              {
                                 §§pop().externalPause();
                                 loop14:
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       addr52:
                                       if(!(_loc2_ && this))
                                       {
                                          if(_loc1_)
                                          {
                                             addr61:
                                             if(!(_loc1_ || _loc1_))
                                             {
                                                break;
                                             }
                                             if(_loc1_)
                                             {
                                                continue;
                                             }
                                             continue loop2;
                                          }
                                          addr113:
                                          while(true)
                                          {
                                             addr106:
                                             while(true)
                                             {
                                                this.§#!]§();
                                             }
                                          }
                                          addr113:
                                       }
                                       while(_loc1_)
                                       {
                                          §§goto(addr52);
                                       }
                                       while(true)
                                       {
                                          §4!T§.pause();
                                          addr122:
                                          while(_loc1_)
                                          {
                                             while(true)
                                             {
                                                §§push(AngryBirdsFP11.§8R§);
                                                addr111:
                                                while(true)
                                                {
                                                   §§pop().§!!'§();
                                                   §§goto(addr113);
                                                   §§goto(addr96);
                                                }
                                             }
                                          }
                                          continue loop3;
                                       }
                                       addr127:
                                    }
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(_loc1_)
                                             {
                                                §§goto(addr89);
                                             }
                                             §§goto(addr122);
                                          }
                                          break;
                                       }
                                       §§goto(addr106);
                                       continue loop14;
                                    }
                                    §§goto(addr116);
                                 }
                                 continue loop1;
                              }
                              §§goto(addr111);
                           }
                        }
                     }
                  }
               }
               break;
            }
            return;
         }
         §§goto(addr113);
      }
      
      private function §4!%§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(_loc1_ || this)
         {
            while(true)
            {
               §§push(this.§"^§);
               if(_loc1_ || _loc2_)
               {
                  §§push(!§§pop());
               }
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     return;
                     addr222:
                     addr223:
                  }
                  else
                  {
                     addr195:
                  }
                  while(true)
                  {
                     this.§"^§ = false;
                     addr199:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
               if(!(_loc2_ && _loc1_))
               {
                  return;
               }
            }
         }
         §§goto(addr179);
      }
      
      public function §#!]§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || _loc2_)
         {
            while(true)
            {
               Starling.§'!A§.§#"§ = this.§"&§;
               §§goto(addr71);
            }
         }
         addr71:
         while(true)
         {
            if(_loc1_ || _loc2_)
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §"&§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc7_ && this)
         {
         }
         if(!_loc7_)
         {
            while(true)
            {
               addr96:
               while(true)
               {
               }
               addr83:
               if(_loc7_ && scale)
               {
                  continue;
               }
               loop4:
               for(; _loc8_; while(_loc8_ || width)
               {
                  if(!(_loc8_ || this))
                  {
                     continue;
                  }
                  §§goto(addr38);
               })
               {
                  while(true)
                  {
                     addr54:
                     while(true)
                     {
                        dispatchEvent(new Event(Event.INIT));
                        continue loop4;
                     }
                     loop3:
                     while(true)
                     {
                        if(_loc8_)
                        {
                           §§goto(addr83);
                        }
                        else
                        {
                           while(true)
                           {
                              continue loop3;
                           }
                           addr93:
                        }
                     }
                     addr38:
                     if(_loc7_ && width)
                     {
                        continue;
                     }
                     §§goto(addr45);
                  }
               }
               §§goto(addr96);
            }
         }
         §§goto(addr93);
      }
   }
}
