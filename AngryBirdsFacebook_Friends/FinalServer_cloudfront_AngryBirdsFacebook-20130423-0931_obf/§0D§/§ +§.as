package §0D§
{
   import §%!I§.§]!M§;
   import §,l§.§1U§;
   import §@!%§.§#!$§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class § +§ extends Sprite
   {
       
      
      private var §4v§:§1U§;
      
      private var §]"F§:int = 0;
      
      private var §>,§:MovieClip;
      
      private var §]d§:§`!k§;
      
      public function § +§(param1:§1U§, param2:int, param3:String = "StarpillarOwn", param4:String = "StarpillarEnemy")
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:Class = null;
         if(!_loc8_)
         {
            super();
            if(_loc9_ || param1)
            {
               addr31:
               this.§4v§ = param1;
               if(_loc9_)
               {
                  addr36:
                  if(param1.userId == (AngryBirdsFP11.sUserProgress as §#!$§).§5!0§)
                  {
                     addr44:
                     _loc5_ = §?q§.§ q§(param3);
                     if(_loc9_)
                     {
                        addr57:
                        this.§>,§ = new _loc5_();
                        if(_loc9_)
                        {
                           addr63:
                           addChild(this.§>,§);
                        }
                        var _loc6_:TextField;
                        (_loc6_ = (this.§>,§.getChildByName("TextField_StarpillarOwn") as MovieClip).getChildByName("text") as TextField).text = param1.§'Q§ + ". " + param1.userName;
                        if(_loc9_ || param3)
                        {
                           _loc6_.mouseEnabled = false;
                        }
                        var _loc7_:TextField;
                        (_loc7_ = (this.§>,§.getChildByName("Textfield_StarpillarScore") as MovieClip).getChildByName("text") as TextField).text = §]!M§.§<Y§(param1.§?&§);
                        if(!(_loc8_ && param1))
                        {
                           _loc7_.mouseEnabled = false;
                           while(true)
                           {
                              this.§]"F§ = this.§!!!§(param2);
                              loop1:
                              while(true)
                              {
                                 this.§]d§ = new §`!k§(this.§>,§,this.§4v§);
                                 loop2:
                                 while(true)
                                 {
                                    addEventListener(Event.ADDED_TO_STAGE,this.§6"W§);
                                    addr186:
                                    while(true)
                                    {
                                       addEventListener(Event.REMOVED_FROM_STAGE,this.§]R§);
                                       if(!(_loc8_ && this))
                                       {
                                          if(_loc9_ || this)
                                          {
                                             continue loop1;
                                          }
                                          continue loop2;
                                       }
                                    }
                                    §§goto(addr178);
                                 }
                              }
                              if(!_loc8_)
                              {
                                 addr178:
                                 return;
                              }
                           }
                        }
                        §§goto(addr186);
                     }
                     §§goto(addr63);
                  }
                  else
                  {
                     _loc5_ = §?q§.§ q§(param4);
                  }
                  §§goto(addr57);
               }
               §§goto(addr44);
            }
            §§goto(addr36);
         }
         §§goto(addr31);
      }
      
      private function §6"W§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§>,§.gotoAndPlay(1);
            while(!this.§>,§.hasEventListener(Event.ENTER_FRAME))
            {
               if(!(_loc2_ && this))
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
                  this.§>,§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame,false,0,true);
               }
               break;
            }
            return;
         }
         §§goto(addr65);
      }
      
      private function §]R§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>,§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
      }
      
      private function §!!!§(param1:int) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_ || param1)
         {
            loop0:
            while(true)
            {
               var _loc2_:* = §§pop();
               if(_loc4_ || this)
               {
                  §§push(1);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(_loc2_);
                     if(!(_loc3_ && _loc3_))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!(_loc3_ && param1))
                           {
                              §§push(0);
                              if(!_loc4_)
                              {
                                 addr135:
                              }
                           }
                           else
                           {
                              addr127:
                              §§push(1);
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§goto(addr135);
                              }
                           }
                        }
                        else
                        {
                           §§push(2);
                           if(_loc4_ || param1)
                           {
                              addr126:
                              if(§§pop() === _loc2_)
                              {
                                 §§goto(addr127);
                              }
                              else
                              {
                                 §§push(2);
                              }
                           }
                        }
                        loop1:
                        while(true)
                        {
                           switch(§§pop())
                           {
                              case 0:
                                 break loop1;
                              case 1:
                                 §§push(74);
                                 §§push(66);
                                 if(!_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       return §§pop();
                                    }
                                    break loop1;
                                 }
                                 break;
                              default:
                                 continue loop0;
                           }
                        }
                        return §§pop();
                        addr141:
                     }
                  }
                  §§goto(addr126);
               }
               §§goto(addr127);
            }
         }
         §§goto(addr141);
      }
      
      public function set currentFrame(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§>,§)
            {
               if(_loc2_)
               {
                  this.§>,§.gotoAndStop(param1);
               }
            }
         }
      }
      
      public function get currentFrame() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§>,§)
            {
               if(_loc2_)
               {
                  return this.§>,§.currentFrame;
               }
            }
         }
         return 0;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§>,§)
            {
               loop0:
               while(true)
               {
                  this.§>,§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                  loop1:
                  while(true)
                  {
                     if(this.contains(this.§>,§))
                     {
                        while(true)
                        {
                           removeChild(this.§>,§);
                           addr123:
                           while(!_loc2_)
                           {
                           }
                           continue loop1;
                           addr85:
                           if(_loc2_ && _loc2_)
                           {
                              continue;
                           }
                           while(true)
                           {
                              §§push(this.§]d§);
                              while(true)
                              {
                                 §§pop().dispose();
                                 loop11:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       while(true)
                                       {
                                          removeEventListener(Event.ADDED_TO_STAGE,this.§6"W§);
                                          do
                                          {
                                             removeEventListener(Event.REMOVED_FROM_STAGE,this.§]R§);
                                          }
                                          while(!_loc1_);
                                          
                                          if(!(_loc1_ || this))
                                          {
                                             continue loop11;
                                          }
                                          addr39:
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             continue loop0;
                                          }
                                          addr112:
                                          while(!(_loc2_ && this))
                                          {
                                             §§goto(addr85);
                                             §§goto(addr39);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr72);
                                          }
                                          addr78:
                                       }
                                    }
                                    §§goto(addr123);
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        this.§>,§ = null;
                        §§goto(addr112);
                     }
                  }
               }
            }
            addr72:
            while(true)
            {
               §§push(this.§]d§);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     continue loop5;
                  }
                  continue loop8;
               }
               continue loop10;
            }
            addr53:
            return;
         }
         §§goto(addr92);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§>,§.currentFrame >= this.§]"F§)
            {
               if(_loc3_)
               {
                  this.§>,§.stop();
                  do
                  {
                     this.§>,§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                  }
                  while(!_loc3_);
                  
                  addr56:
               }
               §§goto(addr56);
            }
            return;
         }
         §§goto(addr56);
      }
   }
}
