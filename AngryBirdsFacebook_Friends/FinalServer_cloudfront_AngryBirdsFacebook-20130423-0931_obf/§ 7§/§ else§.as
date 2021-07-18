package § 7§
{
   import §%!I§.§]!M§;
   import §&S§.§&!l§;
   import §&S§.§6!F§;
   import §,l§.§!!s§;
   import §,l§.§#!,§;
   import §,l§.§4"7§;
   import §,l§.§["K§;
   import §2!o§.§?r§;
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §30§.§'"+§;
   import §5!Y§.§9"6§;
   import §5!Y§.Popup;
   import §5!Y§.StatePopupManager;
   import §5!Y§.§]!I§;
   import §9!2§.§[" §;
   import §9@§.§1!j§;
   import §9@§.§@q§;
   import §@!"§.§?l§;
   import §@!%§.§#!$§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.net.URLLoaderDataFormat;
   
   public class § else§ extends Popup implements §&!l§
   {
      
      protected static var §2"A§:§3d§;
      
      protected static var §@y§:Array;
      
      protected static var §+!Y§:§ else§;
      
      protected static var §0!b§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §0!b§ = [];
         }
      }
      
      protected var §function§:§?r§;
      
      protected var §3y§:Array;
      
      private var §4!u§:§6!F§;
      
      public function § else§(param1:§`_§, param2:StatePopupManager, param3:Boolean)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§3y§ = [];
            while(true)
            {
               §+!Y§ = this;
               loop1:
               while(true)
               {
                  §§push(param3);
                  while(true)
                  {
                     if(§§pop())
                     {
                        continue loop1;
                     }
                     loop5:
                     while(true)
                     {
                        super(§ "<§.§%I§.Views.PopupView_GiftInbox[0],param1);
                        loop6:
                        while(true)
                        {
                           §§push(this);
                           §§push(§§findproperty(§?r§));
                           §§push(660);
                           §§push(280);
                           if(!_loc4_)
                           {
                              §§pop().§function§ = new §§pop().§?r§(§§pop(),§§pop(),§@y§ || [],§@!#§,0,15);
                              while(true)
                              {
                                 §§push(this.§function§);
                                 while(true)
                                 {
                                    §§pop().scrollerSprite.x = 34;
                                    §§push(this.§function§);
                                    addr179:
                                    continue loop6;
                                    if(_loc5_)
                                    {
                                       §§pop().scrollerSprite.y = 120;
                                       loop10:
                                       while(true)
                                       {
                                          mClip.mcContainer.addChild(this.§function§.scrollerSprite);
                                          loop11:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                break loop10;
                                             }
                                             this.§`!n§();
                                             while(!(_loc4_ && param2))
                                             {
                                                this.§6"E§();
                                                continue loop10;
                                                if(_loc5_ || param2)
                                                {
                                                   if(!(_loc4_ && param2))
                                                   {
                                                      mClip.mcStatuses.visible = false;
                                                      continue loop11;
                                                   }
                                                   continue loop6;
                                                }
                                             }
                                             while(true)
                                             {
                                                continue loop5;
                                                §§goto(addr139);
                                             }
                                             addr139:
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                              addr199:
                           }
                           §§goto(addr192);
                        }
                     }
                     §§push(§each §);
                     if(!_loc5_)
                     {
                        continue;
                     }
                     if(§§pop())
                     {
                        addr101:
                        if(_loc5_)
                        {
                           mClip.mcStatuses.gotoAndStop(1);
                           §§goto(addr117);
                        }
                        §§goto(addr199);
                     }
                     if(§@y§.length > 0)
                     {
                        if(_loc5_ || param3)
                        {
                           if(_loc5_ || param2)
                           {
                              §§goto(addr70);
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr88);
                     }
                     mClip.mcStatuses.gotoAndStop(2);
                     §§goto(addr39);
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      public static function §8!n§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§2"A§);
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §@y§ = [];
                     while(true)
                     {
                        §2"A§ = new §3d§();
                        loop3:
                        while(true)
                        {
                           §§push(§2"A§);
                           while(true)
                           {
                              §§pop().addEventListener(Event.COMPLETE,§]"0§);
                              loop5:
                              while(true)
                              {
                                 §§push(§2"A§);
                                 loop6:
                                 while(true)
                                 {
                                    §§pop().addEventListener(IOErrorEvent.IO_ERROR,§7"Q§);
                                    while(!(_loc2_ && § else§))
                                    {
                                       §§push(§2"A§);
                                       continue loop6;
                                       if(!(_loc2_ && § else§))
                                       {
                                          if(!_loc2_)
                                          {
                                             return;
                                          }
                                          continue loop1;
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,§7"Q§);
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
               while(!(_loc2_ && _loc2_))
               {
                  §§pop().dataFormat = URLLoaderDataFormat.TEXT;
                  §§goto(addr80);
                  §§goto(addr106);
               }
            }
         }
         §§goto(addr195);
      }
      
      protected static function §7"Q§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1.type != §9G§.§33§)
            {
               §9"6§.§#!o§();
               loop0:
               while(true)
               {
                  if(!_loc2_)
                  {
                     while(true)
                     {
                        addr34:
                        while(true)
                        {
                           §2"A§ = null;
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           if(_loc3_)
                           {
                              return;
                           }
                           addr56:
                           while(true)
                           {
                              §9"6§.§>_§(§]!I§.§`'§);
                           }
                        }
                     }
                     addr50:
                  }
                  while(true)
                  {
                     §§goto(addr34);
                  }
               }
            }
            §§goto(addr56);
         }
         §§goto(addr50);
      }
      
      private static function §]"0§(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§push(null);
                        if(_loc5_)
                        {
                           break;
                        }
                        §§pop().§§slot[3] = §§pop();
                        while(!(_loc5_ && § else§))
                        {
                           §§push(§§newactivation());
                           if(_loc6_ || param1)
                           {
                              continue loop0;
                           }
                           continue loop4;
                           §§pop().§§slot[1] = param1;
                           if(_loc6_ || _loc2_)
                           {
                              if(true)
                              {
                                 break loop3;
                              }
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
                  try
                  {
                     var dataObject:Object = JSON.parse(§2"A§.data);
                     if(!(_loc5_ && _loc2_))
                     {
                        §0!b§ = §0!b§.concat(dataObject.brags);
                        if(_loc6_ || § else§)
                        {
                           §@y§ = dataObject.gifts.concat(§0!b§);
                           if(!_loc5_)
                           {
                              addr161:
                              §2"A§ = null;
                              addr165:
                              §§push(§+!Y§);
                              if(_loc6_ || _loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       if(_loc6_ || _loc3_)
                                       {
                                          addr156:
                                          §+!Y§.§6-§();
                                          if(!_loc5_)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr161);
                                             }
                                          }
                                          §§goto(addr226);
                                       }
                                       §§goto(addr165);
                                    }
                                    §§goto(addr224);
                                 }
                                 var _loc3_:int = 0;
                                 if(_loc6_)
                                 {
                                    var _loc4_:* = dataObject.brags;
                                    if(_loc5_)
                                    {
                                    }
                                    addr213:
                                    for each(bragObject in _loc4_)
                                    {
                                       if(!_loc5_)
                                       {
                                          §'"+§.§'!#§("flashDeleteRequest",bragObject.r);
                                       }
                                       §§goto(addr213);
                                    }
                                 }
                                 if(_loc6_ || _loc2_)
                                 {
                                    addr224:
                                    §=R§();
                                    §§goto(addr226);
                                 }
                                 addr226:
                                 return;
                              }
                           }
                           §§goto(addr156);
                        }
                        §§goto(addr161);
                     }
                  }
                  catch(e:Error)
                  {
                     throw new Error("Error parsing JSON: " + §2"A§.data,§1!j§.§%e§);
                  }
                  §§goto(addr224);
               }
            }
         }
      }
      
      public static function injectData(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §0!b§ = §0!b§.concat(param1.brags);
         }
         loop0:
         while(true)
         {
            §@y§ = param1.gifts.concat(§0!b§);
            do
            {
               §§push(§+!Y§);
               if(!(_loc3_ && param1))
               {
                  if(!§§pop())
                  {
                     §§goto(addr24);
                  }
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     continue loop0;
                  }
                  §§push(§+!Y§);
               }
               §§pop().§6-§();
            }
            while(_loc3_ && _loc3_);
            
            addr24:
            return;
         }
      }
      
      public static function get §4O§() : Boolean
      {
         return §@y§.length > 0;
      }
      
      public static function get §each §() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§2"A§ == null);
         if(_loc1_ || _loc1_)
         {
            return !§§pop();
         }
      }
      
      protected static function §=R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            (§?l§.§ "G§ as §%"S§).§'u§.§-!P§(§'N§);
         }
      }
      
      public static function get §'N§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in §@y§)
         {
            if(_loc5_)
            {
               if(!_loc2_.lvl)
               {
                  §§push(!_loc2_.status);
                  if(!_loc6_)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr96:
                           while(true)
                           {
                              if(!_loc6_)
                              {
                                 §§push(_loc2_.status == §@!#§.§0!s§);
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    break;
                                 }
                                 continue loop3;
                                 addr98:
                              }
                              addr103:
                              continue loop0;
                           }
                        }
                        addr95:
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           continue loop0;
                        }
                        if(_loc5_ || _loc2_)
                        {
                           if(!_loc6_)
                           {
                              _loc1_++;
                              addr81:
                              if(!_loc6_)
                              {
                                 addr83:
                                 if(false)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr96);
                           }
                           else
                           {
                              addr102:
                              _loc1_++;
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr81);
                        §§goto(addr98);
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr95);
               }
               §§goto(addr102);
            }
            §§goto(addr83);
         }
         return _loc1_;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
            loop0:
            while(§+!Y§ == this)
            {
               if(!_loc1_)
               {
                  if(_loc1_)
                  {
                     continue;
                  }
                  §+!Y§ = null;
                  while(true)
                  {
                     break loop0;
                  }
                  addr70:
               }
               §§goto(addr70);
            }
            while(true)
            {
               preClose();
               while(!_loc1_)
               {
                  §'"+§.§"!6§("giftsSentToUsers",this.§6z§);
                  if(!_loc1_)
                  {
                     return;
                  }
               }
               §§goto(addr70);
            }
         }
         §§goto(addr70);
      }
      
      public function §?!f§(param1:§6!F§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§4!u§ = param1;
         }
      }
      
      public function §!U§(param1:§6!F§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §;"Z§() : §6!F§
      {
         return this.§4!u§;
      }
      
      public function get walletContainer() : Sprite
      {
         return mClip;
      }
      
      private function §`!n§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§#!A§();
            while(true)
            {
               §§push(this.§function§);
               addr115:
               loop1:
               while(true)
               {
                  §§pop().scrollerSprite.addEventListener(§[" §.§!"[§,this.§?!L§);
                  addr121:
                  while(true)
                  {
                     §§push(this.§function§);
                     continue loop1;
                  }
               }
            }
            addr124:
         }
         loop4:
         while(true)
         {
            §§push(this.§function§);
            while(true)
            {
               §§pop().scrollerSprite.addEventListener(§[" §.§--§,this.§@7§);
               §§push(this.§function§);
               addr84:
               continue loop4;
               if(_loc2_)
               {
                  continue;
               }
               if(!_loc2_)
               {
                  §§pop().scrollerSprite.addEventListener(§[" §.§-G§,this.§#4§);
                  if(_loc1_ || this)
                  {
                     return;
                  }
                  continue loop4;
               }
               §§goto(addr98);
            }
         }
      }
      
      private function §#!A§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§function§);
            loop0:
            while(true)
            {
               §§pop().scrollerSprite.removeEventListener(§[" §.§!"[§,this.§?!L§);
               loop1:
               while(true)
               {
                  §§push(this.§function§);
                  while(_loc1_)
                  {
                     §§pop().scrollerSprite.removeEventListener(§[" §.§4"&§,this.§@",§);
                     while(_loc1_)
                     {
                        if(!(_loc2_ && this))
                        {
                           return;
                           addr60:
                        }
                     }
                     continue loop1;
                     addr28:
                     if(_loc1_ || this)
                     {
                        §§pop().scrollerSprite.removeEventListener(§[" §.§-G§,this.§#4§);
                        if(!_loc2_)
                        {
                           §§goto(addr53);
                        }
                        loop6:
                        while(true)
                        {
                           §§push(this.§function§);
                           if(_loc1_)
                           {
                              §§goto(addr28);
                           }
                           addr74:
                           while(true)
                           {
                              §§pop().scrollerSprite.removeEventListener(§[" §.§--§,this.§@7§);
                              continue loop6;
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§goto(addr74);
         }
         §§goto(addr60);
      }
      
      private function §6"E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§3"N§();
            loop0:
            while(true)
            {
               mClip.EasterEggButton4.addEventListener(MouseEvent.CLICK,this.§9c§);
               loop1:
               while(true)
               {
                  mClip.btnUp.addEventListener(MouseEvent.CLICK,this.§#Z§);
                  while(true)
                  {
                     mClip.btnDown.addEventListener(MouseEvent.CLICK,this.§,U§);
                     addr81:
                     while(_loc2_)
                     {
                        continue loop0;
                     }
                     addr55:
                     continue loop1;
                     while(_loc2_ || _loc2_)
                     {
                        mClip.btnSendGifts.addEventListener(MouseEvent.CLICK,this.§"!x§);
                        if(!_loc2_)
                        {
                           continue;
                        }
                        if(_loc2_)
                        {
                           return;
                           addr36:
                        }
                        §§goto(addr81);
                     }
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      private function §3"N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            mClip.EasterEggButton4.removeEventListener(MouseEvent.CLICK,this.§9c§);
            while(true)
            {
               mClip.btnUp.removeEventListener(MouseEvent.CLICK,this.§#Z§);
               loop1:
               while(_loc1_ || this)
               {
                  mClip.btnDown.removeEventListener(MouseEvent.CLICK,this.§,U§);
                  while(true)
                  {
                     mClip.btnClose.removeEventListener(MouseEvent.CLICK,this.§if §);
                     loop3:
                     while(_loc1_ || _loc2_)
                     {
                        while(true)
                        {
                           mClip.btnSendGifts.removeEventListener(MouseEvent.CLICK,this.§"!x§);
                           if(!(_loc2_ && _loc1_))
                           {
                              if(_loc1_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.open(param1);
         }
         loop0:
         while(true)
         {
            mClip.x = (mClip.stage.stageWidth - 716) / 2;
            while(true)
            {
               mClip.y = (mClip.stage.stageHeight - 550) / 2;
               continue loop0;
               addr41:
               if(!(_loc2_ && _loc3_))
               {
                  return;
               }
            }
         }
      }
      
      private function §?!L§(param1:§[" §) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            param1.data.status = §@!#§.§#"0§;
         }
         var _loc2_:int = 8;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            mClip.mcContainer.addChild(new GiftParticle(460 + Math.random() * 20,param1.target.y + 140 + Math.random() * 20));
            if(_loc6_ || _loc3_)
            {
               _loc3_++;
               if(!(_loc6_ || _loc3_))
               {
                  break;
               }
            }
         }
         var _loc4_:§3d§ = new §3d§();
         if(!(_loc5_ && _loc2_))
         {
            this.§3y§.push({
               "loader":_loc4_,
               "data":param1.data,
               "point":new Point(460,param1.target.y + 140)
            });
            while(true)
            {
               _loc4_.addEventListener(Event.COMPLETE,this.§]!1§);
               while(_loc6_ || this)
               {
                  _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§switch§);
                  loop3:
                  while(!_loc5_)
                  {
                     while(true)
                     {
                        _loc4_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§switch§);
                        do
                        {
                           _loc4_.addEventListener(§9G§.§33§,this.§switch§);
                           do
                           {
                              §§push(_loc4_);
                              §§push(§9!7§);
                              §§push(AngryBirdsFP11.§?8§ + "/acceptrequest/");
                              if(_loc6_ || _loc2_)
                              {
                                 §§push(§§pop() + param1.data.r);
                              }
                              §§pop().load(§§pop().§,!l§(§§pop()));
                           }
                           while(!_loc6_);
                           
                        }
                        while(!(_loc6_ || param1));
                        
                        if(!(_loc5_ && this))
                        {
                           break;
                        }
                        continue loop3;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr157);
      }
      
      protected function §switch§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(param1.type != §9G§.§33§)
            {
               §9"6§.§#!o§();
               if(_loc3_ && this)
               {
                  addr77:
               }
               return;
            }
            if(!(_loc3_ && _loc3_))
            {
               addr73:
               §9"6§.§>_§(§]!I§.§`'§);
            }
            §§goto(addr77);
         }
         §§goto(addr73);
      }
      
      private function §]!1§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§push(null);
                     while(_loc5_)
                     {
                        §§pop().§§slot[4] = §§pop();
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§push(null);
                              addr101:
                              while(true)
                              {
                                 §§pop().§§slot[5] = §§pop();
                                 addr103:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    continue loop6;
                                 }
                              }
                           }
                           while(!(_loc4_ && this))
                           {
                              §§goto(addr44);
                           }
                        }
                     }
                     continue loop1;
                     while(!(_loc4_ && _loc3_))
                     {
                        if(!_loc5_)
                        {
                           continue loop0;
                        }
                        §§pop().§§slot[1] = param1;
                        §§goto(addr57);
                     }
                  }
               }
            }
         }
      }
      
      public function §6-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§function§.data = §@y§;
            loop0:
            do
            {
               if(§@y§.length > 0)
               {
                  if(_loc1_)
                  {
                     mClip.mcStatuses.visible = false;
                  }
                  loop1:
                  while(true)
                  {
                     addr28:
                     loop2:
                     while(true)
                     {
                        this.§&q§();
                        if(!(_loc2_ && _loc2_))
                        {
                           break;
                        }
                        continue loop1;
                        addr80:
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
                  addr92:
               }
               else
               {
                  mClip.mcStatuses.gotoAndStop(2);
               }
               while(true)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr80);
                  }
                  else
                  {
                     §§goto(addr92);
                  }
               }
            }
            while(!(_loc1_ || _loc1_));
            
            return;
         }
         §§goto(addr80);
      }
      
      private function §"!x§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.close();
         }
         do
         {
            §9"6§.§7![§();
         }
         while(_loc2_ && param1);
         
      }
      
      private function §@",§(param1:§[" §) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            AngryBirdsFP11.§>m§.§^X§();
            do
            {
               §'"+§.§'!#§("flashSendGiftFriend",(AngryBirdsFP11.sUserProgress as §#!$§).userName,param1.data.i);
            }
            while(_loc3_);
            
         }
      }
      
      private function §6z§(param1:Array) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Object = null;
         if(_loc9_)
         {
            if(!param1)
            {
               if(_loc9_)
               {
                  return;
               }
            }
         }
         var _loc2_:Boolean = false;
         for each(_loc3_ in param1)
         {
            var _loc7_:int = 0;
            var _loc8_:* = this.§function§.data;
            loop1:
            for(; §§hasnext(_loc8_,_loc7_); if(_loc3_ != _loc4_.i)
            {
               continue;
            },if(_loc9_ || _loc2_)
            {
               §§goto(addr112);
            },§§goto(addr116))
            {
               _loc4_ = §§nextvalue(_loc7_,_loc8_);
               if(!_loc10_)
               {
                  continue;
               }
               addr112:
               addr116:
               _loc4_.status = §@!#§.§3!y§;
               while(true)
               {
                  while(true)
                  {
                     §4"7§.§&"5§.§0!Q§(_loc4_.i);
                     do
                     {
                        _loc2_ = true;
                     }
                     while(_loc10_ && this);
                     
                     if(_loc10_)
                     {
                        break;
                     }
                     if(true)
                     {
                        break loop1;
                     }
                  }
               }
            }
         }
         if(_loc9_)
         {
            if(_loc2_)
            {
               if(_loc9_ || _loc2_)
               {
                  this.§function§.§->§();
               }
            }
         }
      }
      
      private function §@7§(param1:§[" §) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§@y§);
            loop0:
            while(true)
            {
               §§push(§@y§);
               loop1:
               while(true)
               {
                  §§pop().splice(§§pop().indexOf(param1.data),1);
                  addr131:
                  while(true)
                  {
                     §§push(§0!b§);
                     if(!(_loc2_ && this))
                     {
                        continue loop0;
                     }
                     addr110:
                     while(true)
                     {
                        §§push(§0!b§);
                        if(_loc2_ && this)
                        {
                           break;
                        }
                        §§pop().splice(§§pop().indexOf(param1.data),1);
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr123);
      }
      
      private function §#4§(param1:§[" §) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!AngryBirdsFP11.sUserProgress.isLevelOpen(param1.data.lvl))
            {
               if(param1.data.lvl.indexOf("2000-") > -1)
               {
                  loop0:
                  while(true)
                  {
                     §§push(§%"S§.§!C§);
                     if(_loc3_ || param1)
                     {
                        §§pop().§`H§(§]!M§.STATE_NAME);
                        loop1:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              loop4:
                              while(true)
                              {
                                 this.§@7§(param1);
                                 while(!_loc2_)
                                 {
                                    this.deActivate();
                                    if(!(_loc3_ || this))
                                    {
                                       continue;
                                    }
                                    if(!_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    if(_loc3_)
                                    {
                                       break loop4;
                                    }
                                    addr98:
                                    while(true)
                                    {
                                       §§push(§%"S§.§!C§);
                                       addr100:
                                       while(true)
                                       {
                                          §§pop().§5!N§(param1.data.lvl);
                                          addr104:
                                          while(true)
                                          {
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                                 continue loop1;
                              }
                              return;
                              addr49:
                           }
                           §§goto(addr104);
                        }
                     }
                     §§goto(addr100);
                  }
               }
               §§goto(addr49);
            }
         }
         §§goto(addr98);
      }
      
      private function §9c§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            mClip.EasterEggButton4.visible = false;
            do
            {
               (AngryBirdsFP11.sUserProgress as §#!$§).§9!'§("1000-4");
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private function §#Z§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.scroll(-this.§function§.§0"P§);
         }
      }
      
      private function §,U§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.scroll(this.§function§.§0"P§);
         }
      }
      
      private function scroll(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1 != 0)
            {
               if(_loc3_ || param1)
               {
                  addr50:
                  this.§function§.scroll(param1);
               }
               do
               {
                  this.§&q§();
               }
               while(!_loc3_);
               
            }
            return;
         }
         §§goto(addr50);
      }
      
      private function §&q§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§function§.offset == 0);
         if(!(_loc4_ && _loc2_))
         {
            §§push(!§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(this.§function§.offset == this.§function§.data.length - this.§function§.§0"P§);
         if(!(_loc4_ && _loc1_))
         {
            §§push(!§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && this))
         {
            mClip.btnUp.visible = _loc1_;
            do
            {
               mClip.btnDown.visible = _loc2_;
            }
            while(_loc4_);
            
         }
      }
      
      private function §if §(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §=R§();
            do
            {
               this.deActivate();
            }
            while(!_loc2_);
            
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§!U§(this.§4!u§);
            loop0:
            while(true)
            {
               this.§3"N§();
               do
               {
                  this.§#!A§();
                  continue loop0;
               }
               while(_loc1_ && _loc1_);
               
            }
         }
      }
      
      private function § ?§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §@q§.§,""§(param1,param2);
         }
      }
   }
}
