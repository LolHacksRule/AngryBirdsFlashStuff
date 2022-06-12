package § each§
{
   import §!K§.Item;
   import §'!s§.Popup;
   import §-!+§.§<i§;
   import §0p§.§3!D§;
   import §^!r§.§=!x§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §84§
   {
      
      public static const §4!-§:Number = 600;
      
      public static const §9!#§:int = 4;
      
      public static var §90§:Array;
      
      private static var §,U§:String;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §4!-§ = 600;
            do
            {
               §9!#§ = 4;
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private var §>u§:§<i§;
      
      private var mAvatarItemsScroller2:§<i§;
      
      private var mClip:MovieClip;
      
      private var §]"6§:Popup;
      
      private var §!"!§:Boolean = false;
      
      private var §=S§:Array;
      
      private var § p§:Array;
      
      public function §84§(param1:Popup)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=S§ = [];
            while(true)
            {
               this.§ p§ = [];
               loop1:
               while(true)
               {
                  super();
                  while(true)
                  {
                     this.§]"6§ = param1;
                     loop3:
                     while(!_loc3_)
                     {
                        while(true)
                        {
                           this.mClip = param1.mClip;
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               §§goto(addr64);
            }
         }
         §§goto(addr71);
      }
      
      public function §@!D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(!this.§!"!§)
            {
               while(true)
               {
                  this.§0L§();
                  loop1:
                  while(true)
                  {
                     this.§!"!§ = true;
                     addr376:
                     loop2:
                     while(true)
                     {
                        this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.addEventListener(MouseEvent.CLICK,this.§3!b§);
                        loop3:
                        while(true)
                        {
                           this.mClip.Container_Popup.Container_Avatars.btnRightAvatar.addEventListener(MouseEvent.CLICK,this.§>`§);
                           loop4:
                           while(true)
                           {
                              this.mClip.Container_Popup.Container_Avatars.btnRightAvatar.x = this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.x + §4!-§ + 30;
                              loop5:
                              while(true)
                              {
                                 this.mClip.Container_Popup.Container_Avatars.btnRightAvatar.y = this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.y;
                                 loop6:
                                 while(_loc2_ || _loc2_)
                                 {
                                    §§push(this);
                                    §§push(§§findproperty(§<i§));
                                    §§push(§4!-§);
                                    §§push(200);
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§pop().§>u§ = new §§pop().§<i§(§§pop(),§§pop(),this.§=S§ || [],§+z§,50);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(this.§>u§);
                                          loop8:
                                          while(true)
                                          {
                                             §§pop().scrollerSprite.addEventListener(§=!x§.§!m§,this.onBuyItemClicked);
                                             loop9:
                                             while(true)
                                             {
                                                §§push(this.§>u§);
                                                while(true)
                                                {
                                                   §§pop().scrollerSprite.x = this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.x + 30;
                                                   continue loop4;
                                                   addr72:
                                                   if(!(_loc1_ && this))
                                                   {
                                                      §§pop().scrollerSprite.visible = true;
                                                      loop21:
                                                      while(true)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            if(!(_loc1_ && _loc2_))
                                                            {
                                                               if(_loc2_ || _loc1_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               continue loop4;
                                                            }
                                                            loop16:
                                                            while(!_loc1_)
                                                            {
                                                               §§push(this.mAvatarItemsScroller2);
                                                               loop17:
                                                               while(_loc2_)
                                                               {
                                                                  §§pop().scrollerSprite.x = this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.x + 30;
                                                                  §§push(this.mAvatarItemsScroller2);
                                                                  if(!(_loc2_ || this))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§pop().scrollerSprite.y = this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.y - 40 + 100;
                                                                  loop19:
                                                                  while(_loc2_ || _loc2_)
                                                                  {
                                                                     this.§@!&§();
                                                                     while(true)
                                                                     {
                                                                        if(!_loc1_)
                                                                        {
                                                                           if(_loc1_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           if(!_loc2_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§goto(addr384);
                                                                           }
                                                                           §§push(this.§>u§);
                                                                           if(!_loc2_)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           §§goto(addr72);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this);
                                                                              §§push(§§findproperty(§<i§));
                                                                              §§push(§4!-§);
                                                                              §§push(200);
                                                                              if(!(_loc1_ && this))
                                                                              {
                                                                                 §§pop().mAvatarItemsScroller2 = new §§pop().§<i§(§§pop(),§§pop(),this.§ p§ || [],§+z§,50);
                                                                                 break loop19;
                                                                              }
                                                                              §§goto(addr215);
                                                                           }
                                                                           addr242:
                                                                        }
                                                                        addr40:
                                                                        if(!(_loc1_ && _loc1_))
                                                                        {
                                                                           return;
                                                                        }
                                                                     }
                                                                     continue loop2;
                                                                     addr59:
                                                                     if(_loc1_ && _loc1_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     this.mClip.Container_Popup.Container_Avatars.addChild(this.mAvatarItemsScroller2.scrollerSprite);
                                                                     addr66:
                                                                     if(_loc1_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc1_)
                                                                           {
                                                                              continue loop21;
                                                                           }
                                                                           §§goto(addr59);
                                                                           §§goto(addr66);
                                                                        }
                                                                        continue;
                                                                        addr57:
                                                                     }
                                                                     §§goto(addr40);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.mAvatarItemsScroller2);
                                                                     break loop17;
                                                                     §§goto(addr149);
                                                                  }
                                                                  addr149:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§pop().scrollerSprite.addEventListener(§=!x§.§!m§,this.onBuyItemClicked);
                                                                  continue loop16;
                                                               }
                                                            }
                                                            continue loop9;
                                                         }
                                                         while(_loc2_)
                                                         {
                                                            §§goto(addr174);
                                                         }
                                                         continue loop6;
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr292);
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
            }
            addr384:
            return;
         }
         §§goto(addr376);
      }
      
      private function §0L§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Array = §90§.concat();
         loop0:
         while(true)
         {
            if(_loc1_.length <= 0)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§=S§);
                     if(!_loc2_)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           if(§§pop().length % §9!#§ == 0)
                           {
                              loop3:
                              while(_loc3_)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§push(this.§ p§);
                                    if(!(_loc2_ && this))
                                    {
                                       if(§§pop().length >= this.§=S§.length)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                if(_loc3_)
                                                {
                                                   break loop2;
                                                }
                                                break;
                                             }
                                             continue loop3;
                                          }
                                       }
                                       else
                                       {
                                          addr79:
                                          §§push(this.§ p§);
                                          while(true)
                                          {
                                             §§push(null);
                                             if(!(_loc3_ || this))
                                             {
                                                addr101:
                                                §§pop().push(§§pop());
                                                break loop4;
                                             }
                                             §§pop().push(§§pop());
                                          }
                                          addr79:
                                       }
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop4;
                                          }
                                          addr136:
                                          addr125:
                                          if(_loc2_)
                                          {
                                             while(_loc1_.length > 0)
                                             {
                                                §§goto(addr125);
                                             }
                                             continue loop0;
                                             addr148:
                                          }
                                          this.§ p§ = this.§ p§.concat(_loc1_.splice(0,§9!#§));
                                          continue loop0;
                                       }
                                    }
                                    §§goto(addr79);
                                 }
                                 if(_loc3_ || _loc1_)
                                 {
                                    continue loop2;
                                 }
                                 §§goto(addr136);
                              }
                              continue loop1;
                           }
                           addr100:
                           §§push(this.§=S§);
                           §§push(null);
                           §§goto(addr101);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr79);
                  }
                  return;
               }
            }
            else
            {
               this.§=S§ = this.§=S§.concat(_loc1_.splice(0,§9!#§));
            }
            §§goto(addr148);
         }
      }
      
      private function §3!b§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.scroll(-this.§>u§.§1!a§);
         }
      }
      
      private function §>`§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.scroll(this.§>u§.§1!a§);
         }
      }
      
      private function scroll(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(param1 != 0)
            {
               if(!_loc3_)
               {
                  this.§>u§.scroll(param1);
               }
               do
               {
                  this.mAvatarItemsScroller2.scroll(param1);
                  do
                  {
                     this.§@!&§();
                  }
                  while(!_loc2_);
                  
               }
               while(!(_loc2_ || this));
               
               addr60:
            }
            return;
         }
         §§goto(addr60);
      }
      
      private function §@!&§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§>u§.offset == 0);
         if(_loc3_)
         {
            §§push(!§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(this.§>u§.offset == this.§>u§.data.length - this.§>u§.§1!a§);
         if(!_loc4_)
         {
            §§push(!§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || this)
         {
            this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.visible = _loc1_;
            do
            {
               this.mClip.Container_Popup.Container_Avatars.btnRightAvatar.visible = _loc2_;
            }
            while(!_loc3_);
            
         }
      }
      
      private function onBuyItemClicked(param1:§=!x§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§?!m§(param1.§5!c§);
         }
      }
      
      private function §?!m§(param1:String) : void
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
      }
      
      public function §;^§(param1:Array = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:Item = null;
         if(_loc6_)
         {
            if(§90§)
            {
               if(_loc6_ || _loc3_)
               {
                  return;
               }
            }
            else
            {
               addr41:
               §90§ = param1;
            }
            for each(_loc2_ in §90§)
            {
               _loc3_ = §3!D§.§ @§(String(_loc2_.id));
               if(!(_loc7_ && this))
               {
                  if(_loc3_ == null)
                  {
                     continue;
                  }
                  if(_loc7_)
                  {
                     continue;
                  }
               }
               §§push(this.§]"6§);
               §§push("Inventory_Item_");
               if(_loc6_)
               {
                  §§push(§§pop() + _loc3_.§;!Y§);
               }
               §§pop().getItemByName(§§pop());
            }
            if(_loc6_ || this)
            {
               this.§@!D§();
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.mClip.Container_Popup.Container_Avatars.removeChild(this.§>u§.scrollerSprite);
         }
         do
         {
            this.§>u§.dispose();
         }
         while(_loc1_);
         
      }
   }
}
