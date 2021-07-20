package §<!V§
{
   import §%i§.§0!Y§;
   import §1!t§.§!!G§;
   import §1!t§.§!>§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §2<§.§9!7§;
   import §5!Y§.§9"6§;
   import §`"%§.§`_§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.system.Security;
   
   public class §"!j§
   {
      
      public static const §!!B§:String = "http://cloud.rovio.com/content/embed/pauseMenu/channel/?d=facebook&p=abc&v=1.1.1&a=full&r=game&c=rovio&icons=true&cat=plain";
      
      public static const §,<§:int = 613;
      
      public static const §;!+§:int = 409;
      
      private static const §["Q§:int = 654;
      
      private static var §8!L§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §"!j§))
         {
            §!!B§ = "http://cloud.rovio.com/content/embed/pauseMenu/channel/?d=facebook&p=abc&v=1.1.1&a=full&r=game&c=rovio&icons=true&cat=plain";
            while(true)
            {
               §,<§ = 613;
               loop1:
               while(true)
               {
                  §;!+§ = 409;
                  loop2:
                  while(true)
                  {
                     §["Q§ = 654;
                     loop3:
                     while(!_loc2_)
                     {
                        while(true)
                        {
                           §8!L§ = false;
                           if(!(_loc2_ && _loc2_))
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      private var §2"@§:§`_§;
      
      private var §;""§:String;
      
      private var §&_§:Array;
      
      private var §6"B§:int;
      
      private var §"!I§:Object;
      
      private var §'"5§:int;
      
      private var § !5§:§6!K§;
      
      private var §!"A§:§9!3§;
      
      private var §55§:Object;
      
      public function §"!j§(param1:§`_§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§2"@§ = param1;
            while(true)
            {
               this.§!"A§ = new §9!3§();
               continue loop0;
               addr62:
               if(_loc3_ || _loc2_)
               {
                  Security.loadPolicyFile("http://news-assets.rovio.com");
                  addr69:
                  if(!_loc2_)
                  {
                     return;
                     addr60:
                  }
                  while(!_loc2_)
                  {
                     §§goto(addr62);
                     §§goto(addr69);
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function §%"?§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc1_)
         {
            if(§8!L§)
            {
               if(_loc3_ || _loc2_)
               {
                  this.§%!o§();
                  if(!_loc4_)
                  {
                     return;
                  }
               }
            }
         }
         var _loc1_:URLRequest = §9!7§.§,!l§(§!!B§);
         var _loc2_:URLLoader = new URLLoader(_loc1_);
         if(_loc3_)
         {
            _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
            while(true)
            {
               _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.§]!^§);
               while(!_loc4_)
               {
                  _loc2_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§2!q§);
                  if(!_loc4_)
                  {
                     return;
                     addr83:
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      private function §]!^§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§%!o§();
         }
      }
      
      private function §%!o§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            this.§2"@§.getItemByName("AngryBirdLoader").setVisibility(false);
         }
         var _loc1_:Class = §?q§.§ q§("PlaceholderAd");
         var _loc2_:MovieClip = new _loc1_();
         var _loc3_:§0!Y§ = this.§2"@§.getItemByName("News_Item_Holder") as §0!Y§;
         var _loc4_:MovieClip = _loc3_.mClip.NewsHolder;
         if(_loc5_ || _loc1_)
         {
            _loc2_.buttonMode = true;
            do
            {
               _loc2_.addEventListener(MouseEvent.CLICK,this.§0!O§);
            }
            while(_loc6_ && _loc3_);
            
         }
         while(true)
         {
            if(_loc4_.numChildren <= 0)
            {
               while(_loc5_ || _loc3_)
               {
                  _loc4_.addChild(_loc2_);
                  do
                  {
                     §8!L§ = true;
                  }
                  while(_loc6_ && this);
                  
                  if(!_loc6_)
                  {
                     return;
                  }
               }
            }
            else
            {
               _loc4_.removeChildAt(0);
            }
         }
      }
      
      private function §0!O§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §9"6§.§;!w§();
         }
      }
      
      protected function §2!q§(param1:SecurityErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§%!o§();
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = null;
         _loc2_ = JSON.parse(param1.currentTarget.data);
         if(_loc3_ || param1)
         {
            this.§55§ = _loc2_.channels;
            do
            {
               this.§!!S§();
            }
            while(!_loc3_);
            
         }
      }
      
      public function reset() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc1_))
         {
            §§push(this.§ !5§);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop())
               {
                  addr53:
                  if(_loc3_ || _loc2_)
                  {
                     §§push(this.§ !5§);
                  }
                  var _loc1_:§0!Y§ = this.§2"@§.getItemByName("News_Item_Holder") as §0!Y§;
                  var _loc2_:MovieClip = _loc1_.mClip.NewsHolder;
                  if(!_loc4_)
                  {
                     _loc2_.y = 0;
                     while(true)
                     {
                        this.§'"5§ = 0;
                        loop1:
                        while(_loc3_)
                        {
                           while(true)
                           {
                              this.scroll(0);
                              if(!(_loc4_ && _loc1_))
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           return;
                        }
                     }
                  }
                  §§goto(addr101);
               }
               §§goto(addr53);
            }
            §§pop().§7!d§();
         }
         §§goto(addr53);
      }
      
      public function uiInteractionHandler(param1:String) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§!>§ = null;
         var _loc3_:* = false;
         var _loc4_:§!!G§ = null;
         var _loc5_:* = param1;
         if(_loc7_)
         {
            §§push("SHOW_NEWS");
            if(_loc7_)
            {
               §§push(_loc5_);
               if(!(_loc8_ && _loc2_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc7_ || param1)
                     {
                        §§push(0);
                        if(_loc7_ || _loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr307:
                        §§push(2);
                        if(!_loc7_)
                        {
                        }
                     }
                     §§goto(addr315);
                  }
                  else
                  {
                     §§push("NEWS_UP");
                     if(_loc7_)
                     {
                        addr289:
                        §§push(_loc5_);
                        if(_loc7_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc8_ && this))
                              {
                                 §§push(1);
                                 if(_loc8_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr307);
                              }
                              §§goto(addr315);
                           }
                           else
                           {
                              §§push("NEWS_DOWN");
                           }
                           §§goto(addr307);
                        }
                        §§goto(addr306);
                     }
                     §§push(_loc5_);
                  }
                  §§goto(addr307);
               }
               addr306:
               if(§§pop() === §§pop())
               {
                  §§goto(addr307);
               }
               else
               {
                  §§push(3);
               }
               addr315:
               switch(§§pop())
               {
                  case 0:
                     _loc2_ = this.§2"@§.getItemByName("RovioNewsContainer");
                     if(_loc7_ || _loc3_)
                     {
                        §§push(_loc2_.visible);
                        if(_loc7_ || param1)
                        {
                           §§push(!§§pop());
                        }
                        _loc3_ = §§pop();
                        loop0:
                        while(true)
                        {
                           addr58:
                           while(true)
                           {
                              _loc2_.setVisibility(_loc3_);
                              continue loop0;
                           }
                        }
                        addr74:
                     }
                     while(true)
                     {
                        this.§2"@§.getItemByName("RovioNewsLogo").setVisibility(_loc3_);
                        if(!(_loc7_ || _loc3_))
                        {
                           continue;
                        }
                        if(_loc7_)
                        {
                           if(true)
                           {
                              break;
                           }
                        }
                        else
                        {
                           §§goto(addr74);
                        }
                        §§goto(addr58);
                     }
                     _loc4_ = §!!G§(this.§2"@§.getItemByName("Button_ShowNews"));
                     if(!(_loc8_ && param1))
                     {
                        if(_loc2_.visible)
                        {
                           if(_loc7_)
                           {
                              _loc4_.setComponentState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
                              if(_loc7_ || _loc3_)
                              {
                                 this.scroll(0);
                                 if(_loc7_)
                                 {
                                    addr189:
                                    break;
                                 }
                              }
                              else
                              {
                                 addr237:
                                 this.scroll(-§["Q§);
                              }
                              addr241:
                              break;
                           }
                        }
                        else
                        {
                           _loc4_.setComponentState(§!!G§.§@!T§);
                           if(!_loc8_)
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(this.§2"@§);
                                 loop4:
                                 while(true)
                                 {
                                    §§push("NewsArrowUp");
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§§pop().getItemByName(§§pop()));
                                       loop6:
                                       while(true)
                                       {
                                          §§push(false);
                                          while(true)
                                          {
                                             §§pop().setVisibility(§§pop());
                                             if(_loc7_ || param1)
                                             {
                                                §§push(this.§2"@§);
                                                if(!_loc7_)
                                                {
                                                   continue loop4;
                                                }
                                                §§push("NewsArrowDown");
                                                if(!(_loc7_ || param1))
                                                {
                                                   continue loop5;
                                                }
                                                §§push(§§pop().getItemByName(§§pop()));
                                                if(!(_loc7_ || _loc2_))
                                                {
                                                   continue loop6;
                                                }
                                                §§push(false);
                                                if(!(_loc7_ || this))
                                                {
                                                   continue;
                                                }
                                                §§pop().setVisibility(§§pop());
                                                if(!(_loc7_ || _loc2_))
                                                {
                                                   break;
                                                }
                                                if(false)
                                                {
                                                   continue loop3;
                                                }
                                                §§goto(addr189);
                                             }
                                             else
                                             {
                                                addr208:
                                                this.scroll(§["Q§);
                                                if(_loc8_)
                                                {
                                                   break;
                                                }
                                             }
                                          }
                                          §§goto(addr237);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        break;
                     }
                     §§goto(addr208);
                  case 1:
                     §§push((_loc5_ = this).§'"5§);
                     if(!_loc8_)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc6_:* = §§pop();
                     if(!_loc8_)
                     {
                        _loc5_.§'"5§ = _loc6_;
                     }
                     if(_loc7_)
                     {
                        §§goto(addr208);
                     }
                     §§goto(addr237);
                  case 2:
                     §§push((_loc5_ = this).§'"5§);
                     if(!_loc8_)
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc6_ = §§pop();
                     if(_loc7_ || this)
                     {
                        _loc5_.§'"5§ = _loc6_;
                     }
                     if(_loc7_)
                     {
                        §§goto(addr237);
                     }
                     §§goto(addr241);
               }
               return;
            }
            §§goto(addr289);
         }
         §§goto(addr307);
      }
      
      private function scroll(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§!!G§ = §!!G§(this.§2"@§.getItemByName("Button_ShowNews"));
         if(_loc5_)
         {
            if(_loc2_.§4" § != §!!G§.§@!T§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§&_§);
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§pop();
                              addr369:
                              while(true)
                              {
                                 §§push(this.§&_§);
                                 if(!(_loc5_ || _loc2_))
                                 {
                                    break;
                                 }
                                 §§push(§§pop().length > 2);
                                 if(!(_loc5_ || _loc2_))
                                 {
                                    continue loop3;
                                 }
                                 if(!_loc5_)
                                 {
                                    continue loop2;
                                 }
                              }
                              continue loop1;
                           }
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              §§push(this.§2"@§);
                              loop6:
                              for(; _loc5_; if(_loc6_ && param1)
                              {
                                 continue;
                              },if(!(_loc6_ && this))
                              {
                                 §§push("NewsArrowDown");
                                 if(!(_loc6_ && param1))
                                 {
                                    §§goto(addr54);
                                 }
                                 §§goto(addr412);
                              },§§goto(addr281))
                              {
                                 if(_loc5_ || _loc2_)
                                 {
                                    §§push("NewsArrowUp");
                                    loop7:
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(§§pop().getItemByName(§§pop()));
                                             if(_loc5_ || _loc2_)
                                             {
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   §§push(false);
                                                   while(true)
                                                   {
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         if(!(_loc6_ && this))
                                                         {
                                                            §§pop().setVisibility(§§pop());
                                                            loop9:
                                                            while(!_loc6_)
                                                            {
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  if(!(_loc5_ || param1))
                                                                  {
                                                                     addr394:
                                                                     if(_loc6_)
                                                                     {
                                                                        loop35:
                                                                        while(true)
                                                                        {
                                                                           addr377:
                                                                           §§push(this.§2"@§);
                                                                           §§push("NewsArrowDown");
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              addr386:
                                                                              §§push(§§pop().getItemByName(§§pop()));
                                                                              §§push(false);
                                                                              if(_loc6_ && _loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§pop().setVisibility(§§pop());
                                                                              §§goto(addr394);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 addr406:
                                                                                 §§push(§§pop().getItemByName(§§pop()));
                                                                                 §§push(false);
                                                                                 break loop35;
                                                                                 §§goto(addr377);
                                                                              }
                                                                              addr405:
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop().setVisibility(§§pop());
                                                                           §§goto(addr408);
                                                                           §§goto(addr386);
                                                                        }
                                                                        addr408:
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§push(this.§2"@§);
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  addr412:
                                                                  addr413:
                                                                  addr413:
                                                                  addr411:
                                                                  var _loc3_:§0!Y§ = §§pop().getItemByName("News_Item_Holder") as §0!Y§;
                                                                  var _loc4_:MovieClip = _loc3_.mClip.NewsHolder;
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     if(Math.abs(param1) > 0)
                                                                     {
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           addr511:
                                                                           if(this.§ !5§)
                                                                           {
                                                                              addr514:
                                                                              this.§ !5§.§7!d§();
                                                                              addr515:
                                                                              addr512:
                                                                           }
                                                                           this.§ !5§ = §0W§.§&"5§.§]!r§(_loc4_,{"y":_loc4_.y + param1},null,0.33,§0W§.§4!E§);
                                                                           addr489:
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              §§push(this.§ !5§);
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    §§pop().play();
                                                                                    if(_loc5_ || _loc2_)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§goto(addr515);
                                                                                       }
                                                                                       addr430:
                                                                                       return;
                                                                                       addr461:
                                                                                    }
                                                                                    §§goto(addr489);
                                                                                 }
                                                                                 §§goto(addr511);
                                                                              }
                                                                              §§goto(addr514);
                                                                           }
                                                                        }
                                                                        §§goto(addr512);
                                                                     }
                                                                     §§goto(addr430);
                                                                  }
                                                                  §§goto(addr461);
                                                               }
                                                               else
                                                               {
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§'"5§);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(1);
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              addr253:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 §§push(§§pop() * 2);
                                                                              }
                                                                              if(§§pop() < this.§&_§.length)
                                                                              {
                                                                                 §§push(this.§2"@§);
                                                                                 break loop6;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§2"@§);
                                                                                 addr255:
                                                                                 while(_loc5_)
                                                                                 {
                                                                                    §§push("NewsArrowDown");
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().getItemByName(§§pop()));
                                                                                       addr259:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc6_ && this))
                                                                                          {
                                                                                             §§push(false);
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().setVisibility(§§pop());
                                                                                                break loop9;
                                                                                             }
                                                                                             addr267:
                                                                                          }
                                                                                          §§goto(addr386);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr377);
                                                                              }
                                                                              addr253:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 §§push(this.§2"@§);
                                                                                 while(!(_loc6_ && param1))
                                                                                 {
                                                                                    §§push("NewsArrowUp");
                                                                                    break loop7;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr281:
                                                                              }
                                                                              if(!(_loc6_ && _loc2_))
                                                                              {
                                                                                 if(!(_loc6_ && _loc2_))
                                                                                 {
                                                                                    §§push(this.§2"@§);
                                                                                    break loop11;
                                                                                 }
                                                                                 addr402:
                                                                                 addr404:
                                                                                 §§push(this.§2"@§);
                                                                                 §§push("NewsArrowUp");
                                                                                 break loop10;
                                                                              }
                                                                              continue loop10;
                                                                           }
                                                                           addr327:
                                                                        }
                                                                        addr326:
                                                                        addr292:
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr327);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc6_ && _loc2_))
                                                                        {
                                                                           §§push("NewsArrowUp");
                                                                           while(true)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(§§pop().getItemByName(§§pop()));
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§push(false);
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§pop().setVisibility(§§pop());
                                                                                             continue loop10;
                                                                                          }
                                                                                          §§goto(addr386);
                                                                                       }
                                                                                       addr358:
                                                                                    }
                                                                                    §§goto(addr406);
                                                                                 }
                                                                                 addr355:
                                                                              }
                                                                              §§goto(addr377);
                                                                           }
                                                                           addr352:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr404);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr361:
                                                               }
                                                               §§goto(addr405);
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc6_ && this)
                                                               {
                                                                  while(!(_loc6_ && _loc3_))
                                                                  {
                                                                     §§goto(addr326);
                                                                     §§push(this.§'"5§);
                                                                  }
                                                                  continue loop0;
                                                                  addr317:
                                                               }
                                                               §§goto(addr411);
                                                               §§push(this.§2"@§);
                                                            }
                                                            addr141:
                                                         }
                                                         §§goto(addr267);
                                                      }
                                                      §§push(false);
                                                      addr64:
                                                      break;
                                                      if(!(_loc5_ || _loc3_))
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc6_ && this))
                                                      {
                                                         §§pop().setVisibility(§§pop());
                                                         if(!_loc6_)
                                                         {
                                                            if(_loc5_ || this)
                                                            {
                                                               if(false)
                                                               {
                                                                  §§goto(addr91);
                                                               }
                                                               §§goto(addr409);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           §§goto(addr409);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr369);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr292);
                                                                     }
                                                                     §§goto(addr409);
                                                                  }
                                                                  §§goto(addr253);
                                                               }
                                                               addr204:
                                                            }
                                                            §§goto(addr409);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr141);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop().setVisibility(§§pop());
                                                         §§goto(addr292);
                                                      }
                                                      addr291:
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc6_ && this))
                                                      {
                                                         §§pop().setVisibility(§§pop());
                                                         §§goto(addr204);
                                                      }
                                                      §§goto(addr358);
                                                   }
                                                   addr196:
                                                }
                                                while(true)
                                                {
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      if(!(_loc6_ && this))
                                                      {
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            §§goto(addr196);
                                                            §§push(true);
                                                         }
                                                         §§goto(addr355);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr291);
                                                      }
                                                      addr290:
                                                   }
                                                   §§goto(addr259);
                                                }
                                                addr174:
                                             }
                                             §§goto(addr413);
                                          }
                                          §§goto(addr352);
                                       }
                                       break;
                                       addr54:
                                       if(_loc6_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       §§push(§§pop().getItemByName(§§pop()));
                                       if(_loc5_)
                                       {
                                          §§goto(addr64);
                                       }
                                       §§goto(addr413);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr290);
                                    }
                                 }
                                 §§goto(addr255);
                              }
                              while(true)
                              {
                                 §§push("NewsArrowDown");
                                 if(_loc5_ || _loc2_)
                                 {
                                    if(_loc5_)
                                    {
                                       §§goto(addr174);
                                       §§push(§§pop().getItemByName(§§pop()));
                                    }
                                    §§goto(addr258);
                                 }
                                 §§goto(addr412);
                              }
                           }
                           §§goto(addr317);
                        }
                     }
                  }
               }
            }
            §§goto(addr402);
         }
         §§goto(addr253);
      }
      
      private function §!!S§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§0!Y§ = null;
         var _loc2_:MovieClip = null;
         var _loc3_:* = 0;
         var _loc4_:§'"M§ = null;
         if(!(_loc6_ && _loc2_))
         {
            this.§'"5§ = 0;
            if(_loc5_)
            {
               if(this.§55§)
               {
                  if(_loc5_)
                  {
                     addr44:
                     this.§&_§ = this.§55§.plain.media;
                     if(_loc5_ || this)
                     {
                        if(!this.§&_§)
                        {
                        }
                        §§goto(addr182);
                     }
                  }
                  _loc1_ = this.§2"@§.getItemByName("News_Item_Holder") as §0!Y§;
                  _loc2_ = _loc1_.mClip.NewsHolder;
                  loop0:
                  do
                  {
                     if(_loc2_.numChildren <= 0)
                     {
                        if(_loc5_ || _loc1_)
                        {
                           §§push(0);
                           if(!_loc6_)
                           {
                              _loc3_ = §§pop();
                              if(_loc5_)
                              {
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                 }
                                 addr177:
                              }
                              break;
                           }
                           while(true)
                           {
                              if(§§pop() >= this.§&_§.length)
                              {
                                 break loop0;
                              }
                              _loc4_ = this.§!"A§.§6!U§(this.§&_§[_loc3_].url,this.§&_§[_loc3_].link);
                              if(_loc5_)
                              {
                                 _loc2_.addChild(_loc4_);
                                 loop3:
                                 while(true)
                                 {
                                    addr138:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       §§push(89);
                                       §§push(§;!+§ * 0.8);
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          §§push(§§pop() * _loc3_);
                                       }
                                       §§pop().y = §§pop() + §§pop();
                                       continue loop3;
                                    }
                                 }
                              }
                              while(false)
                              {
                                 §§goto(addr138);
                              }
                              §§goto(addr177);
                           }
                        }
                        break;
                     }
                     _loc2_.removeChildAt(0);
                  }
                  while(!_loc6_);
                  
               }
               addr182:
               this.§2"@§.getItemByName("AngryBirdLoader").setVisibility(false);
               if(_loc5_ || _loc2_)
               {
                  this.scroll(0);
               }
               return;
            }
         }
         §§goto(addr44);
      }
   }
}
