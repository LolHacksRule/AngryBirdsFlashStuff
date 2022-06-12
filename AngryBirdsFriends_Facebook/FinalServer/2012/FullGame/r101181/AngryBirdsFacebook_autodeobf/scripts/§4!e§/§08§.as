package §4!e§
{
   import §#^§.§7!A§;
   import §2!i§.§'M§;
   import §2!i§.§7'§;
   import §6o§.§+!k§;
   import com.rovio.assets.§8B§;
   import flash.display.*;
   
   public class §08§ extends §7'§
   {
       
      
      public var §4"&§:§7!A§;
      
      public var §&!Z§:Vector.<§7'§>;
      
      public var §]+§:Boolean = false;
      
      public function §08§(param1:XML, param2:§08§, param3:§7!A§, param4:MovieClip = null)
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         var _loc8_:XML = null;
         var _loc9_:XML = null;
         var _loc10_:XML = null;
         var _loc11_:XML = null;
         var _loc12_:Class = null;
         if(!(_loc16_ && param2))
         {
            this.mName = param1.@name;
            if(!_loc16_)
            {
               if(param3)
               {
                  if(!_loc16_)
                  {
                     this.§4"&§ = param3;
                     if(!_loc16_)
                     {
                        if(!param4)
                        {
                           if(!_loc16_)
                           {
                              addr66:
                              _loc12_ = §8B§.§6"C§(mName);
                              if(_loc15_)
                              {
                                 mClip = new _loc12_();
                                 if(!_loc15_)
                                 {
                                 }
                                 addr84:
                                 super(param1,param2,param4);
                                 if(_loc15_ || param3)
                                 {
                                    addr96:
                                    this.§&!Z§ = new Vector.<§7'§>();
                                    addr102:
                                    var _loc13_:* = 0;
                                    var _loc14_:* = param1.Container;
                                    loop0:
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc14_,_loc13_));
                                       if(_loc15_)
                                       {
                                          if(§§pop())
                                          {
                                             _loc5_ = §§nextvalue(_loc13_,_loc14_);
                                             if(!_loc16_)
                                             {
                                                this.§&!Z§.push(new §08§(_loc5_,this,null));
                                             }
                                             continue;
                                          }
                                          if(_loc15_ || param1)
                                          {
                                             if(_loc15_)
                                             {
                                                if(!_loc16_)
                                                {
                                                   §§push(0);
                                                   if(!_loc16_)
                                                   {
                                                      _loc13_ = §§pop();
                                                      if(_loc15_)
                                                      {
                                                         _loc14_ = param1.Repeater;
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc14_,_loc13_));
                                                            if(_loc15_ || param1)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  _loc6_ = §§nextvalue(_loc13_,_loc14_);
                                                                  if(!_loc16_)
                                                                  {
                                                                     this.§&!Z§.push(new §5!a§(_loc6_,this,null));
                                                                  }
                                                                  continue;
                                                               }
                                                               if(_loc15_ || param1)
                                                               {
                                                                  addr185:
                                                                  if(_loc15_)
                                                                  {
                                                                     addr188:
                                                                     if(!(_loc16_ && param2))
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc15_ || this)
                                                                        {
                                                                           _loc13_ = §§pop();
                                                                           if(_loc15_)
                                                                           {
                                                                              _loc14_ = param1.Button;
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§hasnext(_loc14_,_loc13_));
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       _loc7_ = §§nextvalue(_loc13_,_loc14_);
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          this.§&!Z§.push(new §^!D§(_loc7_,this));
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       addr233:
                                                                                       if(!(_loc16_ && this))
                                                                                       {
                                                                                          if(!(_loc16_ && param3))
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                addr252:
                                                                                                _loc13_ = §§pop();
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   addr255:
                                                                                                   _loc14_ = param1.TextField;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                      if(!(_loc16_ && this))
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            _loc8_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                            if(_loc15_)
                                                                                                            {
                                                                                                               this.§&!Z§.push(new §-"E§(_loc8_,this));
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(!(_loc16_ && param3))
                                                                                                         {
                                                                                                            if(_loc15_ || this)
                                                                                                            {
                                                                                                               addr309:
                                                                                                               if(_loc15_)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  if(_loc15_ || param1)
                                                                                                                  {
                                                                                                                     _loc13_ = §§pop();
                                                                                                                     if(_loc15_)
                                                                                                                     {
                                                                                                                        _loc14_ = param1.MovieClip;
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                                           if(_loc15_)
                                                                                                                           {
                                                                                                                              break loop19;
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        loop15:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              if(_loc15_ || param3)
                                                                                                                              {
                                                                                                                                 addr417:
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    addr420:
                                                                                                                                    if(!_loc16_)
                                                                                                                                    {
                                                                                                                                       addr424:
                                                                                                                                       _loc13_ = 0;
                                                                                                                                       if(!_loc16_)
                                                                                                                                       {
                                                                                                                                          addr427:
                                                                                                                                          _loc14_ = param1.Slider;
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                                                             break loop0;
                                                                                                                                          }
                                                                                                                                          addr447:
                                                                                                                                       }
                                                                                                                                       addr450:
                                                                                                                                       if(!(_loc16_ && param3))
                                                                                                                                       {
                                                                                                                                          this.readInitialVisibility(param1);
                                                                                                                                          loop3:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(param1.@MouseDown.toString() != "")
                                                                                                                                             {
                                                                                                                                                loop4:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §@!L§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                                                                                                   addr566:
                                                                                                                                                   addr525:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc16_ && this))
                                                                                                                                                      {
                                                                                                                                                         continue loop3;
                                                                                                                                                      }
                                                                                                                                                      continue loop4;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr566);
                                                                                                                                                }
                                                                                                                                                addr561:
                                                                                                                                             }
                                                                                                                                             loop6:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(param1.@MouseUp.toString() == "")
                                                                                                                                                {
                                                                                                                                                   loop9:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(param1.@MouseOver.toString() != "")
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc16_)
                                                                                                                                                            {
                                                                                                                                                               addr506:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §@!L§(§'!f§,param1.@MouseOver);
                                                                                                                                                                  addr511:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc15_ || param2))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop6;
                                                                                                                                                                     }
                                                                                                                                                                     addr518:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr506:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr525);
                                                                                                                                                            }
                                                                                                                                                            addr478:
                                                                                                                                                            if(!(_loc15_ || this))
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc15_ || param1))
                                                                                                                                                            {
                                                                                                                                                               continue loop9;
                                                                                                                                                            }
                                                                                                                                                            §@!L§(§`!k§,param1.@MouseOut);
                                                                                                                                                            addr459:
                                                                                                                                                            return;
                                                                                                                                                            addr497:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(param1.@MouseOut.toString() != "")
                                                                                                                                                         {
                                                                                                                                                            if(!_loc16_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc15_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr478);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr511);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr497);
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                         §§goto(addr518);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr459);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr525);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr458:
                                                                                                                                          addr570:
                                                                                                                                       }
                                                                                                                                       §§goto(addr506);
                                                                                                                                    }
                                                                                                                                    §§goto(addr561);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr449:
                                                                                                                              §§goto(addr450);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                                              if(!_loc16_)
                                                                                                                              {
                                                                                                                                 this.§&!Z§.push(new §`'§(_loc10_,this));
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                                                 if(_loc16_)
                                                                                                                                 {
                                                                                                                                    break loop0;
                                                                                                                                 }
                                                                                                                                 continue loop15;
                                                                                                                              }
                                                                                                                              addr406:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr348:
                                                                                                                        addr409:
                                                                                                                     }
                                                                                                                     §§goto(addr427);
                                                                                                                  }
                                                                                                                  addr378:
                                                                                                                  _loc13_ = §§pop();
                                                                                                                  if(_loc15_ || param1)
                                                                                                                  {
                                                                                                                     _loc14_ = param1.Popup;
                                                                                                                     §§goto(addr406);
                                                                                                                  }
                                                                                                                  §§goto(addr427);
                                                                                                               }
                                                                                                               §§goto(addr458);
                                                                                                            }
                                                                                                            addr362:
                                                                                                            if(!(_loc16_ && param1))
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               if(!(_loc16_ && param3))
                                                                                                               {
                                                                                                                  §§goto(addr378);
                                                                                                               }
                                                                                                               §§goto(addr424);
                                                                                                            }
                                                                                                            §§goto(addr554);
                                                                                                         }
                                                                                                         §§goto(addr449);
                                                                                                      }
                                                                                                      break loop0;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr424);
                                                                                             }
                                                                                             §§goto(addr378);
                                                                                          }
                                                                                          §§goto(addr570);
                                                                                       }
                                                                                       §§goto(addr420);
                                                                                    }
                                                                                    §§goto(addr417);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    if(!(_loc16_ && param2))
                                                                                    {
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          §§goto(addr362);
                                                                                       }
                                                                                       §§goto(addr424);
                                                                                    }
                                                                                    §§goto(addr449);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _loc9_ = §§nextvalue(_loc13_,_loc14_);
                                                                                    if(!(_loc16_ && param1))
                                                                                    {
                                                                                       this.§&!Z§.push(new §7"-§(_loc9_,this));
                                                                                    }
                                                                                    §§goto(addr348);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr309);
                                                                        }
                                                                        §§goto(addr378);
                                                                     }
                                                                     §§goto(addr566);
                                                                  }
                                                                  §§goto(addr255);
                                                               }
                                                               §§goto(addr233);
                                                            }
                                                            break loop0;
                                                         }
                                                      }
                                                      §§goto(addr309);
                                                   }
                                                   §§goto(addr252);
                                                }
                                                §§goto(addr506);
                                             }
                                             §§goto(addr188);
                                          }
                                          §§goto(addr185);
                                       }
                                       break;
                                    }
                                    while(§§pop())
                                    {
                                       _loc11_ = §§nextvalue(_loc13_,_loc14_);
                                       if(!_loc16_)
                                       {
                                          this.§&!Z§.push(new §<"#§(_loc11_,this));
                                       }
                                       §§goto(addr447);
                                    }
                                    §§goto(addr449);
                                 }
                                 §§goto(addr102);
                              }
                              this.§4"&§.movieClip.addChild(mClip);
                              §§goto(addr84);
                           }
                        }
                        §§goto(addr84);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr96);
               }
               §§goto(addr84);
            }
         }
         §§goto(addr66);
      }
      
      public function §6! §(param1:§7'§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function §`e§(param1:§7'§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function addComponent(param1:§7'§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§&!Z§.indexOf(param1) < 0)
            {
               loop0:
               while(true)
               {
                  this.§&!Z§.push(param1);
                  while(true)
                  {
                     param1.mParentContainer = this;
                     loop2:
                     for(; !_loc2_; if(!(_loc3_ || _loc3_))
                     {
                        continue;
                     },param1.viewWidth = viewWidth,§§goto(addr49))
                     {
                        param1.setActiveStatus(this.§+L§);
                        while(true)
                        {
                           §§push(param1);
                           if(_loc3_)
                           {
                              §§push(Boolean(this.§5!d§));
                              if(_loc3_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       addr73:
                                       §§pop();
                                       §§push(param1.§5!d§);
                                       if(_loc3_ || this)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                 }
                                 §§pop().setVisibility(§§pop());
                                 loop4:
                                 while(!_loc2_)
                                 {
                                    continue loop2;
                                    while(true)
                                    {
                                       param1.viewHeight = viewHeight;
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             continue loop0;
                                          }
                                          continue loop4;
                                       }
                                    }
                                    return;
                                 }
                                 continue;
                              }
                           }
                           §§goto(addr73);
                        }
                     }
                  }
               }
            }
            §§goto(addr20);
         }
         §§goto(addr49);
      }
      
      public function §="2§(param1:§7'§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§&!Z§.indexOf(param1);
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ >= 0)
            {
               if(_loc3_)
               {
                  param1.mParentContainer = null;
                  addr84:
                  while(true)
                  {
                     this.§&!Z§.splice(_loc2_,1);
                     while(_loc3_)
                     {
                        mClip.removeChild(param1.mClip);
                        if(_loc3_ || param1)
                        {
                           §§goto(addr40);
                        }
                     }
                  }
                  addr84:
               }
               §§goto(addr84);
            }
            addr40:
            return;
         }
         §§goto(addr84);
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            if(!mClip)
            {
               if(!_loc3_)
               {
                  §§goto(addr28);
               }
            }
            var _loc2_:* = param1.@visible;
            if(!_loc3_)
            {
               §§push(_loc2_);
               loop0:
               while(true)
               {
                  §§push(Boolean(§§pop()));
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
                                 §§push(_loc2_);
                                 while(true)
                                 {
                                    §§push(§§pop().toUpperCase() == "FALSE");
                                    loop10:
                                    while(_loc4_ || _loc2_)
                                    {
                                       _loc2_ = §§pop();
                                       loop11:
                                       while(_loc4_ || _loc2_)
                                       {
                                          addr157:
                                          if(_loc4_)
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                loop14:
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            while(_loc4_ || this)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  break loop14;
                                                               }
                                                               §§pop();
                                                               §§push(§§pop().toUpperCase() == "TRUE");
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  continue loop15;
                                                               }
                                                            }
                                                            continue loop3;
                                                         }
                                                         addr101:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  this.setEnabled(true);
                                                                  break;
                                                               }
                                                               break;
                                                            }
                                                            this.setEnabled(false);
                                                            if(_loc3_ && this)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               §§goto(addr36);
                                                            }
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            break loop13;
                                                         }
                                                         continue loop11;
                                                         while(true)
                                                         {
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               continue loop14;
                                                            }
                                                            continue loop4;
                                                            §§goto(addr53);
                                                         }
                                                         continue loop14;
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop1;
                                             }
                                             addr36:
                                             return;
                                             addr169:
                                          }
                                          while(true)
                                          {
                                             addr138:
                                             while(true)
                                             {
                                                §§push(param1.@enabled);
                                                continue loop10;
                                             }
                                             §§goto(addr157);
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr138);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr183);
                        }
                     }
                  }
               }
            }
            §§goto(addr169);
         }
         addr28:
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function containerEventOccured(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            if(!mParentContainer)
            {
               §§push(this.§4"&§);
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        addr60:
                        this.§4"&§.listenerEventOccured(param1,param2,param3);
                     }
                     if(_loc4_)
                     {
                        if(!_loc4_)
                        {
                           addr71:
                           mParentContainer.containerEventOccured(param1,param2,param3);
                           addr76:
                        }
                     }
                     §§goto(addr76);
                  }
                  return;
               }
               §§goto(addr60);
            }
         }
         §§goto(addr71);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§7'§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§&!Z§)
         {
            if(_loc5_ || _loc3_)
            {
               _loc2_.setActiveStatus(param1);
            }
         }
         if(_loc5_ || _loc3_)
         {
            super.setActiveStatus(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         if(_loc2_ || this)
         {
            if(this.§&!Z§)
            {
               if(!(_loc3_ && this))
               {
                  addr121:
                  _loc1_ = 0;
               }
               while(true)
               {
                  if(_loc1_ >= this.§&!Z§.length)
                  {
                     loop1:
                     while(!_loc3_)
                     {
                        while(true)
                        {
                           this.§&!Z§ = null;
                           loop3:
                           while(true)
                           {
                              §§push(this.§4"&§);
                              if(_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       continue;
                                    }
                                    §§push(this.§4"&§);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       super.clear();
                                       if(_loc2_ || _loc3_)
                                       {
                                          if(_loc2_)
                                          {
                                             return;
                                          }
                                          addr110:
                                          _loc1_++;
                                          break loop1;
                                       }
                                       continue loop3;
                                    }
                                    addr30:
                                 }
                              }
                              §§pop().movieClip.removeChild(mClip);
                           }
                        }
                     }
                     continue;
                  }
                  this.§&!Z§[_loc1_].clear();
                  §§goto(addr110);
               }
            }
            §§goto(addr94);
         }
         §§goto(addr121);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super.setVisibility(param1);
            do
            {
               this.onParentVisibilityChange(param1);
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§7'§ = null;
         if(_loc5_)
         {
            super.onParentVisibilityChange(param1);
            if(_loc5_)
            {
               if(this.§&!Z§ != null)
               {
                  addr50:
                  for each(_loc2_ in this.§&!Z§)
                  {
                     if(!_loc6_)
                     {
                        _loc2_.onParentVisibilityChange(param1);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr50);
      }
      
      public function §&"A§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = null;
         if(!(_loc4_ && this))
         {
            if(mName.toUpperCase() == param1)
            {
               if(!_loc4_)
               {
                  addr33:
                  this.setVisibility(param2);
               }
            }
            else
            {
               _loc3_ = this.getItemByName(param1);
               if(!(_loc4_ && param2))
               {
                  if(_loc3_ is §7'§)
                  {
                     if(_loc5_ || param2)
                     {
                        addr70:
                        (_loc3_ as §7'§).setVisibility(param2);
                        if(_loc4_)
                        {
                        }
                     }
                     §§goto(addr124);
                  }
                  else
                  {
                     §§push(§+!k§);
                     §§push("WARNING: UIContainer(");
                     if(_loc5_ || this)
                     {
                        §§push(§§pop() + mName);
                        if(_loc5_ || this)
                        {
                           addr106:
                           §§push(") setItemVisibility can not be done because item ");
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc4_)
                              {
                                 §§goto(addr117);
                              }
                           }
                           §§goto(addr121);
                        }
                        addr117:
                        §§push(§§pop() + param1);
                        if(!_loc4_)
                        {
                           addr121:
                           §§push(§§pop() + " does not exist");
                        }
                        §§pop().log(§§pop());
                        §§goto(addr124);
                     }
                     §§goto(addr106);
                  }
                  return;
               }
               §§goto(addr70);
            }
            §§goto(addr70);
         }
         §§goto(addr33);
      }
      
      public function getItemByName(param1:String) : §7'§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§7'§ = null;
         var _loc3_:§7'§ = null;
         if(!_loc7_)
         {
            §§push(param1);
            if(!(_loc7_ && _loc2_))
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(!(_loc7_ && _loc2_))
            {
               if(mName.toUpperCase() == param1)
               {
                  if(_loc6_ || _loc3_)
                  {
                     return this;
                  }
               }
            }
         }
         var _loc4_:int = 0;
         var _loc5_:* = this.§&!Z§;
         while(true)
         {
            for each(_loc2_ in _loc5_)
            {
               if(!(_loc6_ || param1))
               {
                  break;
               }
               if(_loc2_.mName.toUpperCase() == param1)
               {
                  if(_loc6_ || param1)
                  {
                     break;
                  }
               }
               else if(!(_loc2_ is §08§))
               {
                  continue;
               }
               _loc3_ = (_loc2_ as §08§).getItemByName(param1);
               if(_loc6_)
               {
                  if(_loc3_ != null)
                  {
                     if(!(_loc7_ && _loc3_))
                     {
                        return _loc3_;
                     }
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            mClip.mouseEnabled = param1;
         }
      }
      
      override public function getParentView() : §7!A§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§4"&§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§push(this.§4"&§);
                  }
                  else
                  {
                     §§goto(addr43);
                  }
               }
               §§goto(addr43);
            }
            return §§pop();
         }
         addr43:
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§7'§ = null;
         if(!_loc5_)
         {
            super.viewWidth = param1;
         }
         for each(_loc2_ in this.§&!Z§)
         {
            if(!_loc5_)
            {
               _loc2_.viewWidth = param1;
            }
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§7'§ = null;
         if(!_loc6_)
         {
            super.viewHeight = param1;
         }
         for each(_loc2_ in this.§&!Z§)
         {
            if(!_loc6_)
            {
               _loc2_.viewHeight = param1;
            }
         }
      }
   }
}
