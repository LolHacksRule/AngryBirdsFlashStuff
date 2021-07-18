package §^!k§
{
   import §"_§.§!"8§;
   import §&!<§.§>!V§;
   import §1" §.§!!2§;
   import §6]§.§+!T§;
   import §7!@§.§+`§;
   import §=!7§.§6W§;
   import §=!7§.§8q§;
   import §=!7§.§9"8§;
   import §@y§.§>!D§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class Inventory extends EventDispatcher
   {
      
      protected static var §6-§:Class;
      
      private static const §<! §:int = 10;
      
      private static const §1!g§:int = 5;
      
      private static const §"!>§:int = 25;
      
      private static const §?"%§:Number = 1.5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §6-§ = §;!W§;
            while(true)
            {
               §<! § = 10;
               while(_loc2_ || Inventory)
               {
                  §1!g§ = 5;
                  do
                  {
                     §"!>§ = 25;
                     do
                     {
                        §?"%§ = 1.5;
                     }
                     while(!_loc2_);
                     
                  }
                  while(!_loc2_);
                  
                  if(_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr49:
               }
            }
         }
         §§goto(addr49);
      }
      
      private var §@6§:§0q§;
      
      private var §9#§:int = 2;
      
      private var §2T§:Vector.<MovieClip>;
      
      private var §`!v§:§>!V§;
      
      private var §2!<§:§6W§ = null;
      
      private var §=! §:§6W§;
      
      private var §8T§:§8q§;
      
      private var § !y§:§6W§;
      
      private var §2D§:Rectangle;
      
      private var §`"§:int;
      
      private var §"6§:int;
      
      private var § [§:int;
      
      private var §""§:§;!T§;
      
      private var §6!"§:Boolean = false;
      
      public function Inventory(param1:§>!V§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§2D§ = new Rectangle();
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  addr37:
                  while(true)
                  {
                     this.§`!v§ = param1;
                     continue loop1;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr37);
         }
         var _loc2_:int = 0;
         loop5:
         while(true)
         {
            if(_loc2_ >= this.§ !y§.mClip.numChildren)
            {
               loop6:
               while(true)
               {
                  this.§ [§ = this.§ !y§.mClip.width;
                  loop7:
                  while(!(_loc3_ && _loc2_))
                  {
                     this.§2D§ = new Rectangle(-this.§ !y§.mClip.width,-§<! § * 2,this.§ !y§.mClip.width * 3,this.§ !y§.mClip.height);
                     loop8:
                     while(true)
                     {
                        §§push(this.§ !y§);
                        if(!_loc3_)
                        {
                           §§pop().x = this.§ !y§.x - this.§ !y§.mClip.width;
                           loop9:
                           while(!_loc3_)
                           {
                              this.§2!<§ = param1.getItemByName("Inventory") as §6W§;
                              while(_loc4_)
                              {
                                 §§push(this.§2!<§);
                                 loop11:
                                 while(true)
                                 {
                                    §§pop().mClip.addEventListener(MouseEvent.MOUSE_UP,this.§8!R§);
                                    addr268:
                                    while(true)
                                    {
                                       §§push(this.§2!<§);
                                       while(true)
                                       {
                                          §§pop().mClip.addEventListener(MouseEvent.ROLL_OUT,this.§+!h§);
                                          addr258:
                                          while(true)
                                          {
                                             §§push(this.§2!<§);
                                             if(!(_loc4_ || _loc3_))
                                             {
                                                break;
                                             }
                                             continue loop11;
                                          }
                                       }
                                    }
                                 }
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    this.§@6§ = new §0q§(this.§ !y§);
                                    loop16:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          this.§=! § = param1.getItemByName("ScrollBar") as §6W§;
                                          loop17:
                                          while(true)
                                          {
                                             this.§8T§ = this.§=! §.getItemByName("Slider") as §8q§;
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(_loc3_ && _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(this.§8T§);
                                                   loop19:
                                                   while(true)
                                                   {
                                                      §§pop().mClip.gotoAndStop(0);
                                                      loop20:
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            continue loop16;
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(this.§8T§);
                                                         loop21:
                                                         while(true)
                                                         {
                                                            §§pop().mClip.addEventListener(MouseEvent.MOUSE_OVER,this.§;!s§);
                                                            addr135:
                                                            while(true)
                                                            {
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  continue loop17;
                                                               }
                                                               continue loop20;
                                                            }
                                                            addr110:
                                                            continue loop17;
                                                            while(true)
                                                            {
                                                               if(_loc4_ || this)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§pop().mClip.addEventListener(MouseEvent.MOUSE_OUT,this.§5!f§);
                                                                  continue;
                                                               }
                                                               continue loop21;
                                                            }
                                                            continue loop19;
                                                         }
                                                      }
                                                      continue loop9;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr268);
                                                }
                                             }
                                             continue loop7;
                                          }
                                       }
                                       §§goto(addr234);
                                    }
                                    continue loop8;
                                 }
                              }
                              continue loop6;
                           }
                        }
                        else
                        {
                           addr360:
                           §§pop().mClip.getChildAt(_loc2_).alpha = 0;
                        }
                        _loc2_++;
                        break loop7;
                     }
                  }
                  continue loop5;
               }
            }
            else
            {
               §§push(this.§ !y§);
            }
            §§goto(addr360);
         }
      }
      
      public static function §^!D§(param1:String, param2:String, param3:XML = null, param4:Boolean = false) : Boolean
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc5_:XML = null;
         var _loc6_:* = false;
         var _loc7_:XML = null;
         if(!(_loc13_ && param3))
         {
            §§push(param1);
            while(true)
            {
               §§push(§§pop() == "Pigs");
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr367:
                           while(true)
                           {
                              §§push(param2);
                              addr349:
                              while(true)
                              {
                                 §§push(§§pop().indexOf("PIG_") == -1);
                                 addr353:
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                 }
                              }
                           }
                        }
                        addr366:
                     }
                     while(true)
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc12_)
                              {
                                 addr371:
                                 param3 = §+!T§.§`x§(§6-§);
                                 break;
                              }
                              §§push(true);
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(param1);
                                 while(true)
                                 {
                                    §§push(§§pop() == "Snow");
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                addr346:
                                                while(true)
                                                {
                                                   §§push(param2);
                                                   addr329:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().indexOf("SNOW_") == -1);
                                                      addr333:
                                                      while(true)
                                                      {
                                                         §§push(!§§pop());
                                                      }
                                                   }
                                                }
                                             }
                                             addr345:
                                          }
                                          while(true)
                                          {
                                             loop18:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   addr337:
                                                   return true;
                                                   addr336:
                                                }
                                                else
                                                {
                                                   addr301:
                                                }
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   addr303:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == "Birds");
                                                      continue loop18;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr359);
                        }
                        var _loc8_:int = 0;
                        var _loc9_:* = param3.category;
                        addr589:
                        for each(_loc5_ in _loc9_)
                        {
                           if(!(_loc13_ && param2))
                           {
                              §§push(param1 == _loc5_.@button);
                              if(!(_loc13_ && param3))
                              {
                                 §§push(§§pop());
                                 if(!_loc13_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc12_)
                                       {
                                          §§pop();
                                          if(!(_loc13_ && param2))
                                          {
                                             §§push(param4);
                                             if(!(_loc13_ && param2))
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc12_ || Inventory)
                                                {
                                                   addr437:
                                                   if(§§pop())
                                                   {
                                                      if(_loc12_ || param1)
                                                      {
                                                         §§goto(addr445);
                                                      }
                                                      §§goto(addr546);
                                                   }
                                                   §§goto(addr567);
                                                }
                                             }
                                             §§goto(addr532);
                                          }
                                          §§goto(addr543);
                                       }
                                       §§goto(addr587);
                                    }
                                    §§goto(addr437);
                                 }
                                 §§goto(addr522);
                              }
                              §§goto(addr511);
                           }
                           addr445:
                           var _loc10_:int = 0;
                           if(!(_loc13_ && Inventory))
                           {
                              var _loc11_:* = _loc5_.item;
                              addr478:
                              for each(_loc7_ in _loc11_)
                              {
                                 if(_loc7_.toString() == param2)
                                 {
                                    if(!(_loc12_ || Inventory))
                                    {
                                       §§goto(addr478);
                                    }
                                    return true;
                                 }
                                 §§goto(addr478);
                              }
                              §§goto(addr481);
                           }
                           addr481:
                           if(!(_loc13_ && param2))
                           {
                              addr567:
                              §§push(Boolean(param4));
                              if(_loc12_ || param1)
                              {
                                 addr554:
                                 §§push(Boolean(§§pop() || _loc5_.@button == param1));
                                 if(_loc12_)
                                 {
                                    param4 = §§pop();
                                    addr558:
                                    if(_loc12_ || param3)
                                    {
                                       §§push(§^!D§(param1,param2,_loc5_,param4));
                                       if(!(_loc13_ && param3))
                                       {
                                          if(_loc12_ || Inventory)
                                          {
                                             addr511:
                                             §§push(Boolean(§§pop()));
                                             if(!(_loc13_ && Inventory))
                                             {
                                                addr519:
                                                §§push(§§pop());
                                                if(!_loc13_)
                                                {
                                                   addr522:
                                                   _loc6_ = §§pop();
                                                   if(!(_loc13_ && param3))
                                                   {
                                                      if(!_loc13_)
                                                      {
                                                         addr532:
                                                         if(§§pop())
                                                         {
                                                            if(_loc12_)
                                                            {
                                                               if(_loc12_ || param2)
                                                               {
                                                                  §§goto(addr543);
                                                               }
                                                               §§goto(addr558);
                                                            }
                                                            addr546:
                                                            if(false)
                                                            {
                                                               §§goto(addr548);
                                                            }
                                                         }
                                                         §§goto(addr589);
                                                      }
                                                      §§goto(addr554);
                                                   }
                                                   §§goto(addr543);
                                                }
                                                §§goto(addr554);
                                             }
                                             addr543:
                                             §§goto(addr542);
                                          }
                                          §§goto(addr587);
                                       }
                                       §§goto(addr519);
                                    }
                                    §§goto(addr588);
                                 }
                                 §§goto(addr567);
                              }
                              §§goto(addr587);
                           }
                           addr542:
                           §§push(true);
                           if(!_loc12_)
                           {
                              §§goto(addr554);
                           }
                           return §§pop();
                        }
                        return false;
                     }
                  }
               }
            }
         }
         §§goto(addr226);
      }
      
      public function §2!W§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§@6§.§#k§();
         }
      }
      
      private function §5W§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§8T§.mClip.stop();
         }
      }
      
      protected function §;!s§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§]!m§();
            do
            {
               this.§8T§.mClip.play();
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      private function §]!m§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§8T§);
            if(_loc2_)
            {
               if(!§§pop().mClip.hasEventListener(Event.ENTER_FRAME))
               {
               }
               §§goto(addr63);
            }
            §§pop().mClip.removeEventListener(Event.ENTER_FRAME,this.§"!F§);
         }
         addr63:
         if(!_loc1_)
         {
            §§push(this.§8T§);
         }
      }
      
      protected function §"!F§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§8T§);
            while(§§pop().mClip.currentFrame != 1)
            {
               §§push(this.§8T§);
               if(_loc2_ && _loc3_)
               {
                  continue;
               }
               §§pop().mClip.prevFrame();
               if(!(_loc2_ && param1))
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  addr25:
                  return;
                  addr62:
               }
               §§goto(addr25);
               addr81:
            }
            this.§]!m§();
            §§goto(addr81);
         }
         §§goto(addr62);
      }
      
      protected function §5!f§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§8T§);
            while(true)
            {
               §§pop().mClip.gotoAndStop(3);
               while(true)
               {
                  §§push(this.§8T§);
                  if(_loc3_ && _loc3_)
                  {
                     break;
                  }
                  §§pop().mClip.addEventListener(Event.ENTER_FRAME,this.§"!F§,false,0,true);
                  if(!(_loc3_ && param1))
                  {
                     return;
                     addr69:
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      private function §=c§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§6!"§ = false;
         }
      }
      
      private function §8!R§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§6!"§)
            {
               while(true)
               {
                  dispatchEvent(new §!"8§(§!"8§.CANCEL));
                  addr72:
                  while(true)
                  {
                  }
                  addr45:
                  if(_loc2_ && param1)
                  {
                     continue;
                  }
                  return;
                  addr52:
               }
            }
            while(true)
            {
               this.§6!"§ = false;
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr45);
            }
         }
         §§goto(addr52);
      }
      
      private function §+!h§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§6!"§ = true;
         }
      }
      
      private function §?!9§(param1:XML) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc2_:XML = null;
         var _loc3_:§0q§ = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         var _loc8_:* = 0;
         var _loc9_:* = NaN;
         loop0:
         for each(_loc2_ in param1.category)
         {
            _loc3_ = this.§!!q§(_loc2_.@button,param1.@button);
            if(_loc14_)
            {
               §§push(0);
               if(!(_loc15_ && _loc2_))
               {
                  var _loc12_:* = §§pop();
                  if(_loc14_ || param1)
                  {
                     var _loc13_:* = _loc2_.include_category;
                     loop1:
                     while(true)
                     {
                        §§push(§§hasnext(_loc13_,_loc12_));
                        if(!(_loc15_ && param1))
                        {
                           if(§§pop())
                           {
                              _loc4_ = §§nextvalue(_loc12_,_loc13_);
                              if(!(_loc15_ && _loc2_))
                              {
                                 _loc3_.§-!<§(_loc4_.toString());
                              }
                              continue;
                           }
                           if(!_loc15_)
                           {
                              if(!_loc15_)
                              {
                                 if(_loc15_ && _loc2_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(0);
                                 if(!_loc15_)
                                 {
                                    _loc12_ = §§pop();
                                    if(_loc14_)
                                    {
                                       _loc13_ = _loc2_.component;
                                       loop2:
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc13_,_loc12_));
                                          if(!(_loc15_ && _loc2_))
                                          {
                                             if(§§pop())
                                             {
                                                _loc5_ = §§nextvalue(_loc12_,_loc13_);
                                                if(!_loc15_)
                                                {
                                                   _loc3_.§#i§(this.§`!v§.getItemByName(_loc5_.toString()));
                                                }
                                                continue;
                                             }
                                             if(!_loc15_)
                                             {
                                                addr158:
                                                if(_loc14_)
                                                {
                                                   if(_loc14_)
                                                   {
                                                      addr164:
                                                      §§push(0);
                                                      if(!_loc15_)
                                                      {
                                                         _loc12_ = §§pop();
                                                         if(_loc14_)
                                                         {
                                                            _loc13_ = _loc2_.item;
                                                            addr265:
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc13_,_loc12_));
                                                               if(_loc14_)
                                                               {
                                                                  break loop1;
                                                               }
                                                               break loop2;
                                                            }
                                                            addr265:
                                                         }
                                                         addr279:
                                                         if(_loc14_ || _loc3_)
                                                         {
                                                            addr288:
                                                            _loc12_ = 0;
                                                            if(_loc14_)
                                                            {
                                                               addr291:
                                                               _loc13_ = _loc2_.exclude;
                                                               while(true)
                                                               {
                                                                  §§push(§§hasnext(_loc13_,_loc12_));
                                                                  break loop2;
                                                               }
                                                               addr316:
                                                               if(!(_loc15_ && _loc3_))
                                                               {
                                                                  addr324:
                                                                  if(_loc2_.@highlight == "true")
                                                                  {
                                                                     if(!(_loc15_ && _loc2_))
                                                                     {
                                                                        _loc3_.§,"=§(new §1",§());
                                                                        if(_loc15_ && _loc3_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               this.§?!9§(_loc2_);
                                                               continue loop0;
                                                               addr315:
                                                               addr313:
                                                            }
                                                            §§goto(addr316);
                                                         }
                                                      }
                                                      §§goto(addr288);
                                                   }
                                                   §§goto(addr324);
                                                }
                                                §§goto(addr316);
                                             }
                                             if(!(_loc15_ && _loc2_))
                                             {
                                                §§goto(addr279);
                                             }
                                             §§goto(addr291);
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             _loc7_ = §§nextvalue(_loc12_,_loc13_);
                                             if(_loc14_ || param1)
                                             {
                                                _loc3_.§"!8§(_loc7_.toString());
                                             }
                                             continue;
                                          }
                                          §§goto(addr315);
                                       }
                                       addr314:
                                    }
                                 }
                                 §§goto(addr288);
                              }
                              §§goto(addr291);
                           }
                           §§goto(addr158);
                        }
                        break;
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(_loc14_)
                           {
                              §§goto(addr271);
                           }
                           §§goto(addr291);
                        }
                        else
                        {
                           _loc6_ = §§nextvalue(_loc12_,_loc13_);
                           if(_loc6_.hasOwnProperty("unlockLevel"))
                           {
                              if(!_loc15_)
                              {
                                 §§push(int(parseInt(_loc6_.@unlockLevel)));
                                 if(!_loc14_)
                                 {
                                 }
                                 addr213:
                                 §§push(int(§§pop()));
                                 if(!_loc15_)
                                 {
                                    _loc8_ = §§pop();
                                    if(!(_loc15_ && _loc3_))
                                    {
                                       if(_loc6_.hasOwnProperty("@scale"))
                                       {
                                          addr259:
                                          if(!(_loc15_ && this))
                                          {
                                             addr235:
                                             §§push(Number(_loc6_.@scale));
                                             if(!(_loc15_ && param1))
                                             {
                                                addr250:
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          _loc3_.§,!D§(_loc6_.toString(),_loc9_,_loc8_);
                                          §§goto(addr265);
                                       }
                                       else
                                       {
                                          addr247:
                                          §§push(Number(1));
                                          if(!_loc15_)
                                          {
                                             §§goto(addr250);
                                          }
                                       }
                                       _loc9_ = §§pop();
                                       if(_loc14_ || param1)
                                       {
                                          §§goto(addr259);
                                       }
                                       §§goto(addr265);
                                    }
                                    §§goto(addr235);
                                 }
                                 §§goto(addr247);
                              }
                              §§goto(addr259);
                           }
                           else
                           {
                              §§push(1);
                              if(_loc14_ || param1)
                              {
                                 §§goto(addr213);
                              }
                           }
                           §§goto(addr247);
                        }
                     }
                  }
                  §§goto(addr279);
               }
               §§goto(addr288);
            }
            §§goto(addr164);
         }
      }
      
      public function update(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§2!<§);
            loop0:
            while(true)
            {
               §§push(this.§2!<§);
               addr232:
               while(true)
               {
                  §§pop().x = §§pop().x + param1 * §?"%§ * (this.isOpen() && §!!2§.§[E§.§]"7§() ? 1 : -1);
                  loop2:
                  while(true)
                  {
                     §§push(this.§2!<§);
                     if(!_loc2_)
                     {
                        if(§§pop().x > 5)
                        {
                           while(true)
                           {
                              §§push(this.§2!<§);
                              addr225:
                              addr177:
                              while(true)
                              {
                                 §§pop().x = 5;
                                 addr227:
                                 while(true)
                                 {
                                 }
                              }
                              if(_loc2_ && param1)
                              {
                                 continue;
                              }
                              addr186:
                              §§push(this.§2!<§);
                              if(!(_loc2_ && this))
                              {
                                 continue loop0;
                              }
                              §§goto(addr225);
                           }
                        }
                        while(true)
                        {
                           §§push(this.§2!<§);
                           if(_loc3_ || param1)
                           {
                              if(§§pop().x < -this.§2!<§.width)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop2;
                                 }
                                 if(_loc2_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr177);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    if(this.§`"§ + §<! § > this.§2D§.height)
                                    {
                                       §§push(this.§=! §);
                                       if(_loc3_ || this)
                                       {
                                          §§push(true);
                                          if(!_loc2_)
                                          {
                                             §§pop().setVisibility(§§pop());
                                             loop6:
                                             while(!_loc2_)
                                             {
                                                this.§2D§.y = Math.max(0,this.§8T§.§&!#§() * (this.§`"§ + §<! § * 2 - this.§2D§.height)) - §<! § * 2;
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         if(!(_loc2_ && param1))
                                                         {
                                                            §§push(this.§ !y§);
                                                            if(_loc2_ && _loc2_)
                                                            {
                                                               addr115:
                                                               §§pop().mClip.scrollRect = this.§2D§;
                                                            }
                                                            continue;
                                                            break;
                                                         }
                                                         §§goto(addr115);
                                                         §§push(this.§ !y§);
                                                         addr142:
                                                      }
                                                      break;
                                                   }
                                                   continue loop6;
                                                }
                                                if(!_loc2_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      addr155:
                                                      this.§=! §.setVisibility(false);
                                                      while(true)
                                                      {
                                                         this.§2D§.y = -§<! § * 2;
                                                         §§goto(addr142);
                                                      }
                                                      addr156:
                                                   }
                                                   §§goto(addr25);
                                                }
                                                §§goto(addr156);
                                             }
                                             continue loop2;
                                          }
                                       }
                                    }
                                    §§goto(addr155);
                                 }
                                 addr143:
                              }
                           }
                           §§goto(addr186);
                        }
                        continue loop0;
                     }
                     §§goto(addr225);
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr155);
      }
      
      private function §!!q§(param1:String, param2:String = null) : §0q§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§9"8§ = this.§`!v§.getItemByName(param1) as §9"8§;
         var _loc4_:§9"8§ = null;
         if(!(_loc6_ && param1))
         {
            if(param2)
            {
               addr47:
               _loc4_ = this.§`!v§.getItemByName(param2) as §9"8§;
            }
            var _loc5_:§0q§;
            if(_loc5_ = this.§@6§.§7Q§(_loc4_))
            {
               if(_loc7_ || this)
               {
                  return _loc5_.§@!#§(_loc3_);
               }
            }
            return null;
         }
         §§goto(addr47);
      }
      
      public function § !c§(param1:§9"8§, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(param1 == null)
            {
               if(_loc4_ || param2)
               {
                  addr75:
                  this.§@6§.§%z§();
               }
               addr20:
               return;
               addr76:
            }
            else
            {
               §§push(this.§@6§);
               if(!_loc3_)
               {
                  §§pop().§%q§(param1,param2);
                  do
                  {
                     if(!_loc3_)
                     {
                        continue;
                     }
                  }
                  while(this.§+!!§(), !_loc4_);
                  
                  §§goto(addr20);
               }
               else
               {
                  §§goto(addr75);
               }
            }
            §§goto(addr75);
         }
         §§goto(addr39);
      }
      
      public function §4!X§() : String
      {
         return this.§@6§.§`!x§();
      }
      
      public function §+!R§(param1:Boolean = true, param2:int = 1) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§@6§.§+!R§(param2,param1);
         }
         do
         {
            this.§+!!§();
         }
         while(_loc4_);
         
      }
      
      public function §'!k§(param1:§9"8§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§0q§ = this.§@6§.§7Q§(param1);
         if(_loc3_ || param1)
         {
            if(_loc2_)
            {
               if(!_loc4_)
               {
                  _loc2_.§%z§();
               }
            }
         }
      }
      
      public function §+!!§() : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc7_:§;!T§ = null;
         var _loc8_:§;!T§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = NaN;
         var _loc1_:Vector.<§;!T§> = this.§@6§.§'!%§();
         if(_loc15_)
         {
            if(_loc1_ == null)
            {
               if(!_loc14_)
               {
                  return;
               }
            }
         }
         §§push(this.§ [§ / 2);
         if(_loc15_)
         {
            §§push(§§pop() - §1!g§ * 2);
            if(!(_loc14_ && this))
            {
               addr59:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            var _loc3_:* = 0;
            var _loc4_:int = 0;
            var _loc5_:* = Number(0);
            var _loc6_:* = 0;
            var _loc12_:int = 0;
            var _loc13_:* = _loc1_;
            loop0:
            while(true)
            {
               §§push(§§hasnext(_loc13_,_loc12_));
               if(_loc15_ || this)
               {
                  if(!§§pop())
                  {
                     if(_loc15_)
                     {
                        if(!_loc14_)
                        {
                           if(!_loc14_)
                           {
                              this.§`"§ = _loc5_;
                              if(!_loc14_)
                              {
                                 _loc12_ = 0;
                                 addr800:
                                 if(_loc15_)
                                 {
                                    _loc13_ = _loc1_;
                                    addr797:
                                    §§push(§§hasnext(_loc13_,_loc12_));
                                    break;
                                 }
                              }
                           }
                           return;
                        }
                        §§goto(addr800);
                     }
                     addr799:
                     §§goto(addr800);
                  }
                  else
                  {
                     _loc8_ = §§nextvalue(_loc12_,_loc13_);
                     §§push(_loc8_.§89§);
                     if(!_loc14_)
                     {
                        §§push(1.6);
                        if(_loc15_ || _loc3_)
                        {
                           §§push(§§pop() * _loc2_);
                        }
                        if(§§pop() < §§pop())
                        {
                           if(!_loc14_)
                           {
                              §§push(1);
                              if(_loc15_)
                              {
                                 addr106:
                                 §§push(int(§§pop()));
                                 if(!(_loc14_ && _loc3_))
                                 {
                                    §§push(§§pop());
                                    if(_loc15_ || _loc2_)
                                    {
                                       _loc9_ = §§pop();
                                       if(!_loc14_)
                                       {
                                          addr125:
                                          §§push(1);
                                          if(!(_loc14_ && _loc1_))
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc15_)
                                                {
                                                   _loc8_.y = _loc5_;
                                                   if(_loc15_ || this)
                                                   {
                                                      §§push(_loc8_);
                                                      §§push(_loc3_ + 0.5);
                                                      if(!(_loc14_ && _loc3_))
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc15_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc14_ && _loc3_))
                                                            {
                                                               §§push(_loc3_ * 3);
                                                               if(_loc15_)
                                                               {
                                                                  addr495:
                                                                  §§push(§§pop() + 0.5);
                                                                  if(_loc15_)
                                                                  {
                                                                     addr492:
                                                                     §§push(§§pop() * §1!g§);
                                                                  }
                                                                  §§pop().x = §§pop() + §§pop();
                                                                  if(!_loc14_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§push(1);
                                                                        if(!_loc14_)
                                                                        {
                                                                           addr445:
                                                                           §§push(§§pop() + §§pop());
                                                                           §§push(2);
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§push(§§pop() % §§pop());
                                                                              if(!(_loc14_ && _loc2_))
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    addr459:
                                                                                    _loc3_ = §§pop();
                                                                                    §§push(_loc2_);
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       §§push(§1!g§);
                                                                                       if(_loc15_ || _loc3_)
                                                                                       {
                                                                                          §§push(§§pop() * 0.5);
                                                                                          if(!(_loc14_ && _loc2_))
                                                                                          {
                                                                                             addr435:
                                                                                             _loc10_ = int(§§pop() + §§pop());
                                                                                             addr509:
                                                                                             §§push(Number(Math.min(1,_loc10_ / _loc8_.§89§)));
                                                                                             if(!(_loc14_ && this))
                                                                                             {
                                                                                                addr524:
                                                                                                _loc11_ = §§pop();
                                                                                                if(!(_loc14_ && this))
                                                                                                {
                                                                                                   _loc8_.§@V§(_loc11_);
                                                                                                   loop14:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(int(Math.max(_loc8_.height,_loc6_)));
                                                                                                      addr610:
                                                                                                      loop15:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc6_ = §§pop();
                                                                                                         addr611:
                                                                                                         loop16:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc3_);
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               addr582:
                                                                                                               loop18:
                                                                                                               while(§§pop() == §§pop())
                                                                                                               {
                                                                                                                  if(_loc15_)
                                                                                                                  {
                                                                                                                     if(_loc14_ && this)
                                                                                                                     {
                                                                                                                        continue loop16;
                                                                                                                     }
                                                                                                                     if(_loc14_)
                                                                                                                     {
                                                                                                                        continue loop14;
                                                                                                                     }
                                                                                                                     _loc8_.y += _loc6_ / 2;
                                                                                                                  }
                                                                                                                  loop9:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     loop10:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           addr568:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc7_.y += _loc6_ / 2;
                                                                                                                              addr576:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr568:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           if(!(_loc14_ && this))
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 addr543:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §<! §);
                                                                                                                                    addr545:
                                                                                                                                    loop7:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!(_loc14_ && this))
                                                                                                                                       {
                                                                                                                                          addr553:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             continue loop7;
                                                                                                                                          }
                                                                                                                                          addr553:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr542:
                                                                                                                           }
                                                                                                                           addr554:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc5_ = §§pop();
                                                                                                                              if(!_loc15_)
                                                                                                                              {
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                              if(!_loc14_)
                                                                                                                              {
                                                                                                                                 if(!_loc14_)
                                                                                                                                 {
                                                                                                                                    if(_loc15_)
                                                                                                                                    {
                                                                                                                                       if(true)
                                                                                                                                       {
                                                                                                                                          _loc7_ = null;
                                                                                                                                          if(!(_loc14_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             _loc6_ = 0;
                                                                                                                                             break loop18;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr617:
                                                                                                                                       }
                                                                                                                                       continue loop10;
                                                                                                                                       break loop18;
                                                                                                                                    }
                                                                                                                                    continue loop9;
                                                                                                                                 }
                                                                                                                                 §§goto(addr568);
                                                                                                                              }
                                                                                                                              §§goto(addr576);
                                                                                                                           }
                                                                                                                           §§goto(addr553);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               _loc8_.visible = true;
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr615:
                                                                                                   addr532:
                                                                                                }
                                                                                                §§goto(addr594);
                                                                                             }
                                                                                             §§goto(addr554);
                                                                                             addr434:
                                                                                             addr436:
                                                                                          }
                                                                                          §§goto(addr545);
                                                                                       }
                                                                                       §§goto(addr543);
                                                                                    }
                                                                                    §§goto(addr434);
                                                                                    addr460:
                                                                                 }
                                                                                 §§goto(addr610);
                                                                              }
                                                                              §§goto(addr524);
                                                                           }
                                                                           §§goto(addr543);
                                                                        }
                                                                        §§goto(addr582);
                                                                     }
                                                                     §§goto(addr459);
                                                                  }
                                                                  §§goto(addr594);
                                                               }
                                                            }
                                                            §§goto(addr495);
                                                         }
                                                         §§goto(addr492);
                                                      }
                                                      §§goto(addr495);
                                                   }
                                                   §§goto(addr602);
                                                }
                                                §§goto(addr615);
                                             }
                                             else
                                             {
                                                §§push(_loc3_);
                                                loop22:
                                                while(true)
                                                {
                                                   §§push(1);
                                                   if(!_loc14_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(!(_loc14_ && _loc3_))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  if(!(_loc15_ || this))
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(Boolean(_loc7_));
                                                                  if(_loc14_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr358:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc15_ || this)
                                                                     {
                                                                        _loc7_.y += _loc7_.height / 2;
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           if(_loc15_)
                                                                           {
                                                                              if(_loc15_ || _loc2_)
                                                                              {
                                                                                 if(!(_loc14_ && _loc3_))
                                                                                 {
                                                                                    §§push(Number(§§pop() + (_loc7_.height + §<! §)));
                                                                                    if(!(_loc14_ && this))
                                                                                    {
                                                                                       addr344:
                                                                                       _loc5_ = §§pop();
                                                                                       loop3:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc15_ || this))
                                                                                          {
                                                                                             continue loop20;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             §§push(2 * _loc2_);
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                §§push(3.5);
                                                                                                if(!(_loc14_ && _loc2_))
                                                                                                {
                                                                                                   §§push(§§pop() * §1!g§);
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc15_ || _loc2_)
                                                                                                {
                                                                                                   §§push(§§pop() / 2);
                                                                                                }
                                                                                             }
                                                                                             §§pop().x = §§pop();
                                                                                             if(_loc15_ || _loc1_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc8_.y = _loc5_;
                                                                                                   if(!(_loc14_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(_loc8_);
                                                                                                      §§push(2 * _loc2_);
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         §§push(3.5);
                                                                                                         if(!(_loc14_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(§§pop() * §1!g§);
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            §§push(§§pop() / 2);
                                                                                                         }
                                                                                                      }
                                                                                                      §§pop().x = §§pop();
                                                                                                      if(_loc15_ || _loc3_)
                                                                                                      {
                                                                                                         if(_loc15_ || _loc1_)
                                                                                                         {
                                                                                                            if(!(_loc14_ && _loc3_))
                                                                                                            {
                                                                                                               addr264:
                                                                                                               loop2:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  if(!(_loc15_ || this))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                     _loc3_ = §§pop();
                                                                                                                     if(!(_loc14_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(_loc2_);
                                                                                                                        if(!_loc14_)
                                                                                                                        {
                                                                                                                           §§push(2);
                                                                                                                           if(_loc15_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 §§push(§1!g§);
                                                                                                                                 if(_loc15_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!(_loc14_ && _loc1_))
                                                                                                                                    {
                                                                                                                                       addr178:
                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                       if(_loc15_)
                                                                                                                                       {
                                                                                                                                          if(_loc15_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc10_ = §§pop();
                                                                                                                                                if(!(_loc14_ && this))
                                                                                                                                                {
                                                                                                                                                   if(_loc14_ && _loc1_)
                                                                                                                                                   {
                                                                                                                                                      continue loop3;
                                                                                                                                                   }
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      continue loop2;
                                                                                                                                                   }
                                                                                                                                                   §§push(null);
                                                                                                                                                   if(!(_loc14_ && this))
                                                                                                                                                   {
                                                                                                                                                      _loc7_ = §§pop();
                                                                                                                                                      §§goto(addr509);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr617);
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr611);
                                                                                                                                             addr183:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr435);
                                                                                                                                          }
                                                                                                                                          §§goto(addr435);
                                                                                                                                       }
                                                                                                                                       §§goto(addr581);
                                                                                                                                    }
                                                                                                                                    §§goto(addr554);
                                                                                                                                 }
                                                                                                                                 §§goto(addr543);
                                                                                                                              }
                                                                                                                              §§goto(addr542);
                                                                                                                           }
                                                                                                                           §§goto(addr543);
                                                                                                                        }
                                                                                                                        §§goto(addr178);
                                                                                                                     }
                                                                                                                     break loop21;
                                                                                                                  }
                                                                                                                  continue loop22;
                                                                                                               }
                                                                                                               §§goto(addr610);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr460);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr436);
                                                                                                      }
                                                                                                      §§goto(addr576);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr568);
                                                                                                addr265:
                                                                                             }
                                                                                             §§goto(addr611);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr435);
                                                                                    }
                                                                                    §§goto(addr553);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr445);
                                                                                 }
                                                                              }
                                                                              §§goto(addr435);
                                                                           }
                                                                           §§goto(addr344);
                                                                        }
                                                                     }
                                                                     §§goto(addr532);
                                                                  }
                                                                  §§goto(addr265);
                                                               }
                                                               §§goto(addr594);
                                                               addr403:
                                                            }
                                                            §§goto(addr358);
                                                         }
                                                         §§goto(addr403);
                                                      }
                                                      addr383:
                                                   }
                                                   break;
                                                }
                                                §§goto(addr582);
                                                addr380:
                                             }
                                             §§goto(addr594);
                                          }
                                          §§goto(addr445);
                                       }
                                       §§goto(addr183);
                                    }
                                    §§goto(addr383);
                                 }
                                 §§goto(addr435);
                              }
                              §§goto(addr380);
                           }
                           §§goto(addr352);
                        }
                        else
                        {
                           §§push(2);
                           if(_loc15_)
                           {
                              §§goto(addr106);
                           }
                        }
                        §§goto(addr581);
                     }
                     §§goto(addr125);
                  }
               }
               break;
            }
            for(; §§pop(); §§goto(addr797))
            {
               _loc8_ = §§nextvalue(_loc12_,_loc13_);
               _loc8_.visible = true;
               if(_loc15_)
               {
                  _loc8_.addEventListener(MouseEvent.MOUSE_DOWN,this.§;!S§);
                  loop26:
                  while(true)
                  {
                     if((this.§`!v§.getItemByName("Objects") as §9"8§).§-!2§ != §>!D§.COMPONENT_STATE_ACTIVE_DEFAULT)
                     {
                        §§push(AngryBirdsFP11.§>!7§);
                        if(!_loc14_)
                        {
                           §§push((§§pop() as §+`§).§&"4§(_loc8_.getItemName()));
                           if(!(_loc14_ && _loc3_))
                           {
                              if(!§§pop())
                              {
                                 if(!_loc14_)
                                 {
                                    if(_loc15_ || _loc1_)
                                    {
                                       _loc8_.lock();
                                       addr721:
                                       if(!(_loc14_ && _loc3_))
                                       {
                                          break;
                                       }
                                       loop30:
                                       while(true)
                                       {
                                          if(!_loc14_)
                                          {
                                             addr747:
                                             if(!(_loc15_ || _loc2_))
                                             {
                                                while(_loc15_)
                                                {
                                                   §§push(AngryBirdsFP11.§>!7§);
                                                   while(true)
                                                   {
                                                      §§push((§§pop() as §+`§).§&"4§(_loc8_.getItemName()));
                                                      addr775:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            addr731:
                                                            _loc8_.§9B§(3);
                                                            while(true)
                                                            {
                                                               if(_loc15_)
                                                               {
                                                                  addr690:
                                                                  break loop26;
                                                               }
                                                               §§goto(addr690);
                                                               §§goto(addr731);
                                                            }
                                                            addr735:
                                                         }
                                                         while(true)
                                                         {
                                                            _loc8_.§9B§(0);
                                                            addr779:
                                                            while(true)
                                                            {
                                                               _loc8_.removeEventListener(MouseEvent.MOUSE_DOWN,this.§;!S§);
                                                               continue loop30;
                                                            }
                                                            §§goto(addr747);
                                                         }
                                                         §§goto(addr754);
                                                      }
                                                   }
                                                }
                                                continue loop26;
                                                addr766:
                                             }
                                             addr754:
                                             §§goto(addr690);
                                          }
                                          §§goto(addr779);
                                       }
                                    }
                                    §§goto(addr735);
                                 }
                              }
                              else
                              {
                                 _loc8_.unlock();
                                 if(!(_loc14_ && _loc2_))
                                 {
                                    addr688:
                                    if(true)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr721);
                                 }
                                 §§goto(addr690);
                              }
                              §§goto(addr721);
                           }
                           §§goto(addr775);
                        }
                        §§goto(addr770);
                     }
                     §§goto(addr766);
                  }
                  continue;
               }
               §§goto(addr688);
            }
            §§goto(addr799);
         }
         §§goto(addr59);
      }
      
      private function §;!S§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§""§ = param1.currentTarget as §;!T§;
            do
            {
               dispatchEvent(new §!"8§(§!"8§.§9!`§));
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public function §="§() : §;!T§
      {
         return this.§""§;
      }
      
      public function isOpen() : Boolean
      {
         return this.§@6§.§2S§();
      }
      
      public function §03§(param1:§9"8§) : Boolean
      {
         return this.§@6§.§7Q§(param1).§2S§();
      }
      
      public function §'![§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§2D§.height = param1;
         }
      }
      
      public function §9"=§(param1:String) : §;!T§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§;!T§ = null;
         var _loc2_:Vector.<§;!T§> = this.§@6§.§&X§();
         for each(_loc3_ in _loc2_)
         {
            if(!(_loc7_ && param1))
            {
               if(_loc3_.getItemName() == param1)
               {
                  if(!_loc7_)
                  {
                     return _loc3_;
                  }
               }
            }
         }
         return null;
      }
      
      public function §7>§(param1:§;!T§) : §9"8§
      {
         return this.§@6§.§!V§(param1.getItemName());
      }
   }
}
