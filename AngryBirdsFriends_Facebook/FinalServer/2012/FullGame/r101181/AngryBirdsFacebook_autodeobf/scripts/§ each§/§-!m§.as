package § each§
{
   import §'!s§.Popup;
   import §-!+§.§<i§;
   import §^!r§.§=!x§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §-!m§
   {
      
      public static const §4!-§:Number = 600;
      
      public static var §>!l§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §4!-§ = 600;
         }
      }
      
      private var §?!?§:§<i§;
      
      private var mClip:MovieClip;
      
      private var §]"6§:Popup;
      
      private var §!"!§:Boolean = false;
      
      public function §-!m§(param1:Popup)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
         }
         do
         {
            this.§]"6§ = param1;
            do
            {
               this.mClip = param1.mClip;
            }
            while(_loc2_);
            
         }
         while(_loc2_ && param1);
         
      }
      
      public function §@!D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§!"!§)
            {
               if(_loc2_)
               {
                  return;
               }
               while(true)
               {
                  loop13:
                  while(_loc2_ || _loc2_)
                  {
                     this.§@!&§();
                     loop14:
                     while(true)
                     {
                        if(_loc2_ || this)
                        {
                           if(!(_loc1_ && this))
                           {
                              addr87:
                              if(_loc1_ && _loc2_)
                              {
                                 break;
                              }
                              this.mClip.Container_Popup.Container_LevelPacks.addChild(this.§?!?§.scrollerSprite);
                              continue;
                           }
                           loop9:
                           while(_loc2_)
                           {
                              §§push(this.§?!?§);
                              while(true)
                              {
                                 §§pop().scrollerSprite.x = this.mClip.Container_Popup.Container_LevelPacks.btnLeft.x + 30;
                                 addr139:
                                 while(_loc2_ || this)
                                 {
                                    §§push(this.§?!?§);
                                    while(true)
                                    {
                                       §§pop().scrollerSprite.y = this.mClip.Container_Popup.Container_LevelPacks.btnLeft.y - 40;
                                       continue loop13;
                                       §§goto(addr69);
                                    }
                                    continue loop14;
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       addr198:
                                       if(_loc2_ || _loc1_)
                                       {
                                          §§push(this);
                                          §§push(§§findproperty(§<i§));
                                          §§push(§4!-§);
                                          §§push(200);
                                          if(_loc2_ || this)
                                          {
                                             §§pop().§?!?§ = new §§pop().§<i§(§§pop(),§§pop(),§>!l§ || [],§+z§,5);
                                             break loop9;
                                          }
                                          §§goto(addr176);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.mClip.Container_Popup.Container_LevelPacks.btnRight.addEventListener(MouseEvent.CLICK,this.§>`§);
                                             break loop6;
                                             §§goto(addr198);
                                          }
                                          addr257:
                                       }
                                    }
                                    break;
                                    §§goto(addr139);
                                 }
                                 while(true)
                                 {
                                    this.mClip.Container_Popup.Container_LevelPacks.btnRight.x = this.mClip.Container_Popup.Container_LevelPacks.btnLeft.x + §4!-§ + 30;
                                    §§goto(addr223);
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr150);
                           }
                        }
                        §§goto(addr139);
                     }
                     while(true)
                     {
                        this.mClip.Container_Popup.Container_LevelPacks.btnLeft.addEventListener(MouseEvent.CLICK,this.§3!b§);
                        §§goto(addr257);
                        §§goto(addr87);
                     }
                  }
               }
               addr269:
            }
            while(true)
            {
               this.§!"!§ = true;
               §§goto(addr262);
               §§goto(addr269);
            }
         }
         addr69:
         while(true)
         {
            §§push(this.§?!?§);
            if(!_loc2_)
            {
               continue loop12;
            }
            if(_loc1_)
            {
               continue loop10;
            }
            addr31:
            if(_loc2_ || this)
            {
               §§pop().scrollerSprite.visible = true;
               if(!_loc2_)
               {
                  continue loop14;
               }
               if(_loc1_)
               {
                  continue loop13;
               }
               addr45:
               if(!(_loc1_ && this))
               {
                  break;
               }
               addr223:
               while(true)
               {
                  this.mClip.Container_Popup.Container_LevelPacks.btnRight.y = this.mClip.Container_Popup.Container_LevelPacks.btnLeft.y;
                  break loop11;
                  §§goto(addr45);
               }
            }
            while(true)
            {
               §§pop().scrollerSprite.addEventListener(§=!x§.§!m§,this.onBuyItemClicked);
               continue loop9;
               §§goto(addr31);
            }
         }
      }
      
      private function §3!b§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.scroll(-this.§?!?§.§1!a§);
         }
      }
      
      private function §>`§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.scroll(this.§?!?§.§1!a§);
         }
      }
      
      private function scroll(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(param1 != 0)
            {
               loop0:
               while(true)
               {
                  this.§?!?§.scroll(param1);
                  addr58:
                  while(true)
                  {
                     this.§@!&§();
                     if(_loc2_)
                     {
                        if(!(_loc3_ && this))
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr34);
               }
            }
            addr34:
            return;
         }
         §§goto(addr58);
      }
      
      private function §@!&§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§?!?§.offset == 0);
         if(!_loc3_)
         {
            §§push(!§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(this.§?!?§.offset == this.§?!?§.data.length - this.§?!?§.§1!a§);
         if(!_loc3_)
         {
            §§push(!§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.mClip.Container_Popup.Container_LevelPacks.btnLeft.visible = _loc1_;
            do
            {
               this.mClip.Container_Popup.Container_LevelPacks.btnRight.visible = _loc2_;
            }
            while(_loc3_);
            
         }
      }
      
      private function onBuyItemClicked(param1:§=!x§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?!m§(param1.§5!c§);
         }
      }
      
      public function §]!s§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §>!l§ = param1;
         }
         do
         {
            this.§@!D§();
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      private function §?!m§(param1:String) : void
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.mClip.Container_Popup.Container_LevelPacks.removeChild(this.§?!?§.scrollerSprite);
            do
            {
               this.§?!?§.dispose();
            }
            while(!_loc1_);
            
         }
      }
   }
}
