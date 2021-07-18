package §'i§
{
   import §'p§.§="#§;
   import §'p§.§`!T§;
   import §+!o§.§]"5§;
   import §+!o§.§^!Q§;
   import §+h§.Popup;
   import §-!n§.§5!U§;
   import §1"2§.§`7§;
   import §2"=§.b2Transform;
   import §2"=§.b2Vec2;
   import §5!V§.§!w§;
   import §5!V§.§>n§;
   import §6" §.§<8§;
   import §62§.§0!t§;
   import §62§.§9o§;
   import §7r§.§,"!§;
   import §7r§.§=q§;
   import §=!#§.§2"-§;
   import §=!#§.§`"=§;
   import §^!y§.§'"#§;
   import §^[§.§!$§;
   import §^[§.§-[§;
   import §^[§.Inventory;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §2!4§ extends EventDispatcher implements §8p§
   {
      
      private static const §'!g§:Number = 5.0E-4;
      
      private static const §1!c§:Number = 0.015;
      
      private static const §7"7§:Number = 1.005;
      
      private static const §[]§:Number = -0.15;
      
      private static const §?q§:Number = 45.0;
      
      private static const §@2§:int = 20;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§§findproperty(§'!g§));
            §§push(§!w§.§4!-§);
            if(_loc2_)
            {
               §§push(§§pop() / 100);
            }
            §§pop().§'!g§ = §§pop();
            while(true)
            {
               §§push(§§findproperty(§1!c§));
               §§push(§'!g§);
               if(!_loc1_)
               {
                  §§push(§§pop() * 30);
               }
               §§pop().§1!c§ = §§pop();
               while(true)
               {
                  §7"7§ = 1.005;
                  loop2:
                  while(true)
                  {
                     §[]§ = -0.15;
                     while(true)
                     {
                        §?q§ = 360 / 8;
                        loop4:
                        while(_loc2_ || _loc1_)
                        {
                           while(true)
                           {
                              §@2§ = 20;
                              if(_loc2_)
                              {
                                 continue loop2;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      private var §'Y§:Vector.<§=q§>;
      
      private var §2!z§:Point;
      
      private var §#!Y§:Point;
      
      private var §-"+§:Boolean = false;
      
      private var §[!1§:Dictionary;
      
      private var §;"-§:Vector.<§=q§>;
      
      private var §,H§:Number;
      
      private var §<u§:Number;
      
      private var §`c§:Number = 0;
      
      private var §,=§:Number = 0;
      
      private var §+!W§:Boolean = false;
      
      private var §<2§:Boolean = false;
      
      private var §0!J§:Boolean = false;
      
      private var §8"%§:Point;
      
      private var §=!m§:§!$§;
      
      private var §2!W§:Point;
      
      private var §<!t§:Point;
      
      private var §;!u§:Point;
      
      private var §"$§:Boolean = false;
      
      private var §6!§:§-[§;
      
      private var §"#§:Inventory;
      
      private var §-?§:Popup;
      
      private var §6!^§:§'!;§;
      
      private var §'!6§:int = 100;
      
      public function §2!4§(param1:§'!;§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§'Y§ = new Vector.<§=q§>();
            loop0:
            while(true)
            {
               this.§#!Y§ = new Point();
               addr136:
               while(true)
               {
                  this.§[!1§ = new Dictionary();
                  addr118:
                  while(_loc3_)
                  {
                     this.§<!t§ = new Point();
                     loop3:
                     while(true)
                     {
                        this.§;!u§ = new Point();
                        addr106:
                        while(true)
                        {
                           this.§6!§ = new §-[§();
                           addr98:
                           while(_loc3_)
                           {
                              super();
                           }
                           continue loop3;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         loop6:
         while(true)
         {
            this.§6!^§ = param1;
            for(; _loc3_; while(_loc3_ || _loc2_)
            {
               continue loop6;
               addEventListener(Event.COMPLETE,this.onComplete);
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               if(_loc3_)
               {
                  break loop6;
               }
               §§goto(addr106);
            })
            {
               if(_loc3_)
               {
                  addEventListener(Event.CHANGE,this.§8!9§);
                  continue;
               }
               §§goto(addr136);
            }
            §§goto(addr98);
            if(!(_loc3_ || param1))
            {
               continue;
            }
            if(_loc3_)
            {
               §§goto(addr79);
            }
            §§goto(addr118);
         }
      }
      
      public function initialize() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§6!^§);
            while(true)
            {
               §§push(§§pop().§+"2§);
               loop1:
               while(true)
               {
                  §§pop().addEventListener(KeyboardEvent.KEY_DOWN,this.§8!l§);
                  addr347:
                  while(true)
                  {
                     §§push(this.§6!^§);
                     addr315:
                     while(true)
                     {
                        §§push(§§pop().§+"2§);
                        addr316:
                        while(_loc2_ || _loc1_)
                        {
                           §§pop().addEventListener(KeyboardEvent.KEY_UP,this.§ y§);
                        }
                        continue loop1;
                     }
                  }
               }
            }
            addr341:
         }
         while(true)
         {
            §§push(this.§6!^§);
            while(true)
            {
               §§push(§§pop().§?!W§);
               loop7:
               while(true)
               {
                  §§pop().addEventListener(MouseEvent.MOUSE_UP,this.§#!d§);
                  while(true)
                  {
                     §§push(this.§6!^§);
                     loop9:
                     while(true)
                     {
                        §§push(§§pop().§?!W§);
                        loop10:
                        while(!_loc1_)
                        {
                           §§pop().addEventListener(MouseEvent.MOUSE_DOWN,this.§,!k§);
                           while(true)
                           {
                              §§push(this.§6!^§);
                              loop12:
                              while(true)
                              {
                                 §§push(§§pop().§?!W§);
                                 loop13:
                                 while(true)
                                 {
                                    §§pop().addEventListener(MouseEvent.MOUSE_MOVE,this.§2<§);
                                    loop14:
                                    while(true)
                                    {
                                       §§push(this.§6!^§);
                                       loop15:
                                       while(true)
                                       {
                                          §§push(§§pop().§?!W§);
                                          if(!_loc2_)
                                          {
                                             continue loop13;
                                          }
                                          if(_loc1_)
                                          {
                                             break;
                                          }
                                          §§pop().addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                                          loop16:
                                          while(true)
                                          {
                                             §§push(this.§6!^§);
                                             addr259:
                                             loop17:
                                             while(true)
                                             {
                                                §§push(§§pop().§+"2§);
                                                loop18:
                                                while(true)
                                                {
                                                   §§push(§0!t§.ROTATE);
                                                   loop19:
                                                   while(true)
                                                   {
                                                      §§pop().addEventListener(§§pop(),this.§?$§);
                                                      addr265:
                                                      while(true)
                                                      {
                                                         §§push(this.§6!^§);
                                                         loop21:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§+"2§);
                                                            loop22:
                                                            while(_loc2_)
                                                            {
                                                               §§push(§0!t§.DELETE_OBJECT);
                                                               while(_loc2_ || this)
                                                               {
                                                                  §§pop().addEventListener(§§pop(),this.§9!n§);
                                                                  while(_loc2_)
                                                                  {
                                                                     §§push(this.§6!^§);
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                        continue loop17;
                                                                        addr104:
                                                                        if(_loc2_ || this)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  continue loop14;
                                                                  addr222:
                                                                  §§push(§0!t§.DUPLICATE_OBJECT);
                                                                  if(!(_loc2_ || this))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§pop().addEventListener(§§pop(),this.§<S§);
                                                                  loop27:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§6!^§);
                                                                     addr157:
                                                                     while(!_loc1_)
                                                                     {
                                                                        addr159:
                                                                        §§push(§§pop().§+"2§);
                                                                        if(!(_loc1_ && _loc1_))
                                                                        {
                                                                           if(!(_loc1_ && this))
                                                                           {
                                                                              §§pop().addEventListener("close_popups",this.§>!=§);
                                                                              continue loop27;
                                                                           }
                                                                           continue loop18;
                                                                        }
                                                                        addr220:
                                                                        while(_loc2_)
                                                                        {
                                                                           §§goto(addr222);
                                                                           §§goto(addr159);
                                                                        }
                                                                        continue loop22;
                                                                     }
                                                                     continue loop21;
                                                                  }
                                                               }
                                                               continue loop19;
                                                            }
                                                            §§goto(addr316);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr146:
                                             while(true)
                                             {
                                                if(_loc1_ && this)
                                                {
                                                   continue loop16;
                                                }
                                                §§goto(addr153);
                                             }
                                             §§goto(addr315);
                                          }
                                       }
                                       continue loop10;
                                    }
                                 }
                              }
                           }
                        }
                        continue loop7;
                     }
                  }
               }
            }
            if(_loc1_ && this)
            {
               continue;
            }
            §§goto(addr89);
         }
      }
      
      private function §^j§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§6!^§.§+"2§.§9B§().§'!Q§().§?-§();
         }
      }
      
      private function §>!=§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§-?§.close();
            do
            {
               this.§-?§ = null;
            }
            while(_loc2_ && param1);
            
         }
      }
      
      private function §>N§(param1:§0!t§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§@!B§(false);
         }
      }
      
      private function §8!9§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!this.§"$§)
            {
               do
               {
                  this.§"$§ = true;
                  do
                  {
                     this.§6!^§.§4p§.§5R§();
                  }
                  while(!(_loc2_ || _loc2_));
                  
               }
               while(_loc3_ && this);
               
               addr66:
            }
            return;
         }
         §§goto(addr66);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§"$§)
            {
               do
               {
                  this.§"$§ = false;
                  do
                  {
                     this.§6!^§.§8#§.§ f§();
                  }
                  while(_loc2_ && this);
                  
               }
               while(_loc2_);
               
               addr58:
            }
            return;
         }
         §§goto(addr58);
      }
      
      private function §]d§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§%1§();
         }
      }
      
      private function §?$§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(§?q§);
            if(_loc2_ || _loc3_)
            {
               §§push(-§§pop());
            }
            §§pop().§<!M§(§§pop());
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc4_:§2"-§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:b2Vec2 = null;
         var _loc11_:Point = null;
         if(_loc13_ || this)
         {
            if(!§,!1§.§2=§.§1!?§())
            {
               if(_loc13_)
               {
                  return;
               }
            }
         }
         var _loc2_:int = param1.delta;
         §§push(§`"=§.§;!0§);
         if(!_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc13_)
         {
            §§push(this.§6!^§);
            if(_loc13_ || param1)
            {
               §§push(§§pop().§>k§);
               if(_loc13_ || this)
               {
                  §§push(§§pop().camera);
                  if(!_loc12_)
                  {
                     §§pop().zoom(_loc2_);
                     if(!(_loc12_ && _loc3_))
                     {
                        if(_loc2_ > 0)
                        {
                           addr100:
                           _loc5_ = (_loc4_ = this.§6!^§.§>k§.camera).§6!w§;
                           addr96:
                           addr99:
                           addr98:
                           if(!_loc12_)
                           {
                              if(!_loc4_)
                              {
                              }
                              §§goto(addr366);
                           }
                           _loc6_ = _loc4_.getCenter();
                           _loc7_ = new Point();
                           if(_loc13_)
                           {
                              if(this.§?"4§() == 0)
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(this.§=!u§.x - _loc6_.x);
                                    if(_loc13_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    while(true)
                                    {
                                       _loc8_ = §§pop();
                                       loop5:
                                       while(true)
                                       {
                                          §§push(this.§=!u§.y - _loc6_.y);
                                          if(_loc13_)
                                          {
                                             if(_loc12_ && param1)
                                             {
                                                break;
                                             }
                                             §§push(Number(§§pop()));
                                          }
                                          _loc9_ = §§pop();
                                          loop6:
                                          while(true)
                                          {
                                             _loc7_.x = this.§=!u§.x - _loc3_ / _loc5_ * _loc8_;
                                             if(_loc13_ || this)
                                             {
                                                if(_loc12_)
                                                {
                                                   break;
                                                }
                                                loop7:
                                                while(true)
                                                {
                                                   _loc7_.y = this.§=!u§.y - _loc3_ / _loc5_ * _loc9_;
                                                   while(true)
                                                   {
                                                      this.§6!^§.§+"2§.§ !i§(this.§;o§.x,this.§;o§.y);
                                                      if(!(_loc13_ || param1))
                                                      {
                                                         break;
                                                      }
                                                      if(!_loc12_)
                                                      {
                                                         if(_loc13_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         continue loop6;
                                                      }
                                                   }
                                                   §§goto(addr366);
                                                }
                                                continue loop5;
                                             }
                                             §§goto(addr366);
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 §§push((_loc10_ = this.§4'§()).x);
                                 if(!(_loc12_ && param1))
                                 {
                                    §§push(§§pop() - _loc6_.x);
                                    if(_loc13_)
                                    {
                                       addr245:
                                       §§push(1.3);
                                       if(_loc13_ || _loc3_)
                                       {
                                          §§push(§§pop() / §§pop());
                                          if(_loc13_ || _loc2_)
                                          {
                                             addr261:
                                             §§push(Number(§§pop()));
                                             if(_loc13_)
                                             {
                                                _loc8_ = §§pop();
                                                if(!(_loc12_ && param1))
                                                {
                                                   §§push(_loc10_.y);
                                                   if(_loc13_)
                                                   {
                                                      §§push(§§pop() - _loc6_.y);
                                                      if(_loc13_)
                                                      {
                                                         addr322:
                                                         §§push(§§pop() / 1.3);
                                                         if(!_loc12_)
                                                         {
                                                            addr326:
                                                            _loc9_ = Number(§§pop());
                                                            while(true)
                                                            {
                                                               addr300:
                                                               while(true)
                                                               {
                                                                  _loc7_.x = _loc10_.x - _loc3_ / _loc5_ * _loc8_;
                                                               }
                                                            }
                                                            addr327:
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr326);
                                                }
                                                while(true)
                                                {
                                                   _loc7_.y = _loc10_.y - _loc3_ / _loc5_ * _loc9_;
                                                   if(_loc12_ && _loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc13_ || this)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr327);
                                                   }
                                                   §§goto(addr300);
                                                }
                                                _loc11_ = this.§6!^§.§8#§.§!!3§(_loc10_.x,_loc10_.y);
                                                if(_loc13_ || param1)
                                                {
                                                   this.§6!^§.§+"2§.§ !i§(_loc11_.x,_loc11_.y);
                                                }
                                                §§goto(addr363);
                                             }
                                          }
                                          §§goto(addr326);
                                       }
                                       §§goto(addr322);
                                    }
                                    §§goto(addr261);
                                 }
                                 §§goto(addr245);
                              }
                              addr363:
                              _loc4_.§0'§(_loc7_);
                              §§goto(addr366);
                           }
                        }
                        addr366:
                        return;
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr100);
               }
               §§goto(addr99);
            }
            §§goto(addr98);
         }
         §§goto(addr100);
      }
      
      private function §;B§(param1:§0!t§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:Bitmap = null;
         var _loc4_:Bitmap = null;
         var _loc5_:MovieClip = null;
         var _loc6_:Object = null;
         if(!_loc7_)
         {
            §5!U§.playSound("Sound_PlaceBlock");
         }
         var _loc2_:§!$§ = this.§"#§.§-!G§();
         if(!_loc7_)
         {
            if(_loc2_.§7!w§)
            {
               if(!_loc7_)
               {
                  this.§-?§ = new Popup(§`7§.§>"?§.Views.PopupView_ItemLocked[0],this.§6!^§.§+"2§.§9B§());
                  if(_loc8_ || this)
                  {
                  }
                  §§goto(addr70);
               }
               this.§-?§.open();
               §§goto(addr70);
            }
            else if(_loc6_ = this.§<r§(_loc2_))
            {
               if(!_loc7_)
               {
                  this.§6!^§.§+"2§.§^!+§(this.§6!§);
                  if(_loc7_)
                  {
                  }
                  §§goto(addr70);
               }
               this.§6!§.addEventListener(MouseEvent.MOUSE_UP,this.§#!d§);
            }
            §§goto(addr70);
         }
         addr70:
         _loc3_ = _loc2_.§8!n§() as Bitmap;
         _loc4_ = new Bitmap(_loc3_.bitmapData);
         _loc5_ = this.§-?§.getItemByName("MovieClip_UnlockItem").mClip;
         if(!_loc7_)
         {
            _loc4_.x = _loc5_.width / 2 - _loc4_.width / 2;
            loop0:
            while(true)
            {
               addr115:
               while(true)
               {
                  _loc4_.y = _loc5_.height / 2 - _loc4_.height / 2 - 45;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            _loc5_.addChild(_loc4_);
            if(_loc8_ || _loc2_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr115);
            }
            §§goto(addr129);
         }
      }
      
      private function §#!d§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!this.§2!z§)
            {
               loop0:
               while(this.§6!§.mouseEnabled)
               {
                  loop1:
                  while(_loc2_ || _loc2_)
                  {
                     if(_loc3_)
                     {
                        addr91:
                        this.§2!z§ = null;
                        break;
                     }
                     while(true)
                     {
                        this.§-!'§();
                        do
                        {
                           this.§"t§();
                        }
                        while(!(_loc2_ || _loc3_));
                        
                        if(!(_loc3_ && _loc2_))
                        {
                           if(_loc2_ || this)
                           {
                              break loop0;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
               return;
            }
            §§goto(addr91);
         }
         §§goto(addr72);
      }
      
      private function §,!k§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§6!^§.§+"2§.§7"+§)
            {
               if(_loc3_)
               {
                  return;
               }
            }
            else
            {
               if(this.§2!z§)
               {
                  if(_loc3_ || this)
                  {
                     §§goto(addr38);
                  }
               }
               var _loc2_:§=q§ = §=q§.§0"§(this.§6!^§.§8#§.§]!l§(this.§;o§));
               if(_loc3_)
               {
                  if(this.§'Y§.indexOf(_loc2_) <= -1)
                  {
                     if(_loc2_ != null)
                     {
                        loop0:
                        while(true)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              this.§@!z§(_loc2_,this.§+!W§);
                              loop1:
                              while(true)
                              {
                                 addr438:
                                 loop19:
                                 while(true)
                                 {
                                    §§push(_loc2_ == null);
                                    loop20:
                                    for(; !_loc4_; if(_loc4_ && this)
                                    {
                                       continue;
                                    },§§goto(addr364),§§push(Boolean(§§pop())))
                                    {
                                       §§push(!§§pop());
                                       loop21:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop22:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop24:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §§push(!_loc2_);
                                                      loop25:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop26:
                                                         while(!(_loc4_ && _loc3_))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               addr349:
                                                               loop27:
                                                               for(; _loc3_ || _loc2_; while(!(_loc4_ && _loc3_))
                                                               {
                                                                  §§pop();
                                                                  §§goto(addr306);
                                                               })
                                                               {
                                                                  addr335:
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     §§pop();
                                                                     loop28:
                                                                     while(_loc3_)
                                                                     {
                                                                        §§push(this.§+!W§);
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop27;
                                                                        }
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           loop29:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop30:
                                                                              while(_loc3_)
                                                                              {
                                                                                 if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       continue loop27;
                                                                                    }
                                                                                    loop31:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       loop32:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   loop41:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc3_ || _loc3_)
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               this.§8!#§();
                                                                                                               break;
                                                                                                            }
                                                                                                            addr306:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc4_ && _loc3_)
                                                                                                               {
                                                                                                                  return;
                                                                                                               }
                                                                                                               addr52:
                                                                                                               addr374:
                                                                                                               §§push(this.§0!J§);
                                                                                                               continue loop29;
                                                                                                            }
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(!_loc2_);
                                                                                                      loop42:
                                                                                                      for(; _loc3_ || _loc2_; if(_loc4_ && param1)
                                                                                                      {
                                                                                                         continue;
                                                                                                      },if(_loc3_ || this)
                                                                                                      {
                                                                                                         §§goto(addr114);
                                                                                                      },§§goto(addr368))
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(_loc3_ || _loc3_)
                                                                                                            {
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(!(_loc3_ || _loc3_))
                                                                                                                  {
                                                                                                                     continue loop32;
                                                                                                                  }
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        while(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc3_ || param1)
                                                                                                                           {
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 continue loop28;
                                                                                                                              }
                                                                                                                              this.§%1§();
                                                                                                                           }
                                                                                                                           do
                                                                                                                           {
                                                                                                                              this.§2!W§ = this.§=!u§.clone();
                                                                                                                           }
                                                                                                                           while(_loc4_);
                                                                                                                           
                                                                                                                           addr127:
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              if(_loc4_ && _loc2_)
                                                                                                                              {
                                                                                                                                 break loop41;
                                                                                                                              }
                                                                                                                              if(_loc3_ || _loc3_)
                                                                                                                              {
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 loop53:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc4_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(this.§0!J§);
                                                                                                                                       loop54:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          addr379:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             addr380:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                addr381:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc4_)
                                                                                                                                                         {
                                                                                                                                                            continue loop53;
                                                                                                                                                         }
                                                                                                                                                         addr384:
                                                                                                                                                         if(_loc3_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            continue loop0;
                                                                                                                                                         }
                                                                                                                                                         addr475:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  this.§&-§(_loc2_);
                                                                                                                                                                  break loop28;
                                                                                                                                                               }
                                                                                                                                                               addr476:
                                                                                                                                                            }
                                                                                                                                                            addr449:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               continue loop19;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr384);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr382:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(!§§pop());
                                                                                                                                                         addr368:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc3_)
                                                                                                                                                            {
                                                                                                                                                               continue loop24;
                                                                                                                                                            }
                                                                                                                                                            addr485:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               break loop32;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr366:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop54;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr378:
                                                                                                                                    }
                                                                                                                                    addr488:
                                                                                                                                    addr513:
                                                                                                                                    while(_loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§<2§);
                                                                                                                                       while(_loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr475);
                                                                                                                                          }
                                                                                                                                          §§goto(addr335);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          break loop26;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§0!J§);
                                                                                                                                       addr483:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          addr484:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr485);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc4_ && this)
                                                                                                                                    {
                                                                                                                                       addr372:
                                                                                                                                       this.§%O§();
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(this.§<2§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       break loop42;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr374);
                                                                                                                                 addr271:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              loop44:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    continue loop0;
                                                                                                                                 }
                                                                                                                                 if(!(_loc4_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(this.§-"+§);
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       continue loop42;
                                                                                                                                    }
                                                                                                                                    addr88:
                                                                                                                                    if(_loc3_ || param1)
                                                                                                                                    {
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(!§§pop());
                                                                                                                                          continue loop42;
                                                                                                                                       }
                                                                                                                                       continue loop29;
                                                                                                                                    }
                                                                                                                                    addr162:
                                                                                                                                    while(!_loc4_)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       continue loop44;
                                                                                                                                       §§goto(addr88);
                                                                                                                                    }
                                                                                                                                    §§goto(addr483);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr178);
                                                                                                                           }
                                                                                                                           §§goto(addr476);
                                                                                                                        }
                                                                                                                        §§goto(addr374);
                                                                                                                        addr114:
                                                                                                                     }
                                                                                                                     §§goto(addr162);
                                                                                                                  }
                                                                                                                  §§goto(addr381);
                                                                                                               }
                                                                                                               §§goto(addr382);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     if(_loc4_ && param1)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue loop31;
                                                                                                                  }
                                                                                                                  continue loop27;
                                                                                                               }
                                                                                                               while(!(_loc4_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        continue loop22;
                                                                                                                     }
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        §§goto(addr429);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  addr448:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§+!W§);
                                                                                                                     continue loop21;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr232:
                                                                                                               addr447:
                                                                                                               addr418:
                                                                                                            }
                                                                                                            §§goto(addr379);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                            }
                                                                                                            addr270:
                                                                                                         }
                                                                                                         §§goto(addr271);
                                                                                                      }
                                                                                                      continue loop25;
                                                                                                      §§goto(addr374);
                                                                                                   }
                                                                                                   addr186:
                                                                                                   if(_loc3_ || _loc3_)
                                                                                                   {
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   §§goto(addr448);
                                                                                                   addr186:
                                                                                                }
                                                                                                §§goto(addr270);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          continue loop30;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                §§goto(addr488);
                                                                                             }
                                                                                             addr487:
                                                                                          }
                                                                                          §§goto(addr474);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr426);
                                                                              }
                                                                              continue loop26;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(_loc3_)
                                                                           {
                                                                           }
                                                                           §§goto(addr378);
                                                                           addr364:
                                                                        }
                                                                        §§goto(addr366);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr449);
                                                                     }
                                                                  }
                                                                  §§goto(addr471);
                                                               }
                                                               while(!(_loc4_ && _loc2_))
                                                               {
                                                                  continue loop20;
                                                               }
                                                               continue loop21;
                                                               addr349:
                                                            }
                                                            §§goto(addr186);
                                                         }
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  §§goto(addr513);
                                                               }
                                                               addr512:
                                                            }
                                                            §§goto(addr484);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr372);
                                                }
                                             }
                                             §§goto(addr447);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(this.§+!W§);
                              }
                              addr507:
                           }
                           while(true)
                           {
                              §§goto(addr510);
                           }
                        }
                     }
                     §§goto(addr438);
                  }
                  §§goto(addr507);
               }
               §§goto(addr448);
            }
         }
         addr38:
      }
      
      private function §2<§(param1:Event) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:Point = null;
         var _loc3_:* = 0;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         if(_loc8_ || this)
         {
            if(this.§2!z§)
            {
               if(_loc8_)
               {
                  _loc2_ = this.§2!z§.subtract(this.§;o§);
                  if(_loc8_ || this)
                  {
                     if(_loc2_.length > §@2§)
                     {
                        loop0:
                        while(true)
                        {
                           dispatchEvent(new Event(Event.CHANGE));
                           loop1:
                           while(true)
                           {
                              if(Math.abs(_loc2_.x) <= Math.abs(_loc2_.y))
                              {
                                 if(_loc2_.y >= 0)
                                 {
                                    §§push(-1);
                                    loop2:
                                    while(true)
                                    {
                                       if(!(_loc7_ && param1))
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             loop4:
                                             while(true)
                                             {
                                                if(_loc8_)
                                                {
                                                   _loc3_ = §§pop();
                                                   loop5:
                                                   while(true)
                                                   {
                                                      if(this.§;o§.x > this.§]C§().x)
                                                      {
                                                         while(_loc8_ || param1)
                                                         {
                                                            §§push(_loc3_);
                                                            if(!_loc7_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               §§push(-1);
                                                               if(_loc8_ || _loc2_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc8_)
                                                                  {
                                                                     addr132:
                                                                     §§push(int(§§pop()));
                                                                     if(_loc7_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    addr82:
                                                                                    loop15:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§2!z§ = this.§;o§.clone();
                                                                                       loop16:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             if(_loc7_ && _loc2_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                §§push(this);
                                                                                                §§push(§?q§);
                                                                                                if(_loc8_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§§pop() * _loc3_);
                                                                                                }
                                                                                                §§pop().§<!M§(§§pop());
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   continue loop9;
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             addr149:
                                                                                             loop17:
                                                                                             while(this.§;o§.y > this.§]C§().y)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_);
                                                                                                   addr204:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc7_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(-1);
                                                                                                         loop8:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            addr213:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(int(§§pop()));
                                                                                                               addr214:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc3_ = §§pop();
                                                                                                                  break loop16;
                                                                                                               }
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                         }
                                                                                                         addr212:
                                                                                                      }
                                                                                                      addr242:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(int(§§pop()));
                                                                                                         addr243:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc3_ = §§pop();
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop17;
                                                                                                }
                                                                                             }
                                                                                             continue loop15;
                                                                                          }
                                                                                          continue loop5;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc7_ && _loc3_))
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                break loop15;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             loop10:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(-1);
                                                                                                addr240:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr242);
                                                                                                   continue loop10;
                                                                                                }
                                                                                             }
                                                                                             addr239:
                                                                                          }
                                                                                          §§goto(addr149);
                                                                                       }
                                                                                    }
                                                                                    continue loop0;
                                                                                    addr82:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr235:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc2_.x >= 0)
                                                                                    {
                                                                                       §§goto(addr242);
                                                                                       §§push(1);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr239);
                                                                              }
                                                                              §§goto(addr203);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(1);
                                                                                 if(!(_loc8_ || _loc3_))
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 if(!(_loc7_ && this))
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                              }
                                                                              addr156:
                                                                           }
                                                                           §§goto(addr240);
                                                                        }
                                                                     }
                                                                     §§goto(addr204);
                                                                  }
                                                                  §§goto(addr213);
                                                               }
                                                               §§goto(addr212);
                                                            }
                                                            §§goto(addr132);
                                                         }
                                                         continue loop1;
                                                      }
                                                      §§goto(addr82);
                                                   }
                                                }
                                                §§goto(addr214);
                                             }
                                          }
                                       }
                                       §§goto(addr243);
                                    }
                                 }
                                 §§goto(addr156);
                              }
                              §§goto(addr235);
                           }
                        }
                     }
                     §§goto(addr256);
                  }
                  §§goto(addr80);
               }
               else
               {
                  addr267:
                  if(§,!1§.§2=§.§1!?§())
                  {
                     if(!_loc7_)
                     {
                        addr273:
                        §§push(Number((_loc4_ = this.§6!^§.§>k§.camera.getCenter()).x + (this.§2!W§.x - this.§=!u§.x)));
                        if(_loc8_)
                        {
                           _loc5_ = §§pop();
                           if(_loc8_ || this)
                           {
                              addr312:
                              _loc6_ = _loc4_.y + (this.§2!W§.y - this.§=!u§.y);
                              if(!_loc7_)
                              {
                                 this.§6!^§.§>k§.camera.§@!D§(_loc5_,_loc6_);
                              }
                           }
                           §§goto(addr336);
                        }
                        §§goto(addr312);
                     }
                  }
                  else
                  {
                     this.§2!W§ = null;
                  }
               }
            }
            else if(this.§2!W§)
            {
               if(!(_loc7_ && _loc2_))
               {
                  §§goto(addr267);
               }
               §§goto(addr273);
            }
            §§goto(addr336);
         }
         §§goto(addr267);
      }
      
      private function §8!l§(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§?"4§() == 0)
            {
               loop0:
               while(true)
               {
                  §§push(param1.keyCode == Keyboard.UP);
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(this.§<!t§.y == -1);
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    addr359:
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    §§pop();
                                    loop24:
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(this.§<!t§.x == 1);
                                          if(_loc4_)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   addr260:
                                                   §§push(!§§pop());
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         addr274:
                                                         if(!(_loc3_ && param1))
                                                         {
                                                            loop25:
                                                            while(§§pop())
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     this.§<!t§.x = 1;
                                                                     while(true)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           continue loop24;
                                                                        }
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr385:
                                                                           if(!(_loc4_ || _loc3_))
                                                                           {
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§<!t§.y == 1);
                                                                                 addr441:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    addr442:
                                                                                    loop13:
                                                                                    while(!_loc3_)
                                                                                    {
                                                                                       loop14:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§goto(addr446);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(param1.keyCode == Keyboard.LEFT);
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                loop16:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      while(_loc4_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         while(!_loc3_)
                                                                                                         {
                                                                                                            §§push(this.§<!t§.x == -1);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(!§§pop());
                                                                                                               break loop24;
                                                                                                            }
                                                                                                         }
                                                                                                         break loop25;
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                      addr421:
                                                                                                   }
                                                                                                   addr404:
                                                                                                   while(!§§pop())
                                                                                                   {
                                                                                                      §§push(param1.keyCode == Keyboard.RIGHT);
                                                                                                      while(!_loc3_)
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(!(_loc4_ || param1))
                                                                                                            {
                                                                                                               continue loop16;
                                                                                                            }
                                                                                                            addr344:
                                                                                                            if(_loc4_ || _loc3_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  continue loop15;
                                                                                                               }
                                                                                                               continue loop25;
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               §§push(§§pop());
                                                                                                            }
                                                                                                            addr459:
                                                                                                         }
                                                                                                         while(!(_loc3_ && param1))
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               break loop13;
                                                                                                            }
                                                                                                            continue loop14;
                                                                                                            §§goto(addr344);
                                                                                                         }
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      §§goto(addr399);
                                                                                                   }
                                                                                                   addr406:
                                                                                                   this.§<!t§.x = -1;
                                                                                                   addr410:
                                                                                                   this.§;!u§.x = 0;
                                                                                                   §§goto(addr385);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       continue loop11;
                                                                                    }
                                                                                    §§goto(addr274);
                                                                                 }
                                                                              }
                                                                           }
                                                                           break loop25;
                                                                        }
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              if(!(_loc4_ || this))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(!(_loc3_ && _loc2_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           addr446:
                                                                           addr446:
                                                                           while(true)
                                                                           {
                                                                              this.§<!t§.y = 1;
                                                                              addr450:
                                                                              while(true)
                                                                              {
                                                                                 this.§;!u§.y = 0;
                                                                              }
                                                                           }
                                                                           addr446:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              break loop25;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr446);
                                                                     }
                                                                     this.§;!u§.y = 0;
                                                                     §§goto(addr477);
                                                                     addr291:
                                                                  }
                                                                  §§goto(addr406);
                                                               }
                                                               §§goto(addr291);
                                                            }
                                                            var _loc2_:* = param1.keyCode;
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               if(Keyboard.SPACE === _loc2_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc3_)
                                                                     {
                                                                        addr692:
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr589:
                                                                     §§push(5);
                                                                     if(_loc3_ && _loc3_)
                                                                     {
                                                                        addr652:
                                                                     }
                                                                  }
                                                               }
                                                               else if(Keyboard.SHIFT === _loc2_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(1);
                                                                     if(_loc3_)
                                                                     {
                                                                        addr617:
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr704:
                                                                     §§push(14);
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr707:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr730:
                                                                     }
                                                                  }
                                                               }
                                                               else if(Keyboard.CONTROL === _loc2_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(2);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§goto(addr617);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr589);
                                                                  }
                                                               }
                                                               else if(Keyboard.UP === _loc2_)
                                                               {
                                                                  if(_loc4_ || _loc2_)
                                                                  {
                                                                     §§push(3);
                                                                     if(_loc3_ && _loc2_)
                                                                     {
                                                                        §§goto(addr652);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr679:
                                                                     §§push(12);
                                                                     if(_loc3_)
                                                                     {
                                                                        §§goto(addr707);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr682:
                                                                     }
                                                                  }
                                                               }
                                                               else if(Keyboard.DOWN === _loc2_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(4);
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr632:
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr689:
                                                                     §§push(13);
                                                                     if(_loc4_)
                                                                     {
                                                                        §§goto(addr692);
                                                                     }
                                                                  }
                                                               }
                                                               else if(Keyboard.LEFT === _loc2_)
                                                               {
                                                                  if(_loc4_ || param1)
                                                                  {
                                                                     §§goto(addr589);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr689);
                                                                  }
                                                               }
                                                               else if(Keyboard.RIGHT === _loc2_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(6);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§goto(addr730);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr659:
                                                                     §§push(11);
                                                                     if(!(_loc4_ || _loc2_))
                                                                     {
                                                                        §§goto(addr692);
                                                                     }
                                                                  }
                                                               }
                                                               else if(Keyboard.DELETE === _loc2_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(7);
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§goto(addr617);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr659);
                                                                  }
                                                               }
                                                               else if(Keyboard.PAGE_UP === _loc2_)
                                                               {
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     §§push(8);
                                                                     if(_loc4_)
                                                                     {
                                                                        §§goto(addr632);
                                                                     }
                                                                     §§goto(addr735);
                                                                  }
                                                                  §§goto(addr659);
                                                                  §§goto(addr692);
                                                               }
                                                               else
                                                               {
                                                                  if(Keyboard.PAGE_DOWN === _loc2_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(9);
                                                                        if(_loc4_)
                                                                        {
                                                                           §§goto(addr735);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr730);
                                                                        }
                                                                     }
                                                                  }
                                                                  else if(Keyboard.C === _loc2_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(10);
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§goto(addr652);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr682);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr704);
                                                                     }
                                                                  }
                                                                  else if(Keyboard.V === _loc2_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§goto(addr659);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr679);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     if(Keyboard.D === _loc2_)
                                                                     {
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           §§goto(addr679);
                                                                        }
                                                                     }
                                                                     else if(Keyboard.J === _loc2_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§goto(addr689);
                                                                        }
                                                                     }
                                                                     else if(Keyboard.E === _loc2_)
                                                                     {
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           §§goto(addr704);
                                                                        }
                                                                     }
                                                                     else if(Keyboard.R !== _loc2_)
                                                                     {
                                                                        addr735:
                                                                        switch(§§pop())
                                                                        {
                                                                           case 0:
                                                                              this.§<2§ = true;
                                                                              break;
                                                                              addr227:
                                                                           case 1:
                                                                              this.§+!W§ = true;
                                                                              break;
                                                                              addr220:
                                                                           case 2:
                                                                              this.§0!J§ = true;
                                                                              break;
                                                                              addr213:
                                                                           case 3:
                                                                              this.§,=§ = Math.min(this.§,=§,-§'!g§);
                                                                              break;
                                                                              addr206:
                                                                           case 4:
                                                                              this.§,=§ = Math.max(this.§,=§,§'!g§);
                                                                              addr187:
                                                                              if(!(_loc3_ && _loc2_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr206);
                                                                              break;
                                                                           case 5:
                                                                              this.§`c§ = Math.min(this.§`c§,-§'!g§);
                                                                              break;
                                                                              addr176:
                                                                           case 6:
                                                                              this.§`c§ = Math.max(this.§`c§,§'!g§);
                                                                              break;
                                                                              addr164:
                                                                           case 7:
                                                                              this.§@!B§();
                                                                              addr146:
                                                                              if(_loc4_ || _loc2_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr227);
                                                                              break;
                                                                           case 8:
                                                                              this.§3!&§(1);
                                                                              addr133:
                                                                              if(_loc4_ || _loc2_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr176);
                                                                              break;
                                                                           case 9:
                                                                              this.§3!&§(-1);
                                                                              addr124:
                                                                              if(!_loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr146);
                                                                              break;
                                                                           case 10:
                                                                              this.§]!P§();
                                                                              addr115:
                                                                              if(_loc4_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr220);
                                                                              break;
                                                                           case 11:
                                                                              this.§`z§();
                                                                              addr107:
                                                                              if(!_loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr133);
                                                                              break;
                                                                           case 12:
                                                                              this.§<S§();
                                                                              addr99:
                                                                              if(!_loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr187);
                                                                              break;
                                                                           case 13:
                                                                              §,"!§.§@!u§(this.§'Y§,this.§6!^§.§8#§.§4+§.objects);
                                                                              addr79:
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 if(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    addr58:
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr115);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr107);
                                                                              }
                                                                           case 14:
                                                                              this.§<!M§(§?q§);
                                                                              if(_loc4_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              break;
                                                                           case 15:
                                                                              §§push(this);
                                                                              §§push(§?q§);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                              }
                                                                              §§pop().§<!M§(§§pop());
                                                                              if(!_loc3_)
                                                                              {
                                                                                 if(_loc4_ || _loc2_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(_loc4_ || param1)
                                                                                       {
                                                                                          if(_loc4_ || _loc2_)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr213);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr164);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr124);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr99);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr79);
                                                                                 }
                                                                                 §§goto(addr58);
                                                                              }
                                                                        }
                                                                        return;
                                                                        §§push(16);
                                                                     }
                                                                     §§goto(addr735);
                                                                  }
                                                                  §§goto(addr735);
                                                                  if(_loc4_ || param1)
                                                                  {
                                                                     §§goto(addr730);
                                                                  }
                                                               }
                                                               §§goto(addr735);
                                                            }
                                                            §§goto(addr689);
                                                            addr221:
                                                         }
                                                         §§goto(addr441);
                                                      }
                                                      §§goto(addr421);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr332);
                                             }
                                             §§goto(addr352);
                                          }
                                          §§goto(addr260);
                                       }
                                       §§goto(addr450);
                                    }
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          §§goto(addr404);
                                       }
                                       §§goto(addr442);
                                    }
                                    while(!§§pop())
                                    {
                                       §§goto(addr459);
                                       §§push(param1.keyCode == Keyboard.DOWN);
                                    }
                                    §§goto(addr487);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr486);
                        }
                     }
                  }
               }
            }
            §§goto(addr221);
         }
         §§goto(addr446);
      }
      
      private function §3!&§(param1:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§=q§ = null;
         var _loc3_:§]"5§ = null;
         for each(_loc2_ in this.§'Y§)
         {
            if(!(_loc7_ && this))
            {
               _loc2_.§0q§(param1);
            }
            _loc3_ = this.§6!^§.§8#§.§4+§.§1!V§.getObjectWithID(_loc2_.uniqueID);
            if(!(_loc7_ && _loc3_))
            {
               (this.§6!^§.§8#§.§4+§.§1!V§ as §^!Q§).§!x§(_loc3_,param1);
            }
         }
      }
      
      private function § y§(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(param1.keyCode == Keyboard.UP);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop5:
                     while(!§§pop())
                     {
                        §§push(param1.keyCode == Keyboard.DOWN);
                        loop6:
                        while(true)
                        {
                           §§push(§§pop());
                           loop7:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop8:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§pop();
                                       loop9:
                                       while(true)
                                       {
                                          §§push(this.§<!t§.y == 1);
                                          while(!_loc3_)
                                          {
                                             if(_loc3_ && _loc2_)
                                             {
                                                continue loop0;
                                             }
                                             loop14:
                                             while(!(_loc3_ && _loc3_))
                                             {
                                                §§pop();
                                                loop15:
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      this.§<!t§.y = 0;
                                                   }
                                                   addr317:
                                                   §§push(this.§<!t§.x == -1);
                                                   loop16:
                                                   while(true)
                                                   {
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      addr273:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               if(_loc4_ || _loc2_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  addr240:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        §§push(param1.keyCode == Keyboard.RIGHT);
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              loop20:
                                                                              while(_loc4_)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr216:
                                                                                    §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr242:
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             break loop13;
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§push(this.§<!t§.x == 1);
                                                                                       if(!(_loc4_ || _loc2_))
                                                                                       {
                                                                                          continue loop20;
                                                                                       }
                                                                                       §§goto(addr216);
                                                                                    }
                                                                                    continue loop15;
                                                                                    addr217:
                                                                                 }
                                                                                 continue loop14;
                                                                              }
                                                                              continue loop16;
                                                                              addr212:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(_loc3_ && this)
                                                                                       {
                                                                                          addr250:
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                break;
                                                                                                addr254:
                                                                                             }
                                                                                             break loop8;
                                                                                          }
                                                                                          break loop15;
                                                                                       }
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          continue loop9;
                                                                                       }
                                                                                       this.§<!t§.x = 0;
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr217);
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              break;
                                                                              §§goto(addr219);
                                                                           }
                                                                           var _loc2_:* = param1.keyCode;
                                                                           if(_loc4_ || this)
                                                                           {
                                                                              if(Keyboard.SPACE === _loc2_)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(!(_loc4_ || _loc3_))
                                                                                    {
                                                                                       addr516:
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr432:
                                                                                    §§push(3);
                                                                                    if(!(_loc4_ || this))
                                                                                    {
                                                                                       addr466:
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 if(Keyboard.SHIFT === _loc2_)
                                                                                 {
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       §§push(1);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§goto(addr521);
                                                                                       }
                                                                                       addr428:
                                                                                       if(§§pop() === _loc2_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §§goto(addr432);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr458);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(40);
                                                                                          if(!(_loc3_ && this))
                                                                                          {
                                                                                             addr449:
                                                                                             if(§§pop() === _loc2_)
                                                                                             {
                                                                                                if(!(_loc3_ && this))
                                                                                                {
                                                                                                   addr458:
                                                                                                   §§push(4);
                                                                                                   if(!(_loc4_ || this))
                                                                                                   {
                                                                                                      addr487:
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr479:
                                                                                                   §§push(5);
                                                                                                   if(!(_loc3_ && this))
                                                                                                   {
                                                                                                      §§goto(addr487);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(37);
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr470:
                                                                                                   if(§§pop() === _loc2_)
                                                                                                   {
                                                                                                      if(_loc4_ || param1)
                                                                                                      {
                                                                                                         §§goto(addr479);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr498:
                                                                                                         §§push(6);
                                                                                                         if(_loc4_ || this)
                                                                                                         {
                                                                                                            §§goto(addr516);
                                                                                                         }
                                                                                                         §§goto(addr521);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(39);
                                                                                                      if(_loc3_ && _loc2_)
                                                                                                      {
                                                                                                      }
                                                                                                      §§goto(addr516);
                                                                                                   }
                                                                                                   §§goto(addr516);
                                                                                                }
                                                                                                addr496:
                                                                                                if(§§pop() === _loc2_)
                                                                                                {
                                                                                                   §§goto(addr498);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr521:
                                                                                                   switch(§§pop())
                                                                                                   {
                                                                                                      case 0:
                                                                                                         this.§<2§ = false;
                                                                                                         break;
                                                                                                         addr164:
                                                                                                      case 1:
                                                                                                         this.§+!W§ = false;
                                                                                                         break;
                                                                                                         addr157:
                                                                                                      case 2:
                                                                                                         this.§0!J§ = false;
                                                                                                         break;
                                                                                                         addr150:
                                                                                                      case 3:
                                                                                                         this.§,=§ = Math.max(0,this.§,=§);
                                                                                                         dispatchEvent(new Event(Event.COMPLETE));
                                                                                                         addr132:
                                                                                                         break;
                                                                                                         addr132:
                                                                                                         addr143:
                                                                                                      case 4:
                                                                                                         this.§,=§ = Math.min(0,this.§,=§);
                                                                                                         if(_loc4_ || this)
                                                                                                         {
                                                                                                            dispatchEvent(new Event(Event.COMPLETE));
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         break;
                                                                                                      case 5:
                                                                                                         this.§`c§ = Math.max(0,this.§`c§);
                                                                                                         addr90:
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  dispatchEvent(new Event(Event.COMPLETE));
                                                                                                                  addr72:
                                                                                                                  if(_loc4_ || param1)
                                                                                                                  {
                                                                                                                     addr43:
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr150);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr164);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr157);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr132);
                                                                                                         }
                                                                                                         break;
                                                                                                      case 6:
                                                                                                         this.§`c§ = Math.min(0,this.§`c§);
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            if(_loc4_ || param1)
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  dispatchEvent(new Event(Event.COMPLETE));
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     if(_loc4_ || _loc2_)
                                                                                                                     {
                                                                                                                        if(true)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr72);
                                                                                                                     }
                                                                                                                     §§goto(addr43);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr143);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr90);
                                                                                                            }
                                                                                                         }
                                                                                                   }
                                                                                                   return;
                                                                                                   §§push(7);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr521);
                                                                                          }
                                                                                          §§goto(addr516);
                                                                                       }
                                                                                       §§goto(addr521);
                                                                                       §§goto(addr521);
                                                                                    }
                                                                                    §§goto(addr432);
                                                                                 }
                                                                                 else if(Keyboard.CONTROL === _loc2_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr421:
                                                                                       §§push(2);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§goto(addr521);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr470);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr458);
                                                                                    }
                                                                                    §§goto(addr487);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(38);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§goto(addr428);
                                                                                    }
                                                                                    §§goto(addr449);
                                                                                 }
                                                                                 §§goto(addr449);
                                                                              }
                                                                              §§goto(addr521);
                                                                           }
                                                                           §§goto(addr421);
                                                                        }
                                                                        §§goto(addr212);
                                                                     }
                                                                     §§goto(addr242);
                                                                  }
                                                                  continue;
                                                               }
                                                               continue loop1;
                                                            }
                                                            continue loop7;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            break loop5;
                                                         }
                                                         this.§<!t§.x = 0;
                                                         §§goto(addr250);
                                                         continue loop16;
                                                      }
                                                   }
                                                   continue loop6;
                                                }
                                                if(_loc3_ && _loc3_)
                                                {
                                                   addr362:
                                                }
                                                §§goto(addr158);
                                             }
                                          }
                                          continue loop8;
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          break loop8;
                                       }
                                       addr370:
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(this.§<!t§.y == -1);
                                    continue loop0;
                                 }
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    §§goto(addr273);
                                    §§push(param1.keyCode == Keyboard.LEFT);
                                 }
                                 §§goto(addr317);
                              }
                           }
                        }
                     }
                     this.§<!t§.y = 0;
                     §§goto(addr362);
                     addr356:
                  }
                  §§goto(addr370);
               }
            }
         }
         §§goto(addr254);
      }
      
      private function §9!n§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@!B§();
         }
      }
      
      private function §<S§(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§]!P§();
            do
            {
               this.§`z§();
            }
            while(!_loc3_);
            
         }
      }
      
      public function get §;o§() : Point
      {
         return this.§6!^§.§?!W§.§;o§;
      }
      
      public function update(param1:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Point = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!_loc10_)
         {
            this.§75§(false);
         }
         var _loc2_:Point = this.§6!^§.§8#§.§4+§.screenToBox2D(this.§6!^§.§?!W§.§;o§.x,this.§6!^§.§?!W§.§;o§.y);
         if(!(_loc10_ && _loc3_))
         {
            this.§#!Y§.x = _loc2_.x;
            if(_loc9_)
            {
               this.§#!Y§.y = _loc2_.y;
            }
         }
         var _loc3_:* = int(this.§'Y§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc10_ && this))
            {
               if(§§pop() < 0)
               {
                  loop1:
                  while(true)
                  {
                     if(this.§<!t§.length > 0)
                     {
                        loop2:
                        while(true)
                        {
                           if(!_loc10_)
                           {
                              §§push(0.001);
                              loop3:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                    if(!_loc10_)
                                    {
                                       §§push(0.5);
                                       if(_loc9_ || _loc2_)
                                       {
                                          if(_loc10_)
                                          {
                                             continue;
                                          }
                                          §§push(Number(§§pop()));
                                       }
                                       if(_loc10_)
                                       {
                                          continue loop3;
                                       }
                                       _loc5_ = §§pop();
                                       if(_loc9_)
                                       {
                                          if(!(_loc10_ && this))
                                          {
                                             continue loop1;
                                          }
                                          continue loop2;
                                       }
                                       addr295:
                                       this.§;!u§.y = 0;
                                    }
                                 }
                              }
                           }
                           else
                           {
                              addr139:
                              §§push(_loc3_);
                              if(!(_loc10_ && this))
                              {
                                 addr149:
                                 _loc3_ = §§pop() - 1;
                                 break;
                              }
                              §§goto(addr149);
                              addr169:
                           }
                        }
                        addr150:
                        continue loop0;
                     }
                     addr299:
                     this.§;!u§.x = 0;
                     if(!_loc10_)
                     {
                        §§goto(addr295);
                     }
                     §§push(Math.abs(this.§`c§) > 0);
                     if(_loc9_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc10_ && this))
                           {
                              §§pop();
                              if(!_loc10_)
                              {
                                 addr421:
                                 if(Math.abs(this.§,=§) > 0)
                                 {
                                    addr422:
                                    if(Math.abs(this.§`c§) < §1!c§)
                                    {
                                       addr428:
                                       §§push(this);
                                       §§push(this.§`c§);
                                       if(_loc9_ || this)
                                       {
                                          §§push(§§pop() * Math.pow(§7"7§,param1));
                                       }
                                       §§pop().§`c§ = §§pop();
                                       addr454:
                                    }
                                    if(Math.abs(this.§,=§) < §1!c§)
                                    {
                                       if(_loc9_)
                                       {
                                          addr396:
                                          §§push(this);
                                          §§push(this.§,=§);
                                          if(!_loc10_)
                                          {
                                             §§push(§§pop() * Math.pow(§7"7§,param1));
                                          }
                                          §§pop().§,=§ = §§pop();
                                       }
                                       addr407:
                                       if(_loc10_ && param1)
                                       {
                                       }
                                       §§goto(addr422);
                                    }
                                    §§push(this);
                                    §§push(this.§`c§);
                                    if(_loc9_)
                                    {
                                       §§push(param1);
                                       if(!(_loc10_ && this))
                                       {
                                          addr377:
                                          §§push(§§pop() * §§pop());
                                          §§push(this.§,=§);
                                          if(!_loc10_)
                                          {
                                             §§push(§§pop() * param1);
                                          }
                                       }
                                       §§pop().§[R§(§§pop(),§§pop());
                                       addr384:
                                       if(_loc9_)
                                       {
                                          addr334:
                                          §§push(this.§-"+§);
                                          if(!(_loc10_ && this))
                                          {
                                             addr344:
                                             if(§§pop())
                                             {
                                                if(!(_loc10_ && param1))
                                                {
                                                   if(_loc9_ || _loc3_)
                                                   {
                                                      this.§77§();
                                                      addr324:
                                                      this.§3D§();
                                                      addr361:
                                                      if(_loc9_)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               §§goto(addr407);
                                                            }
                                                            return;
                                                            addr333:
                                                         }
                                                         §§goto(addr384);
                                                      }
                                                      addr361:
                                                      §§goto(addr361);
                                                   }
                                                   §§goto(addr454);
                                                }
                                                §§goto(addr361);
                                             }
                                             §§goto(addr324);
                                          }
                                          §§goto(addr421);
                                       }
                                       §§goto(addr428);
                                    }
                                    §§goto(addr377);
                                 }
                                 §§goto(addr334);
                              }
                              §§goto(addr422);
                           }
                           §§goto(addr344);
                        }
                     }
                     §§goto(addr421);
                  }
               }
               else if(!§,!1§.§2=§.§>L§(this.§'Y§[_loc3_]))
               {
                  if(!_loc10_)
                  {
                     this.§&-§(this.§'Y§[_loc3_]);
                     §§goto(addr169);
                  }
                  else
                  {
                     §§goto(addr299);
                  }
               }
               §§goto(addr139);
            }
            §§goto(addr149);
         }
      }
      
      public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§0!J§ = false;
            while(true)
            {
               this.§+!W§ = false;
               loop2:
               while(!(_loc1_ && _loc1_))
               {
                  this.§6!^§.§+"2§.§9B§().§'!Q§().§?-§();
                  if(_loc2_ || _loc2_)
                  {
                     addr48:
                     if(!(_loc2_ || this))
                     {
                        while(true)
                        {
                           this.§<2§ = false;
                           continue loop2;
                           §§goto(addr48);
                        }
                        addr82:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      public function §?!r§(param1:Class) : void
      {
      }
      
      public function get §=!u§() : Point
      {
         return this.§#!Y§;
      }
      
      public function §&!B§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§8"%§ == null);
         if(!(_loc1_ && _loc1_))
         {
            return !§§pop();
         }
      }
      
      public function §""9§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§2!z§ == null);
         if(!(_loc1_ && _loc2_))
         {
            return !§§pop();
         }
      }
      
      public function §3S§() : Boolean
      {
         return false;
      }
      
      public function §#%§() : Boolean
      {
         return this.§-"+§;
      }
      
      public function §@!B§(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:§=q§ = null;
         if(!_loc6_)
         {
            if(this.§#_§().length > 0)
            {
               if(_loc7_)
               {
                  §§push(param1);
                  if(!_loc6_)
                  {
                     §§push(!§§pop());
                  }
                  _loc2_ = §§pop();
                  addr36:
                  loop0:
                  for each(_loc3_ in this.§#_§())
                  {
                     if(!_loc6_)
                     {
                        §§push(_loc2_);
                        loop1:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §§push(true);
                                 addr163:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    addr164:
                                    while(true)
                                    {
                                       §§push(this.§6!^§);
                                       addr157:
                                       while(true)
                                       {
                                          §§pop().§4p§.§5R§();
                                          addr159:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                 }
                              }
                              addr162:
                           }
                           loop6:
                           while(true)
                           {
                              §§push(_loc3_.getObject() is §]"5§);
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    if(!§§pop())
                                    {
                                       §§push(_loc3_.getObject() is §>n§);
                                       if(!(_loc7_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       if(!(_loc6_ && param1))
                                       {
                                          if(!§§pop())
                                          {
                                             continue loop0;
                                          }
                                          if(_loc7_)
                                          {
                                             if(_loc7_)
                                             {
                                                if(_loc7_)
                                                {
                                                   §§push(this.§6!^§);
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      §§push(§§pop().§8#§);
                                                      if(!(_loc6_ && this))
                                                      {
                                                         §§pop().§5,§(_loc3_.getObject() as §>n§);
                                                         addr112:
                                                         if(!(_loc7_ || _loc2_))
                                                         {
                                                            break;
                                                         }
                                                         if(false)
                                                         {
                                                            continue loop6;
                                                         }
                                                         continue loop0;
                                                      }
                                                      addr148:
                                                      §§pop().removeObject(_loc3_.getObject() as §]"5§);
                                                      continue loop0;
                                                      addr153:
                                                   }
                                                   addr145:
                                                   if(!_loc6_)
                                                   {
                                                      break loop6;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr162);
                                                }
                                                §§goto(addr157);
                                             }
                                             §§goto(addr153);
                                          }
                                          §§goto(addr112);
                                       }
                                       §§goto(addr163);
                                    }
                                    break;
                                 }
                                 continue loop1;
                              }
                              if(!(_loc6_ && param1))
                              {
                                 if(_loc7_ || param1)
                                 {
                                    §§goto(addr145);
                                    §§push(this.§6!^§);
                                 }
                                 else
                                 {
                                    §§goto(addr164);
                                 }
                                 §§goto(addr157);
                              }
                           }
                           §§goto(addr148);
                        }
                     }
                     §§goto(addr159);
                  }
                  if(_loc7_ || _loc3_)
                  {
                     this.§%1§();
                  }
               }
               §§goto(addr36);
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function §@!^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§%1§();
         }
      }
      
      public function §>"5§(param1:String) : Boolean
      {
         return false;
      }
      
      public function §75§(param1:Boolean = true) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:Point = null;
         var _loc7_:§=q§ = null;
         var _loc8_:* = false;
         var _loc2_:§`!T§ = this.§6!^§.§+"2§.§?E§.getItemByName("ContextMenu") as §`!T§;
         if(_loc11_)
         {
            §§push(this.§?"4§());
            if(_loc11_)
            {
               §§push(0);
               if(_loc11_ || this)
               {
                  §§push(§§pop() == §§pop());
                  loop0:
                  while(true)
                  {
                     §§push(§§pop());
                     loop1:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              §§pop();
                              if(_loc11_ || _loc2_)
                              {
                                 §§push(this.§+!W§);
                                 loop3:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    addr220:
                                    while(true)
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          while(!_loc12_)
                                          {
                                             if(!§§pop())
                                             {
                                                loop7:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(this.§0!J§);
                                                      addr210:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         addr96:
                                                         if(!(_loc11_ || _loc2_))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                         while(true)
                                                         {
                                                            loop32:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(!_loc2_.§-j§)
                                                                  {
                                                                     if(_loc11_)
                                                                     {
                                                                        if(!_loc12_)
                                                                        {
                                                                           _loc2_.setVisibility(true);
                                                                           if(!(_loc12_ && _loc2_))
                                                                           {
                                                                              addr57:
                                                                              if(!(_loc12_ && param1))
                                                                              {
                                                                                 addr64:
                                                                                 if(!(_loc12_ && _loc2_))
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       addr106:
                                                                                       loop29:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§""9§());
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             continue loop32;
                                                                                          }
                                                                                          if(_loc11_ || this)
                                                                                          {
                                                                                             addr85:
                                                                                             if(!(_loc12_ && param1))
                                                                                             {
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  loop19:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc12_)
                                                                                                                     {
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                     §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§#%§());
                                                                                                                        if(!_loc12_)
                                                                                                                        {
                                                                                                                           addr172:
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           while(!_loc12_)
                                                                                                                           {
                                                                                                                              if(!_loc11_)
                                                                                                                              {
                                                                                                                                 continue loop3;
                                                                                                                              }
                                                                                                                              if(!_loc12_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                    loop23:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       loop24:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          loop25:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§&!B§());
                                                                                                                                             addr132:
                                                                                                                                             addr37:
                                                                                                                                             addr291:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                if(!_loc12_)
                                                                                                                                                {
                                                                                                                                                   continue loop23;
                                                                                                                                                }
                                                                                                                                                addr151:
                                                                                                                                                addr151:
                                                                                                                                                loop27:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc12_)
                                                                                                                                                   {
                                                                                                                                                      continue loop24;
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc12_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      while(!_loc12_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc11_)
                                                                                                                                                         {
                                                                                                                                                            break loop27;
                                                                                                                                                         }
                                                                                                                                                         continue loop29;
                                                                                                                                                         §§goto(addr64);
                                                                                                                                                      }
                                                                                                                                                      continue loop25;
                                                                                                                                                      addr161:
                                                                                                                                                   }
                                                                                                                                                   addr214:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      break loop27;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§<2§);
                                                                                                                                                   continue loop3;
                                                                                                                                                }
                                                                                                                                                §§goto(addr85);
                                                                                                                                             }
                                                                                                                                             §§goto(addr128);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr178:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 addr212:
                                                                                                                              }
                                                                                                                              §§goto(addr213);
                                                                                                                           }
                                                                                                                           continue loop19;
                                                                                                                           addr172:
                                                                                                                        }
                                                                                                                        §§goto(addr172);
                                                                                                                        §§goto(addr116);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr178);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop8;
                                                                                                      addr194:
                                                                                                   }
                                                                                                   §§goto(addr96);
                                                                                                }
                                                                                                §§goto(addr172);
                                                                                             }
                                                                                             §§goto(addr132);
                                                                                          }
                                                                                          §§goto(addr151);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc2_.§-j§)
                                                                                          {
                                                                                             if(_loc11_ || _loc2_)
                                                                                             {
                                                                                                addr116:
                                                                                                if(!(_loc12_ && param1))
                                                                                                {
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      break loop16;
                                                                                                   }
                                                                                                   _loc2_.setVisibility(false);
                                                                                                   addr128:
                                                                                                   if(this.§?"4§() > 0)
                                                                                                   {
                                                                                                      break loop2;
                                                                                                   }
                                                                                                   var _loc3_:§="#§ = this.§6!^§.§+"2§.§?E§.getItemByName("Rotate") as §="#§;
                                                                                                   var _loc4_:§="#§ = this.§6!^§.§+"2§.§?E§.getItemByName("Duplicate") as §="#§;
                                                                                                   var _loc5_:§="#§ = this.§6!^§.§+"2§.§?E§.getItemByName("Delete") as §="#§;
                                                                                                }
                                                                                                continue loop20;
                                                                                                if(_loc11_ || _loc2_)
                                                                                                {
                                                                                                   _loc3_.setVisibility(false);
                                                                                                   loop33:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc4_.setVisibility(false);
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            _loc5_.setVisibility(false);
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§goto(addr362);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop33;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr362:
                                                                                                §§push(this.§?"4§());
                                                                                                if(_loc11_ || _loc3_)
                                                                                                {
                                                                                                   if(§§pop() > 0)
                                                                                                   {
                                                                                                      break loop34;
                                                                                                   }
                                                                                                   §§goto(addr537);
                                                                                                }
                                                                                                loop35:
                                                                                                for each(_loc7_ in this.§#_§())
                                                                                                {
                                                                                                   §§push(_loc7_.§ j§());
                                                                                                   if(!(_loc12_ && param1))
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc11_ || param1)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         addr426:
                                                                                                         §§push((AngryBirdsFP11.§>" § as §'"#§).§?Z§(_loc7_.getName()));
                                                                                                         if(_loc11_ || _loc3_)
                                                                                                         {
                                                                                                            addr530:
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                         }
                                                                                                         addr426:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(§,!1§.§2=§.§>L§(_loc7_));
                                                                                                         if(!(_loc12_ && _loc3_))
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(!(_loc12_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(_loc3_);
                                                                                                               §§push(_loc7_.§9!^§());
                                                                                                               if(!(_loc12_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(!§§pop());
                                                                                                               }
                                                                                                               §§pop().setVisibility(§§pop());
                                                                                                               if(!_loc12_)
                                                                                                               {
                                                                                                                  §§goto(addr426);
                                                                                                               }
                                                                                                               loop36:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  loop37:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc4_);
                                                                                                                     if(_loc11_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§push(§,!1§.§2=§.§[!e§(_loc7_.getName()));
                                                                                                                        if(!(_loc12_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           if(!(_loc12_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              if(_loc11_)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(!(_loc12_ && param1))
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       if(_loc11_)
                                                                                                                                       {
                                                                                                                                          addr481:
                                                                                                                                          §§push(_loc7_.§8!w§());
                                                                                                                                          if(!_loc12_)
                                                                                                                                          {
                                                                                                                                             §§push(!§§pop());
                                                                                                                                             if(!_loc12_)
                                                                                                                                             {
                                                                                                                                                addr488:
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc11_)
                                                                                                                                                   {
                                                                                                                                                      addr492:
                                                                                                                                                      §§pop();
                                                                                                                                                      addr493:
                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                      if(_loc11_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§pop().setVisibility(§§pop());
                                                                                                                                             while(_loc11_)
                                                                                                                                             {
                                                                                                                                                _loc5_.setVisibility(§,!1§.§2=§.§,h§(_loc7_));
                                                                                                                                                if(!_loc12_)
                                                                                                                                                {
                                                                                                                                                   if(true)
                                                                                                                                                   {
                                                                                                                                                      break loop37;
                                                                                                                                                   }
                                                                                                                                                   continue loop37;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop36;
                                                                                                                                          }
                                                                                                                                          §§goto(addr488);
                                                                                                                                       }
                                                                                                                                       §§goto(addr493);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr488);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr492);
                                                                                                                     }
                                                                                                                     §§goto(addr481);
                                                                                                                  }
                                                                                                                  continue loop35;
                                                                                                               }
                                                                                                               addr532:
                                                                                                            }
                                                                                                            §§goto(addr426);
                                                                                                         }
                                                                                                      }
                                                                                                      _loc8_ = §§pop();
                                                                                                      §§goto(addr532);
                                                                                                   }
                                                                                                   §§goto(addr530);
                                                                                                }
                                                                                                addr537:
                                                                                                return;
                                                                                             }
                                                                                             break loop2;
                                                                                          }
                                                                                          §§goto(addr37);
                                                                                       }
                                                                                       addr106:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr37);
                                                                                    }
                                                                                    §§goto(addr37);
                                                                                 }
                                                                                 §§goto(addr161);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr37);
                                                                              }
                                                                           }
                                                                           break loop2;
                                                                        }
                                                                        §§goto(addr106);
                                                                        §§goto(addr37);
                                                                     }
                                                                     §§goto(addr57);
                                                                  }
                                                                  §§goto(addr37);
                                                               }
                                                               §§goto(addr106);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr212);
                                                §§goto(addr210);
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                              break;
                           }
                           _loc6_ = this.§]C§();
                           if(_loc11_ || this)
                           {
                              _loc2_.x = _loc6_.x;
                              if(_loc11_ || _loc2_)
                              {
                                 _loc2_.y = _loc6_.y;
                              }
                           }
                           §§goto(addr291);
                        }
                        §§goto(addr220);
                     }
                  }
               }
            }
            §§goto(addr37);
         }
         §§goto(addr106);
      }
      
      public function §@!z§(param1:§=q§, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(§,!1§.§2=§.§>L§(param1));
            loop0:
            for(; §§pop(); loop2:
            while(_loc4_ || this)
            {
               if(!§§pop())
               {
                  if(_loc4_ || param1)
                  {
                     this.§%1§();
                  }
                  while(true)
                  {
                  }
                  addr127:
               }
               while(true)
               {
                  if(this.§'Y§.indexOf(param1) <= -1)
                  {
                     loop5:
                     while(true)
                     {
                        §§push(param1.isGround());
                        if(!(_loc4_ || param1))
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           if(!(_loc3_ && param2))
                           {
                              return;
                           }
                           while(_loc4_)
                           {
                              while(true)
                              {
                              }
                           }
                           §§goto(addr98);
                           addr77:
                        }
                        while(true)
                        {
                           param1.§&!c§(true);
                           for(; !_loc3_; this.§'Y§.push(param1),if(!_loc3_)
                           {
                              return;
                           })
                           {
                              if(_loc3_)
                              {
                                 continue loop5;
                              }
                              if(!_loc3_)
                              {
                                 continue;
                              }
                           }
                           §§goto(addr77);
                        }
                     }
                     continue loop2;
                  }
                  if(_loc4_)
                  {
                     break;
                  }
                  §§goto(addr127);
               }
               if(_loc4_ || _loc3_)
               {
                  return;
               }
               break loop0;
            })
            {
               while(true)
               {
                  §§push(param2);
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr79);
      }
      
      public function §&-§(param1:§=q§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§'Y§.indexOf(param1) > -1)
            {
               loop0:
               while(true)
               {
                  this.§'Y§.splice(this.§'Y§.indexOf(param1),1);
                  addr71:
                  while(true)
                  {
                     param1.§&!c§(false);
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr24);
               }
            }
            addr24:
            return;
         }
         §§goto(addr71);
      }
      
      public function §%1§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§=q§ = null;
         if(!_loc5_)
         {
            this.§2!z§ = null;
         }
         var _loc2_:int = 0;
         for each(_loc1_ in this.§'Y§)
         {
            if(!_loc5_)
            {
               _loc1_.§&!c§(false);
            }
         }
         if(_loc4_ || _loc2_)
         {
            if(this.§'Y§.length > 0)
            {
               if(_loc4_)
               {
                  this.§6!^§.§8#§.§ f§();
               }
               while(true)
               {
                  §§goto(addr68);
               }
            }
            addr68:
            §§goto(addr82);
         }
         addr82:
         while(true)
         {
            this.§'Y§ = new Vector.<§=q§>();
            if(!(_loc5_ && _loc2_))
            {
               break;
            }
            continue loop1;
         }
      }
      
      public function §?"4§() : int
      {
         return this.§'Y§.length;
      }
      
      public function §]C§() : Point
      {
         var _loc1_:b2Vec2 = this.§4'§();
         return this.§6!^§.§8#§.§!!3§(_loc1_.x,_loc1_.y);
      }
      
      public function §4'§() : b2Vec2
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc1_:b2Vec2 = new b2Vec2();
         if(_loc4_ || _loc3_)
         {
            if(this.§'Y§.length > 0)
            {
               if(!(_loc3_ && _loc3_))
               {
                  _loc2_ = this.§-#§(this.§'Y§);
                  if(_loc4_)
                  {
                     _loc1_.x = _loc2_.x + _loc2_.width / 2;
                     if(_loc4_)
                     {
                        addr72:
                        _loc1_.y = _loc2_.y + _loc2_.height / 2;
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr72);
               }
            }
            else
            {
               _loc1_.x = 0;
               if(_loc4_)
               {
                  _loc1_.y = 0;
               }
            }
         }
         addr100:
         return _loc1_;
      }
      
      public function §#_§() : Vector.<§=q§>
      {
         return this.§'Y§;
      }
      
      protected function §-#§(param1:Vector.<§=q§>, param2:Number = 0) : Rectangle
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc8_:b2Vec2 = null;
         var _loc3_:* = Number(Number.MAX_VALUE);
         var _loc4_:Number = Number.MAX_VALUE;
         §§push(-Number.MAX_VALUE);
         if(_loc9_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(-Number.MAX_VALUE);
         if(!_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:int = 0;
         while(_loc7_ < param1.length)
         {
            _loc8_ = param1[_loc7_].getCenter();
            if(!(_loc10_ && param2))
            {
               §§push(Number(Math.min(_loc3_,_loc8_.x)));
               loop1:
               while(true)
               {
                  _loc3_ = §§pop();
                  addr151:
                  while(true)
                  {
                     §§push(Number(Math.max(_loc5_,_loc8_.x)));
                     continue loop1;
                  }
               }
            }
            §§goto(addr80);
         }
         return new Rectangle(_loc3_ - param2,_loc4_ - param2,_loc5_ - _loc3_ + param2,_loc6_ - _loc4_ + param2);
      }
      
      protected function §%!N§(param1:§=q§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:Rectangle = this.§6!^§.§>k§.camera.§!!u§();
         if(!(_loc8_ && this))
         {
            _loc2_.y = §[]§;
            if(_loc7_)
            {
               _loc2_.height += §2"-§.§^"#§;
            }
         }
         var _loc3_:Rectangle = param1.§]!&§();
         if(!(_loc8_ && param1))
         {
            _loc2_.right -= _loc3_.right;
            while(true)
            {
               _loc2_.bottom -= _loc3_.top;
               loop1:
               while(true)
               {
                  _loc2_.left -= _loc3_.left;
                  loop2:
                  while(true)
                  {
                     _loc2_.top -= _loc3_.bottom;
                     loop3:
                     while(true)
                     {
                        §§push(param1.isTexture());
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              continue loop3;
                           }
                           loop7:
                           while(true)
                           {
                              §§push(param1.§]F§());
                              loop8:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       if(_loc7_ || _loc3_)
                                       {
                                          _loc2_.left = 10;
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                    while(true)
                                    {
                                       continue loop7;
                                       addr70:
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          if(false)
                                          {
                                             loop20:
                                             while(true)
                                             {
                                                _loc2_.left = 0;
                                                loop21:
                                                while(true)
                                                {
                                                   if(!(_loc8_ && _loc2_))
                                                   {
                                                      addr90:
                                                      if(_loc8_ && _loc3_)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc8_ && this)
                                                      {
                                                         continue loop2;
                                                      }
                                                      _loc2_.y += 0.5;
                                                      if(!_loc7_)
                                                      {
                                                         continue;
                                                      }
                                                      addr63:
                                                      if(_loc7_ || this)
                                                      {
                                                         §§goto(addr70);
                                                      }
                                                      else
                                                      {
                                                         addr123:
                                                         while(_loc7_ || _loc3_)
                                                         {
                                                            while(true)
                                                            {
                                                               _loc2_.right = 0;
                                                            }
                                                            §§goto(addr63);
                                                         }
                                                         while(!_loc8_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(param1.§ j§());
                                                               if(_loc7_ || _loc2_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               continue loop8;
                                                            }
                                                            continue loop4;
                                                            §§goto(addr123);
                                                         }
                                                         addr123:
                                                         while(true)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               _loc2_.y += 0.1;
                                                               break loop21;
                                                            }
                                                            §§goto(addr182);
                                                         }
                                                         addr162:
                                                         addr138:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop20;
                                                   }
                                                }
                                                continue loop1;
                                             }
                                          }
                                          addr256:
                                          var _loc4_:b2Vec2 = param1.§9!l§();
                                          var _loc5_:Number = Math.max(_loc2_.x,Math.min(_loc2_.x + _loc2_.width,_loc4_.x));
                                          var _loc6_:Number = Math.min(_loc2_.y,Math.max(_loc2_.height + _loc2_.y,_loc4_.y));
                                          if(_loc7_)
                                          {
                                             param1.setPosition(new b2Vec2(_loc5_,_loc6_));
                                          }
                                          return;
                                       }
                                    }
                                    addr182:
                                    addr220:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(param1.§9!^§());
                                       continue loop8;
                                    }
                                    addr141:
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr130);
      }
      
      private function §%O§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§=q§ = null;
         if(!(_loc5_ && _loc3_))
         {
            this.§-"+§ = true;
            loop0:
            while(true)
            {
               addr54:
               while(true)
               {
                  this.§,H§ = this.§=!u§.x;
                  continue loop0;
               }
            }
            addr64:
         }
         while(true)
         {
            this.§<u§ = this.§=!u§.y;
            if(_loc5_)
            {
               continue;
            }
            if(!(_loc5_ && _loc3_))
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr64);
            }
            §§goto(addr54);
         }
         for each(_loc1_ in this.§'Y§)
         {
            if(!_loc5_)
            {
               this.§38§(_loc1_);
            }
         }
      }
      
      private function §-!'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§=!m§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop5:
                  while(true)
                  {
                     if(this.§-"+§)
                     {
                        while(true)
                        {
                           §5!U§.playSound("Sound_PlaceBlock");
                           addr96:
                           while(true)
                           {
                           }
                        }
                        addr93:
                     }
                     loop8:
                     while(true)
                     {
                        this.§2!W§ = null;
                        loop9:
                        for(; !_loc2_; if(!(_loc1_ || _loc1_))
                        {
                           continue;
                        },if(_loc1_)
                        {
                           if(_loc1_)
                           {
                              §§goto(addr72);
                           }
                           while(true)
                           {
                              this.§6!^§.§+"2§.§^!+§(null);
                              continue loop0;
                           }
                           addr127:
                        },§§goto(addr93))
                        {
                           if(!_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 continue loop0;
                              }
                              this.§=!m§ = null;
                              loop10:
                              while(true)
                              {
                                 this.§-"+§ = false;
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop9;
                                    }
                                    continue loop10;
                                    addr72:
                                    dispatchEvent(new Event(Event.COMPLETE));
                                    if(_loc1_)
                                    {
                                       if(_loc1_ || _loc2_)
                                       {
                                          return;
                                          addr44:
                                       }
                                       break;
                                    }
                                 }
                                 continue loop8;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§=!m§ = null;
                                 break loop9;
                              }
                              addr113:
                           }
                        }
                        continue loop5;
                     }
                  }
               }
               §§goto(addr127);
            }
         }
         §§goto(addr44);
      }
      
      private function §8!#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§8"%§ = new Point();
            do
            {
               this.§8"%§.x = this.§=!u§.x;
               do
               {
                  this.§8"%§.y = this.§=!u§.y;
               }
               while(!_loc1_);
               
            }
            while(!_loc1_);
            
         }
      }
      
      private function §"t§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§8"%§ = null;
         }
         do
         {
            this.§3D§();
         }
         while(_loc1_);
         
      }
      
      public function §<!M§(param1:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:§=q§ = null;
         var _loc6_:* = NaN;
         var _loc2_:int = 0;
         var _loc3_:b2Vec2 = this.§4'§();
         var _loc4_:Point = new Point(_loc3_.x,_loc3_.y);
         for each(_loc5_ in this.§'Y§)
         {
            _loc5_.§;"+§(param1,_loc4_);
            if(!_loc10_)
            {
               §§push(_loc5_.§+!1§());
               if(!_loc10_)
               {
                  §§push(Number(§§pop()));
               }
               _loc6_ = §§pop();
               if(!(_loc10_ && _loc2_))
               {
                  this.§%!N§(_loc5_);
               }
            }
         }
      }
      
      public function §<r§(param1:§!$§) : Object
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = null;
         if(_loc4_)
         {
            if(§,!1§.§2=§.§>L§())
            {
               loop0:
               while(true)
               {
                  §§push(this.§=!m§);
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           §§push(this.§=!m§);
                           if(_loc4_)
                           {
                              §§pop().§9!%§();
                              while(!(_loc5_ && _loc3_))
                              {
                                 this.§@!B§();
                                 while(_loc4_)
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       continue loop1;
                                    }
                                 }
                                 continue loop0;
                                 while(_loc4_ || _loc2_)
                                 {
                                    dispatchEvent(new Event(Event.CHANGE));
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr31);
                                 }
                              }
                              §§goto(addr88);
                           }
                           break;
                        }
                        addr93:
                        §§push(§§pop().getItemName());
                        if(_loc4_ || this)
                        {
                           §§push(§§pop());
                        }
                        var _loc2_:* = §§pop();
                        if(!(_loc5_ && this))
                        {
                           if(_loc2_.indexOf("BACKGROUND_") == 0)
                           {
                              if(_loc4_)
                              {
                                 §§push(§'!;§.§2=§);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop().§8#§);
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§pop().§4+§.background.resetLevelBackground(_loc2_);
                                       if(_loc4_)
                                       {
                                          addr147:
                                          §§push(§'!;§.§2=§.§8#§);
                                          if(_loc4_ || _loc2_)
                                          {
                                             addr155:
                                             §§pop().§ f§();
                                             if(!_loc5_)
                                             {
                                                addr158:
                                             }
                                             addr192:
                                             return _loc3_;
                                             addr211:
                                          }
                                          else
                                          {
                                             addr162:
                                             _loc3_ = §§pop().§9%§(_loc2_,this.§=!u§.x,this.§=!u§.y,false);
                                          }
                                          if(_loc3_)
                                          {
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                addr182:
                                                this.§@!z§(§=q§.§0"§(_loc3_),false);
                                                if(!_loc5_)
                                                {
                                                   this.§=!m§.§4Y§();
                                                   addr190:
                                                }
                                                this.§%O§();
                                                addr215:
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr215);
                                                }
                                                §§goto(addr211);
                                             }
                                             §§goto(addr190);
                                          }
                                          §§goto(addr192);
                                       }
                                       §§goto(addr158);
                                    }
                                    §§goto(addr155);
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr182);
                           }
                           else
                           {
                              §§push(this.§6!^§.§8#§);
                           }
                           §§goto(addr162);
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr47);
                  }
                  §§goto(addr93);
               }
            }
            addr88:
            return null;
         }
         §§goto(addr90);
      }
      
      public function §3D§() : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc12_:§=q§ = null;
         if(_loc13_ || _loc1_)
         {
            if(this.§8"%§ != null)
            {
               loop0:
               while(true)
               {
                  if(this.§8"%§.y > this.§=!u§.y)
                  {
                     §§push(Number(this.§=!u§.y));
                     loop1:
                     while(true)
                     {
                        _loc1_ = §§pop();
                        loop2:
                        while(true)
                        {
                           if(_loc13_ || _loc3_)
                           {
                              §§push(Number(this.§8"%§.y));
                              loop3:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 loop4:
                                 while(true)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       if(this.§8"%§.x > this.§=!u§.x)
                                       {
                                          §§push(Number(this.§=!u§.x));
                                          loop6:
                                          for(; !_loc14_; §§push(Number(this.§8"%§.x)),if(!_loc14_)
                                          {
                                             continue loop1;
                                          })
                                          {
                                             if(_loc14_)
                                             {
                                                continue loop3;
                                             }
                                             if(_loc13_ || this)
                                             {
                                                _loc3_ = §§pop();
                                                while(true)
                                                {
                                                   if(_loc13_ || _loc2_)
                                                   {
                                                      addr197:
                                                      if(!(_loc14_ && _loc3_))
                                                      {
                                                         if(_loc13_ || _loc2_)
                                                         {
                                                            if(!(_loc13_ || this))
                                                            {
                                                               return;
                                                            }
                                                            addr210:
                                                            continue loop6;
                                                         }
                                                         addr137:
                                                         if(_loc14_ && _loc3_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         if(_loc14_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(Number(this.§8"%§.x));
                                                            addr150:
                                                            while(true)
                                                            {
                                                               _loc3_ = §§pop();
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc13_)
                                                         {
                                                            §§push(Number(this.§=!u§.x));
                                                            break loop6;
                                                         }
                                                         break;
                                                         §§goto(addr150);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(Number(this.§=!u§.y));
                                                         addr182:
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                            addr183:
                                                            while(true)
                                                            {
                                                               continue loop5;
                                                            }
                                                         }
                                                      }
                                                      addr197:
                                                   }
                                                   break;
                                                   addr49:
                                                   _loc4_ = §§pop();
                                                   if(!(_loc13_ || this))
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc14_ && _loc1_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   if(_loc13_)
                                                   {
                                                      if(false)
                                                      {
                                                         addr68:
                                                      }
                                                      var _loc5_:Point = new Point(_loc3_,_loc1_);
                                                      var _loc6_:Point = new Point(_loc4_,_loc2_);
                                                      var _loc7_:Array = (_loc7_ = this.§6!^§.§8#§.§4+§.objects.getObjectsWithinBoundingBox(_loc5_,_loc6_)).concat(this.§6!^§.§8#§.§4+§.slingshot.getObjectsWithinBoundingBox(_loc5_,_loc6_));
                                                      var _loc8_:* = Number(0);
                                                      if(_loc13_)
                                                      {
                                                         _loc8_ = Number(0);
                                                      }
                                                      addr261:
                                                      §§push(_loc8_);
                                                      if(_loc13_ || _loc3_)
                                                      {
                                                         if(_loc13_ || this)
                                                         {
                                                            if(!_loc14_)
                                                            {
                                                               if(§§pop() >= this.§'Y§.length)
                                                               {
                                                                  if(_loc13_)
                                                                  {
                                                                     if(_loc13_)
                                                                     {
                                                                        §§push(Number(0));
                                                                        if(!_loc14_)
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           if(_loc13_ || _loc2_)
                                                                           {
                                                                              addr299:
                                                                              if(false)
                                                                              {
                                                                                 addr301:
                                                                                 §§push(_loc8_);
                                                                                 if(!(_loc14_ && _loc1_))
                                                                                 {
                                                                                    addr312:
                                                                                    _loc8_ = Number(§§pop() + 1);
                                                                                    §§goto(addr311);
                                                                                 }
                                                                                 addr311:
                                                                                 if(_loc13_ || _loc2_)
                                                                                 {
                                                                                    §§goto(addr261);
                                                                                 }
                                                                                 §§goto(addr447);
                                                                              }
                                                                              addr443:
                                                                              if(_loc8_ < _loc7_.length)
                                                                              {
                                                                                 _loc12_ = §=q§.§0"§(_loc7_[_loc8_]);
                                                                                 if(!(_loc14_ && this))
                                                                                 {
                                                                                    §§push(this.§'Y§.indexOf(_loc12_) == -1);
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr441:
                                                                                          §§pop();
                                                                                          §§push(§,!1§.§2=§.§>L§(_loc12_));
                                                                                          if(!(_loc14_ && _loc1_))
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                          if(_loc14_ && _loc1_)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr441);
                                                                                          addr442:
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc14_ && _loc2_))
                                                                                          {
                                                                                             if(_loc13_ || _loc2_)
                                                                                             {
                                                                                                addr422:
                                                                                                this.§@!z§(§=q§.§0"§(_loc7_[_loc8_]),true);
                                                                                                addr430:
                                                                                                §§push(_loc8_);
                                                                                                if(!(_loc14_ && _loc2_))
                                                                                                {
                                                                                                   §§push(§§pop() + 1);
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                                _loc8_ = §§pop();
                                                                                                if(!(_loc14_ && _loc3_))
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr441);
                                                                                                   }
                                                                                                   §§goto(addr443);
                                                                                                }
                                                                                                addr430:
                                                                                                §§goto(addr430);
                                                                                             }
                                                                                             §§goto(addr442);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr430);
                                                                                    }
                                                                                    §§goto(addr441);
                                                                                 }
                                                                                 §§goto(addr422);
                                                                              }
                                                                           }
                                                                           addr447:
                                                                           var _loc9_:Point = this.§6!^§.§8#§.§4+§.§&g§(_loc5_.x,_loc5_.y);
                                                                           var _loc10_:Point = this.§6!^§.§8#§.§4+§.§&g§(_loc6_.x,_loc6_.y);
                                                                           var _loc11_:Rectangle = new Rectangle(_loc9_.x,_loc9_.y,_loc10_.x - _loc9_.x,_loc10_.y - _loc9_.y);
                                                                           if(!(_loc14_ && _loc2_))
                                                                           {
                                                                              this.§6!^§.§+"2§.§8o§(_loc11_);
                                                                           }
                                                                           return;
                                                                        }
                                                                        §§goto(addr443);
                                                                     }
                                                                     addr341:
                                                                     §§goto(addr301);
                                                                  }
                                                                  §§goto(addr299);
                                                               }
                                                               if(_loc7_.indexOf(this.§'Y§[_loc8_].getObject()) == -1)
                                                               {
                                                                  if(!_loc14_)
                                                                  {
                                                                     this.§&-§(this.§'Y§[_loc8_]);
                                                                     §§goto(addr341);
                                                                  }
                                                                  §§goto(addr311);
                                                               }
                                                               §§goto(addr301);
                                                            }
                                                            §§goto(addr311);
                                                         }
                                                         §§goto(addr312);
                                                      }
                                                      §§goto(addr299);
                                                   }
                                                   else
                                                   {
                                                      addr205:
                                                      this.§6!^§.§+"2§.§8o§(null);
                                                      §§goto(addr210);
                                                   }
                                                }
                                                addr126:
                                                if(_loc13_)
                                                {
                                                   break loop5;
                                                }
                                                §§goto(addr183);
                                             }
                                             §§goto(addr182);
                                          }
                                          while(true)
                                          {
                                             if(!_loc14_)
                                             {
                                                if(_loc13_)
                                                {
                                                   _loc4_ = §§pop();
                                                   §§goto(addr126);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      _loc1_ = §§pop();
                                                      §§goto(addr197);
                                                   }
                                                   addr196:
                                                }
                                                §§goto(addr183);
                                             }
                                             else
                                             {
                                                §§goto(addr150);
                                             }
                                          }
                                       }
                                       §§goto(addr137);
                                    }
                                    §§goto(addr68);
                                 }
                              }
                           }
                           else
                           {
                              while(true)
                              {
                              }
                              addr192:
                           }
                           §§goto(addr196);
                        }
                        if(!(_loc13_ || _loc2_))
                        {
                           continue;
                        }
                        §§goto(addr49);
                     }
                  }
                  §§goto(addr192);
               }
            }
            §§goto(addr205);
         }
         §§goto(addr146);
      }
      
      public function §]!P§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§=q§ = null;
         if(_loc5_)
         {
            this.§;"-§ = new Vector.<§=q§>();
         }
         var _loc2_:int = 0;
         for each(_loc1_ in this.§'Y§)
         {
            if(_loc5_ || _loc2_)
            {
               if(_loc1_.§8!w§())
               {
                  continue;
               }
               if(_loc4_)
               {
                  continue;
               }
            }
            this.§;"-§.push(_loc1_);
         }
      }
      
      public function §`z§() : Vector.<§=q§>
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:§=q§ = null;
         var _loc7_:§=q§ = null;
         var _loc1_:Vector.<§=q§> = new Vector.<§=q§>();
         if(!(_loc11_ && _loc3_))
         {
            §§push(§,!1§.§2=§.§[!e§());
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(!this.§;"-§);
                     if(!(_loc11_ && _loc3_))
                     {
                        if(§§pop())
                        {
                           loop2:
                           for(; !§§pop(); continue loop0)
                           {
                              while(true)
                              {
                                 this.§6!^§.§4p§.§5R§();
                                 if(_loc11_)
                                 {
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 if(_loc11_)
                                 {
                                    break loop2;
                                 }
                                 if(!(_loc11_ && this))
                                 {
                                    if(_loc11_ && _loc3_)
                                    {
                                       §§goto(addr102);
                                    }
                                    if(false)
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          §§push(this.§;"-§.length == 0);
                                          if(_loc10_)
                                          {
                                             break;
                                          }
                                          addr96:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop4;
                                          }
                                       }
                                       continue loop2;
                                       addr61:
                                    }
                                    var _loc2_:Rectangle = this.§-#§(this.§;"-§);
                                    var _loc3_:Point = new Point(_loc2_.x + _loc2_.width / 2,_loc2_.y + _loc2_.height / 2);
                                    §§push(this.§=!u§.x - _loc3_.x);
                                    if(_loc10_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc4_:* = §§pop();
                                    §§push(this.§=!u§.y - _loc3_.y);
                                    if(!_loc11_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc5_:* = §§pop();
                                    if(!(_loc11_ && _loc3_))
                                    {
                                       this.§%1§();
                                    }
                                    var _loc8_:int = 0;
                                    var _loc9_:* = this.§;"-§;
                                    addr462:
                                    for each(_loc6_ in _loc9_)
                                    {
                                       §§push(_loc6_.isTexture());
                                       if(!_loc11_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!(_loc11_ && this))
                                          {
                                             §§push(§§pop());
                                             if(_loc10_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc10_ || _loc1_)
                                                   {
                                                      §§pop();
                                                      if(_loc10_ || _loc2_)
                                                      {
                                                         addr411:
                                                         §§push(this.§6!^§.§8#§.§#=§() < 1);
                                                         if(!(_loc11_ && _loc3_))
                                                         {
                                                            addr421:
                                                            if(§§pop())
                                                            {
                                                               addr422:
                                                               §§goto(addr462);
                                                            }
                                                            §§push(_loc6_.§9!^§());
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                         if(Boolean(§§pop()))
                                                         {
                                                            addr429:
                                                            §§pop();
                                                            addr430:
                                                            §§push(this.§6!^§);
                                                            if(!(_loc11_ && _loc1_))
                                                            {
                                                               addr362:
                                                               §§push(§§pop().§8#§.§4!m§());
                                                               if(_loc10_ || _loc2_)
                                                               {
                                                                  addr371:
                                                                  §§push(1);
                                                                  if(_loc10_)
                                                                  {
                                                                     addr375:
                                                                     addr374:
                                                                     if(§§pop() < §§pop())
                                                                     {
                                                                        addr376:
                                                                        if(!_loc11_)
                                                                        {
                                                                           addr378:
                                                                           §§goto(addr462);
                                                                        }
                                                                        §§goto(addr422);
                                                                     }
                                                                     §§push(_loc6_.§ j§());
                                                                     if(!_loc11_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc11_ && _loc2_))
                                                                           {
                                                                              if(_loc10_ || this)
                                                                              {
                                                                                 §§goto(addr462);
                                                                              }
                                                                              §§goto(addr430);
                                                                           }
                                                                           addr298:
                                                                           addr407:
                                                                           §§push(_loc6_.§]F§());
                                                                           if(!(_loc11_ && _loc1_))
                                                                           {
                                                                              if(!(_loc11_ && _loc2_))
                                                                              {
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       addr320:
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             if(_loc10_ || _loc3_)
                                                                                             {
                                                                                                addr331:
                                                                                                §§push(§§pop());
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr338:
                                                                                                         if(_loc10_ || _loc3_)
                                                                                                         {
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               addr348:
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  §§push(this.§6!^§);
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     if(_loc10_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§8#§);
                                                                                                                        if(!(_loc11_ && this))
                                                                                                                        {
                                                                                                                           if(!(_loc11_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(§§pop().§4!3§());
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 §§push(1);
                                                                                                                                 if(!_loc11_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() < §§pop());
                                                                                                                                    if(!_loc11_)
                                                                                                                                    {
                                                                                                                                       addr249:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(!(_loc11_ && _loc1_))
                                                                                                                                          {
                                                                                                                                             if(!_loc11_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§6!^§);
                                                                                                                                                if(_loc10_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().§8#§);
                                                                                                                                                   if(!(_loc11_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc11_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         §§pop().dispatchEvent(new §0!t§(§0!t§.§ 6§));
                                                                                                                                                         addr289:
                                                                                                                                                         if(!(_loc11_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            if(false)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr298);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr474);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr376);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr362);
                                                                                                                                                   }
                                                                                                                                                   addr435:
                                                                                                                                                   _loc7_ = §§pop().§&!%§(_loc6_,_loc4_,_loc5_);
                                                                                                                                                   if(_loc10_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      _loc1_.push(_loc7_);
                                                                                                                                                      if(!(_loc11_ && _loc1_))
                                                                                                                                                      {
                                                                                                                                                         this.§@!z§(_loc7_,true);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr462);
                                                                                                                                                }
                                                                                                                                                addr434:
                                                                                                                                                §§goto(addr435);
                                                                                                                                                §§push(§§pop().§8#§);
                                                                                                                                             }
                                                                                                                                             §§goto(addr348);
                                                                                                                                          }
                                                                                                                                          §§goto(addr289);
                                                                                                                                       }
                                                                                                                                       §§goto(addr434);
                                                                                                                                       §§push(this.§6!^§);
                                                                                                                                    }
                                                                                                                                    §§goto(addr338);
                                                                                                                                 }
                                                                                                                                 §§goto(addr371);
                                                                                                                              }
                                                                                                                              §§goto(addr362);
                                                                                                                           }
                                                                                                                           §§goto(addr411);
                                                                                                                        }
                                                                                                                        §§goto(addr435);
                                                                                                                     }
                                                                                                                     §§goto(addr411);
                                                                                                                  }
                                                                                                                  §§goto(addr434);
                                                                                                               }
                                                                                                               §§goto(addr407);
                                                                                                            }
                                                                                                            §§goto(addr429);
                                                                                                         }
                                                                                                         addr405:
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         if(!Boolean(§§pop()))
                                                                                                         {
                                                                                                            addr406:
                                                                                                            §§pop();
                                                                                                            §§goto(addr298);
                                                                                                         }
                                                                                                         §§goto(addr331);
                                                                                                      }
                                                                                                      §§goto(addr249);
                                                                                                   }
                                                                                                   §§goto(addr411);
                                                                                                }
                                                                                                §§goto(addr405);
                                                                                             }
                                                                                             §§goto(addr411);
                                                                                          }
                                                                                          §§goto(addr405);
                                                                                       }
                                                                                       §§goto(addr406);
                                                                                    }
                                                                                    §§goto(addr338);
                                                                                 }
                                                                              }
                                                                              §§goto(addr375);
                                                                           }
                                                                           §§goto(addr320);
                                                                        }
                                                                        §§goto(addr405);
                                                                        §§push(_loc6_.§@!i§());
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr411);
                                                            }
                                                            §§goto(addr434);
                                                         }
                                                         §§goto(addr374);
                                                      }
                                                      §§goto(addr378);
                                                   }
                                                   §§goto(addr406);
                                                }
                                                §§goto(addr421);
                                             }
                                             §§goto(addr405);
                                          }
                                          §§goto(addr375);
                                       }
                                       §§goto(addr411);
                                    }
                                    addr474:
                                    if(!_loc11_)
                                    {
                                       this.§%O§();
                                    }
                                    return _loc1_;
                                 }
                                 while(true)
                                 {
                                    continue loop1;
                                 }
                                 addr104:
                              }
                              while(true)
                              {
                                 §§goto(addr61);
                              }
                           }
                           return _loc1_;
                           addr76:
                        }
                     }
                     §§goto(addr96);
                  }
               }
               addr102:
               return _loc1_;
               if(!(_loc10_ || _loc1_))
               {
                  continue;
               }
               §§goto(addr76);
            }
         }
         §§goto(addr104);
      }
      
      private function §@1§(param1:§=q§) : b2Transform
      {
         return this.§[!1§[param1];
      }
      
      private function §38§(param1:§=q§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§[!1§[param1] = param1.§[!M§();
         }
      }
      
      private function §99§(param1:§=q§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:b2Transform = null;
         if(_loc4_ || _loc2_)
         {
            if(§<8§.§5!i§().§&!h§(§<8§.§,!4§))
            {
               if(!_loc3_)
               {
                  addr35:
                  _loc2_ = param1.§[!M§();
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(_loc2_.position);
                     while(true)
                     {
                        §§push(this.§]<§(_loc2_.position.x));
                        while(true)
                        {
                           §§pop().x = §§pop();
                           while(true)
                           {
                              §§push(_loc2_.position);
                              while(true)
                              {
                                 §§push(this.§]<§(_loc2_.position.y));
                                 addr227:
                                 while(true)
                                 {
                                    §§pop().y = §§pop();
                                    while(true)
                                    {
                                       §§goto(addr167);
                                    }
                                 }
                              }
                           }
                           addr66:
                           if(_loc3_ && _loc3_)
                           {
                              continue;
                           }
                           §§push(param1.§]!&§().height / 2);
                           if(_loc4_)
                           {
                              §§push(100);
                              if(!(_loc3_ && param1))
                              {
                                 if(_loc4_ || _loc3_)
                                 {
                                    if(_loc4_ || param1)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc4_)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§push(this.§'!6§);
                                             if(_loc4_ || this)
                                             {
                                                addr131:
                                                §§push(§§pop() % §§pop());
                                                if(!_loc3_)
                                                {
                                                   §§push(100);
                                                }
                                                if(!_loc3_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      addr136:
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         if(!(_loc3_ && param1))
                                                         {
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               §§pop().y = §§pop();
                                                               if(_loc4_ || param1)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     addr167:
                                                                     §§goto(addr248);
                                                                  }
                                                                  addr248:
                                                                  §§goto(addr251);
                                                               }
                                                               §§goto(addr209);
                                                            }
                                                            §§goto(addr227);
                                                         }
                                                         §§goto(addr186);
                                                      }
                                                      §§goto(addr208);
                                                   }
                                                   §§goto(addr202);
                                                }
                                                §§goto(addr205);
                                             }
                                             §§goto(addr131);
                                             §§push(§§pop() / §§pop());
                                          }
                                          §§goto(addr207);
                                       }
                                       §§goto(addr131);
                                    }
                                    §§goto(addr204);
                                 }
                                 §§goto(addr206);
                              }
                           }
                           §§goto(addr131);
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr176);
                  }
               }
               addr251:
               while(this.§'!6§ == 100)
               {
                  if(_loc3_)
                  {
                     addr209:
                     while(_loc4_)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           §§push(_loc2_.position);
                           if(_loc4_)
                           {
                              continue loop0;
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                     continue loop5;
                     addr209:
                  }
               }
               param1.§=!J§(_loc2_);
               return;
            }
            §§goto(addr248);
         }
         §§goto(addr35);
      }
      
      private function §]<§(param1:Number) : Number
      {
         return Math.round(param1 * 100 - param1 * 100 % this.§'!6§) / 100;
      }
      
      private function §77§() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:§=q§ = null;
         var _loc3_:Point = null;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:* = false;
         for each(_loc2_ in this.§'Y§)
         {
            if(_loc9_ || _loc2_)
            {
               §§push(§,!1§.§2=§.§>L§(_loc2_));
               if(_loc9_)
               {
                  if(§§pop())
                  {
                     addr65:
                     if(!(_loc8_ && _loc1_))
                     {
                        §§push(true);
                     }
                     break;
                  }
                  continue;
               }
               _loc1_ = §§pop();
            }
            §§goto(addr65);
         }
         if(!(_loc8_ && _loc3_))
         {
            if(!_loc1_)
            {
               if(!_loc8_)
               {
                  addr91:
                  this.§-!'§();
               }
            }
            else
            {
               _loc3_ = this.§=!u§;
               if(!(_loc8_ && this))
               {
                  §§push(_loc3_.x - this.§,H§);
                  if(!(_loc8_ && this))
                  {
                     §§push(Number(§§pop()));
                  }
                  loop1:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     addr179:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  this.§ m§(_loc4_,_loc5_);
                  §§goto(addr135);
               }
            }
            §§goto(addr180);
         }
         §§goto(addr91);
      }
      
      public function §[R§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            if(this.§-"+§)
            {
               if(_loc4_ || param1)
               {
                  §§goto(addr33);
               }
            }
            var _loc3_:int = 0;
            loop0:
            while(true)
            {
               §§push(_loc3_);
               while(true)
               {
                  if(§§pop() < this.§'Y§.length)
                  {
                     _loc3_++;
                     continue loop0;
                  }
                  loop2:
                  while(true)
                  {
                     §§push(param1);
                     if(_loc4_ || param2)
                     {
                        §§push(0);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop() == §§pop());
                           addr158:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    §§push(0);
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       addr179:
                                       while(true)
                                       {
                                          §§push(§§pop() * this.§'!6§);
                                          if(!(_loc5_ && param1))
                                          {
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                addr200:
                                                while(true)
                                                {
                                                   param1 = §§pop();
                                                }
                                             }
                                             addr199:
                                          }
                                          §§goto(addr200);
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(param2);
                                    if(!(_loc5_ && param1))
                                    {
                                       continue loop3;
                                    }
                                    addr116:
                                    addr116:
                                    if(!(_loc5_ && param1))
                                    {
                                       addr124:
                                       §§push(Number(§§pop()));
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          param2 = §§pop();
                                          addr132:
                                          if(_loc4_ || param2)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§goto(addr179);
                                          §§goto(addr116);
                                       }
                                       addr178:
                                    }
                                 }
                                 if(_loc4_)
                                 {
                                    return;
                                 }
                                 continue loop2;
                              }
                              §§push(param1);
                              if(!(_loc5_ && this))
                              {
                                 §§goto(addr178);
                                 §§push(§§pop() / Math.abs(param1));
                              }
                              §§goto(addr200);
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr199);
                  }
               }
            }
         }
         addr33:
      }
      
      public function § m§(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc7_:int = 0;
         var _loc8_:§=q§ = null;
         var _loc9_:b2Vec2 = null;
         if(_loc11_ || _loc3_)
         {
            if(this.§'Y§.length != 0)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  loop1:
                  while(true)
                  {
                     §§push(0);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop() == §§pop());
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(param2);
                                       if(_loc11_ || this)
                                       {
                                          §§push(0);
                                          if(_loc11_)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(!(_loc11_ || param1))
                                             {
                                                break;
                                             }
                                             if(_loc11_ || param1)
                                             {
                                                if(_loc11_)
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            break;
                                                         }
                                                         loop8:
                                                         while(true)
                                                         {
                                                            addr33:
                                                            while(true)
                                                            {
                                                               dispatchEvent(new Event(Event.CHANGE));
                                                               if(_loc11_ || this)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop8;
                                                            }
                                                            if(!_loc11_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            if(!_loc11_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            while(true)
                                                            {
                                                               if(true)
                                                               {
                                                                  §§push(true);
                                                               }
                                                               continue loop6;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr33);
                                                   }
                                                   if(!_loc10_)
                                                   {
                                                      return;
                                                   }
                                                   addr118:
                                                   return;
                                                   addr82:
                                                }
                                                continue loop3;
                                             }
                                             continue loop4;
                                          }
                                          continue loop2;
                                       }
                                       continue loop1;
                                    }
                                    var _loc3_:* = §§pop();
                                    var _loc4_:Boolean = false;
                                    var _loc5_:Boolean = true;
                                    var _loc6_:Boolean = false;
                                    if(!_loc10_)
                                    {
                                       if(_loc5_)
                                       {
                                          if(!_loc10_)
                                          {
                                             addr134:
                                             _loc7_ = 0;
                                          }
                                          loop11:
                                          while(_loc7_ < this.§'Y§.length)
                                          {
                                             _loc8_ = this.§'Y§[_loc7_];
                                             _loc9_ = this.§@1§(_loc8_).position.Copy();
                                             §§push(_loc9_);
                                             §§push(_loc9_.x);
                                             if(_loc11_ || param2)
                                             {
                                                §§push(§§pop() + param1);
                                             }
                                             §§pop().x = §§pop();
                                             if(_loc11_ || param1)
                                             {
                                                §§push(_loc9_);
                                                §§push(_loc9_.y);
                                                if(!(_loc10_ && this))
                                                {
                                                   §§push(§§pop() + param2);
                                                }
                                                §§pop().y = §§pop();
                                                while(true)
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      this.§#!;§(_loc8_,_loc9_);
                                                      do
                                                      {
                                                         _loc7_++;
                                                      }
                                                      while(!_loc11_);
                                                      
                                                      if(!_loc11_)
                                                      {
                                                         break;
                                                         addr178:
                                                      }
                                                      while(false)
                                                      {
                                                         continue loop13;
                                                      }
                                                      continue loop11;
                                                   }
                                                }
                                             }
                                             §§goto(addr178);
                                          }
                                       }
                                       return;
                                    }
                                    §§goto(addr134);
                                 }
                              }
                           }
                           §§goto(addr82);
                        }
                     }
                  }
               }
            }
            §§goto(addr118);
         }
         §§goto(addr51);
      }
      
      private function §#!;§(param1:§=q§, param2:b2Vec2, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            param1.setPosition(param2);
            loop0:
            while(true)
            {
               if(param3)
               {
                  while(true)
                  {
                     this.§99§(param1);
                     addr84:
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           continue loop0;
                        }
                     }
                  }
                  addr71:
               }
               while(true)
               {
                  this.§%!N§(param1);
                  do
                  {
                     §,"!§.§<c§(param1.getObject() as §]"5§,this.§6!^§.§8#§.§4+§.objects);
                  }
                  while(_loc4_);
                  
                  if(!(_loc5_ || this))
                  {
                     continue;
                  }
                  if(!(_loc4_ && this))
                  {
                     return;
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      private function §!u§(param1:Object) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§=q§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§'Y§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_ && this)
               {
                  break;
               }
               if(_loc2_.getObject() == param1)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     break;
                  }
               }
            }
            return false;
         }
         return true;
      }
   }
}
