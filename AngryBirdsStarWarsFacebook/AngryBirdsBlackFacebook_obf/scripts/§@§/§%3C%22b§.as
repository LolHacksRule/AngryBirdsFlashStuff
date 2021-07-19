package §@§#4
{
   import §!"e§.§`"W§;
   import §+D§.§ #^§;
   import §+D§.§0"$§;
   import §+D§.§^"m§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §;! §.§!Z§;
   import §;"Y§.§1"z§;
   import §;"Y§.§]#X§;
   import §<w§.§6#'§;
   import §="2§.§?!r§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import §`!o§.§<9§;
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Rectangle;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §<"b§
   {
      
      public static const §5N§:String = "cloud.rovio.com/content/embed/pauseMenu/channel/?d=facebook&p=abw&v=1.1.1&a=full&r=game&c=rovio&icons=true&cat=plain";
      
      private static const §9!c§:int = 90;
      
      private static const §<!K§:int = 35;
      
      private static const §,"w§:int = 25;
      
      private static const §"7§:int = 353;
      
      private static const §<";§:int = 530;
      
      private static const §"!d§:int = 385;
      
      private static const §5!@§:int = 440;
      
      private static const §4Y§:int = 2;
      
      private static var §0O§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §5N§ = "cloud.rovio.com/content/embed/pauseMenu/channel/?d=facebook&p=abw&v=1.1.1&a=full&r=game&c=rovio&icons=true&cat=plain";
            while(true)
            {
               §9!c§ = 90;
               addr131:
               while(true)
               {
                  §<!K§ = 35;
                  addr126:
                  while(true)
                  {
                     §,"w§ = 25;
                     while(true)
                     {
                        §"7§ = 353;
                        loop4:
                        while(true)
                        {
                           §<";§ = 530;
                           addr101:
                           while(true)
                           {
                              §"!d§ = 385;
                              continue loop4;
                           }
                        }
                     }
                  }
               }
               if(_loc1_ && §<"b§)
               {
                  continue;
               }
               while(true)
               {
                  §4Y§ = 2;
                  for(; _loc2_; §0O§ = false,if(_loc1_ && §<"b§)
                  {
                     continue;
                  },§§goto(addr35))
                  {
                     if(_loc2_)
                     {
                        continue;
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr126);
               }
               §§goto(addr44);
               addr84:
            }
         }
         §§goto(addr84);
      }
      
      private var § #0§:§["E§;
      
      private var §0!x§:URLLoader;
      
      private var §1"8§:§[#R§;
      
      private var §[!i§:int;
      
      private var §?"W§:Array;
      
      private var §["9§:Rectangle;
      
      private var §!"s§:int;
      
      private var offsetX:int;
      
      private var §@#N§:Object;
      
      private var §^c§:§ #^§;
      
      private var §9v§:§]#X§;
      
      private var § #J§:§0"$§;
      
      private var § "m§:§ #^§;
      
      private var §'"'§:§ #^§;
      
      private var §2"m§:§^"m§;
      
      private var §6!e§:§^"m§;
      
      private var §?"p§:§^"m§;
      
      private var §5C§:MovieClip;
      
      public function §<"b§(param1:§ #^§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            super();
            if(!(_loc3_ && param1))
            {
               this.§^c§ = param1;
            }
         }
         §§push(§5!@§ - §,"w§ * (§4Y§ - 1));
         if(!_loc3_)
         {
            §§push(§§pop() / §4Y§);
            if(_loc4_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            this.§["9§ = this.§`3§(§<";§,§"7§,§"!d§,_loc2_);
            loop0:
            while(true)
            {
               this.§!"s§ = this.§["9§.height + §,"w§;
               loop1:
               while(true)
               {
                  §§push(this);
                  §§push(§<!K§);
                  §§push(§"!d§ - this.§["9§.width);
                  if(_loc4_ || param1)
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().offsetX = §§pop() + §§pop();
                  while(true)
                  {
                     this.init();
                     loop3:
                     while(_loc4_ || this)
                     {
                        loop4:
                        while(true)
                        {
                           this.§ #0§ = new §["E§(this.§["9§);
                           while(_loc4_)
                           {
                              continue loop0;
                              this.§^c§.mClip.stage.addEventListener(Event.RESIZE,this.§=_§);
                              if(!_loc3_)
                              {
                                 if(_loc4_)
                                 {
                                    break loop4;
                                 }
                                 continue loop1;
                              }
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr114);
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§^c§.visible = param1;
         }
      }
      
      public function get visible() : Boolean
      {
         return this.§^c§.visible;
      }
      
      private function §=_§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.scroll();
         }
      }
      
      protected function §`3§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = -1) : Rectangle
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_)
         {
            §§push(param5);
            if(_loc10_)
            {
               if(§§pop() == -1)
               {
                  addr24:
                  §§push(param1);
                  if(!(_loc9_ && param3))
                  {
                     §§push(§§pop() / param2);
                     if(_loc10_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc10_ || param1)
                        {
                        }
                        addr56:
                        §§push(Number(§§pop()));
                     }
                  }
                  else
                  {
                     addr53:
                     §§push(Number(§§pop()));
                     if(!_loc9_)
                     {
                        §§goto(addr56);
                     }
                  }
               }
               else
               {
                  §§push(param5);
                  if(_loc10_ || this)
                  {
                     §§goto(addr53);
                  }
               }
               var _loc6_:* = §§pop();
               §§push(param3);
               if(_loc10_ || param1)
               {
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               §§push(param4);
               if(!(_loc9_ && param1))
               {
                  §§push(Number(§§pop()));
               }
               var _loc8_:* = §§pop();
               if(!_loc9_)
               {
                  §§push(_loc6_);
                  while(true)
                  {
                     if(§§pop() >= 1)
                     {
                        if(!_loc9_)
                        {
                           §§push(param3);
                           break;
                        }
                     }
                     else
                     {
                        §§push(param4);
                        if(_loc10_ || param1)
                        {
                           if(_loc10_ || param1)
                           {
                              if(_loc10_)
                              {
                                 if(_loc9_)
                                 {
                                    continue;
                                 }
                                 §§push(_loc6_);
                                 if(_loc10_)
                                 {
                                    if(_loc10_ || param2)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc9_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc10_)
                                          {
                                             if(!_loc9_)
                                             {
                                                if(!_loc9_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc10_ || this)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            _loc7_ = §§pop();
                                                            if(_loc10_ || this)
                                                            {
                                                               §§push(param3);
                                                               if(_loc10_ || param2)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           if(_loc10_ || param2)
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 addr185:
                                                                                 §§push(param3);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       addr191:
                                                                                       if(_loc10_ || this)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc10_ || param1)
                                                                                             {
                                                                                                addr208:
                                                                                                _loc7_ = §§pop();
                                                                                                if(_loc10_ || param1)
                                                                                                {
                                                                                                   addr216:
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   addr219:
                                                                                                   §§push(§§pop() / _loc6_);
                                                                                                   if(!(_loc9_ && param1))
                                                                                                   {
                                                                                                      addr228:
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc10_ || param3)
                                                                                                      {
                                                                                                         _loc8_ = §§pop();
                                                                                                         addr81:
                                                                                                         return new Rectangle(0,0,_loc7_,_loc8_);
                                                                                                         addr236:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr245:
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!(_loc9_ && this))
                                                                                                         {
                                                                                                            addr254:
                                                                                                            §§push(_loc8_ = §§pop());
                                                                                                            §§push(param4);
                                                                                                            if(!(_loc9_ && param3))
                                                                                                            {
                                                                                                               if(§§pop() > §§pop())
                                                                                                               {
                                                                                                                  addr281:
                                                                                                                  _loc7_ = Number((_loc8_ = Number(param4)) * _loc6_);
                                                                                                                  addr279:
                                                                                                                  addr276:
                                                                                                                  addr280:
                                                                                                                  addr274:
                                                                                                                  addr277:
                                                                                                                  addr278:
                                                                                                                  addr275:
                                                                                                               }
                                                                                                               §§goto(addr81);
                                                                                                            }
                                                                                                            §§goto(addr279);
                                                                                                         }
                                                                                                         §§goto(addr276);
                                                                                                      }
                                                                                                      §§goto(addr81);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr228);
                                                                                             }
                                                                                             §§goto(addr219);
                                                                                          }
                                                                                          §§goto(addr280);
                                                                                       }
                                                                                       §§goto(addr281);
                                                                                    }
                                                                                    §§goto(addr228);
                                                                                 }
                                                                                 §§goto(addr216);
                                                                              }
                                                                              §§goto(addr274);
                                                                           }
                                                                           §§goto(addr281);
                                                                        }
                                                                        §§goto(addr236);
                                                                     }
                                                                     §§goto(addr81);
                                                                  }
                                                                  §§goto(addr277);
                                                               }
                                                               §§goto(addr208);
                                                            }
                                                            §§goto(addr228);
                                                         }
                                                         addr244:
                                                         §§goto(addr245);
                                                         §§push(§§pop() / §§pop());
                                                      }
                                                      §§goto(addr254);
                                                   }
                                                   §§goto(addr208);
                                                }
                                                §§goto(addr281);
                                             }
                                             §§goto(addr278);
                                          }
                                          §§goto(addr191);
                                       }
                                       §§goto(addr216);
                                    }
                                    §§goto(addr281);
                                 }
                                 §§goto(addr219);
                              }
                              §§goto(addr254);
                           }
                           §§goto(addr275);
                        }
                        §§goto(addr216);
                     }
                     §§goto(addr281);
                  }
                  §§goto(addr244);
                  §§push(_loc6_);
               }
               §§goto(addr185);
            }
            §§goto(addr53);
         }
         §§goto(addr24);
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§9v§ = this.§^c§.getItemByName("AngryBirdLoader");
            while(true)
            {
               this.§ "m§ = § #^§(this.§^c§.getItemByName("News_Item_Holder"));
               loop1:
               while(true)
               {
                  this.§'"'§ = § #^§(this.§^c§.getItemByName("RovioNewsContainer"));
                  loop2:
                  while(true)
                  {
                     this.§ #J§ = §0"$§(this.§^c§.getItemByName("RovioNewsLogo"));
                     while(true)
                     {
                        this.§2"m§ = §^"m§(this.§^c§.getItemByName("Button_ShowNews"));
                        addr62:
                        if(!(_loc2_ && this))
                        {
                           this.§^c§.addEventListener(§6#'§.§+!>§,this.onUIInteraction);
                           addr69:
                           if(_loc1_ || this)
                           {
                              continue loop1;
                           }
                           addr60:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       while(true)
                                       {
                                          this.§6!e§ = §^"m§(this.§^c§.getItemByName("NewsArrowUp"));
                                          continue loop5;
                                       }
                                    }
                                    else
                                    {
                                       addr50:
                                       addr115:
                                    }
                                    continue loop2;
                                    return;
                                 }
                                 continue loop2;
                              }
                              §§goto(addr62);
                              §§goto(addr69);
                           }
                        }
                     }
                  }
               }
               if(!(_loc1_ || this))
               {
                  continue;
               }
               this.§?"p§ = §^"m§(this.§^c§.getItemByName("NewsArrowDown"));
               §§goto(addr60);
            }
         }
         §§goto(addr115);
      }
      
      public function §4i§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§6#`§();
            while(true)
            {
               this.§0!x§ = new URLLoader();
               loop1:
               while(true)
               {
                  this.§0!x§.addEventListener(Event.COMPLETE,this.onComplete);
                  addr87:
                  while(true)
                  {
                     addr53:
                     while(true)
                     {
                        this.§0!x§.addEventListener(IOErrorEvent.IO_ERROR,this.§=!'§);
                        continue loop1;
                     }
                  }
               }
               if(_loc4_ || this)
               {
                  if(false)
                  {
                     §§goto(addr53);
                  }
                  §§push(§4#;§.SERVER_ROOT);
                  if(!(_loc3_ && this))
                  {
                     §§push(§§pop().substr(0,5) == "https" ? "https://" : "http://");
                  }
                  var _loc1_:* = §§pop();
                  var _loc2_:URLRequest = §<9§.§""I§(_loc1_ + §5N§);
                  if(!_loc3_)
                  {
                     this.§0!x§.load(_loc2_);
                  }
                  return;
               }
            }
         }
         §§goto(addr112);
      }
      
      private function §=!'§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§;"U§();
         }
      }
      
      protected function §9!k§(param1:SecurityErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§;"U§();
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = JSON.parse(param1.currentTarget.data);
         if(_loc4_)
         {
            this.§@#N§ = _loc2_.channels;
            do
            {
               this.§2!9§();
            }
            while(!_loc4_);
            
         }
      }
      
      private function §;"U§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§9v§.setVisibility(false);
         }
         var _loc1_:Class = §5_§.§`"G§("PlaceholderAd");
         if(!(_loc4_ && this))
         {
            this.§5C§ = new _loc1_();
         }
         loop0:
         while(true)
         {
            this.§5C§.width = this.§["9§.width;
            while(true)
            {
               this.§5C§.height = this.§["9§.height;
               while(!(_loc4_ && _loc2_))
               {
                  if(_loc5_)
                  {
                     while(true)
                     {
                        this.§5C§.buttonMode = true;
                        do
                        {
                           this.§5C§.addEventListener(MouseEvent.CLICK,this.§;!t§);
                        }
                        while(!_loc5_);
                        
                        if(!_loc5_)
                        {
                           break;
                        }
                        if(true)
                        {
                           var _loc2_:MovieClip = this.§ "m§.mClip.NewsHolder;
                           addr114:
                           if(_loc2_.numChildren > 0)
                           {
                              _loc2_.removeChildAt(0);
                              if(_loc5_ || _loc3_)
                              {
                                 §§goto(addr114);
                              }
                              addr125:
                              _loc2_.addChild(this.§5C§);
                              if(!_loc4_)
                              {
                                 _loc2_.x = _loc2_.x = this.offsetX;
                                 if(_loc5_ || _loc2_)
                                 {
                                    addr158:
                                    §0O§ = true;
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr158);
                           }
                        }
                        continue;
                        if(_loc5_ || _loc1_)
                        {
                           §§goto(addr125);
                        }
                        addr161:
                        return;
                     }
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      private function §;!t§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§[!j§ = new §!Z§(§`"W§.§?z§,§+5§.§>!g§);
         if(_loc3_ || param1)
         {
            §4#;§.singleton.popupManager.openPopup(_loc2_,true,true,true);
         }
      }
      
      public function reset() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc1_)
         {
            §§push(this.§1"8§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr48:
                     this.§1"8§.§^"P§();
                  }
               }
               var _loc1_:MovieClip = this.§ "m§.mClip.NewsHolder;
               if(_loc3_)
               {
                  _loc1_.y = 0;
                  do
                  {
                     this.§[!i§ = 0;
                     do
                     {
                        this.scroll();
                     }
                     while(_loc2_ && this);
                     
                  }
                  while(_loc2_);
                  
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§^c§);
            while(true)
            {
               §§pop().removeEventListener(§6#'§.§+!>§,this.onUIInteraction);
               loop1:
               while(true)
               {
                  §§push(this.§^c§);
                  if(_loc2_ && _loc1_)
                  {
                     break;
                  }
                  §§pop().mClip.stage.removeEventListener(Event.RESIZE,this.§=_§);
                  loop2:
                  while(true)
                  {
                     this.§6#`§();
                     while(true)
                     {
                        §§push(this.§1"8§);
                        if(!(_loc2_ && this))
                        {
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 addr121:
                                 this.§1"8§.stop();
                              }
                              loop4:
                              while(true)
                              {
                                 this.§1"8§ = null;
                                 addr105:
                                 addr86:
                                 while(true)
                                 {
                                    addr57:
                                    if(_loc1_ || this)
                                    {
                                       addr24:
                                       return;
                                       addr64:
                                    }
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    if(!(_loc1_ || _loc1_))
                                    {
                                       continue loop4;
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop2;
                                    }
                                    §§push(this.§ #0§);
                                    while(true)
                                    {
                                       §§pop().dispose();
                                       loop10:
                                       while(true)
                                       {
                                          if(!_loc1_)
                                          {
                                             continue loop1;
                                          }
                                          addr100:
                                          while(true)
                                          {
                                             if(this.§5C§)
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   continue loop10;
                                                }
                                                §§goto(addr57);
                                             }
                                             break;
                                             §§goto(addr100);
                                          }
                                          §§goto(addr24);
                                       }
                                    }
                                 }
                                 §§goto(addr105);
                              }
                           }
                           while(true)
                           {
                              §§push(this.§ #0§);
                              if(!(_loc2_ && _loc1_))
                              {
                                 if(§§pop())
                                 {
                                    §§goto(addr86);
                                 }
                                 §§goto(addr28);
                              }
                              §§goto(addr97);
                              §§goto(addr105);
                           }
                           continue;
                        }
                        §§goto(addr121);
                     }
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      private function §6#`§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§0!x§)
            {
               try
               {
                  addr26:
                  this.§0!x§.close();
                  if(!_loc3_)
                  {
                     addr53:
                     this.§0!x§.removeEventListener(Event.COMPLETE,this.onComplete);
                     if(!_loc3_)
                     {
                        this.§0!x§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=!'§);
                        addr62:
                     }
                     do
                     {
                        this.§0!x§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!k§);
                        do
                        {
                           this.§0!x§ = null;
                        }
                        while(!(_loc2_ || this));
                        
                     }
                     while(_loc3_);
                     
                  }
               }
               catch(e:Error)
               {
                  §§goto(addr53);
               }
               §§goto(addr62);
            }
            return;
         }
         §§goto(addr26);
      }
      
      protected function onUIInteraction(param1:§6#'§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:* = param1.§=!k§;
         if(_loc5_ || _loc3_)
         {
            if("SHOW_NEWS" === _loc3_)
            {
               if(_loc5_)
               {
                  §§push(0);
                  if(_loc4_ && this)
                  {
                     addr206:
                  }
               }
               else
               {
                  addr203:
                  §§push(1);
                  if(!_loc4_)
                  {
                     §§goto(addr206);
                  }
               }
            }
            else
            {
               if("NEWS_UP" === _loc3_)
               {
                  if(_loc5_ || _loc2_)
                  {
                     §§goto(addr203);
                  }
                  else
                  {
                     addr210:
                     §§push(2);
                     if(_loc5_ || _loc2_)
                     {
                     }
                  }
               }
               else if("NEWS_DOWN" === _loc3_)
               {
                  §§goto(addr210);
               }
               else
               {
                  §§push(3);
               }
               §§goto(addr210);
            }
            loop5:
            switch(§§pop())
            {
               case 0:
                  §§push(this.§ "m§);
                  while(true)
                  {
                     _loc2_ = !§§pop().visible;
                     if(!(_loc5_ || _loc3_))
                     {
                        break loop5;
                     }
                     §§push(this.§ "m§);
                     while(_loc5_)
                     {
                        §§pop().setVisibility(_loc2_);
                        §§push(this.§ "m§);
                        if(!(_loc5_ || this))
                        {
                           continue;
                        }
                        if(§§pop().visible)
                        {
                           if(_loc5_ || this)
                           {
                              addr141:
                              this.§2"m§.setComponentState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                              this.scroll();
                              addr72:
                              break loop5;
                              addr107:
                              addr139:
                              addr142:
                           }
                           break loop5;
                        }
                        §§push(this.§2"m§);
                        if(_loc5_)
                        {
                           §§push(§1"z§.§4"o§);
                           if(!(_loc4_ && _loc2_))
                           {
                              §§pop().setComponentState(§§pop());
                              addr96:
                              if(_loc4_ && _loc3_)
                              {
                                 §§goto(addr107);
                              }
                              §§goto(addr72);
                           }
                           else
                           {
                              §§goto(addr141);
                           }
                        }
                        else
                        {
                           §§goto(addr139);
                        }
                        §§goto(addr141);
                        §§goto(addr141);
                     }
                  }
                  break;
               case 1:
                  §?!r§.§"#_§("misc_menubuttonproceed_1");
                  this.§<"H§();
                  addr64:
                  if(!(_loc4_ && _loc3_))
                  {
                     this.scroll();
                     break;
                     addr60:
                  }
                  else
                  {
                     §§goto(addr96);
                  }
                  break;
                  addr78:
               case 2:
                  §?!r§.§"#_§("misc_menubuttonproceed_1");
                  loop2:
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        loop3:
                        while(true)
                        {
                           this.§`# §();
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 if(!_loc4_)
                                 {
                                    this.scroll();
                                    if(_loc5_)
                                    {
                                       if(_loc4_)
                                       {
                                          continue;
                                       }
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          if(_loc5_)
                                          {
                                             if(_loc5_)
                                             {
                                                if(true)
                                                {
                                                   break loop5;
                                                }
                                                continue loop3;
                                             }
                                             §§goto(addr150);
                                          }
                                          else
                                          {
                                             §§goto(addr78);
                                          }
                                       }
                                       §§goto(addr64);
                                    }
                                    break loop5;
                                 }
                                 break;
                              }
                              continue loop2;
                           }
                           §§goto(addr60);
                        }
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr96);
            }
            return;
         }
         §§goto(addr210);
      }
      
      private function §`# §() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§[!i§ += §4Y§;
         }
         do
         {
            §§push(this);
            if(_loc2_)
            {
               §§push(this.§[!i§);
               if(_loc1_ && this)
               {
                  continue;
               }
               if(§§pop() < this.§?"W§.length - 1)
               {
                  §§push(this.§[!i§);
                  if(_loc2_)
                  {
                     §§push(int(§§pop()));
                  }
                  continue;
               }
            }
            §§push(int(this.§?"W§.length - 1));
            if(_loc1_ && this)
            {
            }
         }
         while(§§pop().§[!i§ = §§pop(), !(_loc2_ || this));
         
      }
      
      private function §<"H§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§[!i§ -= §4Y§;
         }
         do
         {
            §§push(this);
            if(!(_loc2_ && _loc1_))
            {
               §§push(this.§[!i§);
               if(_loc1_)
               {
                  if(§§pop() < 0)
                  {
                     addr49:
                     §§push(0);
                     if(!_loc2_)
                     {
                        addr52:
                        continue;
                     }
                  }
                  else
                  {
                     §§push(this.§[!i§);
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                  }
                  §§push(int(§§pop()));
                  continue;
               }
               §§goto(addr52);
            }
            §§goto(addr49);
         }
         while(§§pop().§[!i§ = §§pop(), !(_loc1_ || this));
         
      }
      
      private function scroll() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§9!c§);
         §§push(this.§!"s§ * this.§[!i§);
         if(_loc4_)
         {
            §§push(§§pop() * -1);
         }
         §§push(§§pop() + §§pop());
         if(!(_loc3_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            if(this.§2"m§.§^'§ != §1"z§.§4"o§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§?"W§);
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
                              addr265:
                              while(true)
                              {
                                 §§push(this.§?"W§);
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop().length > 2);
                                 if(!_loc4_)
                                 {
                                    continue loop3;
                                 }
                                 if(_loc3_)
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
                              §§push(this.§6!e§);
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(false);
                                 if(_loc4_)
                                 {
                                    §§pop().setVisibility(§§pop());
                                    loop6:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             while(!(_loc3_ && _loc3_))
                                             {
                                                §§goto(addr242);
                                                §§push(this.§[!i§);
                                             }
                                             break;
                                             addr233:
                                          }
                                          if(_loc3_ && this)
                                          {
                                             continue loop0;
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             §§push(this.§?"p§);
                                             if(_loc4_ || _loc1_)
                                             {
                                                §§push(false);
                                                if(!_loc3_)
                                                {
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      §§pop().setVisibility(§§pop());
                                                      while(true)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            loop9:
                                                            while(true)
                                                            {
                                                               §§push(this.§1"8§);
                                                               if(_loc4_ || _loc1_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              if(_loc4_ || _loc3_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§1"8§);
                                                                                    addr66:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().§^"P§();
                                                                                       addr67:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             break loop9;
                                                                                          }
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(!(_loc3_ && this))
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   var _loc2_:MovieClip = this.§ "m§.mClip.NewsHolder;
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      this.§1"8§ = §-#C§.§%!E§.§^!H§(_loc2_,{"y":_loc1_},null,0.33,§-#C§.§>v§);
                                                                                                   }
                                                                                                   this.§1"8§.play();
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr286:
                                                                                                }
                                                                                                continue loop7;
                                                                                                addr329:
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§goto(addr329);
                                                                                                }
                                                                                                return;
                                                                                             }
                                                                                             loop13:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc4_ || _loc1_)
                                                                                                {
                                                                                                   loop14:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§[!i§);
                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                      {
                                                                                                         break loop13;
                                                                                                      }
                                                                                                      addr242:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop() <= 0)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§6!e§);
                                                                                                            }
                                                                                                            addr244:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(this.§6!e§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  §§push(true);
                                                                                                                  loop23:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc4_ || _loc2_)
                                                                                                                     {
                                                                                                                        continue loop13;
                                                                                                                     }
                                                                                                                     addr254:
                                                                                                                     while(_loc4_)
                                                                                                                     {
                                                                                                                        §§pop().setVisibility(§§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop14;
                                                                                                                        }
                                                                                                                        continue loop23;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr203:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(!(_loc3_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§goto(addr254);
                                                                                                                     §§push(false);
                                                                                                                  }
                                                                                                                  addr283:
                                                                                                                  §§push(false);
                                                                                                                  addr246:
                                                                                                               }
                                                                                                               §§pop().setVisibility(§§pop());
                                                                                                               addr285:
                                                                                                               this.§?"p§.setVisibility(false);
                                                                                                               break loop6;
                                                                                                            }
                                                                                                            addr200:
                                                                                                         }
                                                                                                         §§goto(addr246);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr281:
                                                                                                   §§push(this.§6!e§);
                                                                                                }
                                                                                                §§goto(addr283);
                                                                                             }
                                                                                             §§push(this.§?"W§.length - 1);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§push(§§pop() - (§4Y§ - 1));
                                                                                             }
                                                                                             if(§§pop() >= §§pop())
                                                                                             {
                                                                                                addr188:
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   §§push(this.§?"p§);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr285);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(this.§?"p§);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc4_ || _loc1_)
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(true);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc3_ && _loc3_))
                                                                                                         {
                                                                                                            §§pop().setVisibility(§§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop9;
                                                                                                            }
                                                                                                            addr167:
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(false);
                                                                                                      }
                                                                                                      addr192:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().setVisibility(§§pop());
                                                                                                      addr194:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr285);
                                                                                                addr139:
                                                                                             }
                                                                                             §§goto(addr192);
                                                                                          }
                                                                                          §§goto(addr167);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr64:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr265);
                                                                              }
                                                                           }
                                                                           §§goto(addr244);
                                                                        }
                                                                        §§goto(addr188);
                                                                     }
                                                                     §§goto(addr67);
                                                                  }
                                                                  §§goto(addr286);
                                                               }
                                                               §§goto(addr66);
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr194);
                                                      }
                                                   }
                                                   §§goto(addr285);
                                                }
                                                §§goto(addr149);
                                             }
                                             §§goto(addr139);
                                          }
                                          §§goto(addr242);
                                       }
                                       §§goto(addr257);
                                    }
                                    return;
                                 }
                                 §§goto(addr203);
                              }
                              §§goto(addr200);
                           }
                           §§goto(addr233);
                        }
                     }
                  }
               }
            }
            §§goto(addr281);
         }
         §§goto(addr64);
      }
      
      private function §2!9§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc1_:MovieClip = null;
         var _loc2_:MovieClip = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§4!+§ = null;
         if(!(_loc7_ && _loc2_))
         {
            §§push(Boolean(this.§@#N§));
            loop0:
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr110:
                        while(true)
                        {
                           addr81:
                           while(true)
                           {
                              §§push(Boolean(this.§@#N§.plain));
                              addr87:
                              while(!_loc7_)
                              {
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc7_ && this)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        while(!_loc7_)
                        {
                           §§pop();
                           loop8:
                           while(true)
                           {
                              §§push(Boolean(this.§@#N§.plain.media));
                              if(!_loc8_)
                              {
                                 break;
                              }
                              if(_loc8_)
                              {
                                 loop9:
                                 while(§§pop())
                                 {
                                    if(_loc8_ || this)
                                    {
                                       this.§?"W§ = this.§@#N§.plain.media;
                                       if(!_loc7_)
                                       {
                                          continue loop8;
                                       }
                                    }
                                    _loc1_ = this.§ "m§.mClip.NewsHolder;
                                    _loc2_ = this.§ "m§.mClip.HolderMask;
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       _loc2_.y = _loc1_.y = §9!c§;
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          _loc2_.x = _loc1_.x = this.offsetX;
                                       }
                                    }
                                    loop10:
                                    while(true)
                                    {
                                       if(_loc1_.numChildren > 0)
                                       {
                                          _loc1_.removeChildAt(0);
                                          if(!(_loc8_ || _loc2_))
                                          {
                                             break loop9;
                                          }
                                          continue;
                                       }
                                       loop11:
                                       while(true)
                                       {
                                          §§push(0);
                                          loop12:
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             while(true)
                                             {
                                                §§push(0);
                                                if(_loc7_)
                                                {
                                                   break;
                                                }
                                                if(!_loc7_)
                                                {
                                                   _loc4_ = §§pop();
                                                   if(!_loc8_)
                                                   {
                                                      break loop9;
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      if(!(_loc7_ && this))
                                                      {
                                                         if(true)
                                                         {
                                                            §§push(_loc4_);
                                                         }
                                                         else
                                                         {
                                                            addr275:
                                                         }
                                                         continue loop10;
                                                         break;
                                                      }
                                                      continue loop11;
                                                   }
                                                   continue;
                                                }
                                                continue loop12;
                                             }
                                             if(§§pop() < this.§?"W§.length)
                                             {
                                                _loc5_ = this.§ #0§.§<"3§(this.§?"W§[_loc4_].url,this.§?"W§[_loc4_].link);
                                                if(_loc8_ || _loc1_)
                                                {
                                                   _loc1_.addChild(_loc5_);
                                                   _loc5_.y = _loc3_;
                                                   addr263:
                                                   if(_loc8_ || this)
                                                   {
                                                      addr249:
                                                      §§push(_loc3_);
                                                      if(!_loc7_)
                                                      {
                                                         §§push(int(§§pop() + this.§!"s§));
                                                      }
                                                      _loc3_ = §§pop();
                                                      _loc4_++;
                                                      if(_loc8_)
                                                      {
                                                         if(_loc8_ || _loc1_)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr249);
                                                            }
                                                            §§goto(addr275);
                                                         }
                                                         §§goto(addr263);
                                                      }
                                                      addr258:
                                                      §§goto(addr258);
                                                   }
                                                   addr274:
                                                   §§goto(addr274);
                                                }
                                                §§goto(addr249);
                                             }
                                             break loop9;
                                          }
                                       }
                                    }
                                 }
                                 addr280:
                                 this.§9v§.setVisibility(false);
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    this.§[!i§ = 0;
                                 }
                                 this.scroll();
                                 addr320:
                                 if(!(_loc8_ || _loc1_))
                                 {
                                    §§goto(addr320);
                                 }
                                 return;
                                 addr48:
                              }
                              §§goto(addr87);
                           }
                        }
                        continue loop0;
                     }
                     §§goto(addr48);
                  }
               }
            }
         }
         §§goto(addr114);
      }
   }
}
