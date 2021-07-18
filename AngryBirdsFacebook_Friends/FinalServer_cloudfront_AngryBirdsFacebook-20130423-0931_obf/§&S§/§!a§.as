package §&S§
{
   import §9@§.§3,§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §!a§ extends Sprite
   {
       
      
      private var § !,§:MovieClip;
      
      public function §!a§(param1:int)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Class = null;
         var _loc3_:String = null;
         if(!(_loc5_ && param1))
         {
            super();
            if(_loc4_)
            {
               §§push(param1);
               if(!(_loc5_ && param1))
               {
                  §§push(0);
                  if(_loc4_)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr52:
                           _loc2_ = §?q§.§ q§("CoinsGained");
                           if(_loc4_ || this)
                           {
                              addr73:
                              if(_loc2_)
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    addr92:
                                    this.§ !,§ = new _loc2_();
                                    if(_loc4_ || param1)
                                    {
                                       this.§ !,§.gotoAndPlay(1);
                                       loop0:
                                       while(true)
                                       {
                                          if(param1 >= 0)
                                          {
                                             §§push("+");
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                while(true)
                                                {
                                                   this.§ !,§.coinTextfield.moneyAmount.text = _loc3_ + §3,§.§3!Y§(Math.abs(param1));
                                                   loop3:
                                                   while(!(_loc5_ && _loc2_))
                                                   {
                                                      while(true)
                                                      {
                                                         AngryBirdsFP11.§>m§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                                                         while(_loc4_)
                                                         {
                                                            continue loop0;
                                                            addChild(this.§ !,§);
                                                            if(_loc4_)
                                                            {
                                                               if(_loc5_ && param1)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               §§goto(addr122);
                                                               continue loop3;
                                                            }
                                                         }
                                                      }
                                                      return;
                                                   }
                                                }
                                             }
                                             addr182:
                                          }
                                          while(true)
                                          {
                                             §§push("-");
                                             if(_loc5_)
                                             {
                                             }
                                             §§goto(addr182);
                                          }
                                       }
                                    }
                                    §§goto(addr122);
                                 }
                                 §§goto(addr171);
                              }
                              §§goto(addr105);
                           }
                           §§goto(addr92);
                        }
                        else
                        {
                           addr68:
                           _loc2_ = §?q§.§ q§("CoinsLost");
                        }
                     }
                     else
                     {
                        addr67:
                        if(param1 < 0)
                        {
                           §§goto(addr68);
                        }
                     }
                     §§goto(addr73);
                  }
               }
               §§goto(addr67);
            }
            §§goto(addr68);
         }
         §§goto(addr52);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§ !,§)
            {
               if(!(_loc2_ && param1))
               {
                  if(this.§ !,§.currentFrame >= this.§ !,§.totalFrames)
                  {
                     addr81:
                     this.dispose();
                  }
                  §§goto(addr20);
               }
               §§goto(addr81);
            }
            else
            {
               this.dispose();
               if(_loc3_ || _loc2_)
               {
                  if(!(_loc3_ || _loc2_))
                  {
                     §§goto(addr81);
                  }
                  addr20:
                  return;
               }
            }
         }
         §§goto(addr81);
      }
      
      private function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.contains(this.§ !,§))
            {
               while(true)
               {
                  removeChild(this.§ !,§);
                  addr86:
                  while(true)
                  {
                  }
               }
               addr82:
            }
            loop2:
            while(true)
            {
               AngryBirdsFP11.§>m§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
               while(parent)
               {
                  if(_loc2_ && this)
                  {
                     break;
                  }
                  addr67:
                  addr67:
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  if(_loc2_)
                  {
                     continue loop2;
                  }
                  if(!_loc2_)
                  {
                     parent.removeChild(this);
                     §§goto(addr67);
                  }
                  else
                  {
                     §§goto(addr82);
                  }
               }
               return;
            }
         }
         §§goto(addr67);
      }
   }
}
