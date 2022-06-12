package §7-§
{
   import §%!v§.§[<§;
   import §[!K§.§-k§;
   import §]!>§.§[Q§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class §-"<§ extends Sprite
   {
       
      
      private var §4k§:§[Q§;
      
      private var §"!4§:int = 0;
      
      private var §`#§:MovieClip;
      
      private var §["&§:§<"+§;
      
      public function §-"<§(param1:§[Q§, param2:int, param3:String = "StarpillarOwn", param4:String = "StarpillarEnemy")
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:Class = null;
         if(!_loc9_)
         {
            super();
            if(!(_loc9_ && param1))
            {
               addr30:
               this.§4k§ = param1;
               if(!_loc9_)
               {
                  addr35:
                  if(param1.userId == (AngryBirdsFP11.sUserProgress as §[<§).§4v§)
                  {
                     addr43:
                     _loc5_ = §8B§.§6"C§(param3);
                     if(_loc8_)
                     {
                        addr56:
                        this.§`#§ = new _loc5_();
                        if(!_loc9_)
                        {
                           addr62:
                           addChild(this.§`#§);
                        }
                        var _loc6_:TextField;
                        (_loc6_ = (this.§`#§.getChildByName("TextField_StarpillarOwn") as MovieClip).getChildByName("text") as TextField).text = param1.§9!Y§ + ". " + param1.userName;
                        var _loc7_:TextField;
                        (_loc7_ = (this.§`#§.getChildByName("Textfield_StarpillarScore") as MovieClip).getChildByName("text") as TextField).text = §-k§.§"!V§(param1.§@I§);
                        if(!(_loc9_ && this))
                        {
                           this.§"!4§ = this.§;"<§(param2);
                           while(true)
                           {
                              this.§["&§ = new §<"+§(this.§`#§,this.§4k§);
                              loop1:
                              while(_loc8_ || param3)
                              {
                                 addEventListener(Event.ADDED_TO_STAGE,this.§?C§);
                                 while(true)
                                 {
                                    addEventListener(Event.REMOVED_FROM_STAGE,this.§-"§);
                                    if(!_loc9_)
                                    {
                                       if(!(_loc9_ && this))
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                 }
                                 return;
                              }
                           }
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr62);
                  }
                  else
                  {
                     _loc5_ = §8B§.§6"C§(param4);
                  }
                  §§goto(addr56);
               }
               §§goto(addr43);
            }
            §§goto(addr35);
         }
         §§goto(addr30);
      }
      
      private function §?C§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§`#§.gotoAndPlay(1);
            while(!this.§`#§.hasEventListener(Event.ENTER_FRAME))
            {
               if(!(_loc2_ && this))
               {
                  if(_loc3_)
                  {
                     this.§`#§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame,false,0,true);
                     addr75:
                     break;
                  }
                  continue;
               }
               §§goto(addr75);
            }
            return;
         }
         §§goto(addr75);
      }
      
      private function §-"§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§`#§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
      }
      
      private function §;"<§(param1:int) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!(_loc4_ && _loc2_))
         {
            loop0:
            while(true)
            {
               var _loc2_:* = §§pop();
               if(!(_loc4_ && _loc3_))
               {
                  §§push(1);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(_loc2_);
                     if(_loc3_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc3_ || _loc2_)
                           {
                              addr107:
                              §§push(0);
                              if(_loc3_ || this)
                              {
                              }
                           }
                           else
                           {
                              addr136:
                              §§push(1);
                              if(_loc3_ || _loc2_)
                              {
                                 addr144:
                              }
                           }
                           addr149:
                           loop1:
                           while(true)
                           {
                              switch(§§pop())
                              {
                                 case 0:
                                    break loop1;
                                 case 1:
                                    addr40:
                                    §§push(74);
                                    §§push(58);
                                    if(!(_loc4_ && param1))
                                    {
                                       return §§pop();
                                    }
                                    break loop1;
                                 default:
                                    continue loop0;
                              }
                           }
                           return §§pop();
                           addr150:
                        }
                        §§push(2);
                        if(_loc3_ || this)
                        {
                           §§push(_loc2_);
                        }
                        §§goto(addr144);
                        §§goto(addr144);
                     }
                     if(§§pop() === §§pop())
                     {
                        §§goto(addr136);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr144);
               }
               §§goto(addr107);
            }
         }
         §§goto(addr150);
      }
      
      public function set currentFrame(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§`#§)
            {
               if(!_loc2_)
               {
                  addr24:
                  this.§`#§.gotoAndStop(param1);
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function get currentFrame() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§`#§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  §§goto(addr43);
               }
            }
            return 0;
         }
         addr43:
         return this.§`#§.currentFrame;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§`#§)
            {
               loop0:
               while(true)
               {
                  this.§`#§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                  loop1:
                  while(true)
                  {
                     if(this.contains(this.§`#§))
                     {
                        while(true)
                        {
                           removeChild(this.§`#§);
                           addr120:
                           while(true)
                           {
                           }
                        }
                        addr116:
                     }
                     while(true)
                     {
                        this.§`#§ = null;
                        loop5:
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              §§goto(addr116);
                           }
                           addr75:
                           loop7:
                           while(!(_loc2_ && _loc2_))
                           {
                              §§push(this.§["&§);
                              while(true)
                              {
                                 §§pop().dispose();
                                 loop11:
                                 while(true)
                                 {
                                    if(_loc1_ || _loc1_)
                                    {
                                       while(true)
                                       {
                                          removeEventListener(Event.ADDED_TO_STAGE,this.§?C§);
                                          loop9:
                                          while(true)
                                          {
                                             if(_loc1_ || _loc2_)
                                             {
                                                if(_loc1_)
                                                {
                                                   while(true)
                                                   {
                                                      removeEventListener(Event.REMOVED_FROM_STAGE,this.§-"§);
                                                      if(!_loc2_)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            break loop5;
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop9;
                                                   }
                                                   return;
                                                   addr41:
                                                   addr68:
                                                }
                                                continue loop7;
                                             }
                                             continue loop11;
                                          }
                                          continue loop11;
                                       }
                                       addr42:
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        §§goto(addr120);
                     }
                  }
               }
            }
            while(true)
            {
               §§push(this.§["&§);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     §§goto(addr75);
                  }
                  §§goto(addr42);
               }
               §§goto(addr84);
            }
         }
         §§goto(addr68);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(this.§`#§.currentFrame >= this.§"!4§)
            {
               loop0:
               while(true)
               {
                  this.§`#§.stop();
                  addr71:
                  while(true)
                  {
                     this.§`#§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                     if(!_loc2_)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr45);
               }
            }
            addr45:
            return;
         }
         §§goto(addr71);
      }
   }
}
