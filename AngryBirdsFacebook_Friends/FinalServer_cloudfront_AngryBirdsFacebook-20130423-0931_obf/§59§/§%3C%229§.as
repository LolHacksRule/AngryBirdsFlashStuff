package §59§
{
   import §&S§.§&!l§;
   import §&S§.§6!F§;
   import §5!Y§.§9"6§;
   import §5!Y§.Popup;
   import §5!Y§.StatePopupManager;
   import §8m§.§@"M§;
   import §9@§.§4d§;
   import §9@§.§@q§;
   import §=!@§.§1!l§;
   import §=!@§.§=!N§;
   import §@"V§.§6!c§;
   import §]]§.§1"2§;
   import §^!o§.§^"$§;
   import §^"F§.§4!2§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §<"9§ extends Popup implements §4d§, §&!l§
   {
      
      private static const §0"B§:String = "In-app Shop";
      
      public static const §%F§:String = "uiSoundsChannel";
      
      private static const §["D§:int = 8;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §0"B§ = "In-app Shop";
         }
         while(true)
         {
            §%F§ = "uiSoundsChannel";
            while(!(_loc2_ && §<"9§))
            {
               §["D§ = 8;
               if(_loc1_ || §<"9§)
               {
                  return;
               }
            }
         }
      }
      
      public var §4!u§:§6!F§;
      
      private var §3g§:§&A§;
      
      private var §@X§:§&A§;
      
      private var dynamic:§&A§;
      
      private var §%!F§:§&A§;
      
      private var §?!!§:§&A§;
      
      private var MIGHTY_EAGLE:§&A§;
      
      private var §+!F§:§&A§;
      
      private var §4!H§:§&A§;
      
      private var § L§:§&A§;
      
      private var §'!7§:Array;
      
      private var §[!G§:§&A§;
      
      private var §]!h§:String;
      
      private var §4z§:Point;
      
      public function §<"9§(param1:§`_§, param2:StatePopupManager, param3:String = "")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:MovieClip = null;
         if(_loc6_ || param3)
         {
            super(§ "<§.§%I§.Views.PopupView_TabbedShop[0],param1);
            loop0:
            while(true)
            {
               addr42:
               while(true)
               {
                  mClip.Container_TabbedShopPopup.Button_ShopClose.addEventListener(MouseEvent.CLICK,this.§if §);
                  continue loop0;
               }
            }
            addr61:
         }
         while(true)
         {
            this.§]!h§ = param3;
            if(!_loc6_)
            {
               continue;
            }
            if(!(_loc7_ && this))
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr61);
            }
            §§goto(addr42);
         }
         var _loc4_:int = 0;
         while(_loc4_ < §["D§)
         {
            if(_loc5_ = mClip.Container_TabbedShopPopup["powerupTab" + _loc4_])
            {
               if(!_loc7_)
               {
                  _loc5_.gotoAndStop("Normal");
                  if(!(_loc6_ || param1))
                  {
                     continue;
                  }
               }
            }
            _loc4_++;
         }
         if(_loc6_ || param2)
         {
            §§push(§%"S§.§!C§);
            if(_loc6_)
            {
               §§push(§§pop().§9"%§);
               if(_loc6_ || this)
               {
                  §§push(§§pop().§1!!§);
                  if(!(_loc7_ && this))
                  {
                     if(!§§pop().§,1§)
                     {
                        if(!(_loc7_ && param3))
                        {
                           addr152:
                           §%"S§.§!C§.§9"%§.§1!!§.addEventListener(Event.COMPLETE,this.§6I§);
                           if(_loc6_)
                           {
                              addr159:
                           }
                        }
                     }
                     else
                     {
                        this.§6I§(null,§%"S§.§!C§.§9"%§.§1!!§.§,1§);
                     }
                     return;
                  }
               }
            }
            §§goto(addr152);
         }
         §§goto(addr159);
      }
      
      private function §6I§(param1:Event = null, param2:Vector.<§="C§> = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            if(param1)
            {
               if(_loc4_)
               {
                  §§push(§%"S§.§!C§);
                  if(!_loc3_)
                  {
                     §§push(§§pop().§9"%§);
                     if(_loc4_)
                     {
                        §§push(§§pop().§1!!§);
                        if(_loc4_ || param2)
                        {
                           param2 = §§pop().§,1§;
                           §§goto(addr66);
                        }
                     }
                  }
               }
               §§goto(addr80);
            }
            addr66:
            this.§%"5§(param2);
            if(_loc4_ || param2)
            {
               addr80:
               §%"S§.§!C§.§9"%§.§1!!§.removeEventListener(Event.COMPLETE,this.§6I§);
            }
            return;
         }
         §§goto(addr80);
      }
      
      private function §%"5§(param1:Vector.<§="C§>) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§9!J§(param1);
            loop0:
            while(this.§]!h§ == "")
            {
               if(!(_loc3_ || _loc2_))
               {
                  while(true)
                  {
                     break loop0;
                  }
               }
               else
               {
                  addr82:
                  addr46:
               }
               continue;
               if(_loc3_ || this)
               {
                  this.§]!h§ = this.§+!F§.§;"R§.id;
                  §§goto(addr82);
               }
               continue;
               return;
            }
            while(true)
            {
               this.§<!?§(this.§]!h§);
               if(_loc2_)
               {
                  continue;
               }
            }
         }
         §§goto(addr46);
      }
      
      private function §9!J§(param1:Vector.<§="C§>) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§'!7§ = [];
            loop0:
            while(true)
            {
               this.§3g§ = this.§>z§(this.§use§(§4!2§.§4"X§,param1),"PowerupPackIcon","ShopContentPowerupBundle","Each pack contains one Super Seed, Sling Scope, King Sling and Birdquake making it the perfect solution to all your piggy problems.");
               addr203:
               while(true)
               {
                  this.§@X§ = this.§>z§(this.§use§(§4!2§.§`!4§.§1!#§,param1),"SuperSeedsIcon","ShopContentSuperSeeds","Supersize your bird! Super Seeds turn any bird into a pig-popping giant.");
                  while(true)
                  {
                     this.dynamic = this.§>z§(this.§use§(§4!2§.§3"$§.§1!#§,param1),"SlingScopeIcon","ShopContentSlingScope","Looking for the perfect shot? Use Sling Scope laser targeting for pinpoint precision!");
                     addr150:
                     while(_loc3_ || _loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr118);
      }
      
      private function §use§(param1:String, param2:Vector.<§="C§>) : §="C§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§="C§ = null;
         var _loc4_:int = 0;
         var _loc5_:* = param2;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(!_loc7_)
               {
                  break;
               }
               if(_loc3_.id == param1)
               {
                  if(!(_loc6_ && param2))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc3_;
      }
      
      private function §>z§(param1:§="C§, param2:String, param3:String, param4:String) : §&A§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:MovieClip = mClip.Container_TabbedShopPopup["powerupTab" + this.§'!7§.length];
         if(_loc8_)
         {
            if(param1 == null)
            {
               if(!_loc7_)
               {
                  _loc5_.visible = false;
                  if(_loc8_)
                  {
                     §§goto(addr49);
                  }
               }
               §§goto(addr49);
            }
            var _loc6_:§&A§;
            (_loc6_ = new §&A§(param1,param2,param3,_loc5_,param4)).addEventListener(§=!N§.§9o§,this.§;k§);
            if(!_loc7_)
            {
               _loc6_.addEventListener(§=!N§.§[",§,this.§1@§);
               do
               {
                  this.§'!7§.push(_loc6_);
               }
               while(_loc7_ && this);
               
            }
            return _loc6_;
         }
         addr49:
         return null;
      }
      
      private function §;k§(param1:§=!N§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6!;§(param1.currentTarget as §&A§);
         }
         do
         {
            §@"M§.§3"C§("Shop_Selection",§%F§,0,0.7);
         }
         while(_loc3_ && _loc2_);
         
      }
      
      private function §1@§(param1:§=!N§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            this.§4z§ = new Point(param1.point.x + 55,param1.point.y + 160);
         }
         loop0:
         while(true)
         {
            if(§%"S§.§!C§.§9"%§.§,T§.§0Q§ < param1.§5j§.price)
            {
               if(!(_loc3_ && _loc2_))
               {
                  §9"6§.§;!J§(§^"$§.§1!J§);
               }
               addr39:
            }
            loop1:
            while(true)
            {
               §@"M§.§3"C§("Shop_Buy",§%F§);
               while(!_loc3_)
               {
                  this.§!!^§();
                  if(_loc3_)
                  {
                     continue;
                  }
                  if(!(_loc3_ && _loc2_))
                  {
                     if(true)
                     {
                        var _loc2_:§1"2§ = new §1"2§(param1.§;"R§,param1.§5j§);
                        if(_loc4_)
                        {
                           _loc2_.addEventListener(§1!l§.§9E§,this.§@k§);
                        }
                     }
                     continue loop1;
                     return;
                  }
               }
               continue loop0;
            }
            continue;
            return;
         }
      }
      
      private function §!!^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            mClip.Container_TabbedShopPopup.contentArea.mouseEnabled = false;
         }
         do
         {
            mClip.Container_TabbedShopPopup.contentArea.mouseChildren = false;
            do
            {
               mClip.Container_TabbedShopPopup.contentArea.alpha = 0.5;
            }
            while(!_loc2_);
            
         }
         while(!(_loc2_ || this));
         
      }
      
      private function §7b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            mClip.Container_TabbedShopPopup.contentArea.mouseEnabled = true;
            while(true)
            {
               mClip.Container_TabbedShopPopup.contentArea.mouseChildren = true;
               loop1:
               while(_loc2_ || _loc2_)
               {
                  while(true)
                  {
                     mClip.Container_TabbedShopPopup.contentArea.alpha = 1;
                     if(!(_loc1_ && this))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr71);
      }
      
      private function §@k§(param1:§1!l§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§&A§ = null;
         var _loc5_:String = null;
         var _loc2_:§=!]§ = new §=!]§();
         if(_loc8_ || this)
         {
            mClip.Container_TabbedShopPopup.addChild(_loc2_);
            loop0:
            while(true)
            {
               _loc2_.x = this.§4z§.x;
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     _loc2_.y = this.§4z§.y;
                     do
                     {
                        this.§4z§ = null;
                     }
                     while(!(_loc8_ || _loc2_));
                     
                     if(!_loc8_)
                     {
                        break;
                     }
                     if(!_loc8_)
                     {
                        continue loop0;
                     }
                     while(false)
                     {
                        continue loop2;
                     }
                     var _loc3_:§1"2§ = param1.currentTarget as §1"2§;
                     if(!(_loc9_ && this))
                     {
                        _loc3_.removeEventListener(§1!l§.§9E§,this.§@k§);
                        if(_loc8_)
                        {
                           §§push(param1.changedItems);
                           if(_loc8_)
                           {
                              §§push(Boolean(§§pop()));
                              if(!(_loc9_ && this))
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc9_ && _loc2_))
                                    {
                                       §§pop();
                                       if(_loc8_ || _loc2_)
                                       {
                                          addr125:
                                          if(param1.changedItems.length > 0)
                                          {
                                             for each(_loc4_ in this.§'!7§)
                                             {
                                                _loc4_.§!9§();
                                             }
                                             if(_loc8_)
                                             {
                                                addr294:
                                                this.§7b§();
                                             }
                                             loop6:
                                             while(true)
                                             {
                                                §@q§.trackPageView(this,§@q§.§7!K§);
                                                while(true)
                                                {
                                                   §@q§.trackTransaction(_loc3_.orderId,§0"B§,_loc3_.§;"R§.id,_loc3_.§;"R§.id,_loc3_.§5j§.§ !?§ + " x",0,1,0);
                                                   loop8:
                                                   while(_loc8_ || param1)
                                                   {
                                                      §§push(_loc3_.§;"R§.id);
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§push("Mushroom");
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(!_loc9_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr244:
                                                                     while(_loc8_)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(§6!c§.§ !N§("FreeMushroomIntroSampleEaster2013"));
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              if(_loc8_)
                                                                              {
                                                                                 while(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§6!c§.§ !N§("FreeMushroomIntroSampleEaster2013"));
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          continue loop9;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr158:
                                                                                 return;
                                                                                 addr186:
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(" - ");
                                                                              if(!(_loc8_ || _loc2_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§push(§§pop() + _loc3_.§;"R§.id);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    addr210:
                                                                                    §§push(§§pop() + " x ");
                                                                                    if(_loc8_ || _loc2_)
                                                                                    {
                                                                                       §§push(§§pop() + _loc3_.§5j§.§ !?§);
                                                                                    }
                                                                                 }
                                                                                 §§push(§§pop());
                                                                                 continue loop9;
                                                                              }
                                                                              §§goto(addr210);
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  addr243:
                                                               }
                                                               §§goto(addr186);
                                                            }
                                                            §§goto(addr243);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr126:
                                          }
                                          §§goto(addr294);
                                       }
                                       §§goto(addr126);
                                    }
                                 }
                              }
                           }
                           §§goto(addr125);
                        }
                     }
                     §§goto(addr125);
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      private function §<!?§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§&A§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§'!7§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc6_ && _loc3_))
               {
                  if(_loc2_.§;"R§.id == param1)
                  {
                     if(_loc6_)
                     {
                        break;
                     }
                     this.§6!;§(_loc2_);
                     if(_loc5_ || _loc2_)
                     {
                        break;
                     }
                  }
               }
            }
            return;
         }
      }
      
      private function §6!;§(param1:§&A§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§&A§ = null;
         if(!(_loc6_ && _loc2_))
         {
            if(this.§[!G§)
            {
               if(_loc5_ || this)
               {
                  if(mClip.Container_TabbedShopPopup.contentArea.contains(this.§[!G§.§^!-§))
                  {
                     if(_loc5_ || this)
                     {
                     }
                     addr68:
                     for each(_loc2_ in this.§'!7§)
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           _loc2_.§^+§();
                        }
                     }
                     if(_loc5_)
                     {
                        param1.§<]§();
                        while(true)
                        {
                           this.§[!G§ = param1;
                           while(_loc5_)
                           {
                              mClip.Container_TabbedShopPopup.contentArea.addChild(param1.§^!-§);
                              do
                              {
                                 §@q§.trackPageView(this,param1.§;"R§.id);
                              }
                              while(_loc6_);
                              
                              if(!_loc6_)
                              {
                                 return;
                                 addr122:
                              }
                           }
                        }
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr68);
               }
               mClip.Container_TabbedShopPopup.contentArea.removeChild(this.§[!G§.§^!-§);
            }
         }
         §§goto(addr68);
      }
      
      public function get walletContainer() : Sprite
      {
         return mClip;
      }
      
      public function §!U§(param1:§6!F§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §;"Z§() : §6!F§
      {
         return this.§4!u§;
      }
      
      public function §?!f§(param1:§6!F§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4!u§ = param1;
         }
      }
      
      public function §=,§() : String
      {
         return §@q§.§["G§;
      }
      
      public function §8"3§() : String
      {
         return §@q§.§-![§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super.open(param1);
            while(true)
            {
               §@q§.trackPageView(this);
               addr56:
               if(!(_loc2_ || param1))
               {
                  continue;
               }
               return;
               addr63:
            }
         }
         while(true)
         {
            §@q§.§ "I§();
            while(_loc2_ || _loc2_)
            {
               this.§?!f§(new §6!F§(this));
               if(!_loc2_)
               {
                  continue;
               }
               §§goto(addr56);
            }
         }
         §§goto(addr63);
      }
      
      private function §if §(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.close();
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§!U§(this.§4!u§);
         }
         do
         {
            super.close();
         }
         while(_loc1_);
         
      }
   }
}
