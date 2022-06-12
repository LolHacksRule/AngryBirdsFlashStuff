package §!"2§
{
   import § "C§.§-!l§;
   import §#^§.§7!A§;
   import §'!s§.§%?§;
   import §2!i§.§7'§;
   import §2!i§.§=!&§;
   import §4!e§.§08§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.system.Security;
   
   public class §?f§
   {
      
      public static const §8!g§:String = "http://cloud.rovio.com/content/embed/pauseMenu/channel/?d=facebook&p=abc&v=1.1.1&a=full&r=game&c=rovio&icons=true&cat=plain";
      
      public static const §=Z§:int = 613;
      
      public static const §7G§:int = 409;
      
      private static const §-$§:int = 654;
      
      private static var §+"%§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §8!g§ = "http://cloud.rovio.com/content/embed/pauseMenu/channel/?d=facebook&p=abc&v=1.1.1&a=full&r=game&c=rovio&icons=true&cat=plain";
            while(true)
            {
               §=Z§ = 613;
               loop1:
               while(true)
               {
                  §7G§ = 409;
                  loop2:
                  while(true)
                  {
                     §-$§ = 654;
                     loop3:
                     while(_loc2_)
                     {
                        while(true)
                        {
                           §+"%§ = false;
                           if(!(_loc1_ && _loc2_))
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
         §§goto(addr76);
      }
      
      private var §6w§:§7!A§;
      
      private var §'A§:String;
      
      private var §=""§:Array;
      
      private var §`&§:int;
      
      private var §&!k§:Object;
      
      private var §&R§:int;
      
      private var §]!2§:§"m§;
      
      private var §&+§:§7" §;
      
      private var §&y§:Object;
      
      public function §?f§(param1:§7!A§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.§6w§ = param1;
               while(true)
               {
                  this.§&+§ = new §7" §();
                  loop2:
                  while(_loc3_ || _loc3_)
                  {
                     while(true)
                     {
                        Security.loadPolicyFile("http://cloud.rovio.com");
                        do
                        {
                           Security.loadPolicyFile("http://news-assets.rovio.com");
                        }
                        while(!_loc3_);
                        
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public function §<h§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(§+"%§)
            {
               if(_loc3_ || this)
               {
                  addr27:
                  this.§5"B§();
                  if(!(_loc4_ && _loc1_))
                  {
                     return;
                  }
               }
            }
            var _loc1_:URLRequest = §-!l§.§%""§(§8!g§);
            var _loc2_:URLLoader = new URLLoader(_loc1_);
            if(!(_loc4_ && this))
            {
               _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
               while(true)
               {
                  _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.§>0§);
                  while(_loc3_ || _loc2_)
                  {
                     _loc2_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§""<§);
                     if(_loc4_ && _loc2_)
                     {
                        continue;
                     }
                     return;
                     addr93:
                  }
               }
            }
            §§goto(addr93);
         }
         §§goto(addr27);
      }
      
      private function §>0§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§5"B§();
         }
      }
      
      private function §5"B§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§6w§.getItemByName("AngryBirdLoader").setVisibility(false);
         }
         var _loc1_:Class = §8B§.§6"C§("PlaceholderAd");
         var _loc2_:MovieClip = new _loc1_();
         var _loc3_:§08§ = this.§6w§.getItemByName("News_Item_Holder") as §08§;
         var _loc4_:MovieClip = _loc3_.mClip.NewsHolder;
         if(_loc5_ || _loc1_)
         {
            _loc2_.buttonMode = true;
         }
         do
         {
            _loc2_.addEventListener(MouseEvent.CLICK,this.§8!E§);
         }
         while(!(_loc5_ || _loc1_));
         
         while(true)
         {
            if(_loc4_.numChildren <= 0)
            {
               if(!(_loc6_ && _loc2_))
               {
                  _loc4_.addChild(_loc2_);
               }
               while(!(_loc6_ && _loc3_))
               {
                  §+"%§ = true;
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
      
      private function §8!E§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §%?§.§#"9§();
         }
      }
      
      protected function §""<§(param1:SecurityErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§5"B§();
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = null;
         _loc2_ = JSON.parse(param1.currentTarget.data);
         if(!(_loc3_ && _loc2_))
         {
            this.§&y§ = _loc2_.channels;
         }
         do
         {
            this.§7h§();
         }
         while(_loc3_);
         
      }
      
      public function reset() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(this.§]!2§);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr38:
                     this.§]!2§.§?"3§();
                  }
               }
               var _loc1_:§08§ = this.§6w§.getItemByName("News_Item_Holder") as §08§;
               var _loc2_:MovieClip = _loc1_.mClip.NewsHolder;
               if(!(_loc3_ && _loc3_))
               {
                  _loc2_.y = 0;
                  while(true)
                  {
                     this.§&R§ = 0;
                     §§goto(addr107);
                  }
               }
               addr107:
               while(true)
               {
                  this.scroll(0);
                  if(!(_loc3_ && _loc2_))
                  {
                     if(_loc4_ || _loc1_)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
               return;
            }
         }
         §§goto(addr38);
      }
      
      public function uiInteractionHandler(param1:String) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§7'§ = null;
         var _loc3_:* = false;
         var _loc4_:§=!&§ = null;
         var _loc5_:* = param1;
         if(_loc8_ || _loc2_)
         {
            §§push("SHOW_NEWS");
            if(_loc8_ || _loc3_)
            {
               §§push(_loc5_);
               if(!_loc7_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc7_)
                     {
                        addr278:
                        §§push(0);
                        if(_loc7_ && _loc3_)
                        {
                           addr309:
                        }
                     }
                     else
                     {
                        addr306:
                        §§push(1);
                        if(_loc8_)
                        {
                           §§goto(addr309);
                        }
                     }
                  }
                  else
                  {
                     §§push("NEWS_UP");
                     if(_loc8_)
                     {
                        §§push(_loc5_);
                        if(!_loc7_)
                        {
                           addr303:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc7_)
                              {
                                 §§goto(addr306);
                              }
                           }
                           else
                           {
                              addr312:
                              if("NEWS_DOWN" !== _loc5_)
                              {
                                 addr321:
                                 loop11:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       _loc2_ = this.§6w§.getItemByName("RovioNewsContainer");
                                       if(_loc8_)
                                       {
                                          §§push(_loc2_.visible);
                                          if(!(_loc7_ && this))
                                          {
                                             §§push(!§§pop());
                                          }
                                          _loc3_ = §§pop();
                                          while(true)
                                          {
                                             loop1:
                                             while(true)
                                             {
                                                _loc2_.setVisibility(_loc3_);
                                                do
                                                {
                                                   this.§6w§.getItemByName("RovioNewsLogo").setVisibility(_loc3_);
                                                }
                                                while(_loc7_);
                                                
                                                if(!(_loc8_ || param1))
                                                {
                                                   break;
                                                }
                                                while(false)
                                                {
                                                   continue loop1;
                                                }
                                                _loc4_ = §=!&§(this.§6w§.getItemByName("Button_ShowNews"));
                                                if(_loc8_)
                                                {
                                                   if(_loc2_.visible)
                                                   {
                                                      if(_loc8_ || _loc2_)
                                                      {
                                                         _loc4_.setComponentState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                         if(_loc8_)
                                                         {
                                                            this.scroll(0);
                                                            if(!(_loc7_ && _loc2_))
                                                            {
                                                               addr185:
                                                               break loop11;
                                                            }
                                                            addr214:
                                                            this.scroll(§-$§);
                                                            if(!_loc7_)
                                                            {
                                                               addr219:
                                                               break loop11;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr248:
                                                            this.scroll(-§-$§);
                                                         }
                                                      }
                                                      addr252:
                                                      break loop11;
                                                   }
                                                   _loc4_.setComponentState(§=!&§.§ !s§);
                                                   loop4:
                                                   while(true)
                                                   {
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(this.§6w§);
                                                         loop6:
                                                         while(true)
                                                         {
                                                            §§push("NewsArrowUp");
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().getItemByName(§§pop()));
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  §§push(false);
                                                                  while(true)
                                                                  {
                                                                     §§pop().setVisibility(§§pop());
                                                                     if(!(_loc7_ && _loc3_))
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(this.§6w§);
                                                                           if(_loc8_)
                                                                           {
                                                                              §§push("NewsArrowDown");
                                                                              if(!(_loc7_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop().getItemByName(§§pop()));
                                                                                 if(!(_loc7_ && param1))
                                                                                 {
                                                                                    §§push(false);
                                                                                    if(!(_loc7_ && param1))
                                                                                    {
                                                                                       §§pop().setVisibility(§§pop());
                                                                                       if(!(_loc7_ && _loc3_))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                continue loop5;
                                                                                             }
                                                                                             §§goto(addr185);
                                                                                          }
                                                                                          break loop11;
                                                                                          addr119:
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                  }
                                                                  §§goto(addr252);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr248);
                                                }
                                                §§goto(addr119);
                                             }
                                          }
                                       }
                                       §§goto(addr52);
                                    case 1:
                                       §§push((_loc5_ = this).§&R§);
                                       if(!(_loc7_ && this))
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       var _loc6_:* = §§pop();
                                       if(!_loc7_)
                                       {
                                          _loc5_.§&R§ = _loc6_;
                                       }
                                       if(!(_loc7_ && param1))
                                       {
                                          §§goto(addr214);
                                       }
                                       §§goto(addr219);
                                    case 2:
                                       §§push((_loc5_ = this).§&R§);
                                       if(!(_loc7_ && this))
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       _loc6_ = §§pop();
                                       if(_loc8_ || _loc2_)
                                       {
                                          _loc5_.§&R§ = _loc6_;
                                       }
                                       if(_loc8_)
                                       {
                                          §§goto(addr248);
                                       }
                                       §§goto(addr252);
                                 }
                                 return;
                                 §§push(3);
                              }
                           }
                           §§goto(addr321);
                           §§goto(addr321);
                        }
                     }
                     §§goto(addr312);
                  }
                  §§goto(addr321);
               }
               §§goto(addr303);
            }
            §§goto(addr312);
         }
         §§goto(addr278);
      }
      
      private function scroll(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§=!&§ = §=!&§(this.§6w§.getItemByName("Button_ShowNews"));
         if(_loc5_ || _loc3_)
         {
            if(_loc2_.§5!L§ != §=!&§.§ !s§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§=""§);
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr349:
                              while(true)
                              {
                                 §§push(this.§=""§);
                                 if(!_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(§§pop().length > 2);
                                 if(!(_loc5_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 if(_loc6_ && param1)
                                 {
                                    continue loop2;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              §§push(this.§6w§);
                              loop5:
                              for(; !(_loc6_ && param1); if(_loc6_ && this)
                              {
                                 continue;
                              },if(_loc5_)
                              {
                                 if(!_loc6_)
                                 {
                                    §§push("NewsArrowDown");
                                    if(_loc5_ || _loc2_)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(!_loc6_)
                                          {
                                             if(_loc5_)
                                             {
                                                §§push(§§pop().getItemByName(§§pop()));
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      §§goto(addr82);
                                                   }
                                                   §§goto(addr203);
                                                }
                                                §§goto(addr393);
                                             }
                                             §§goto(addr385);
                                          }
                                          §§goto(addr312);
                                       }
                                       §§goto(addr203);
                                    }
                                    §§goto(addr393);
                                 }
                                 §§goto(addr385);
                              },§§goto(addr312))
                              {
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§push("NewsArrowUp");
                                    if(_loc5_)
                                    {
                                       §§push(§§pop().getItemByName(§§pop()));
                                       if(!_loc6_)
                                       {
                                          if(!(_loc6_ && this))
                                          {
                                             if(_loc5_ || _loc2_)
                                             {
                                                §§push(false);
                                                while(true)
                                                {
                                                   §§pop().setVisibility(§§pop());
                                                   addr189:
                                                   addr262:
                                                   addr82:
                                                   while(_loc5_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         addr245:
                                                         if(!_loc5_)
                                                         {
                                                            loop12:
                                                            while(!(_loc6_ && param1))
                                                            {
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §§push(this.§&R§);
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     §§push(1);
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(§§pop() * 2);
                                                                        }
                                                                        if(§§pop() >= this.§=""§.length)
                                                                        {
                                                                           §§goto(addr245);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(this.§6w§);
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr203:
                                                                              §§push(§§pop().getItemByName("NewsArrowDown"));
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr206:
                                                                                 §§pop().setVisibility(true);
                                                                                 addr148:
                                                                                 §§push(this.§6w§);
                                                                                 addr148:
                                                                                 addr207:
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    addr273:
                                                                                    §§pop().setVisibility(true);
                                                                                    continue loop12;
                                                                                 }
                                                                                 addr272:
                                                                              }
                                                                           }
                                                                           §§goto(addr391);
                                                                        }
                                                                     }
                                                                     §§goto(addr391);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     addr310:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() <= §§pop())
                                                                     {
                                                                        addr312:
                                                                        §§push(this.§6w§);
                                                                        §§push("NewsArrowUp");
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           §§goto(addr324);
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr268:
                                                                     §§push(this.§6w§);
                                                                     §§push("NewsArrowUp");
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§goto(addr272);
                                                                        §§push(§§pop().getItemByName(§§pop()));
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr391);
                                                                     }
                                                                  }
                                                                  addr364:
                                                                  §§push(§§pop().getItemByName(§§pop()));
                                                                  if(_loc5_)
                                                                  {
                                                                     addr367:
                                                                     if(!(_loc5_ || param1))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           addr387:
                                                                           addr363:
                                                                           §§pop().setVisibility(false);
                                                                           addr388:
                                                                           §§goto(addr364);
                                                                           §§goto(addr367);
                                                                        }
                                                                        addr386:
                                                                     }
                                                                     §§goto(addr375);
                                                                     §§push(false);
                                                                  }
                                                                  §§goto(addr393);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  addr385:
                                                                  §§push(this.§6w§.getItemByName("NewsArrowUp"));
                                                                  break;
                                                               }
                                                               §§goto(addr310);
                                                               §§push(this.§&R§);
                                                            }
                                                            §§goto(addr386);
                                                            addr306:
                                                         }
                                                         §§push(this.§6w§);
                                                         break loop5;
                                                      }
                                                      §§push(this.§6w§);
                                                      if(!(_loc6_ && this))
                                                      {
                                                         continue loop5;
                                                      }
                                                      addr393:
                                                      addr393:
                                                      addr393:
                                                      var _loc3_:§08§ = §§pop().getItemByName("News_Item_Holder") as §08§;
                                                      var _loc4_:MovieClip = _loc3_.mClip.NewsHolder;
                                                      addr391:
                                                      if(_loc5_)
                                                      {
                                                         if(Math.abs(param1) > 0)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               addr464:
                                                               §§push(this.§]!2§);
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§]!2§);
                                                                        addr469:
                                                                        while(true)
                                                                        {
                                                                           §§pop().§?"3§();
                                                                           addr470:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                        }
                                                                     }
                                                                     addr467:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     this.§]!2§ = §>!+§.§;"§.§^!K§(_loc4_,{"y":_loc4_.y + param1},null,0.33,§>!+§.§!!>§);
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§]!2§);
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr469);
                                                                     }
                                                                     continue loop20;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr467);
                                                         }
                                                         §§goto(addr405);
                                                      }
                                                      §§goto(addr464);
                                                      §§goto(addr393);
                                                   }
                                                   §§goto(addr148);
                                                   §§push(false);
                                                   if(!(_loc5_ || _loc3_))
                                                   {
                                                      continue;
                                                   }
                                                   if(!(_loc6_ && this))
                                                   {
                                                      if(!(_loc6_ && this))
                                                      {
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               if(_loc5_ || this)
                                                               {
                                                                  §§pop().setVisibility(§§pop());
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     if(_loc5_ || _loc2_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           if(!(_loc6_ && param1))
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr148);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr388);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr312);
                                                                           }
                                                                           §§goto(addr364);
                                                                        }
                                                                        §§goto(addr327);
                                                                     }
                                                                     §§goto(addr207);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr189);
                                                                  }
                                                               }
                                                               §§goto(addr387);
                                                            }
                                                            addr324:
                                                            §§goto(addr323);
                                                         }
                                                         §§goto(addr273);
                                                      }
                                                      addr261:
                                                      §§pop().setVisibility(§§pop());
                                                      §§goto(addr262);
                                                   }
                                                   §§goto(addr206);
                                                }
                                             }
                                             addr323:
                                             §§push(§§pop().getItemByName(§§pop()));
                                             §§push(false);
                                             if(_loc5_)
                                             {
                                                §§pop().setVisibility(§§pop());
                                                addr327:
                                                if(!(_loc6_ && this))
                                                {
                                                   if(!(_loc6_ && this))
                                                   {
                                                      continue loop13;
                                                   }
                                                   if(_loc5_ || param1)
                                                   {
                                                      continue loop0;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr349);
                                                }
                                             }
                                             else
                                             {
                                                addr375:
                                                §§pop().setVisibility(§§pop());
                                             }
                                             return;
                                          }
                                          addr260:
                                          §§goto(addr261);
                                          §§push(false);
                                       }
                                    }
                                    §§goto(addr393);
                                 }
                                 §§goto(addr268);
                              }
                              if(_loc5_)
                              {
                                 §§push("NewsArrowDown");
                                 if(_loc5_ || this)
                                 {
                                    §§goto(addr260);
                                    §§push(§§pop().getItemByName(§§pop()));
                                 }
                                 §§goto(addr393);
                              }
                              else
                              {
                                 §§goto(addr363);
                              }
                           }
                           §§goto(addr306);
                        }
                     }
                  }
               }
            }
            §§goto(addr385);
         }
         §§goto(addr349);
      }
      
      private function §7h§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§08§ = null;
         var _loc2_:MovieClip = null;
         var _loc3_:* = 0;
         var _loc4_:§1w§ = null;
         if(!_loc6_)
         {
            this.§&R§ = 0;
            if(!_loc6_)
            {
               §§goto(addr34);
            }
            §§goto(addr55);
         }
         addr34:
         if(this.§&y§)
         {
            if(_loc5_ || this)
            {
               this.§=""§ = this.§&y§.plain.media;
               if(!_loc5_)
               {
               }
               §§goto(addr55);
            }
            if(this.§=""§)
            {
               addr55:
               _loc1_ = this.§6w§.getItemByName("News_Item_Holder") as §08§;
               _loc2_ = _loc1_.mClip.NewsHolder;
               do
               {
                  if(_loc2_.numChildren <= 0)
                  {
                     if(!(_loc6_ && this))
                     {
                        break;
                     }
                     §§goto(addr182);
                  }
                  _loc2_.removeChildAt(0);
               }
               while(!(_loc6_ && this));
               
               §§push(0);
               if(!(_loc6_ && _loc1_))
               {
                  _loc3_ = §§pop();
                  if(!_loc6_)
                  {
                     while(true)
                     {
                        §§push(_loc3_);
                     }
                     addr177:
                  }
                  §§goto(addr182);
               }
               loop2:
               for(; §§pop() < this.§=""§.length; §§goto(addr177))
               {
                  _loc4_ = this.§&+§.§%J§(this.§=""§[_loc3_].url,this.§=""§[_loc3_].link);
                  if(!(_loc6_ && this))
                  {
                     _loc2_.addChild(_loc4_);
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(_loc4_);
                           §§push(89);
                           §§push(§7G§ * 0.8);
                           if(!_loc6_)
                           {
                              §§push(§§pop() * _loc3_);
                           }
                           §§pop().y = §§pop() + §§pop();
                           do
                           {
                              _loc3_++;
                           }
                           while(_loc6_ && this);
                           
                           if(_loc6_)
                           {
                              break;
                              addr148:
                           }
                           while(false)
                           {
                              continue loop4;
                           }
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr148);
               }
               §§goto(addr182);
            }
         }
         addr182:
         this.§6w§.getItemByName("AngryBirdLoader").setVisibility(false);
         if(_loc5_)
         {
            this.scroll(0);
         }
      }
   }
}
