package §1" §
{
   import §"_§.§!"8§;
   import §"_§.§^!J§;
   import §#";§.§0"#§;
   import §%!0§.§,4§;
   import §&!<§.§]!M§;
   import §&!P§.§`>§;
   import §&!P§.§``§;
   import §,!g§.§"!P§;
   import §,!g§.§>7§;
   import §6!A§.§4!%§;
   import §7!@§.§+`§;
   import §7t§.§7a§;
   import §7t§.§9!l§;
   import §<!a§.b2Transform;
   import §<!a§.b2Vec2;
   import §=!7§.§6W§;
   import §=!7§.§9"8§;
   import §?!'§.Popup;
   import §^!k§.§30§;
   import §^!k§.§;!T§;
   import §^!k§.Inventory;
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
   import flash.utils.getTimer;
   
   public class §<!,§ extends EventDispatcher implements §4!x§
   {
      
      private static const §+Y§:Number = 5.0E-4;
      
      private static const §3!_§:Number = 0.015;
      
      private static const §6!m§:Number = 1.005;
      
      private static const §4!v§:Number = -0.15;
      
      private static const §;!Q§:Number = 45.0;
      
      private static const §!!@§:int = 20;
      
      private static const §<!o§:int = 200;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §<!,§)
         {
            §§push(§§findproperty(§+Y§));
            §§push(§,4§.§,^§);
            if(_loc2_)
            {
               §§push(§§pop() / 100);
            }
            §§pop().§+Y§ = §§pop();
            loop0:
            while(true)
            {
               §§push(§§findproperty(§3!_§));
               §§push(§+Y§);
               if(_loc2_)
               {
                  §§push(§§pop() * 30);
               }
               §§pop().§3!_§ = §§pop();
               loop1:
               while(true)
               {
                  §6!m§ = 1.005;
                  while(true)
                  {
                     §4!v§ = -0.15;
                     while(_loc2_)
                     {
                        if(_loc2_)
                        {
                           §;!Q§ = 360 / 8;
                           while(!(_loc1_ && _loc2_))
                           {
                              §!!@§ = 20;
                              loop5:
                              while(!_loc1_)
                              {
                                 while(true)
                                 {
                                    §<!o§ = 200;
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    continue loop5;
                                 }
                                 return;
                              }
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      private var §>!§:Vector.<§7a§>;
      
      private var §>%§:Point;
      
      private var §3i§:Point;
      
      private var §2%§:Boolean = false;
      
      private var §5Q§:Dictionary;
      
      private var §75§:Vector.<§7a§>;
      
      private var §[!o§:Number;
      
      private var §^5§:Number;
      
      private var §1^§:Number = 0;
      
      private var §]"'§:Number = 0;
      
      private var §<0§:Boolean = false;
      
      private var §4N§:Boolean = false;
      
      private var §1!_§:Boolean = false;
      
      private var §=!6§:Point;
      
      private var §8@§:§;!T§;
      
      private var §9!u§:Point;
      
      private var §]a§:Point;
      
      private var §]!=§:Point;
      
      private var §1!D§:Boolean = false;
      
      private var §'""§:§30§;
      
      private var §,!7§:Inventory;
      
      private var §@!W§:Popup;
      
      private var §9J§:§#!j§;
      
      private var §%!S§:int = 100;
      
      private var §8Q§:int;
      
      public function §<!,§(param1:§#!j§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§>!§ = new Vector.<§7a§>();
            loop0:
            while(true)
            {
               this.§3i§ = new Point();
               loop1:
               while(true)
               {
                  this.§5Q§ = new Dictionary();
                  loop2:
                  while(true)
                  {
                     this.§]a§ = new Point();
                     while(true)
                     {
                        this.§]!=§ = new Point();
                        loop6:
                        for(; !(_loc3_ && _loc3_); if(!(_loc3_ && _loc3_))
                        {
                           continue loop0;
                        })
                        {
                           if(!_loc3_)
                           {
                              this.§9J§ = param1;
                              loop7:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    addr78:
                                    if(!(_loc3_ && param1))
                                    {
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       addEventListener(Event.CHANGE,this.§&!X§);
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop6;
                                          }
                                          continue loop7;
                                          addr61:
                                          addEventListener(Event.COMPLETE,this.onComplete);
                                          if(_loc2_)
                                          {
                                             return;
                                          }
                                       }
                                       continue loop6;
                                    }
                                    addr112:
                                    while(true)
                                    {
                                       this.§'""§ = new §30§();
                                       §§goto(addr78);
                                    }
                                 }
                                 while(true)
                                 {
                                    super();
                                    continue loop6;
                                 }
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               §§goto(addr61);
            }
         }
         §§goto(addr112);
      }
      
      public function initialize() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§9J§);
            loop0:
            while(true)
            {
               §§push(§§pop().§<!_§);
               loop1:
               while(true)
               {
                  §§pop().addEventListener(KeyboardEvent.KEY_DOWN,this.§[H§);
                  loop2:
                  while(true)
                  {
                     §§push(this.§9J§);
                     loop3:
                     while(_loc2_)
                     {
                        §§push(§§pop().§<!_§);
                        loop4:
                        while(true)
                        {
                           §§pop().addEventListener(KeyboardEvent.KEY_UP,this.§1!&§);
                           addr195:
                           if(_loc1_ && _loc1_)
                           {
                              continue;
                           }
                           §§pop().addEventListener("close_popups",this.§9!f§);
                           loop29:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    if(!_loc1_)
                                    {
                                       if(_loc1_ && this)
                                       {
                                          break;
                                       }
                                       §§push(this.§9J§);
                                       loop30:
                                       while(true)
                                       {
                                          if(_loc2_ || this)
                                          {
                                             if(!_loc2_)
                                             {
                                                break;
                                             }
                                             §§pop().§0"!§.addEventListener(§!"8§.§"`§,this.§?!&§);
                                             continue;
                                          }
                                          loop28:
                                          while(true)
                                          {
                                             if(!(_loc1_ && this))
                                             {
                                                §§push(§§pop().§<!_§);
                                                if(!_loc1_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         §§goto(addr195);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§!"8§.ROTATE);
                                                            loop19:
                                                            while(true)
                                                            {
                                                               §§pop().addEventListener(§§pop(),this.§+"9§);
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  §§push(this.§9J§);
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc1_)
                                                                     {
                                                                        if(_loc1_)
                                                                        {
                                                                           break;
                                                                           addr245:
                                                                        }
                                                                        §§push(§§pop().§<!_§);
                                                                        while(_loc2_ || _loc2_)
                                                                        {
                                                                           §§push(§!"8§.DELETE_OBJECT);
                                                                           loop23:
                                                                           while(_loc2_ || this)
                                                                           {
                                                                              §§pop().addEventListener(§§pop(),this.§<!y§);
                                                                              while(_loc2_ || _loc2_)
                                                                              {
                                                                                 §§push(this.§9J§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().§<!_§);
                                                                                    continue loop23;
                                                                                    addr121:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§!"8§.DUPLICATE_OBJECT);
                                                                                       if(_loc1_ && this)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§pop().addEventListener(§§pop(),this.§]k§);
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop28;
                                                                                       }
                                                                                    }
                                                                                    if(_loc2_ || this)
                                                                                    {
                                                                                       continue loop21;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop20;
                                                                           }
                                                                           continue loop19;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     addr285:
                                                                     addr302:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc1_)
                                                                        {
                                                                           §§push(§§pop().§"L§);
                                                                           if(_loc2_)
                                                                           {
                                                                              if(!_loc1_)
                                                                              {
                                                                                 §§pop().addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§9J§);
                                                                                    break loop30;
                                                                                 }
                                                                                 addr297:
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().addEventListener(MouseEvent.MOUSE_DOWN,this.§=c§);
                                                                                    addr326:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§9J§);
                                                                                       break loop21;
                                                                                    }
                                                                                 }
                                                                                 addr321:
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     while(!(_loc1_ && this))
                                                                     {
                                                                        §§pop().addEventListener(MouseEvent.MOUSE_MOVE,this.§8x§);
                                                                        while(!_loc1_)
                                                                        {
                                                                           §§goto(addr285);
                                                                           §§push(this.§9J§);
                                                                           loop33:
                                                                           while(!(_loc1_ && _loc1_))
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              §§push(this.§,!7§);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§!"8§.CANCEL);
                                                                                 addr73:
                                                                                 addr92:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().addEventListener(§§pop(),this.§?§);
                                                                                    addr76:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc2_ || _loc1_)
                                                                                       {
                                                                                          continue loop29;
                                                                                       }
                                                                                       addr143:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§,!7§ = this.§9J§.§<!_§.§"p§().§+!m§();
                                                                                          continue loop33;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr326);
                                                                                 }
                                                                                 §§push(this.§,!7§);
                                                                                 if(!(_loc2_ || _loc1_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(§!"8§.§9!`§);
                                                                                 if(_loc2_ || _loc2_)
                                                                                 {
                                                                                    §§pop().addEventListener(§§pop(),this.§;!S§);
                                                                                    if(_loc2_ || _loc2_)
                                                                                    {
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          addr60:
                                                                                          if(!(_loc1_ && _loc2_))
                                                                                          {
                                                                                             return;
                                                                                          }
                                                                                          continue loop30;
                                                                                       }
                                                                                       continue loop33;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr73);
                                                                                 }
                                                                                 §§goto(addr76);
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§9J§);
                                                                           addr320:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr321);
                                                                              continue loop28;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr331:
                                                                     while(true)
                                                                     {
                                                                        §§pop().addEventListener(MouseEvent.MOUSE_UP,this.§8!R§);
                                                                        §§goto(addr336);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr302);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr276:
                                                      }
                                                   }
                                                   §§goto(addr245);
                                                }
                                                §§goto(addr224);
                                             }
                                             §§goto(addr320);
                                          }
                                          continue loop4;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr276);
                                       }
                                    }
                                    §§goto(addr297);
                                 }
                                 §§goto(addr264);
                              }
                              §§goto(addr236);
                           }
                           while(true)
                           {
                              §§goto(addr330);
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr348);
      }
      
      private function §#" §(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§9J§.§<!_§.§"p§().§+!m§().§2!W§();
         }
      }
      
      private function §9!f§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§@!W§.close();
            do
            {
               this.§@!W§ = null;
            }
            while(_loc2_);
            
         }
      }
      
      private function §?§(param1:§!"8§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2"$§(false);
         }
      }
      
      private function §&!X§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(!this.§1!D§)
            {
               do
               {
                  this.§1!D§ = true;
                  do
                  {
                     this.§9J§.§&!F§.§1!E§();
                  }
                  while(!_loc2_);
                  
               }
               while(!_loc2_);
               
               addr57:
            }
            return;
         }
         §§goto(addr57);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(this.§1!D§)
            {
               if(!(_loc3_ && this))
               {
                  this.§1!D§ = false;
                  do
                  {
                     this.§9J§.§0"!§.§-v§();
                  }
                  while(!_loc2_);
                  
                  addr69:
               }
               §§goto(addr69);
            }
            return;
         }
         §§goto(addr69);
      }
      
      private function §?!&§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^N§();
         }
      }
      
      private function §+"9§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this);
            §§push(§;!Q§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(-§§pop());
            }
            §§pop().§@X§(§§pop());
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc4_:§>7§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:b2Vec2 = null;
         var _loc11_:Point = null;
         if(_loc13_)
         {
            if(!§!!2§.§[E§.§-"6§())
            {
               if(!_loc12_)
               {
                  §§goto(addr46);
               }
            }
            var _loc2_:int = param1.delta;
            §§push(§"!P§.§#X§);
            if(!(_loc12_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc13_ || param1)
            {
               §§push(this.§9J§);
               if(_loc13_ || _loc3_)
               {
                  §§push(§§pop().§^!b§);
                  if(_loc13_)
                  {
                     §§push(§§pop().camera);
                     if(_loc13_ || param1)
                     {
                        §§pop().zoom(_loc2_);
                        if(_loc13_)
                        {
                           if(_loc2_ > 0)
                           {
                              addr100:
                              _loc5_ = (_loc4_ = this.§9J§.§^!b§.camera).§+!x§;
                              addr96:
                              addr99:
                              addr98:
                              if(!_loc12_)
                              {
                                 if(!_loc4_)
                                 {
                                 }
                                 §§goto(addr376);
                              }
                              _loc6_ = _loc4_.getCenter();
                              _loc7_ = new Point();
                              if(_loc13_)
                              {
                                 if(this.§4I§() == 0)
                                 {
                                    if(_loc13_)
                                    {
                                       addr227:
                                       §§push(this.§]"0§.x - _loc6_.x);
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr234:
                                          while(true)
                                          {
                                             _loc8_ = §§pop();
                                          }
                                       }
                                       addr233:
                                    }
                                    loop3:
                                    while(true)
                                    {
                                       §§push(this.§]"0§.y - _loc6_.y);
                                       if(!(_loc12_ && param1))
                                       {
                                          if(_loc13_)
                                          {
                                             addr212:
                                             §§push(Number(§§pop()));
                                             if(_loc13_ || param1)
                                             {
                                                _loc9_ = §§pop();
                                                while(true)
                                                {
                                                   _loc7_.x = this.§]"0§.x - _loc3_ / _loc5_ * _loc8_;
                                                   loop5:
                                                   for(; !(_loc12_ && param1); if(!(_loc13_ || param1))
                                                   {
                                                      continue;
                                                   },this.§9J§.§<!_§.§5V§(this.§%-§.x,this.§%-§.y),if(!_loc12_)
                                                   {
                                                      if(_loc12_ && this)
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(false)
                                                      {
                                                         §§goto(addr143);
                                                      }
                                                      _loc4_.§ !!§(_loc7_);
                                                   },§§goto(addr376))
                                                   {
                                                      while(true)
                                                      {
                                                         _loc7_.y = this.§]"0§.y - _loc3_ / _loc5_ * _loc9_;
                                                         if(_loc12_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop5;
                                                      }
                                                      §§goto(addr376);
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr233);
                                          }
                                          §§goto(addr234);
                                       }
                                       §§goto(addr212);
                                    }
                                 }
                                 else
                                 {
                                    §§push((_loc10_ = this.§4"5§()).x);
                                    if(!_loc12_)
                                    {
                                       §§push(§§pop() - _loc6_.x);
                                       if(!(_loc12_ && _loc2_))
                                       {
                                          §§push(1.3);
                                          if(_loc13_)
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(!_loc12_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!(_loc12_ && this))
                                                {
                                                   addr269:
                                                   _loc8_ = §§pop();
                                                   if(_loc13_ || _loc2_)
                                                   {
                                                      §§push(_loc10_.y);
                                                      if(_loc13_ || _loc2_)
                                                      {
                                                         addr321:
                                                         §§push(§§pop() - _loc6_.y);
                                                         if(!_loc12_)
                                                         {
                                                            addr326:
                                                            §§push(§§pop() / 1.3);
                                                            if(!(_loc12_ && param1))
                                                            {
                                                               addr335:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            _loc9_ = §§pop();
                                                         }
                                                         §§goto(addr335);
                                                      }
                                                      §§goto(addr326);
                                                   }
                                                   loop0:
                                                   while(true)
                                                   {
                                                      loop1:
                                                      while(true)
                                                      {
                                                         _loc7_.x = _loc10_.x - _loc3_ / _loc5_ * _loc8_;
                                                         while(!_loc12_)
                                                         {
                                                            _loc7_.y = _loc10_.y - _loc3_ / _loc5_ * _loc9_;
                                                            if(!(_loc12_ && _loc3_))
                                                            {
                                                               if(true)
                                                               {
                                                                  break loop1;
                                                               }
                                                               continue loop1;
                                                            }
                                                         }
                                                         continue loop0;
                                                      }
                                                      _loc11_ = this.§9J§.§0"!§.§2!f§(_loc10_.x,_loc10_.y);
                                                      if(!(_loc12_ && param1))
                                                      {
                                                         this.§9J§.§<!_§.§5V§(_loc11_.x,_loc11_.y);
                                                      }
                                                      §§goto(addr373);
                                                   }
                                                }
                                                §§goto(addr321);
                                             }
                                          }
                                          §§goto(addr326);
                                       }
                                       §§goto(addr335);
                                    }
                                    §§goto(addr269);
                                 }
                                 §§goto(addr373);
                              }
                              §§goto(addr227);
                           }
                           addr376:
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
         addr46:
      }
      
      private function §;!S§(param1:§!"8§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:Bitmap = null;
         var _loc4_:Bitmap = null;
         var _loc5_:MovieClip = null;
         var _loc6_:Object = null;
         if(!(_loc8_ && param1))
         {
            this.§8Q§ = getTimer();
            if(_loc7_)
            {
               §0"#§.§9"2§("Sound_PlaceBlock");
            }
         }
         var _loc2_:§;!T§ = this.§,!7§.§="§();
         if(_loc7_)
         {
            if(_loc2_.§`F§)
            {
               if(!_loc8_)
               {
                  this.§@!W§ = new Popup(§]!M§.§"!V§.Views.PopupView_ItemLocked[0],this.§9J§.§<!_§.§"p§());
                  if(_loc7_ || this)
                  {
                  }
                  §§goto(addr80);
               }
               this.§@!W§.open();
               §§goto(addr80);
            }
            else if(_loc6_ = this.§,B§(_loc2_))
            {
               if(_loc7_ || this)
               {
                  this.§9J§.§<!_§.§9i§(this.§'""§);
                  if(!_loc7_)
                  {
                  }
                  §§goto(addr80);
               }
               this.§'""§.addEventListener(MouseEvent.MOUSE_UP,this.§8!R§);
            }
            §§goto(addr80);
         }
         addr80:
         _loc3_ = _loc2_.§4"7§() as Bitmap;
         _loc4_ = new Bitmap(_loc3_.bitmapData);
         _loc5_ = this.§@!W§.getItemByName("MovieClip_UnlockItem").mClip;
         if(_loc7_ || this)
         {
            _loc4_.x = _loc5_.width / 2 - _loc4_.width / 2;
            loop0:
            while(true)
            {
               addr130:
               while(true)
               {
                  _loc4_.y = _loc5_.height / 2 - _loc4_.height / 2 - 45;
                  while(true)
                  {
                     if(!_loc8_)
                     {
                        _loc5_.addChild(_loc4_);
                        if(!(_loc8_ && param1))
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr130);
         }
      }
      
      private function §8!R§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(!this.§>%§)
            {
               loop0:
               while(true)
               {
                  §§push(Boolean(this.§'""§.mouseEnabled));
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§pop();
                           addr107:
                           do
                           {
                              §§push(getTimer() > this.§8Q§ + §<!o§);
                              if(!(_loc2_ || param1))
                              {
                                 continue loop2;
                              }
                           }
                           while(!(_loc3_ && param1));
                           
                           continue loop1;
                        }
                     }
                     while(§§pop())
                     {
                        if(!(_loc3_ && this))
                        {
                           if(_loc2_ || _loc2_)
                           {
                              if(!(_loc3_ && this))
                              {
                                 if(!(_loc3_ && param1))
                                 {
                                    this.§]!S§();
                                    do
                                    {
                                       this.§ u§();
                                    }
                                    while(_loc3_);
                                    
                                    addr98:
                                    break;
                                    addr98:
                                 }
                              }
                              else
                              {
                                 if(_loc2_ || this)
                                 {
                                    continue loop0;
                                 }
                                 addr131:
                                 this.§>%§ = null;
                              }
                              return;
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr98);
                     }
                     return;
                  }
               }
            }
            §§goto(addr131);
         }
         §§goto(addr98);
      }
      
      private function §=c§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            if(this.§9J§.§<!_§.§?F§)
            {
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr35);
               }
            }
            if(this.§>%§)
            {
               if(_loc3_)
               {
                  return;
               }
            }
            var _loc2_:§7a§ = §7a§.§^!g§(this.§9J§.§0"!§.§'!3§(this.§%-§));
            if(_loc3_)
            {
               if(this.§>!§.indexOf(_loc2_) <= -1)
               {
                  if(_loc2_ != null)
                  {
                     while(true)
                     {
                        this.§!S§(_loc2_,this.§<0§);
                        loop1:
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(_loc2_ == null);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    if(_loc3_ || param1)
                                    {
                                       §§push(§§pop());
                                       loop7:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                loop9:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §§push(!_loc2_);
                                                      loop10:
                                                      while(_loc3_ || _loc3_)
                                                      {
                                                         §§push(§§pop());
                                                         loop11:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  loop13:
                                                                  while(!(_loc4_ && _loc3_))
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     §§push(this.§<0§);
                                                                     loop14:
                                                                     while(_loc3_)
                                                                     {
                                                                        if(_loc3_ || param1)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 loop15:
                                                                                 for(; _loc3_; if(!(_loc3_ || this))
                                                                                 {
                                                                                    continue;
                                                                                 },§§goto(addr250),§§push(Boolean(§§pop())))
                                                                                 {
                                                                                    if(_loc3_ || _loc2_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       loop16:
                                                                                       while(!_loc4_)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                loop24:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   loop25:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         while(!§§pop())
                                                                                                         {
                                                                                                            §§push(!_loc2_);
                                                                                                            loop27:
                                                                                                            for(; !_loc4_; if(!(_loc3_ || _loc2_))
                                                                                                            {
                                                                                                               continue;
                                                                                                            },if(_loc4_ && this)
                                                                                                            {
                                                                                                               continue loop14;
                                                                                                            },if(_loc3_)
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  continue loop10;
                                                                                                               }
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  §§goto(addr117);
                                                                                                                  §§push(!§§pop());
                                                                                                               }
                                                                                                               §§goto(addr450);
                                                                                                            },§§goto(addr264))
                                                                                                            {
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  continue loop6;
                                                                                                               }
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  continue loop25;
                                                                                                               }
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  continue loop11;
                                                                                                               }
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  loop28:
                                                                                                                  for(; _loc3_; if(_loc4_ && param1)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  },§§goto(addr124))
                                                                                                                  {
                                                                                                                     if(!(_loc4_ && param1))
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        loop29:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc3_ || this)
                                                                                                                           {
                                                                                                                              addr183:
                                                                                                                              if(!(_loc3_ || _loc2_))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(this.§2%§);
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 continue loop27;
                                                                                                                              }
                                                                                                                              continue loop28;
                                                                                                                           }
                                                                                                                           addr222:
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              addr57:
                                                                                                                              return;
                                                                                                                           }
                                                                                                                           addr400:
                                                                                                                           loop39:
                                                                                                                           while(!_loc4_)
                                                                                                                           {
                                                                                                                              §§push(this.§1!_§);
                                                                                                                              while(!(_loc4_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                 while(!(_loc4_ && param1))
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       break loop25;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 loop50:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    addr478:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§1!_§);
                                                                                                                                       addr448:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          loop53:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             addr450:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                addr451:
                                                                                                                                                while(_loc3_)
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         break loop39;
                                                                                                                                                      }
                                                                                                                                                      addr454:
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      addr440:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            continue loop5;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            this.§`"-§(_loc2_);
                                                                                                                                                            addr444:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               continue loop5;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr476:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      continue loop50;
                                                                                                                                                   }
                                                                                                                                                   continue loop53;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr476);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§4N§);
                                                                                                                              addr438:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr439);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc4_ && param1))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              continue loop29;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§1!_§);
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue loop15;
                                                                                                                           }
                                                                                                                           addr264:
                                                                                                                           addr264:
                                                                                                                           while(!_loc4_)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              §§goto(addr267);
                                                                                                                           }
                                                                                                                           §§goto(addr438);
                                                                                                                           §§goto(addr183);
                                                                                                                        }
                                                                                                                        while(_loc3_)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           §§goto(addr308);
                                                                                                                        }
                                                                                                                        addr308:
                                                                                                                        continue loop12;
                                                                                                                        addr305:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr417:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        break loop13;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     break loop16;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr131);
                                                                                                            }
                                                                                                            while(!(_loc4_ && param1))
                                                                                                            {
                                                                                                               continue loop24;
                                                                                                            }
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                         addr216:
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            this.§]E§();
                                                                                                            §§goto(addr222);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr353);
                                                                                                         }
                                                                                                         addr216:
                                                                                                      }
                                                                                                      §§goto(addr264);
                                                                                                   }
                                                                                                   continue loop7;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr305);
                                                                                          }
                                                                                          §§goto(addr451);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             break loop15;
                                                                                          }
                                                                                          §§goto(addr381);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr474);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    §§goto(addr400);
                                                                                 }
                                                                              }
                                                                              §§goto(addr454);
                                                                           }
                                                                           §§goto(addr366);
                                                                        }
                                                                        §§goto(addr374);
                                                                        while(_loc3_ || param1)
                                                                        {
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              §§goto(addr216);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                                 addr347:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr448);
                                                                              }
                                                                           }
                                                                           §§goto(addr103);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        §§goto(addr392);
                                                                     }
                                                                  }
                                                                  while(_loc3_)
                                                                  {
                                                                     §§goto(addr396);
                                                                     §§push(this.§<0§);
                                                                  }
                                                                  §§goto(addr478);
                                                               }
                                                            }
                                                            §§goto(addr216);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            §§goto(addr345);
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         §§goto(addr440);
                                                      }
                                                   }
                                                   §§goto(addr351);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr417);
                                 }
                              }
                              addr403:
                           }
                           §§goto(addr441);
                        }
                     }
                  }
                  §§goto(addr403);
               }
               §§goto(addr472);
            }
            §§goto(addr392);
         }
         addr35:
      }
      
      private function §8x§(param1:Event) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:Point = null;
         var _loc3_:* = 0;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         if(_loc8_)
         {
            if(this.§>%§)
            {
               if(_loc8_)
               {
                  addr36:
                  _loc2_ = this.§>%§.subtract(this.§%-§);
                  if(!(_loc7_ && _loc3_))
                  {
                     if(_loc2_.length > §!!@§)
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
                                       if(_loc8_ || _loc3_)
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             loop4:
                                             while(true)
                                             {
                                                if(!_loc7_)
                                                {
                                                   _loc3_ = §§pop();
                                                   loop5:
                                                   while(true)
                                                   {
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         while(true)
                                                         {
                                                            if(this.§%-§.x > this.§^M§().x)
                                                            {
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!_loc8_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  if(!(_loc8_ || _loc3_))
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  if(!_loc8_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  §§push(-1);
                                                                  if(_loc8_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                        continue loop2;
                                                                     }
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                        addr214:
                                                                        while(true)
                                                                        {
                                                                           if(_loc8_ || this)
                                                                           {
                                                                              addr221:
                                                                              _loc3_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 if(_loc8_ || _loc2_)
                                                                                 {
                                                                                    loop7:
                                                                                    while(true)
                                                                                    {
                                                                                       addr100:
                                                                                       loop8:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§>%§ = this.§%-§.clone();
                                                                                          loop9:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                continue loop24;
                                                                                             }
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                continue loop1;
                                                                                             }
                                                                                             §§push(this);
                                                                                             §§push(§;!Q§);
                                                                                             if(_loc8_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop() * _loc3_);
                                                                                             }
                                                                                             §§pop().§@X§(§§pop());
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   continue loop5;
                                                                                                }
                                                                                                if(!(_loc7_ && this))
                                                                                                {
                                                                                                   if(_loc8_ || param1)
                                                                                                   {
                                                                                                      if(_loc8_ || _loc3_)
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr210:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         break loop9;
                                                                                                      }
                                                                                                      addr210:
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      break loop8;
                                                                                                   }
                                                                                                   addr180:
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc8_ || _loc3_)
                                                                                                   {
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                   addr240:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc2_.x >= 0)
                                                                                                      {
                                                                                                         addr247:
                                                                                                         §§push(1);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(int(§§pop()));
                                                                                                            addr248:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc3_ = §§pop();
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                         }
                                                                                                         addr247:
                                                                                                      }
                                                                                                      §§goto(addr247);
                                                                                                   }
                                                                                                }
                                                                                                addr155:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(-1);
                                                                                                addr245:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr247);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr211:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(-1);
                                                                                             addr212:
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                             §§goto(addr210);
                                                                                          }
                                                                                       }
                                                                                       continue loop3;
                                                                                    }
                                                                                    addr173:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(this.§%-§.y <= this.§^M§().y)
                                                                                    {
                                                                                       §§goto(addr173);
                                                                                    }
                                                                                    §§goto(addr210);
                                                                                 }
                                                                                 §§goto(addr221);
                                                                              }
                                                                              addr222:
                                                                           }
                                                                           §§goto(addr245);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr212);
                                                               }
                                                            }
                                                            §§goto(addr100);
                                                         }
                                                         addr201:
                                                      }
                                                      §§goto(addr222);
                                                   }
                                                }
                                                §§goto(addr247);
                                             }
                                          }
                                       }
                                       §§goto(addr214);
                                    }
                                 }
                                 §§goto(addr180);
                              }
                              §§goto(addr240);
                           }
                        }
                     }
                     §§goto(addr336);
                  }
                  §§goto(addr201);
               }
               else
               {
                  addr278:
                  §§push(Number((_loc4_ = this.§9J§.§^!b§.camera.getCenter()).x + (this.§9!u§.x - this.§]"0§.x)));
                  if(_loc8_)
                  {
                     _loc5_ = §§pop();
                     if(!_loc7_)
                     {
                        addr312:
                        _loc6_ = _loc4_.y + (this.§9!u§.y - this.§]"0§.y);
                        if(_loc8_)
                        {
                           this.§9J§.§^!b§.camera.§ in§(_loc5_,_loc6_);
                        }
                     }
                     §§goto(addr336);
                  }
                  §§goto(addr312);
               }
            }
            else if(this.§9!u§)
            {
               if(!_loc7_)
               {
                  if(§!!2§.§[E§.§-"6§())
                  {
                     if(_loc8_ || param1)
                     {
                     }
                  }
                  else
                  {
                     this.§9!u§ = null;
                  }
                  §§goto(addr336);
               }
               §§goto(addr278);
            }
            addr336:
            return;
         }
         §§goto(addr36);
      }
      
      private function §[H§(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§4I§() == 0)
            {
               loop0:
               while(true)
               {
                  §§push(param1.keyCode == Keyboard.UP);
                  if(!_loc3_)
                  {
                     §§push(§§pop());
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           addr478:
                           while(true)
                           {
                              §§pop();
                              addr479:
                              while(true)
                              {
                                 §§push(this.§]a§.y == -1);
                                 addr457:
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                 }
                              }
                           }
                           addr478:
                        }
                        while(true)
                        {
                           loop3:
                           while(!§§pop())
                           {
                              §§push(param1.keyCode == Keyboard.DOWN);
                              loop4:
                              for(; _loc4_ || this; while(!(_loc3_ && _loc2_))
                              {
                                 §§pop();
                                 §§goto(addr315);
                              })
                              {
                                 §§push(§§pop());
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          §§pop();
                                          while(true)
                                          {
                                             §§push(this.§]a§.y == 1);
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                                addr403:
                                                while(true)
                                                {
                                                   if(_loc3_ && _loc2_)
                                                   {
                                                      §§goto(addr478);
                                                   }
                                                }
                                                §§goto(addr479);
                                                addr259:
                                                if(_loc3_ && _loc3_)
                                                {
                                                   continue;
                                                }
                                                addr267:
                                                §§push(!§§pop());
                                                if(_loc4_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      loop17:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  this.§]a§.x = 1;
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr352:
                                                                     if(!_loc4_)
                                                                     {
                                                                        break;
                                                                        addr395:
                                                                     }
                                                                     if(_loc4_)
                                                                     {
                                                                        this.§]!=§.x = 0;
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr479);
                                                                     }
                                                                  }
                                                                  var _loc2_:* = param1.keyCode;
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     if(Keyboard.SPACE === _loc2_)
                                                                     {
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc3_)
                                                                           {
                                                                              addr597:
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr544:
                                                                           §§push(3);
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              addr552:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr687:
                                                                           }
                                                                        }
                                                                     }
                                                                     else if(Keyboard.SHIFT === _loc2_)
                                                                     {
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           §§push(1);
                                                                           if(_loc3_ && this)
                                                                           {
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr629:
                                                                           §§push(9);
                                                                           if(_loc3_ && this)
                                                                           {
                                                                              addr657:
                                                                           }
                                                                        }
                                                                        §§goto(addr745);
                                                                     }
                                                                     else if(Keyboard.CONTROL === _loc2_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(2);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§goto(addr552);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr579:
                                                                           §§push(5);
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr740:
                                                                           }
                                                                        }
                                                                     }
                                                                     else if(Keyboard.UP === _loc2_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§goto(addr544);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr699:
                                                                           §§push(13);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§goto(addr740);
                                                                           }
                                                                        }
                                                                     }
                                                                     else if(Keyboard.DOWN === _loc2_)
                                                                     {
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           §§push(4);
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr684:
                                                                           §§push(12);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§goto(addr687);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr717:
                                                                           }
                                                                        }
                                                                     }
                                                                     else if(Keyboard.LEFT === _loc2_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§goto(addr579);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr649:
                                                                           §§push(10);
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              §§goto(addr657);
                                                                           }
                                                                           §§goto(addr745);
                                                                        }
                                                                     }
                                                                     else if(Keyboard.RIGHT === _loc2_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(6);
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              §§goto(addr597);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr622:
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr699);
                                                                        }
                                                                     }
                                                                     else if(Keyboard.DELETE === _loc2_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(7);
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§goto(addr622);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr714:
                                                                           §§push(14);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§goto(addr717);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr740);
                                                                           }
                                                                        }
                                                                     }
                                                                     else if(Keyboard.PAGE_UP === _loc2_)
                                                                     {
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           §§push(8);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§goto(addr622);
                                                                           }
                                                                           §§goto(addr745);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr684);
                                                                        }
                                                                     }
                                                                     else if(Keyboard.PAGE_DOWN === _loc2_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§goto(addr629);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr714);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        if(Keyboard.C === _loc2_)
                                                                        {
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              §§goto(addr649);
                                                                           }
                                                                        }
                                                                        else if(Keyboard.V === _loc2_)
                                                                        {
                                                                           if(_loc4_ || this)
                                                                           {
                                                                              §§push(11);
                                                                              if(_loc3_)
                                                                              {
                                                                              }
                                                                              §§goto(addr745);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr684);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           if(Keyboard.D === _loc2_)
                                                                           {
                                                                              if(_loc4_ || _loc3_)
                                                                              {
                                                                                 §§goto(addr684);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr699);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              if(Keyboard.J === _loc2_)
                                                                              {
                                                                                 if(!(_loc3_ && this))
                                                                                 {
                                                                                    §§goto(addr699);
                                                                                 }
                                                                              }
                                                                              else if(Keyboard.E === _loc2_)
                                                                              {
                                                                                 if(_loc4_ || _loc2_)
                                                                                 {
                                                                                    §§goto(addr714);
                                                                                 }
                                                                              }
                                                                              else if(Keyboard.R !== _loc2_)
                                                                              {
                                                                                 addr745:
                                                                                 switch(§§pop())
                                                                                 {
                                                                                    case 0:
                                                                                       this.§4N§ = true;
                                                                                       break;
                                                                                       addr227:
                                                                                    case 1:
                                                                                       this.§<0§ = true;
                                                                                       break;
                                                                                       addr220:
                                                                                    case 2:
                                                                                       this.§1!_§ = true;
                                                                                       break;
                                                                                       addr213:
                                                                                    case 3:
                                                                                       this.§]"'§ = Math.min(this.§]"'§,-§+Y§);
                                                                                       break;
                                                                                       addr206:
                                                                                    case 4:
                                                                                       this.§]"'§ = Math.max(this.§]"'§,§+Y§);
                                                                                       addr187:
                                                                                       if(_loc4_ || param1)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr220);
                                                                                       break;
                                                                                    case 5:
                                                                                       this.§1^§ = Math.min(this.§1^§,-§+Y§);
                                                                                       break;
                                                                                       addr176:
                                                                                    case 6:
                                                                                       this.§1^§ = Math.max(this.§1^§,§+Y§);
                                                                                       addr155:
                                                                                       if(_loc4_ || param1)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr227);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr213);
                                                                                       }
                                                                                    case 7:
                                                                                       this.§2"$§();
                                                                                       addr137:
                                                                                       if(_loc4_ || _loc2_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr206);
                                                                                       break;
                                                                                    case 8:
                                                                                       this.§@q§(1);
                                                                                       break;
                                                                                       addr131:
                                                                                    case 9:
                                                                                       this.§@q§(-1);
                                                                                       break;
                                                                                       addr124:
                                                                                    case 10:
                                                                                       this.§5";§();
                                                                                       addr113:
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr187);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr137);
                                                                                       }
                                                                                    case 11:
                                                                                       this.§=§();
                                                                                       addr98:
                                                                                       if(_loc4_ || _loc2_)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr131);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr124);
                                                                                       }
                                                                                    case 12:
                                                                                       this.§]k§();
                                                                                       addr90:
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr176);
                                                                                       break;
                                                                                    case 13:
                                                                                       §9!l§.§6""§(this.§>!§,this.§9J§.§0"!§.§0z§.objects);
                                                                                       addr80:
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             addr52:
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr98);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr90);
                                                                                       }
                                                                                    case 14:
                                                                                       this.§@X§(§;!Q§);
                                                                                       addr58:
                                                                                       if(_loc4_ || _loc2_)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr113);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr80);
                                                                                       }
                                                                                    case 15:
                                                                                       §§push(this);
                                                                                       §§push(§;!Q§);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                       }
                                                                                       §§pop().§@X§(§§pop());
                                                                                       if(!(_loc3_ && param1))
                                                                                       {
                                                                                          if(_loc4_ || param1)
                                                                                          {
                                                                                             if(!(_loc3_ && param1))
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr155);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr58);
                                                                                          }
                                                                                          §§goto(addr52);
                                                                                       }
                                                                                 }
                                                                                 return;
                                                                                 §§push(16);
                                                                              }
                                                                              §§goto(addr745);
                                                                           }
                                                                           §§goto(addr745);
                                                                        }
                                                                        §§goto(addr745);
                                                                        if(_loc4_ || param1)
                                                                        {
                                                                           §§goto(addr740);
                                                                        }
                                                                     }
                                                                     §§goto(addr745);
                                                                  }
                                                                  §§goto(addr714);
                                                               }
                                                               else
                                                               {
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           if(!(_loc3_ && param1))
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(this.§]a§.x == 1);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§goto(addr259);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr348:
                                                                                          this.§]a§.x = -1;
                                                                                          §§goto(addr352);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(param1.keyCode == Keyboard.RIGHT);
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc4_ || param1))
                                                                                             {
                                                                                                while(!_loc3_)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   break loop16;
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr386:
                                                                                             }
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                continue loop6;
                                                                                             }
                                                                                             §§push(§§pop());
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                continue loop1;
                                                                                             }
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                continue loop5;
                                                                                             }
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                continue loop17;
                                                                                             }
                                                                                             continue loop4;
                                                                                          }
                                                                                          addr292:
                                                                                       }
                                                                                       §§goto(addr457);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr267);
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.§]!=§.y = 0;
                                                                                 addr423:
                                                                              }
                                                                              §§goto(addr395);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr348);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§]a§.x == -1);
                                                                     if(_loc4_)
                                                                     {
                                                                        addr345:
                                                                        §§push(!§§pop());
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr345);
                                                                        }
                                                                        addr346:
                                                                     }
                                                                     §§goto(addr347);
                                                                  }
                                                                  addr315:
                                                               }
                                                               if(_loc3_)
                                                               {
                                                                  break loop3;
                                                               }
                                                            }
                                                            continue loop0;
                                                         }
                                                         §§goto(addr221);
                                                      }
                                                   }
                                                   §§goto(addr403);
                                                }
                                                §§goto(addr292);
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          continue loop0;
                                       }
                                       §§push(param1.keyCode == Keyboard.LEFT);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop());
                                          continue loop1;
                                       }
                                       §§goto(addr386);
                                    }
                                 }
                              }
                           }
                           this.§]a§.y = -1;
                           §§goto(addr464);
                        }
                     }
                  }
                  §§goto(addr478);
               }
            }
            §§goto(addr221);
         }
         §§goto(addr246);
      }
      
      private function §@q§(param1:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§7a§ = null;
         var _loc3_:§``§ = null;
         for each(_loc2_ in this.§>!§)
         {
            if(_loc6_ || this)
            {
               _loc2_.§#!1§(param1);
            }
            _loc3_ = this.§9J§.§0"!§.§0z§.§0n§.getObjectWithID(_loc2_.uniqueID);
            if(!(_loc7_ && _loc2_))
            {
               (this.§9J§.§0"!§.§0z§.§0n§ as §`>§).§,x§(_loc3_,param1);
            }
         }
      }
      
      private function §1!&§(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            §§push(param1.keyCode == Keyboard.UP);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr385:
                        while(true)
                        {
                           §§push(this.§]a§.y == -1);
                        }
                     }
                     addr384:
                  }
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§push(param1.keyCode == Keyboard.DOWN);
                           loop6:
                           for(; !_loc4_; if(_loc4_ && _loc2_)
                           {
                              continue;
                           },§§goto(addr242))
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
                                       §§pop();
                                       loop9:
                                       while(_loc3_ || _loc2_)
                                       {
                                          §§push(this.§]a§.y == 1);
                                          loop10:
                                          while(!_loc4_)
                                          {
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§push(param1.keyCode == Keyboard.LEFT);
                                                   loop12:
                                                   for(; !_loc4_; while(!(_loc4_ && _loc2_))
                                                   {
                                                      §§goto(addr270);
                                                   })
                                                   {
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         §§push(§§pop());
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr325:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§]a§.x == -1);
                                                                        addr285:
                                                                        while(_loc3_)
                                                                        {
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     addr289:
                                                                     if(!_loc3_)
                                                                     {
                                                                        break loop13;
                                                                     }
                                                                     this.§]a§.x = 0;
                                                                     if(!_loc4_)
                                                                     {
                                                                        var _loc2_:* = param1.keyCode;
                                                                        addr157:
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(Keyboard.SPACE === _loc2_)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr458:
                                                                                    if(§§pop() === _loc2_)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr462:
                                                                                          §§push(4);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr497:
                                                                                          §§push(6);
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr520);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(37);
                                                                                       if(_loc3_ || _loc3_)
                                                                                       {
                                                                                          if(§§pop() === _loc2_)
                                                                                          {
                                                                                             if(_loc3_ || this)
                                                                                             {
                                                                                                addr483:
                                                                                                §§push(5);
                                                                                                if(_loc3_ || this)
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr520);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr497);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(39);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr495:
                                                                                                if(§§pop() === _loc2_)
                                                                                                {
                                                                                                   §§goto(addr497);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr520:
                                                                                                   loop22:
                                                                                                   switch(§§pop())
                                                                                                   {
                                                                                                      case 0:
                                                                                                         this.§4N§ = false;
                                                                                                         break;
                                                                                                         addr163:
                                                                                                      case 1:
                                                                                                         this.§<0§ = false;
                                                                                                         break;
                                                                                                         addr156:
                                                                                                      case 2:
                                                                                                         this.§1!_§ = false;
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         break;
                                                                                                      case 3:
                                                                                                         this.§]"'§ = Math.max(0,this.§]"'§);
                                                                                                         addr138:
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            dispatchEvent(new Event(Event.COMPLETE));
                                                                                                            break;
                                                                                                            addr127:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr156);
                                                                                                         }
                                                                                                         break;
                                                                                                      case 4:
                                                                                                         this.§]"'§ = Math.min(0,this.§]"'§);
                                                                                                         dispatchEvent(new Event(Event.COMPLETE));
                                                                                                         break;
                                                                                                         addr108:
                                                                                                         addr119:
                                                                                                      case 5:
                                                                                                         this.§1^§ = Math.max(0,this.§1^§);
                                                                                                         if(_loc3_ || param1)
                                                                                                         {
                                                                                                            if(_loc3_ || param1)
                                                                                                            {
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  dispatchEvent(new Event(Event.COMPLETE));
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     addr51:
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr163);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr108);
                                                                                                            }
                                                                                                         }
                                                                                                         break;
                                                                                                      case 6:
                                                                                                         this.§1^§ = Math.min(0,this.§1^§);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               dispatchEvent(new Event(Event.COMPLETE));
                                                                                                               if(!(_loc3_ || _loc2_))
                                                                                                               {
                                                                                                                  break loop22;
                                                                                                               }
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§goto(addr138);
                                                                                                         }
                                                                                                   }
                                                                                                   return;
                                                                                                   §§push(7);
                                                                                                }
                                                                                                §§goto(addr520);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr462);
                                                                           }
                                                                           else
                                                                           {
                                                                              if(Keyboard.SHIFT === _loc2_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(1);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§goto(addr520);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr437:
                                                                                       if(§§pop() === _loc2_)
                                                                                       {
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             §§push(3);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr449:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr520);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(40);
                                                                                          if(_loc3_ || param1)
                                                                                          {
                                                                                             §§goto(addr458);
                                                                                          }
                                                                                          §§goto(addr495);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr520);
                                                                                 }
                                                                                 §§goto(addr483);
                                                                              }
                                                                              else if(Keyboard.CONTROL === _loc2_)
                                                                              {
                                                                                 if(!(_loc4_ && _loc2_))
                                                                                 {
                                                                                    §§push(2);
                                                                                    if(_loc3_ || this)
                                                                                    {
                                                                                       §§goto(addr520);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr437);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr483);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(38);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§goto(addr437);
                                                                                 }
                                                                              }
                                                                              §§goto(addr449);
                                                                           }
                                                                        }
                                                                        §§goto(addr462);
                                                                        addr157:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr325);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(param1.keyCode == Keyboard.RIGHT);
                                                                     if(_loc4_ && _loc2_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     §§goto(addr228);
                                                                  }
                                                                  §§goto(addr285);
                                                               }
                                                               continue loop6;
                                                            }
                                                            §§push(§§pop());
                                                            addr242:
                                                            continue loop1;
                                                            if(!(_loc3_ || param1))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               continue loop12;
                                                            }
                                                            loop18:
                                                            while(§§pop())
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     if(_loc3_ || param1)
                                                                     {
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           if(!(_loc3_ || _loc2_))
                                                                           {
                                                                              addr372:
                                                                              this.§]a§.y = 0;
                                                                              break loop9;
                                                                           }
                                                                           this.§]a§.x = 0;
                                                                           addr210:
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr212:
                                                                              break;
                                                                           }
                                                                           §§goto(addr289);
                                                                        }
                                                                        addr340:
                                                                        if(_loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     §§goto(addr295);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(_loc3_ || this)
                                                                     {
                                                                        §§push(this.§]a§.x == 1);
                                                                        if(_loc3_)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              continue loop18;
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        continue loop12;
                                                                        §§pop();
                                                                     }
                                                                     §§goto(addr385);
                                                                  }
                                                               }
                                                               §§goto(addr210);
                                                            }
                                                            §§goto(addr157);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr384);
                                                      }
                                                   }
                                                   continue loop10;
                                                }
                                                this.§]a§.y = 0;
                                                §§goto(addr340);
                                             }
                                          }
                                          continue loop5;
                                       }
                                       §§goto(addr157);
                                    }
                                 }
                                 §§goto(addr334);
                              }
                           }
                           continue loop0;
                        }
                        §§goto(addr372);
                     }
                  }
               }
            }
         }
         §§goto(addr212);
      }
      
      private function §<!y§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§2"$§();
         }
      }
      
      private function §]k§(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§5";§();
            do
            {
               this.§=§();
            }
            while(!_loc3_);
            
         }
      }
      
      public function get §%-§() : Point
      {
         return this.§9J§.§"L§.§%-§;
      }
      
      public function update(param1:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Point = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(_loc10_)
         {
            this.§!!f§(false);
         }
         var _loc2_:Point = this.§9J§.§0"!§.§0z§.screenToBox2D(this.§9J§.§"L§.§%-§.x,this.§9J§.§"L§.§%-§.y);
         if(!(_loc9_ && this))
         {
            this.§3i§.x = _loc2_.x;
            if(!(_loc9_ && _loc2_))
            {
               this.§3i§.y = _loc2_.y;
            }
         }
         var _loc3_:int = this.§>!§.length - 1;
         while(true)
         {
            §§push(_loc3_);
            if(!_loc9_)
            {
               if(!(_loc9_ && _loc2_))
               {
                  if(§§pop() < 0)
                  {
                     if(!_loc9_)
                     {
                        if(this.§]a§.length > 0)
                        {
                           if(!_loc9_)
                           {
                              §§push(0.001);
                              loop1:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                    if(!_loc9_)
                                    {
                                       §§push(0.5);
                                       if(!_loc9_)
                                       {
                                          if(_loc10_ || _loc3_)
                                          {
                                             §§push(Number(§§pop()));
                                             continue loop1;
                                          }
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                    addr310:
                                    §§push(Math.abs(this.§1^§) > 0);
                                    if(_loc10_ || this)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!_loc9_)
                                          {
                                             §§pop();
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                addr452:
                                                if(Math.abs(this.§]"'§) > 0)
                                                {
                                                   addr453:
                                                   if(Math.abs(this.§1^§) < §3!_§)
                                                   {
                                                      addr459:
                                                      §§push(this);
                                                      §§push(this.§1^§);
                                                      if(_loc10_)
                                                      {
                                                         §§push(§§pop() * Math.pow(§6!m§,param1));
                                                      }
                                                      §§pop().§1^§ = §§pop();
                                                   }
                                                   if(Math.abs(this.§]"'§) < §3!_§)
                                                   {
                                                      addr423:
                                                      §§push(this);
                                                      §§push(this.§]"'§);
                                                      if(_loc10_)
                                                      {
                                                         §§push(§§pop() * Math.pow(§6!m§,param1));
                                                      }
                                                      §§pop().§]"'§ = §§pop();
                                                      if(!_loc9_)
                                                      {
                                                         if(!(_loc9_ && this))
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               addr381:
                                                               §§push(this);
                                                               §§push(this.§1^§);
                                                               if(_loc10_ || param1)
                                                               {
                                                                  §§push(param1);
                                                                  if(!(_loc9_ && this))
                                                                  {
                                                                     addr401:
                                                                     §§push(§§pop() * §§pop());
                                                                     §§push(this.§]"'§);
                                                                     if(_loc10_ || this)
                                                                     {
                                                                        addr410:
                                                                        §§push(§§pop() * param1);
                                                                     }
                                                                     §§pop().§ 7§(§§pop(),§§pop());
                                                                     addr413:
                                                                     if(!_loc9_)
                                                                     {
                                                                        addr358:
                                                                        §§push(this.§2%§);
                                                                        if(!(_loc9_ && param1))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(!(_loc9_ && this))
                                                                                 {
                                                                                    this.§5!]§();
                                                                                    addr340:
                                                                                    this.§,"3§();
                                                                                    addr380:
                                                                                    if(_loc10_ || _loc2_)
                                                                                    {
                                                                                       if(!(_loc10_ || _loc2_))
                                                                                       {
                                                                                          §§goto(addr413);
                                                                                       }
                                                                                       return;
                                                                                    }
                                                                                    addr380:
                                                                                    §§goto(addr380);
                                                                                 }
                                                                                 §§goto(addr423);
                                                                              }
                                                                              §§goto(addr380);
                                                                           }
                                                                           §§goto(addr340);
                                                                        }
                                                                        §§goto(addr452);
                                                                     }
                                                                     §§goto(addr423);
                                                                  }
                                                                  §§goto(addr410);
                                                               }
                                                               §§goto(addr401);
                                                               addr445:
                                                            }
                                                            §§goto(addr453);
                                                         }
                                                      }
                                                      §§goto(addr459);
                                                   }
                                                   §§goto(addr381);
                                                }
                                                §§goto(addr358);
                                             }
                                             §§goto(addr453);
                                          }
                                       }
                                    }
                                    §§goto(addr452);
                                 }
                              }
                           }
                        }
                        else
                        {
                           this.§]!=§.x = 0;
                           if(_loc9_ && this)
                           {
                           }
                           §§goto(addr310);
                        }
                        §§goto(addr310);
                     }
                     addr306:
                     this.§]!=§.y = 0;
                  }
                  else
                  {
                     if(!§!!2§.§[E§.§'%§(this.§>!§[_loc3_]))
                     {
                        if(_loc10_ || this)
                        {
                           this.§`"-§(this.§>!§[_loc3_]);
                           if(!_loc10_)
                           {
                              §§goto(addr306);
                           }
                           §§goto(addr310);
                        }
                     }
                     addr136:
                     _loc3_--;
                     addr135:
                     if(_loc10_ || param1)
                     {
                        continue;
                     }
                  }
                  §§goto(addr310);
               }
               §§goto(addr135);
            }
            §§goto(addr136);
         }
      }
      
      public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§1!_§ = false;
         }
         while(true)
         {
            this.§<0§ = false;
            while(_loc2_ || _loc1_)
            {
               this.§4N§ = false;
               do
               {
                  this.§9J§.§<!_§.§"p§().§+!m§().§2!W§();
               }
               while(!(_loc2_ || _loc2_));
               
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function §&P§(param1:Class) : void
      {
      }
      
      public function get §]"0§() : Point
      {
         return this.§3i§;
      }
      
      public function § U§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§=!6§ == null);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function §4%§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§>%§ == null);
         if(!(_loc1_ && _loc1_))
         {
            return !§§pop();
         }
      }
      
      public function §?!#§() : Boolean
      {
         return false;
      }
      
      public function §<J§() : Boolean
      {
         return this.§2%§;
      }
      
      public function §2"$§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(this.§>!§.length > 0)
            {
               loop0:
               while(true)
               {
                  if(param1)
                  {
                     addr93:
                     while(true)
                     {
                        §§push(this.§9J§);
                        addr95:
                        while(true)
                        {
                           §§pop().§&!F§.§1!E§();
                           addr97:
                           while(true)
                           {
                           }
                        }
                     }
                     addr93:
                  }
                  loop1:
                  while(true)
                  {
                     §§push(this.§9J§);
                     if(_loc3_)
                     {
                        §§pop().§0"!§.§<!8§(this.§>!§);
                        while(!_loc2_)
                        {
                           continue loop0;
                           this.§^N§();
                           if(_loc2_ && _loc2_)
                           {
                              continue;
                           }
                           if(!(_loc2_ && param1))
                           {
                              break loop1;
                           }
                           §§goto(addr93);
                        }
                     }
                     else
                     {
                        §§goto(addr95);
                     }
                     §§goto(addr97);
                  }
               }
            }
            return;
         }
         §§goto(addr93);
      }
      
      public function §@,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§^N§();
         }
      }
      
      public function §3'§(param1:String) : Boolean
      {
         return false;
      }
      
      public function §!!f§(param1:Boolean = true) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:Point = null;
         var _loc7_:§7a§ = null;
         var _loc8_:* = false;
         var _loc2_:§6W§ = this.§9J§.§<!_§.§`!v§.getItemByName("ContextMenu") as §6W§;
         if(!(_loc11_ && _loc3_))
         {
            §§push(this.§4I§());
            if(!_loc11_)
            {
               §§push(0);
               if(_loc12_)
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
                           while(true)
                           {
                              §§pop();
                              addr271:
                              while(true)
                              {
                                 §§push(this.§<0§);
                                 addr252:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                           }
                           addr270:
                        }
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(§§pop());
                              loop7:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§pop();
                                       loop9:
                                       while(_loc12_)
                                       {
                                          §§push(this.§1!_§);
                                          loop10:
                                          for(; _loc12_; while(!(_loc11_ && param1))
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc12_ || param1)
                                             {
                                                §§goto(addr215);
                                             }
                                             §§goto(addr225);
                                             §§goto(addr154);
                                          })
                                          {
                                             §§push(Boolean(§§pop()));
                                             while(true)
                                             {
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            loop32:
                                                            while(!(_loc11_ && param1))
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     loop18:
                                                                     while(_loc12_)
                                                                     {
                                                                        §§push(this.§<J§());
                                                                        loop19:
                                                                        for(; _loc12_ || _loc2_; while(true)
                                                                        {
                                                                           if(_loc11_ && _loc3_)
                                                                           {
                                                                              continue loop19;
                                                                           }
                                                                           if(_loc11_ && _loc3_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           if(_loc11_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§pop();
                                                                           §§goto(addr164);
                                                                        },§§goto(addr252))
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           while(_loc12_ || _loc3_)
                                                                           {
                                                                              if(!_loc12_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 loop22:
                                                                                 while(_loc12_ || param1)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          loop24:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§ U§());
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                                addr138:
                                                                                             }
                                                                                             loop25:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   continue loop22;
                                                                                                }
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   continue loop32;
                                                                                                }
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   continue loop7;
                                                                                                }
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   continue loop19;
                                                                                                }
                                                                                                addr275:
                                                                                                addr110:
                                                                                                loop29:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(!_loc2_.§'">§)
                                                                                                      {
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            if(_loc12_ || param1)
                                                                                                            {
                                                                                                               if(_loc12_ || _loc3_)
                                                                                                               {
                                                                                                                  addr65:
                                                                                                                  if(!(_loc11_ && _loc3_))
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc2_.setVisibility(true);
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           if(true)
                                                                                                                           {
                                                                                                                              break loop29;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr276:
                                                                                                                        _loc6_ = this.§^M§();
                                                                                                                        if(_loc12_)
                                                                                                                        {
                                                                                                                           _loc2_.x = _loc6_.x;
                                                                                                                           if(!(_loc11_ && this))
                                                                                                                           {
                                                                                                                              addr303:
                                                                                                                              _loc2_.y = _loc6_.y;
                                                                                                                           }
                                                                                                                           addr307:
                                                                                                                           var _loc3_:§9"8§ = this.§9J§.§<!_§.§`!v§.getItemByName("Rotate") as §9"8§;
                                                                                                                           var _loc4_:§9"8§ = this.§9J§.§<!_§.§`!v§.getItemByName("Duplicate") as §9"8§;
                                                                                                                           var _loc5_:§9"8§ = this.§9J§.§<!_§.§`!v§.getItemByName("Delete") as §9"8§;
                                                                                                                           if(!(_loc11_ && param1))
                                                                                                                           {
                                                                                                                              _loc3_.setVisibility(false);
                                                                                                                              if(!(_loc11_ && this))
                                                                                                                              {
                                                                                                                                 loop33:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc4_.setVisibility(false);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc5_.setVisibility(false);
                                                                                                                                       if(!_loc11_)
                                                                                                                                       {
                                                                                                                                          if(_loc11_ && param1)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             continue loop33;
                                                                                                                                          }
                                                                                                                                          §§goto(addr388);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr388:
                                                                                                                           §§push(this.§4I§());
                                                                                                                           if(!(_loc11_ && this))
                                                                                                                           {
                                                                                                                              if(§§pop() > 0)
                                                                                                                              {
                                                                                                                                 break loop34;
                                                                                                                              }
                                                                                                                              §§goto(addr568);
                                                                                                                           }
                                                                                                                           loop35:
                                                                                                                           for each(_loc7_ in this.§3!^§())
                                                                                                                           {
                                                                                                                              §§push(_loc7_.§"!C§());
                                                                                                                              if(_loc12_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc12_)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    addr442:
                                                                                                                                    §§push((AngryBirdsFP11.§>!7§ as §+`§).§&"4§(_loc7_.getName()));
                                                                                                                                    if(_loc12_ || param1)
                                                                                                                                    {
                                                                                                                                       addr561:
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                    }
                                                                                                                                    _loc8_ = §§pop();
                                                                                                                                    loop36:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr461:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc4_);
                                                                                                                                          if(_loc12_)
                                                                                                                                          {
                                                                                                                                             §§push(§!!2§.§[E§.§]"7§(_loc7_.getName()));
                                                                                                                                             if(_loc12_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                if(!(_loc11_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr485:
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   if(_loc12_ || param1)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!_loc11_)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            if(!(_loc11_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc7_.§0"&§());
                                                                                                                                                               if(_loc12_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(!§§pop());
                                                                                                                                                                  if(!(_loc11_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     addr521:
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc12_)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                        addr534:
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                     continue loop36;
                                                                                                                                                                  }
                                                                                                                                                                  §§pop();
                                                                                                                                                                  addr526:
                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                  if(_loc11_ && param1)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop36;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr521);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr526);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr534);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr521);
                                                                                                                                             }
                                                                                                                                             §§goto(addr485);
                                                                                                                                          }
                                                                                                                                          §§goto(addr526);
                                                                                                                                       }
                                                                                                                                       continue loop35;
                                                                                                                                    }
                                                                                                                                    addr442:
                                                                                                                                    addr563:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(§!!2§.§[E§.§'%§(_loc7_));
                                                                                                                                    if(_loc12_)
                                                                                                                                    {
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(_loc12_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_);
                                                                                                                                          §§push(_loc7_.§'5§());
                                                                                                                                          if(!_loc11_)
                                                                                                                                          {
                                                                                                                                             §§push(!§§pop());
                                                                                                                                          }
                                                                                                                                          §§pop().setVisibility(§§pop());
                                                                                                                                          if(_loc12_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr442);
                                                                                                                                          }
                                                                                                                                          §§goto(addr563);
                                                                                                                                       }
                                                                                                                                       §§goto(addr442);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr561);
                                                                                                                           }
                                                                                                                           addr568:
                                                                                                                           return;
                                                                                                                           §§push(0);
                                                                                                                        }
                                                                                                                        §§goto(addr303);
                                                                                                                     }
                                                                                                                     addr72:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr65);
                                                                                                                     }
                                                                                                                     addr164:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§4%§());
                                                                                                                     if(_loc12_ || _loc2_)
                                                                                                                     {
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           continue loop25;
                                                                                                                        }
                                                                                                                        continue loop19;
                                                                                                                     }
                                                                                                                     continue loop12;
                                                                                                                  }
                                                                                                                  continue loop12;
                                                                                                               }
                                                                                                               §§goto(addr119);
                                                                                                            }
                                                                                                            §§goto(addr131);
                                                                                                         }
                                                                                                         §§goto(addr276);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         if(_loc2_.§'">§)
                                                                                                         {
                                                                                                            addr119:
                                                                                                            if(_loc11_ && _loc3_)
                                                                                                            {
                                                                                                               continue loop24;
                                                                                                            }
                                                                                                            if(!_loc12_)
                                                                                                            {
                                                                                                               continue loop9;
                                                                                                            }
                                                                                                            _loc2_.setVisibility(false);
                                                                                                            addr131:
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                   §§goto(addr119);
                                                                                                   §§goto(addr131);
                                                                                                }
                                                                                                if(this.§4I§() > 0)
                                                                                                {
                                                                                                   §§goto(addr276);
                                                                                                }
                                                                                                §§goto(addr307);
                                                                                             }
                                                                                             continue loop32;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr138);
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                        while(!_loc11_)
                                                                        {
                                                                           if(_loc12_ || _loc3_)
                                                                           {
                                                                              §§pop();
                                                                              break loop18;
                                                                           }
                                                                           §§goto(addr270);
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§4N§);
                                                                        continue loop10;
                                                                     }
                                                                  }
                                                                  addr225:
                                                               }
                                                               §§goto(addr185);
                                                            }
                                                            continue loop1;
                                                         }
                                                         addr215:
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                }
                                             }
                                          }
                                          continue loop8;
                                       }
                                       §§goto(addr271);
                                    }
                                 }
                                 §§goto(addr235);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr275);
         }
         §§goto(addr72);
      }
      
      public function §!S§(param1:§7a§, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(§!!2§.§[E§.§'%§(param1));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(param2);
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              this.§^N§();
                              addr127:
                              while(true)
                              {
                              }
                           }
                           addr115:
                        }
                        loop5:
                        while(true)
                        {
                           if(this.§>!§.indexOf(param1) <= -1)
                           {
                              while(true)
                              {
                                 §§push(param1.isGround());
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 if(!_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       return;
                                    }
                                    while(!(_loc3_ && _loc3_))
                                    {
                                       while(true)
                                       {
                                       }
                                       if(!(_loc4_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       if(!_loc3_)
                                       {
                                          return;
                                       }
                                       addr99:
                                       if(_loc4_)
                                       {
                                          break loop5;
                                       }
                                       §§goto(addr127);
                                    }
                                    if(_loc4_)
                                    {
                                       if(!(_loc4_ || param2))
                                       {
                                          return;
                                       }
                                       addr133:
                                       continue;
                                    }
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    param1.§,"=§(true);
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr115);
                                    }
                                    §§goto(addr127);
                                 }
                              }
                              continue loop2;
                           }
                           §§goto(addr99);
                        }
                        return;
                     }
                  }
               }
               §§goto(addr133);
            }
         }
         §§goto(addr91);
      }
      
      public function §`"-§(param1:§7a§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§>!§.indexOf(param1) > -1)
            {
               loop0:
               while(true)
               {
                  this.§>!§.splice(this.§>!§.indexOf(param1),1);
                  addr77:
                  while(true)
                  {
                     param1.§,"=§(false);
                     if(_loc3_ || _loc2_)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr25);
               }
            }
            addr25:
            return;
         }
         §§goto(addr77);
      }
      
      public function §^N§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§7a§ = null;
         if(!(_loc4_ && this))
         {
            this.§>%§ = null;
         }
         var _loc2_:int = 0;
         var _loc3_:* = this.§>!§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_)
            {
               _loc1_.§,"=§(false);
            }
         }
         if(!_loc4_)
         {
            §§push(this.§2%§);
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
                        addr128:
                        while(true)
                        {
                           §§push(this.§>!§.length > 0);
                           if(!_loc5_)
                           {
                              continue loop3;
                           }
                           if(!_loc5_)
                           {
                              break;
                           }
                           if(!_loc5_)
                           {
                              continue loop1;
                           }
                        }
                        continue loop2;
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           this.§9J§.§0"!§.§-v§();
                           addr104:
                           while(_loc5_ || _loc3_)
                           {
                           }
                           §§goto(addr128);
                           addr78:
                           if(_loc5_ || _loc2_)
                           {
                              return;
                              addr85:
                           }
                        }
                     }
                     while(true)
                     {
                        this.§>!§ = new Vector.<§7a§>();
                        if(!_loc4_)
                        {
                           §§goto(addr78);
                        }
                        §§goto(addr104);
                     }
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      public function §4I§() : int
      {
         return this.§>!§.length;
      }
      
      public function §^M§() : Point
      {
         var _loc1_:b2Vec2 = this.§4"5§();
         return this.§9J§.§0"!§.§2!f§(_loc1_.x,_loc1_.y);
      }
      
      public function §4"5§() : b2Vec2
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc1_:b2Vec2 = new b2Vec2();
         if(!_loc4_)
         {
            if(this.§>!§.length > 0)
            {
               if(_loc3_)
               {
                  addr32:
                  _loc2_ = this.§,""§(this.§>!§);
                  if(_loc3_)
                  {
                     _loc1_.x = _loc2_.x + _loc2_.width / 2;
                     if(_loc3_ || _loc2_)
                     {
                        addr66:
                        _loc1_.y = _loc2_.y + _loc2_.height / 2;
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr66);
               }
               else
               {
                  addr91:
                  _loc1_.y = 0;
               }
            }
            else
            {
               _loc1_.x = 0;
               if(!_loc4_)
               {
                  §§goto(addr91);
               }
            }
            addr94:
            return _loc1_;
         }
         §§goto(addr32);
      }
      
      public function §3!^§() : Vector.<§7a§>
      {
         return this.§>!§;
      }
      
      protected function §,""§(param1:Vector.<§7a§>, param2:Number = 0) : Rectangle
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc8_:b2Vec2 = null;
         var _loc3_:* = Number(Number.MAX_VALUE);
         var _loc4_:* = Number(Number.MAX_VALUE);
         §§push(-Number.MAX_VALUE);
         if(!_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(-Number.MAX_VALUE);
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:int = 0;
         loop0:
         while(_loc7_ < param1.length)
         {
            _loc8_ = param1[_loc7_].getCenter();
            if(!_loc10_)
            {
               §§push(Number(Math.min(_loc3_,_loc8_.x)));
               while(true)
               {
                  _loc3_ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(Number(Math.max(_loc5_,_loc8_.x)));
                     addr120:
                     while(true)
                     {
                        _loc5_ = §§pop();
                        addr121:
                        while(_loc9_)
                        {
                        }
                        continue loop2;
                     }
                  }
                  addr104:
                  if(_loc10_ && param2)
                  {
                     continue;
                  }
                  _loc4_ = §§pop();
                  loop7:
                  while(true)
                  {
                     addr60:
                     loop8:
                     while(true)
                     {
                        §§push(Number(Math.max(_loc6_,_loc8_.y)));
                        if(_loc9_ || _loc3_)
                        {
                           _loc6_ = §§pop();
                           continue loop7;
                        }
                        addr102:
                        while(!_loc10_)
                        {
                           §§goto(addr104);
                           continue loop8;
                        }
                        §§goto(addr120);
                     }
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               §§goto(addr102);
            }
         }
         return new Rectangle(_loc3_ - param2,_loc4_ - param2,_loc5_ - _loc3_ + param2,_loc6_ - _loc4_ + param2);
      }
      
      protected function §+!W§(param1:§7a§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:Rectangle = this.§9J§.§^!b§.camera.§?$§();
         if(!(_loc8_ && param1))
         {
            _loc2_.y = §4!v§;
            if(!(_loc8_ && _loc2_))
            {
               addr40:
               _loc2_.height += §>7§.§'!]§;
            }
            var _loc3_:Rectangle = param1.§&8§();
            if(_loc7_ || _loc3_)
            {
               _loc2_.right -= _loc3_.right;
               loop0:
               while(true)
               {
                  _loc2_.bottom -= _loc3_.top;
                  addr237:
                  while(true)
                  {
                     _loc2_.left -= _loc3_.left;
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               §§goto(addr119);
            }
         }
         §§goto(addr40);
      }
      
      private function §6!V§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§7a§ = null;
         if(!(_loc5_ && this))
         {
            this.§2%§ = true;
         }
         while(true)
         {
            while(true)
            {
               this.§[!o§ = this.§]"0§.x;
               do
               {
                  this.§^5§ = this.§]"0§.y;
               }
               while(!_loc4_);
               
               if(!_loc5_)
               {
                  if(true)
                  {
                     for each(_loc1_ in this.§>!§)
                     {
                        if(!(_loc5_ && this))
                        {
                           this.§&!L§(_loc1_);
                        }
                     }
                  }
                  continue;
                  return;
               }
               break;
            }
         }
      }
      
      private function §]!S§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§8@§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop5:
                  while(true)
                  {
                     if(this.§2%§)
                     {
                        if(_loc1_)
                        {
                           §0"#§.§9"2§("Sound_PlaceBlock");
                        }
                        while(true)
                        {
                        }
                        addr106:
                     }
                     loop7:
                     while(true)
                     {
                        this.§9!u§ = null;
                        loop8:
                        while(true)
                        {
                           this.§8@§ = null;
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 continue loop8;
                              }
                              if(!_loc1_)
                              {
                                 break;
                              }
                              this.§2%§ = false;
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    continue loop7;
                                 }
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 if(_loc1_ || this)
                                 {
                                    continue;
                                 }
                              }
                              while(true)
                              {
                                 this.§8@§ = null;
                                 continue loop5;
                              }
                              if(_loc1_ || _loc2_)
                              {
                                 break loop8;
                              }
                           }
                           continue loop0;
                        }
                        addr49:
                        if(_loc1_ || _loc2_)
                        {
                           break loop5;
                        }
                        continue loop5;
                     }
                  }
                  return;
                  addr56:
               }
               while(true)
               {
                  this.§9J§.§<!_§.§9i§(null);
                  continue loop0;
               }
            }
         }
         §§goto(addr56);
      }
      
      private function §]E§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§=!6§ = new Point();
            while(true)
            {
               this.§=!6§.x = this.§]"0§.x;
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            this.§=!6§.y = this.§]"0§.y;
            if(_loc1_)
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function § u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§=!6§ = null;
            do
            {
               this.§,"3§();
            }
            while(!_loc2_);
            
         }
      }
      
      public function §@X§(param1:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:§7a§ = null;
         var _loc6_:* = NaN;
         var _loc2_:int = 0;
         var _loc3_:b2Vec2 = this.§4"5§();
         var _loc4_:Point = new Point(_loc3_.x,_loc3_.y);
         for each(_loc5_ in this.§>!§)
         {
            _loc5_.§>"?§(param1,_loc4_);
            if(_loc10_)
            {
               §§push(_loc5_.§?"1§());
               if(_loc10_)
               {
                  §§push(Number(§§pop()));
               }
               _loc6_ = §§pop();
               if(_loc10_)
               {
                  this.§+!W§(_loc5_);
               }
            }
         }
      }
      
      public function §,B§(param1:§;!T§) : Object
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = null;
         if(_loc4_ || _loc3_)
         {
            if(§!!2§.§[E§.§'%§())
            {
               while(true)
               {
                  §§push(this.§8@§);
                  if(_loc4_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_ || _loc3_)
                        {
                           §§push(this.§8@§);
                           if(_loc4_)
                           {
                              addr83:
                              §§pop().§%z§();
                              loop1:
                              for(; _loc4_; if(_loc5_ && this)
                              {
                                 continue;
                              },if(false)
                              {
                                 §§goto(addr50);
                              },§§goto(addr101))
                              {
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    §§goto(addr98);
                                 }
                                 this.§2"$§();
                                 loop2:
                                 while(true)
                                 {
                                    addr50:
                                    addr101:
                                    while(true)
                                    {
                                       this.§8@§ = param1;
                                       while(_loc4_)
                                       {
                                          dispatchEvent(new Event(Event.CHANGE));
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             continue loop1;
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                              continue;
                              addr84:
                           }
                           §§push(§§pop().getItemName());
                           if(!_loc5_)
                           {
                              §§push(§§pop());
                           }
                           var _loc2_:* = §§pop();
                           if(_loc4_)
                           {
                              if(_loc2_.indexOf("BACKGROUND_") == 0)
                              {
                                 if(_loc4_)
                                 {
                                    §§push(§#!j§.§[E§);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop().§0"!§);
                                       if(!_loc5_)
                                       {
                                          §§pop().§0z§.background.resetLevelBackground(_loc2_);
                                          if(!(_loc5_ && param1))
                                          {
                                             addr147:
                                             addr145:
                                             §§push(§#!j§.§[E§.§0"!§);
                                             if(_loc4_ || this)
                                             {
                                                §§pop().§-v§();
                                                if(_loc5_)
                                                {
                                                }
                                                this.§8@§.§%q§();
                                                this.§6!V§();
                                                addr225:
                                                if(_loc5_ && _loc2_)
                                                {
                                                   §§goto(addr225);
                                                }
                                                addr197:
                                                return _loc3_;
                                                addr195:
                                                addr221:
                                             }
                                             else
                                             {
                                                addr162:
                                                _loc3_ = §§pop().§,!D§(_loc2_,this.§]"0§.x,this.§]"0§.y,false);
                                             }
                                             if(_loc3_)
                                             {
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   this.§!S§(§7a§.§^!g§(_loc3_),false);
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      §§goto(addr195);
                                                   }
                                                   §§goto(addr225);
                                                }
                                                §§goto(addr195);
                                             }
                                             §§goto(addr197);
                                          }
                                          §§goto(addr221);
                                       }
                                       §§goto(addr162);
                                    }
                                    §§goto(addr147);
                                 }
                                 §§goto(addr197);
                              }
                              else
                              {
                                 §§push(this.§9J§.§0"!§);
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr145);
                        }
                        §§goto(addr84);
                     }
                     §§goto(addr50);
                  }
                  §§goto(addr83);
               }
            }
            addr98:
            return null;
         }
         §§goto(addr100);
      }
      
      public function §,"3§() : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc12_:§7a§ = null;
         if(!(_loc14_ && _loc3_))
         {
            if(this.§=!6§ != null)
            {
               loop0:
               while(true)
               {
                  if(this.§=!6§.y > this.§]"0§.y)
                  {
                     §§push(Number(this.§]"0§.y));
                     loop1:
                     while(true)
                     {
                        _loc1_ = §§pop();
                        loop2:
                        while(true)
                        {
                           if(_loc13_)
                           {
                              §§push(Number(this.§=!6§.y));
                              loop3:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 while(!_loc14_)
                                 {
                                    if(_loc13_ || _loc3_)
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          if(this.§=!6§.x <= this.§]"0§.x)
                                          {
                                             if(!(_loc14_ && _loc1_))
                                             {
                                                addr140:
                                                §§push(Number(this.§=!6§.x));
                                                if(!_loc13_)
                                                {
                                                   continue loop3;
                                                }
                                                _loc3_ = §§pop();
                                             }
                                             addr143:
                                             if(_loc14_)
                                             {
                                                break;
                                             }
                                             if(_loc13_ || _loc2_)
                                             {
                                                addr112:
                                                §§push(Number(this.§]"0§.x));
                                                if(!(_loc14_ && _loc3_))
                                                {
                                                   _loc4_ = §§pop();
                                                   addr221:
                                                   var _loc5_:Point = new Point(_loc3_,_loc1_);
                                                   var _loc6_:Point = new Point(_loc4_,_loc2_);
                                                   var _loc7_:Array = (_loc7_ = this.§9J§.§0"!§.§0z§.objects.getObjectsWithinBoundingBox(_loc5_,_loc6_)).concat(this.§9J§.§0"!§.§0z§.slingshot.getObjectsWithinBoundingBox(_loc5_,_loc6_));
                                                   var _loc8_:* = Number(0);
                                                   if(!_loc14_)
                                                   {
                                                      _loc8_ = Number(0);
                                                   }
                                                   addr271:
                                                   §§push(_loc8_);
                                                   if(!(_loc14_ && _loc2_))
                                                   {
                                                      if(!_loc14_)
                                                      {
                                                         if(§§pop() >= this.§>!§.length)
                                                         {
                                                            if(!_loc14_)
                                                            {
                                                               if(!(_loc14_ && _loc3_))
                                                               {
                                                                  if(!(_loc14_ && _loc3_))
                                                                  {
                                                                     §§push(Number(0));
                                                                     if(!_loc14_)
                                                                     {
                                                                        addr306:
                                                                        if(_loc13_)
                                                                        {
                                                                           if(!_loc14_)
                                                                           {
                                                                              _loc8_ = §§pop();
                                                                              if(_loc13_ || _loc1_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    addr324:
                                                                                    _loc8_++;
                                                                                    addr325:
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       §§goto(addr271);
                                                                                    }
                                                                                    addr320:
                                                                                    §§goto(addr320);
                                                                                    addr322:
                                                                                    addr323:
                                                                                 }
                                                                                 addr418:
                                                                                 if(_loc8_ < _loc7_.length)
                                                                                 {
                                                                                    _loc12_ = §7a§.§^!g§(_loc7_[_loc8_]);
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       §§push(this.§>!§.indexOf(_loc12_) == -1);
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr416:
                                                                                             §§pop();
                                                                                             §§push(§!!2§.§[E§.§'%§(_loc12_));
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                             }
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr416);
                                                                                             addr417:
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                if(_loc13_ || _loc1_)
                                                                                                {
                                                                                                   this.§!S§(§7a§.§^!g§(_loc7_[_loc8_]),true);
                                                                                                }
                                                                                                §§goto(addr417);
                                                                                             }
                                                                                             addr405:
                                                                                          }
                                                                                          §§push(_loc8_);
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             §§push(§§pop() + 1);
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          _loc8_ = §§pop();
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr416);
                                                                                             }
                                                                                             §§goto(addr418);
                                                                                          }
                                                                                          §§goto(addr405);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr416);
                                                                                 }
                                                                              }
                                                                              §§goto(addr422);
                                                                           }
                                                                           §§goto(addr322);
                                                                        }
                                                                        §§goto(addr323);
                                                                     }
                                                                     §§goto(addr418);
                                                                  }
                                                                  addr340:
                                                                  this.§`"-§(this.§>!§[_loc8_]);
                                                                  §§goto(addr320);
                                                               }
                                                               §§goto(addr325);
                                                            }
                                                            addr422:
                                                            var _loc9_:Point = this.§9J§.§0"!§.§0z§.§4!5§(_loc5_.x,_loc5_.y);
                                                            var _loc10_:Point = this.§9J§.§0"!§.§0z§.§4!5§(_loc6_.x,_loc6_.y);
                                                            var _loc11_:Rectangle = new Rectangle(_loc9_.x,_loc9_.y,_loc10_.x - _loc9_.x,_loc10_.y - _loc9_.y);
                                                            if(!_loc14_)
                                                            {
                                                               this.§9J§.§<!_§.§[!9§(_loc11_);
                                                            }
                                                            return;
                                                         }
                                                         if(_loc7_.indexOf(this.§>!§[_loc8_].getObject()) == -1)
                                                         {
                                                            §§goto(addr340);
                                                         }
                                                         §§goto(addr325);
                                                      }
                                                      §§goto(addr324);
                                                   }
                                                   §§goto(addr306);
                                                   addr63:
                                                   addr120:
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(!(_loc13_ || _loc3_))
                                                   {
                                                      return;
                                                      addr220:
                                                   }
                                                   §§push(Number(this.§]"0§.y));
                                                }
                                                addr200:
                                             }
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                continue loop5;
                                             }
                                          }
                                          else
                                          {
                                             §§push(Number(this.§]"0§.x));
                                             loop6:
                                             for(; _loc13_ || this; §§push(Number(this.§=!6§.x)),if(_loc13_)
                                             {
                                                continue loop1;
                                             })
                                             {
                                                if(_loc13_ || _loc2_)
                                                {
                                                   if(!(_loc14_ && _loc3_))
                                                   {
                                                      _loc3_ = §§pop();
                                                      while(true)
                                                      {
                                                         if(!(_loc14_ && _loc3_))
                                                         {
                                                            if(!(_loc13_ || _loc1_))
                                                            {
                                                               this.§9J§.§<!_§.§[!9§(null);
                                                            }
                                                            else
                                                            {
                                                               addr215:
                                                            }
                                                            continue loop6;
                                                            break;
                                                         }
                                                         §§goto(addr143);
                                                      }
                                                      §§goto(addr220);
                                                      addr92:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         _loc1_ = §§pop();
                                                      }
                                                      addr199:
                                                   }
                                                   §§goto(addr200);
                                                }
                                                else
                                                {
                                                   §§goto(addr140);
                                                }
                                             }
                                          }
                                          §§goto(addr112);
                                       }
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                              }
                              addr195:
                           }
                           §§goto(addr199);
                        }
                        if(!(_loc13_ || _loc3_))
                        {
                           continue;
                        }
                        _loc4_ = §§pop();
                        if(_loc13_)
                        {
                           if(!(_loc14_ && this))
                           {
                              if(_loc14_)
                              {
                                 §§goto(addr186);
                              }
                              if(false)
                              {
                                 §§goto(addr63);
                              }
                              §§goto(addr221);
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr92);
                     }
                  }
                  §§goto(addr195);
               }
            }
         }
         §§goto(addr215);
      }
      
      public function §5";§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§7a§ = null;
         if(_loc4_)
         {
            this.§75§ = new Vector.<§7a§>();
         }
         var _loc3_:* = this.§>!§;
         for each(_loc1_ in _loc3_)
         {
            if(!_loc5_)
            {
               if(!_loc1_.§0"&§())
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     this.§75§.push(_loc1_);
                  }
               }
            }
         }
      }
      
      public function §=§() : Vector.<§7a§>
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:§7a§ = null;
         var _loc7_:§7a§ = null;
         var _loc1_:Vector.<§7a§> = new Vector.<§7a§>();
         if(_loc10_ || _loc1_)
         {
            §§push(§!!2§.§[E§.§]"7§());
            loop0:
            for(; §§pop(); loop2:
            while(!(_loc11_ && _loc2_))
            {
               if(!§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§pop();
                     addr97:
                     while(true)
                     {
                        addr52:
                        do
                        {
                           §§push(this.§75§.length == 0);
                           if(!_loc10_)
                           {
                              continue loop3;
                           }
                        }
                        while(!(_loc11_ && this));
                        
                        continue loop2;
                     }
                  }
               }
               loop6:
               while(!§§pop())
               {
                  do
                  {
                     this.§9J§.§&!F§.§1!E§();
                     if(!(_loc10_ || _loc3_))
                     {
                        continue;
                     }
                     if(!_loc10_)
                     {
                        break loop6;
                     }
                     if(true)
                     {
                        var _loc2_:Rectangle = this.§,""§(this.§75§);
                        var _loc3_:Point = new Point(_loc2_.x + _loc2_.width / 2,_loc2_.y + _loc2_.height / 2);
                        §§push(this.§]"0§.x - _loc3_.x);
                        if(!_loc11_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc4_:* = §§pop();
                        §§push(this.§]"0§.y - _loc3_.y);
                        if(_loc10_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc5_:* = §§pop();
                        if(_loc10_ || _loc1_)
                        {
                           this.§^N§();
                        }
                        var _loc8_:int = 0;
                        var _loc9_:* = this.§75§;
                        addr456:
                        for each(_loc6_ in _loc9_)
                        {
                           §§push(_loc6_.isTexture());
                           if(!(_loc11_ && this))
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc10_)
                              {
                                 §§push(§§pop());
                                 if(_loc10_ || _loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc11_)
                                       {
                                          addr194:
                                          §§pop();
                                          if(!_loc11_)
                                          {
                                             §§push(this.§9J§);
                                             if(_loc10_)
                                             {
                                                §§push(§§pop().§0"!§);
                                                if(!(_loc11_ && _loc1_))
                                                {
                                                   addr395:
                                                   addr394:
                                                   addr396:
                                                   if(§§pop().§0J§() < 1)
                                                   {
                                                      addr397:
                                                      §§goto(addr456);
                                                   }
                                                   §§push(Boolean(_loc6_.§'5§()));
                                                   if(Boolean(_loc6_.§'5§()))
                                                   {
                                                      addr404:
                                                      §§pop();
                                                      addr405:
                                                      §§push(this.§9J§.§0"!§);
                                                      if(!_loc11_)
                                                      {
                                                         addr338:
                                                         §§push(§§pop().§<!%§() < 1);
                                                         if(_loc10_)
                                                         {
                                                            if(!(_loc11_ && this))
                                                            {
                                                               addr348:
                                                               if(§§pop())
                                                               {
                                                                  addr350:
                                                                  §§goto(addr456);
                                                               }
                                                               §§push(_loc6_.§"!C§());
                                                               if(!(_loc11_ && this))
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     if(!_loc11_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           addr366:
                                                                           §§goto(addr456);
                                                                        }
                                                                        §§push(_loc6_.§^_§());
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(!_loc11_)
                                                                           {
                                                                              addr376:
                                                                              §§push(§§pop());
                                                                              if(!_loc11_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    addr379:
                                                                                    §§pop();
                                                                                    §§push(_loc6_.§>!r§());
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                    }
                                                                                    §§goto(addr379);
                                                                                    addr380:
                                                                                 }
                                                                                 addr317:
                                                                                 §§push(§§pop());
                                                                                 if(!(_loc11_ && _loc1_))
                                                                                 {
                                                                                    addr325:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr326:
                                                                                       §§pop();
                                                                                       addr327:
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          §§push(this.§9J§);
                                                                                          if(!(_loc11_ && _loc1_))
                                                                                          {
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                §§push(§§pop().§0"!§);
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§push(§§pop().§=!I§());
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      if(_loc10_ || _loc1_)
                                                                                                      {
                                                                                                         §§push(1);
                                                                                                         if(!(_loc11_ && _loc1_))
                                                                                                         {
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               §§push(§§pop() < §§pop());
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  if(_loc10_ || this)
                                                                                                                  {
                                                                                                                     if(_loc10_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(!(_loc11_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr268:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(!(_loc11_ && this))
                                                                                                                              {
                                                                                                                                 if(!_loc11_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§9J§);
                                                                                                                                    if(!_loc11_)
                                                                                                                                    {
                                                                                                                                       addr282:
                                                                                                                                       §§push(§§pop().§0"!§);
                                                                                                                                       if(_loc10_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          addr290:
                                                                                                                                          §§pop().dispatchEvent(new §!"8§(§!"8§.§%"-§));
                                                                                                                                          addr295:
                                                                                                                                          if(!(_loc11_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(!_loc11_)
                                                                                                                                             {
                                                                                                                                                if(_loc10_)
                                                                                                                                                {
                                                                                                                                                   if(_loc10_)
                                                                                                                                                   {
                                                                                                                                                      if(false)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr379);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr468);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr397);
                                                                                                                                                }
                                                                                                                                                §§goto(addr405);
                                                                                                                                             }
                                                                                                                                             §§goto(addr350);
                                                                                                                                          }
                                                                                                                                          §§goto(addr366);
                                                                                                                                       }
                                                                                                                                       addr410:
                                                                                                                                       _loc7_ = §§pop().§=j§(_loc6_,_loc4_,_loc5_);
                                                                                                                                       if(_loc10_)
                                                                                                                                       {
                                                                                                                                          _loc1_.push(_loc7_);
                                                                                                                                       }
                                                                                                                                       this.§'@§(_loc7_);
                                                                                                                                       addr435:
                                                                                                                                       this.§+!W§(_loc7_);
                                                                                                                                       addr451:
                                                                                                                                       if(!(_loc11_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          this.§!S§(_loc7_,true);
                                                                                                                                          if(!(_loc11_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(_loc10_)
                                                                                                                                             {
                                                                                                                                                if(false)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr435);
                                                                                                                                                }
                                                                                                                                                §§goto(addr456);
                                                                                                                                             }
                                                                                                                                             §§goto(addr451);
                                                                                                                                          }
                                                                                                                                          §§goto(addr435);
                                                                                                                                       }
                                                                                                                                       addr455:
                                                                                                                                       §§goto(addr455);
                                                                                                                                    }
                                                                                                                                    addr409:
                                                                                                                                    §§goto(addr410);
                                                                                                                                    §§push(§§pop().§0"!§);
                                                                                                                                 }
                                                                                                                                 §§goto(addr327);
                                                                                                                              }
                                                                                                                              §§goto(addr295);
                                                                                                                           }
                                                                                                                           §§goto(addr409);
                                                                                                                           §§push(this.§9J§);
                                                                                                                           addr267:
                                                                                                                        }
                                                                                                                        §§goto(addr404);
                                                                                                                     }
                                                                                                                     §§goto(addr379);
                                                                                                                  }
                                                                                                                  §§goto(addr317);
                                                                                                               }
                                                                                                               §§goto(addr326);
                                                                                                            }
                                                                                                            §§goto(addr395);
                                                                                                         }
                                                                                                         §§goto(addr338);
                                                                                                      }
                                                                                                      §§goto(addr394);
                                                                                                   }
                                                                                                   §§goto(addr338);
                                                                                                }
                                                                                                §§goto(addr290);
                                                                                             }
                                                                                             §§goto(addr404);
                                                                                          }
                                                                                          §§goto(addr282);
                                                                                       }
                                                                                       §§goto(addr380);
                                                                                    }
                                                                                    §§goto(addr267);
                                                                                 }
                                                                                 §§goto(addr376);
                                                                              }
                                                                              §§goto(addr395);
                                                                           }
                                                                           §§goto(addr379);
                                                                        }
                                                                        §§goto(addr376);
                                                                     }
                                                                     §§goto(addr396);
                                                                  }
                                                                  §§goto(addr395);
                                                               }
                                                               §§goto(addr376);
                                                            }
                                                            §§goto(addr395);
                                                         }
                                                         §§goto(addr379);
                                                      }
                                                      §§goto(addr282);
                                                   }
                                                   §§goto(addr348);
                                                }
                                                §§goto(addr282);
                                             }
                                             §§goto(addr409);
                                          }
                                          §§goto(addr350);
                                       }
                                       §§goto(addr376);
                                    }
                                    §§goto(addr395);
                                 }
                                 §§goto(addr325);
                              }
                              §§goto(addr194);
                           }
                           §§goto(addr268);
                        }
                        addr468:
                        if(_loc10_)
                        {
                           this.§6!V§();
                        }
                        return _loc1_;
                     }
                     §§goto(addr52);
                  }
                  while(!_loc11_);
                  
                  §§goto(addr97);
               }
               if(_loc10_ || _loc3_)
               {
                  if(_loc10_)
                  {
                     return _loc1_;
                  }
                  break loop0;
               }
               §§goto(addr83);
            })
            {
               while(true)
               {
                  §§push(!this.§75§);
                  continue loop0;
               }
            }
         }
         return _loc1_;
      }
      
      private function §2"<§(param1:§7a§) : b2Transform
      {
         return this.§5Q§[param1];
      }
      
      private function §&!L§(param1:§7a§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§5Q§[param1] = param1.§3z§();
         }
      }
      
      private function §'@§(param1:§7a§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:b2Transform = null;
         if(_loc4_)
         {
            if(§4!%§.§`-§().§9y§(§4!%§.§!$§))
            {
               if(_loc4_ || this)
               {
                  addr35:
                  _loc2_ = param1.§3z§();
                  if(!_loc3_)
                  {
                     §§push(_loc2_.position);
                     loop0:
                     while(true)
                     {
                        §§push(this.§;!>§(_loc2_.position.x));
                        while(true)
                        {
                           §§pop().x = §§pop();
                           loop18:
                           while(!(_loc3_ && _loc3_))
                           {
                              §§pop().x = §§pop();
                              loop19:
                              while(true)
                              {
                                 if(!(_loc3_ && param1))
                                 {
                                    §§push(_loc2_.position);
                                    if(_loc4_ || this)
                                    {
                                       §§push(_loc2_.position);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop().y);
                                          if(_loc4_)
                                          {
                                             if(!_loc3_)
                                             {
                                                §§push(param1.§&8§().height / 2);
                                                if(_loc4_ || this)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§push(100);
                                                         if(!_loc3_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc4_ || param1)
                                                            {
                                                               if(_loc4_ || _loc2_)
                                                               {
                                                                  if(!(_loc3_ && param1))
                                                                  {
                                                                     §§push(this.§%!S§);
                                                                     if(!(_loc3_ && this))
                                                                     {
                                                                        addr111:
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(§§pop() % §§pop());
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              addr132:
                                                                              §§push(100);
                                                                              if(_loc4_ || _loc2_)
                                                                              {
                                                                                 if(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    addr147:
                                                                                    §§push(§§pop() - §§pop() / §§pop());
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop18;
                                                                                    }
                                                                                    addr150:
                                                                                    if(!(_loc3_ && param1))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    addr237:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().y = §§pop();
                                                                                       addr238:
                                                                                       while(true)
                                                                                       {
                                                                                          addr181:
                                                                                          addr258:
                                                                                          §§goto(addr261);
                                                                                       }
                                                                                       §§goto(addr150);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    addr200:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§%!S§);
                                                                                       break loop19;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr147);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() / §§pop());
                                                                           addr205:
                                                                           while(true)
                                                                           {
                                                                              continue loop18;
                                                                           }
                                                                        }
                                                                        addr204:
                                                                     }
                                                                     §§goto(addr132);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr204);
                                                                  }
                                                                  addr203:
                                                               }
                                                               §§goto(addr205);
                                                            }
                                                            §§goto(addr132);
                                                         }
                                                         §§goto(addr111);
                                                      }
                                                      §§goto(addr198);
                                                   }
                                                   §§goto(addr200);
                                                }
                                                §§goto(addr147);
                                             }
                                             §§goto(addr193);
                                          }
                                          §§goto(addr147);
                                       }
                                       §§goto(addr192);
                                    }
                                    §§goto(addr188);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(_loc2_.position);
                                       continue loop0;
                                    }
                                    addr257:
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr203);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr257);
               }
               addr261:
               while(this.§%!S§ == 100)
               {
                  while(true)
                  {
                     §§push(_loc2_.position);
                     addr188:
                     while(!_loc3_)
                     {
                        §§push(_loc2_.position);
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr193:
                           while(true)
                           {
                              §§push(param1.§&8§().width / 2);
                              addr198:
                              while(true)
                              {
                                 §§push(100);
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
               }
               param1.§9!c§(_loc2_);
               return;
            }
            §§goto(addr258);
         }
         §§goto(addr35);
      }
      
      private function §;!>§(param1:Number) : Number
      {
         return Math.round(param1 * 100 - param1 * 100 % this.§%!S§) / 100;
      }
      
      private function §5!]§() : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:§7a§ = null;
         var _loc3_:Point = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc1_:Boolean = false;
         for each(_loc2_ in this.§>!§)
         {
            if(!_loc9_)
            {
               §§push(§!!2§.§[E§.§'%§(_loc2_));
               if(!_loc9_)
               {
                  if(§§pop())
                  {
                     if(!(_loc9_ && _loc1_))
                     {
                        addr58:
                        _loc1_ = true;
                     }
                     break;
                  }
                  continue;
               }
            }
            §§goto(addr58);
         }
         if(_loc8_)
         {
            if(!_loc1_)
            {
               if(_loc8_)
               {
                  this.§]!S§();
                  addr82:
               }
               §§goto(addr82);
            }
            else
            {
               _loc3_ = this.§]"0§;
               if(_loc8_ || _loc2_)
               {
                  §§push(_loc3_.x - this.§[!o§);
                  if(_loc8_ || this)
                  {
                     §§push(Number(§§pop()));
                  }
                  loop1:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     loop2:
                     while(true)
                     {
                        addr109:
                        while(true)
                        {
                           §§push(_loc3_.y - this.§^5§);
                           if(_loc8_ || _loc2_)
                           {
                              if(_loc9_)
                              {
                                 break;
                              }
                              §§push(Number(§§pop()));
                           }
                           _loc5_ = §§pop();
                           while(true)
                           {
                              if(!(_loc9_ && _loc2_))
                              {
                                 if(this.§2%§)
                                 {
                                    if(_loc8_)
                                    {
                                       if(!_loc8_)
                                       {
                                          continue;
                                       }
                                       this.§5O§(_loc4_,_loc5_);
                                    }
                                 }
                                 break;
                              }
                              continue loop2;
                           }
                           §§goto(addr159);
                        }
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  if(false)
                  {
                     §§goto(addr109);
                  }
               }
            }
            addr159:
            return;
         }
         §§goto(addr82);
      }
      
      public function § 7§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            if(this.§2%§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§goto(addr34);
               }
            }
            var _loc3_:int = 0;
            loop0:
            while(true)
            {
               §§push(_loc3_);
               if(_loc5_ || param1)
               {
                  if(§§pop() < this.§>!§.length)
                  {
                     _loc3_++;
                     continue;
                  }
                  if(_loc5_ || param2)
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
                                 if(_loc5_)
                                 {
                                    §§push(0);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop5:
                                       while(true)
                                       {
                                          §§push(§§pop() * this.§%!S§);
                                          if(!(_loc4_ && this))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             param1 = §§pop();
                                             addr202:
                                             while(true)
                                             {
                                                §§push(param2);
                                                if(_loc5_ || param2)
                                                {
                                                   §§push(0);
                                                   if(_loc4_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(§§pop() == §§pop());
                                                   if(!(_loc5_ || param1))
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc4_ && this))
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(0);
                                                         if(_loc4_ && param2)
                                                         {
                                                            continue loop8;
                                                         }
                                                         addr114:
                                                         §§push(§§pop() * this.§%!S§);
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            addr124:
                                                            if(_loc5_)
                                                            {
                                                               addr127:
                                                               §§push(Number(§§pop()));
                                                               if(_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop1;
                                                            }
                                                            continue loop6;
                                                         }
                                                         §§goto(addr127);
                                                      }
                                                      addr130:
                                                      if(!(_loc4_ && param2))
                                                      {
                                                         break loop0;
                                                      }
                                                      continue loop0;
                                                   }
                                                   §§push(param2);
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      §§push(§§pop() / Math.abs(param2));
                                                      if(_loc5_)
                                                      {
                                                         addr106:
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§goto(addr114);
                                                            §§push(§§pop());
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               continue loop5;
                                                               §§goto(addr106);
                                                            }
                                                            addr179:
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr127);
                                                }
                                                §§goto(addr124);
                                             }
                                             param2 = §§pop();
                                             §§goto(addr130);
                                          }
                                       }
                                    }
                                    addr165:
                                 }
                                 §§goto(addr202);
                              }
                              else
                              {
                                 §§push(param1);
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§push(§§pop() / Math.abs(param1));
                                 }
                              }
                              §§goto(addr179);
                           }
                        }
                     }
                  }
                  §§goto(addr202);
               }
               §§goto(addr165);
            }
            return;
         }
         addr34:
      }
      
      public function §5O§(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc7_:int = 0;
         var _loc8_:§7a§ = null;
         var _loc9_:b2Vec2 = null;
         if(!_loc10_)
         {
            if(this.§>!§.length != 0)
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
                        if(!_loc10_)
                        {
                           if(§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 §§pop();
                                 addr105:
                                 while(!(_loc10_ && this))
                                 {
                                    while(true)
                                    {
                                       §§push(param2);
                                       if(!(_loc10_ && _loc3_))
                                       {
                                          §§push(0);
                                          if(!(_loc10_ && _loc3_))
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(!(_loc10_ && this))
                                             {
                                                if(_loc10_)
                                                {
                                                   continue loop3;
                                                }
                                             }
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       continue loop1;
                                    }
                                    var _loc3_:* = §§pop();
                                    var _loc4_:Boolean = false;
                                    var _loc5_:Boolean = true;
                                    var _loc6_:Boolean = false;
                                    if(_loc11_ || this)
                                    {
                                       if(_loc5_)
                                       {
                                          if(_loc11_)
                                          {
                                             _loc7_ = 0;
                                             addr141:
                                             loop9:
                                             while(_loc7_ < this.§>!§.length)
                                             {
                                                _loc8_ = this.§>!§[_loc7_];
                                                _loc9_ = this.§2"<§(_loc8_).position.Copy();
                                                §§push(_loc9_);
                                                §§push(_loc9_.x);
                                                if(!_loc10_)
                                                {
                                                   §§push(§§pop() + param1);
                                                }
                                                §§pop().x = §§pop();
                                                if(_loc11_)
                                                {
                                                   §§push(_loc9_);
                                                   §§push(_loc9_.y);
                                                   if(!_loc10_)
                                                   {
                                                      §§push(§§pop() + param2);
                                                   }
                                                   §§pop().y = §§pop();
                                                }
                                                loop10:
                                                while(true)
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      this.§>!T§(_loc8_,_loc9_);
                                                      while(!_loc10_)
                                                      {
                                                         _loc7_++;
                                                         if(!_loc10_)
                                                         {
                                                            if(true)
                                                            {
                                                               break loop11;
                                                            }
                                                            continue loop11;
                                                         }
                                                      }
                                                      continue loop10;
                                                   }
                                                   continue loop9;
                                                }
                                             }
                                          }
                                          §§goto(addr141);
                                       }
                                       return;
                                    }
                                    §§goto(addr141);
                                 }
                                 continue loop0;
                              }
                           }
                           loop6:
                           while(!§§pop())
                           {
                              do
                              {
                                 dispatchEvent(new Event(Event.CHANGE));
                                 if(_loc10_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc11_ || param1))
                                 {
                                    break loop6;
                                 }
                                 while(true)
                                 {
                                    if(false)
                                    {
                                       §§goto(addr46);
                                    }
                                    else
                                    {
                                       §§goto(addr121);
                                       §§push(true);
                                    }
                                    §§goto(addr121);
                                 }
                              }
                              while(_loc11_);
                              
                              §§goto(addr105);
                           }
                           if(!(_loc10_ && _loc3_))
                           {
                              return;
                           }
                           addr118:
                           return;
                        }
                        §§goto(addr121);
                     }
                  }
               }
            }
            §§goto(addr118);
         }
         §§goto(addr44);
      }
      
      private function §>!T§(param1:§7a§, param2:b2Vec2, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            param1.setPosition(param2);
            loop0:
            while(true)
            {
               if(param3)
               {
                  if(_loc4_)
                  {
                     this.§'@§(param1);
                  }
                  while(true)
                  {
                  }
                  addr90:
               }
               while(true)
               {
                  this.§+!W§(param1);
                  loop3:
                  while(_loc4_)
                  {
                     continue loop0;
                     while(true)
                     {
                        §9!l§.§5D§(param1.getObject() as §``§,this.§9J§.§0"!§.§0z§.objects);
                        if(!(_loc5_ && this))
                        {
                           break;
                        }
                        continue loop3;
                     }
                     return;
                  }
                  §§goto(addr90);
               }
            }
         }
         §§goto(addr71);
      }
      
      private function §^!W§(param1:Object) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§7a§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§>!§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_ && this)
               {
                  break;
               }
               if(_loc2_.getObject() == param1)
               {
                  if(_loc5_)
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
