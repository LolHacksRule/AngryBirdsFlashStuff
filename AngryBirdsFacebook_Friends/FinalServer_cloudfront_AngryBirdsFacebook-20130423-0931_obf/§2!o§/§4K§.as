package §2!o§
{
   import §@!"§.§?l§;
   import com.angrybirds.friendsbar.ButtonMiniGift_Plates;
   import com.angrybirds.friendsbar.MiniGiftCheckmarkAnimation;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §4K§
   {
       
      
      public var §<!6§:Sprite;
      
      private var §#"2§:ButtonMiniGift_Plates;
      
      private var §!V§:MiniGiftCheckmarkAnimation;
      
      public function §4K§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
         do
         {
            this.§<!6§ = new Sprite();
            do
            {
               this.§#"2§ = new ButtonMiniGift_Plates();
               do
               {
                  this.§<!6§.addChild(this.§#"2§);
               }
               while(_loc1_ && _loc1_);
               
            }
            while(_loc1_ && this);
            
         }
         while(!_loc2_);
         
      }
      
      public function get §[8§() : ButtonMiniGift_Plates
      {
         return this.§#"2§;
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() != false)
               {
                  §§push(this.§#"2§);
                  if(!_loc3_)
                  {
                     §§push(true);
                     if(_loc4_)
                     {
                        §§pop().visible = §§pop();
                        while(_loc4_)
                        {
                           this.§'!J§();
                           if(_loc3_ && param1)
                           {
                              continue;
                           }
                           if(_loc4_ || this)
                           {
                              if(_loc3_)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    §?l§.§ "G§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame,false,0,true);
                                    addr103:
                                    addr110:
                                    addr77:
                                    while(_loc3_ && this)
                                    {
                                       while(true)
                                       {
                                          §§push(this.§#"2§);
                                          addr155:
                                          while(true)
                                          {
                                             §§push(false);
                                             addr156:
                                             while(true)
                                             {
                                                §§pop().visible = §§pop();
                                                continue loop0;
                                             }
                                          }
                                       }
                                    }
                                    this.§!V§.play();
                                    addr49:
                                    while(true)
                                    {
                                       if(_loc4_ || this)
                                       {
                                          if(_loc4_ || param1)
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             this.§<!6§.addChild(this.§!V§);
                                             continue loop10;
                                             addr145:
                                             this.§!V§ = new MiniGiftCheckmarkAnimation();
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr103);
                                       }
                                       §§goto(addr110);
                                    }
                                 }
                                 addr117:
                              }
                              return;
                           }
                           §§goto(addr77);
                        }
                        while(true)
                        {
                           if(_loc3_ && param1)
                           {
                              continue;
                           }
                           §§goto(addr145);
                        }
                        continue;
                        addr138:
                     }
                     §§goto(addr156);
                  }
                  §§goto(addr155);
               }
               §§goto(addr153);
            }
         }
         §§goto(addr117);
      }
      
      private function §'!J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(this.§!V§)
            {
               loop0:
               while(true)
               {
                  if(this.§<!6§.contains(this.§!V§))
                  {
                     while(true)
                     {
                        this.§<!6§.removeChild(this.§!V§);
                        addr94:
                        while(true)
                        {
                        }
                     }
                     addr89:
                  }
                  while(true)
                  {
                     §?l§.§ "G§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                     addr79:
                     while(true)
                     {
                        this.§!V§ = null;
                        if(!_loc1_)
                        {
                           continue;
                        }
                        if(!(_loc2_ && _loc1_))
                        {
                           if(_loc1_)
                           {
                              continue loop0;
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr94);
                     }
                     addr70:
                  }
               }
            }
            return;
         }
         §§goto(addr79);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§!V§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     addr48:
                     if(this.§!V§.currentFrame == this.§!V§.totalFrames)
                     {
                        if(!_loc2_)
                        {
                           this.§'!J§();
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
   }
}
