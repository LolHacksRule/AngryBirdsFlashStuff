package §-!+§
{
   import §]!A§.;
   import com.angrybirds.friendsbar.ButtonMiniGift_Plates;
   import com.angrybirds.friendsbar.MiniGiftCheckmarkAnimation;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §`1§
   {
       
      
      public var §;Q§:Sprite;
      
      private var §6m§:ButtonMiniGift_Plates;
      
      private var § null§:MiniGiftCheckmarkAnimation;
      
      public function §`1§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§;Q§ = new Sprite();
            do
            {
               this.§6m§ = new ButtonMiniGift_Plates();
               continue loop0;
            }
            while(!_loc1_);
            
            return;
         }
      }
      
      public function get §5!K§() : ButtonMiniGift_Plates
      {
         return this.§6m§;
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() != false)
               {
                  §§push(this.§6m§);
                  if(!(_loc4_ && this))
                  {
                     §§push(true);
                     if(_loc3_)
                     {
                        §§pop().visible = §§pop();
                        do
                        {
                           this.§^C§();
                        }
                        while(_loc4_);
                        
                        if(!(_loc4_ && this))
                        {
                           break;
                        }
                        loop2:
                        while(true)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              if(!_loc4_)
                              {
                                 if(_loc3_ || this)
                                 {
                                    addr36:
                                    break loop0;
                                 }
                                 continue loop0;
                              }
                              while(true)
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    §#6§.§ q§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame,false,0,true);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(this.§6m§);
                                       addr144:
                                       while(true)
                                       {
                                          §§push(false);
                                          addr145:
                                          while(true)
                                          {
                                             §§pop().visible = §§pop();
                                             continue loop0;
                                          }
                                       }
                                    }
                                    addr142:
                                 }
                              }
                              addr104:
                           }
                           while(!_loc3_)
                           {
                              while(true)
                              {
                                 this.§;Q§.addChild(this.§ null§);
                                 §§goto(addr104);
                              }
                           }
                           addr97:
                           while(true)
                           {
                              this.§ null§.play();
                              continue loop2;
                           }
                        }
                     }
                     §§goto(addr145);
                  }
                  §§goto(addr144);
               }
               §§goto(addr142);
            }
            return;
         }
         §§goto(addr97);
      }
      
      private function §^C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§ null§)
            {
               while(true)
               {
                  if(this.§;Q§.contains(this.§ null§))
                  {
                     if(_loc2_ || this)
                     {
                        this.§;Q§.removeChild(this.§ null§);
                     }
                     while(true)
                     {
                        §§goto(addr54);
                     }
                  }
                  while(true)
                  {
                     §#6§.§ q§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                     addr54:
                     §§goto(addr25);
                  }
               }
            }
            §§goto(addr25);
         }
         addr25:
         do
         {
            if(_loc2_ || this)
            {
               if(!_loc1_)
               {
                  continue;
               }
               continue loop0;
            }
            continue loop1;
         }
         while(this.§ null§ = null, !_loc2_);
         
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§ null§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr51);
            }
            if(§§pop().currentFrame == this.§ null§.totalFrames)
            {
               if(_loc2_)
               {
                  this.§^C§();
               }
            }
         }
         addr51:
         if(_loc2_)
         {
            §§push(this.§ null§);
         }
      }
   }
}
