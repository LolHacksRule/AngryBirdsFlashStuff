package §0"$§
{
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §,L§.§;[§;
   import §-!;§.§>!B§;
   import §7!§.§2W§;
   import com.rovio.assets.§<V§;
   import each.§!!'§;
   import flash.display.*;
   import flash.events.Event;
   
   public class §"!a§ extends §%J§
   {
       
      
      public var §!!>§:§2W§;
      
      public var §<C§:Vector.<§;[§>;
      
      public var §13§:Boolean = false;
      
      public function §"!a§(param1:XML, param2:§"!a§, param3:§2W§, param4:MovieClip = null)
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         var _loc8_:XML = null;
         var _loc9_:XML = null;
         var _loc10_:XML = null;
         var _loc11_:XML = null;
         var _loc12_:Class = null;
         if(!_loc15_)
         {
            this.mName = param1.@name;
            if(_loc16_)
            {
               if(param3)
               {
                  if(!(_loc15_ && this))
                  {
                     addr58:
                     this.§!!>§ = param3;
                     if(_loc16_ || this)
                     {
                        if(!param4)
                        {
                           if(_loc16_ || param2)
                           {
                              _loc12_ = §<V§.§"!,§(mName);
                              if(!_loc15_)
                              {
                                 mClip = new _loc12_();
                                 if(!_loc16_)
                                 {
                                 }
                                 addr95:
                                 super(param1,param2,param4);
                                 if(_loc16_)
                                 {
                                    addr102:
                                    this.§<C§ = new Vector.<§;[§>();
                                    addr108:
                                    var _loc13_:* = 0;
                                    var _loc14_:* = param1.Container;
                                    loop0:
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc14_,_loc13_));
                                       if(_loc16_ || param2)
                                       {
                                          if(§§pop())
                                          {
                                             _loc5_ = §§nextvalue(_loc13_,_loc14_);
                                             if(_loc16_)
                                             {
                                                this.§<C§.push(new §"!a§(_loc5_,this,null));
                                             }
                                             continue;
                                          }
                                          if(!_loc15_)
                                          {
                                             if(_loc16_)
                                             {
                                                if(_loc16_)
                                                {
                                                   §§push(0);
                                                   if(_loc16_)
                                                   {
                                                      _loc13_ = §§pop();
                                                      if(!(_loc15_ && param1))
                                                      {
                                                         _loc14_ = param1.Repeater;
                                                         loop1:
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc14_,_loc13_));
                                                            if(!(_loc15_ && param3))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  _loc6_ = §§nextvalue(_loc13_,_loc14_);
                                                                  if(_loc16_)
                                                                  {
                                                                     this.§<C§.push(new §7!a§(_loc6_,this,null));
                                                                  }
                                                                  continue;
                                                               }
                                                               if(!_loc15_)
                                                               {
                                                                  if(_loc16_ || param1)
                                                                  {
                                                                     if(_loc16_ || param1)
                                                                     {
                                                                        §§push(0);
                                                                        if(!_loc15_)
                                                                        {
                                                                           _loc13_ = §§pop();
                                                                           if(_loc16_)
                                                                           {
                                                                              _loc14_ = param1.Button;
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§hasnext(_loc14_,_loc13_));
                                                                                 if(_loc16_ || param3)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       _loc7_ = §§nextvalue(_loc13_,_loc14_);
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          this.§<C§.push(new §;§(_loc7_,this));
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    if(!(_loc15_ && param2))
                                                                                    {
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(_loc16_ || this)
                                                                                             {
                                                                                                _loc13_ = §§pop();
                                                                                                if(!(_loc15_ && param2))
                                                                                                {
                                                                                                   addr271:
                                                                                                   _loc14_ = param1.TextField;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            _loc8_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                            if(!(_loc15_ && param1))
                                                                                                            {
                                                                                                               this.§<C§.push(new §+!@§(_loc8_,this));
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(!(_loc15_ && this))
                                                                                                         {
                                                                                                            addr317:
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  if(_loc16_ || param3)
                                                                                                                  {
                                                                                                                     _loc13_ = §§pop();
                                                                                                                     if(_loc16_)
                                                                                                                     {
                                                                                                                        addr334:
                                                                                                                        _loc14_ = param1.MovieClip;
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                                           if(!(_loc15_ && param1))
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 _loc9_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                                                 if(_loc16_ || this)
                                                                                                                                 {
                                                                                                                                    this.§<C§.push(new §6n§(_loc9_,this));
                                                                                                                                 }
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(_loc16_)
                                                                                                                              {
                                                                                                                                 addr370:
                                                                                                                                 if(_loc16_ || param3)
                                                                                                                                 {
                                                                                                                                    addr378:
                                                                                                                                    if(_loc16_)
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       if(!(_loc15_ && param1))
                                                                                                                                       {
                                                                                                                                          _loc13_ = §§pop();
                                                                                                                                          if(_loc16_ || param1)
                                                                                                                                          {
                                                                                                                                             addr397:
                                                                                                                                             _loc14_ = param1.Popup;
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                                                                if(_loc16_)
                                                                                                                                                {
                                                                                                                                                   break loop1;
                                                                                                                                                }
                                                                                                                                                break loop0;
                                                                                                                                             }
                                                                                                                                             addr417:
                                                                                                                                          }
                                                                                                                                          addr466:
                                                                                                                                          if(!(_loc15_ && param2))
                                                                                                                                          {
                                                                                                                                             this.readInitialVisibility(param1);
                                                                                                                                             loop3:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(param1.@MouseDown.toString() != "")
                                                                                                                                                {
                                                                                                                                                   addr557:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §9E§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                                                                                                      addr572:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr557:
                                                                                                                                                }
                                                                                                                                                loop4:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(param1.@MouseUp.toString() != "")
                                                                                                                                                   {
                                                                                                                                                      addr545:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §9E§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                                                                                                         addr550:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr545:
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(param1.@MouseOver.toString() != "")
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc15_ && param2))
                                                                                                                                                            {
                                                                                                                                                               if(!_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §9E§(§,!y§,param1.@MouseOver);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr550);
                                                                                                                                                                  }
                                                                                                                                                                  addr506:
                                                                                                                                                                  if(!(_loc15_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     addr475:
                                                                                                                                                                     return;
                                                                                                                                                                     addr513:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop4;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr545);
                                                                                                                                                            §§goto(addr550);
                                                                                                                                                         }
                                                                                                                                                         continue loop3;
                                                                                                                                                         addr520:
                                                                                                                                                      }
                                                                                                                                                      while(param1.@MouseOut.toString() != "")
                                                                                                                                                      {
                                                                                                                                                         if(_loc16_ || param2)
                                                                                                                                                         {
                                                                                                                                                            if(_loc16_ || this)
                                                                                                                                                            {
                                                                                                                                                               if(_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  §9E§(§-g§,param1.@MouseOut);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr557);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr520);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr550);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr506);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr475);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr557);
                                                                                                                                       }
                                                                                                                                       addr440:
                                                                                                                                       _loc13_ = §§pop();
                                                                                                                                       if(_loc16_)
                                                                                                                                       {
                                                                                                                                          _loc14_ = param1.Slider;
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                                                             break loop0;
                                                                                                                                          }
                                                                                                                                          addr463:
                                                                                                                                       }
                                                                                                                                       §§goto(addr466);
                                                                                                                                    }
                                                                                                                                    §§goto(addr550);
                                                                                                                                 }
                                                                                                                                 addr436:
                                                                                                                                 if(!_loc15_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr440);
                                                                                                                                    §§push(0);
                                                                                                                                 }
                                                                                                                                 §§goto(addr538);
                                                                                                                              }
                                                                                                                              if(_loc16_ || param3)
                                                                                                                              {
                                                                                                                                 §§goto(addr436);
                                                                                                                              }
                                                                                                                              §§goto(addr466);
                                                                                                                           }
                                                                                                                           break loop1;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr378);
                                                                                                                  }
                                                                                                                  §§goto(addr440);
                                                                                                               }
                                                                                                               §§goto(addr513);
                                                                                                            }
                                                                                                            §§goto(addr436);
                                                                                                         }
                                                                                                         §§goto(addr370);
                                                                                                      }
                                                                                                      break loop1;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr466);
                                                                                             }
                                                                                             §§goto(addr440);
                                                                                          }
                                                                                          §§goto(addr538);
                                                                                       }
                                                                                       §§goto(addr334);
                                                                                    }
                                                                                    §§goto(addr317);
                                                                                 }
                                                                                 break loop1;
                                                                              }
                                                                           }
                                                                           §§goto(addr334);
                                                                        }
                                                                        §§goto(addr440);
                                                                     }
                                                                     §§goto(addr538);
                                                                  }
                                                                  §§goto(addr271);
                                                               }
                                                               §§goto(addr370);
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(_loc16_ || param3)
                                                               {
                                                                  §§goto(addr428);
                                                               }
                                                               addr465:
                                                               §§goto(addr466);
                                                            }
                                                            else
                                                            {
                                                               _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                                               if(_loc16_)
                                                               {
                                                                  this.§<C§.push(new §""'§(_loc10_,this));
                                                               }
                                                               §§goto(addr417);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr378);
                                                   }
                                                   §§goto(addr440);
                                                }
                                                §§goto(addr545);
                                             }
                                             §§goto(addr397);
                                          }
                                          §§goto(addr370);
                                       }
                                       break;
                                    }
                                    while(§§pop())
                                    {
                                       _loc11_ = §§nextvalue(_loc13_,_loc14_);
                                       if(_loc16_)
                                       {
                                          this.§<C§.push(new §!"0§(_loc11_,this));
                                       }
                                       §§goto(addr463);
                                    }
                                    §§goto(addr465);
                                 }
                                 §§goto(addr108);
                              }
                              this.§!!>§.movieClip.addChild(mClip);
                              §§goto(addr95);
                           }
                           §§goto(addr108);
                        }
                     }
                  }
                  §§goto(addr102);
               }
               §§goto(addr95);
            }
            §§goto(addr58);
         }
         §§goto(addr102);
      }
      
      public function §2!a§(param1:§;[§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function §4Z§(param1:§;[§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function §<!f§(param1:§;[§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§<C§.indexOf(param1) < 0)
            {
               loop0:
               while(true)
               {
                  this.§<C§.push(param1);
                  addr143:
                  while(true)
                  {
                     param1.mParentContainer = this;
                     continue loop0;
                  }
               }
            }
            §§goto(addr20);
         }
         §§goto(addr122);
      }
      
      public function §^!F§(param1:§;[§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§<C§.indexOf(param1);
         if(_loc4_)
         {
            if(_loc2_ >= 0)
            {
               if(_loc4_)
               {
                  param1.mParentContainer = null;
               }
               loop0:
               while(true)
               {
                  this.§<C§.splice(_loc2_,1);
                  addr61:
                  while(true)
                  {
                     mClip.removeChild(param1.mClip);
                     if(!(_loc3_ && param1))
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr26);
               }
            }
            addr26:
            return;
         }
         §§goto(addr61);
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!mClip)
            {
               if(!(_loc3_ && param1))
               {
                  return;
               }
            }
         }
         var _loc2_:* = param1.@visible;
         if(_loc4_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc4_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        addr199:
                        while(true)
                        {
                           §§pop();
                           addr200:
                           while(true)
                           {
                              §§push(_loc2_);
                              addr170:
                              while(!_loc3_)
                              {
                                 §§push(§§pop().toUpperCase() == "FALSE");
                              }
                              continue loop0;
                           }
                        }
                        addr199:
                     }
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    this.setVisibility(false);
                                    addr192:
                                    while(true)
                                    {
                                    }
                                    addr192:
                                 }
                                 else
                                 {
                                    §§goto(addr200);
                                 }
                              }
                              addr177:
                           }
                           else
                           {
                              this.setVisibility(true);
                              while(true)
                              {
                                 addr60:
                                 if(_loc3_ && param1)
                                 {
                                    continue;
                                 }
                                 if(!(_loc3_ && param1))
                                 {
                                    §§goto(addr36);
                                 }
                                 §§goto(addr192);
                              }
                           }
                           while(true)
                           {
                              §§push(param1.@enabled);
                              loop6:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 loop7:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    loop8:
                                    while(!_loc3_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             continue loop1;
                                          }
                                          continue loop3;
                                          addr106:
                                          if(!(_loc4_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                this.setEnabled(false);
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   if(_loc4_ || this)
                                                   {
                                                      §§goto(addr60);
                                                   }
                                                   else
                                                   {
                                                      addr115:
                                                      if(!_loc4_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      while(true)
                                                      {
                                                         this.setEnabled(true);
                                                         addr120:
                                                         loop19:
                                                         while(_loc3_ && _loc2_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(_loc3_ && _loc2_)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop().toUpperCase() == "TRUE");
                                                                     if(_loc4_)
                                                                     {
                                                                        §§goto(addr106);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§pop();
                                                                           §§goto(addr152);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr199);
                                                                        }
                                                                     }
                                                                     §§goto(addr200);
                                                                     addr149:
                                                                  }
                                                                  §§goto(addr170);
                                                                  continue loop8;
                                                               }
                                                               §§goto(addr177);
                                                               continue loop19;
                                                            }
                                                            §§goto(addr170);
                                                         }
                                                      }
                                                   }
                                                   addr36:
                                                   return;
                                                }
                                                §§goto(addr120);
                                             }
                                             §§goto(addr115);
                                          }
                                          §§goto(addr192);
                                       }
                                       continue loop1;
                                    }
                                    continue loop6;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr199);
            }
         }
         §§goto(addr117);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §>!B§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function childUIEventOccured(param1:int, param2:String, param3:§6!W§, param4:Event = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            if(param4)
            {
               while(true)
               {
                  dispatchEvent(param4);
                  addr98:
                  while(true)
                  {
                  }
               }
               addr95:
            }
            while(true)
            {
               if(!mParentContainer)
               {
                  §§push(this.§!!>§);
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_ || param2)
                        {
                           if(!_loc6_)
                           {
                              addr57:
                              this.§!!>§.listenerUIEventOccured(param1,param2,param3);
                              addr61:
                              if(!(_loc6_ && param2))
                              {
                                 if(_loc5_)
                                 {
                                    §§goto(addr24);
                                 }
                                 §§goto(addr95);
                              }
                           }
                           else
                           {
                              addr74:
                              mParentContainer.childUIEventOccured(param1,param2,param3,param4);
                           }
                           if(_loc5_)
                           {
                              break;
                           }
                           continue;
                        }
                        §§goto(addr61);
                     }
                     §§goto(addr24);
                  }
                  §§goto(addr57);
               }
               §§goto(addr74);
            }
            addr24:
            return;
         }
         §§goto(addr98);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§;[§ = null;
         for each(_loc2_ in this.§<C§)
         {
            if(_loc6_)
            {
               _loc2_.setActiveStatus(param1);
            }
         }
         if(!(_loc5_ && _loc2_))
         {
            super.setActiveStatus(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         if(_loc3_)
         {
            if(this.§<C§)
            {
               if(_loc3_)
               {
                  addr112:
                  _loc1_ = 0;
               }
               loop0:
               while(true)
               {
                  if(_loc1_ >= this.§<C§.length)
                  {
                     loop1:
                     while(!_loc2_)
                     {
                        do
                        {
                           this.§<C§ = null;
                           do
                           {
                              §§push(this.§!!>§);
                              if(!_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       addr68:
                                       this.§!!>§.movieClip.removeChild(mClip);
                                    }
                                    while(true)
                                    {
                                    }
                                    addr71:
                                 }
                                 while(true)
                                 {
                                    super.clear();
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    §§goto(addr71);
                                 }
                                 continue;
                              }
                              §§goto(addr68);
                           }
                           while(_loc2_ && _loc1_);
                           
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                        }
                        while(!(_loc3_ || _loc2_));
                        
                        return;
                     }
                     continue;
                  }
                  this.§<C§[_loc1_].clear();
                  while(true)
                  {
                     _loc1_++;
                     continue loop0;
                  }
               }
            }
            §§goto(addr80);
         }
         §§goto(addr112);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super.setVisibility(param1);
            do
            {
               this.onParentVisibilityChange(param1);
            }
            while(_loc3_);
            
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§;[§ = null;
         if(!(_loc6_ && param1))
         {
            super.onParentVisibilityChange(param1);
            if(_loc5_ || _loc3_)
            {
               §§goto(addr46);
            }
            §§goto(addr50);
         }
         addr46:
         if(this.§<C§ != null)
         {
            addr50:
            for each(_loc2_ in this.§<C§)
            {
               if(_loc5_)
               {
                  _loc2_.onParentVisibilityChange(param1);
               }
            }
         }
      }
      
      public function §"!"§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = null;
         if(_loc4_)
         {
            if(mName.toUpperCase() == param1)
            {
               if(!_loc5_)
               {
                  this.setVisibility(param2);
                  addr30:
               }
               §§goto(addr30);
            }
            else
            {
               _loc3_ = this.getItemByName(param1);
               if(!(_loc5_ && _loc3_))
               {
                  if(_loc3_ is §;[§)
                  {
                     if(!_loc5_)
                     {
                        (_loc3_ as §;[§).setVisibility(param2);
                        if(_loc5_ && _loc3_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(§!!'§);
                     §§push("WARNING: UIContainer(" + mName);
                     if(!_loc5_)
                     {
                        §§push(§§pop() + ") setItemVisibility can not be done because item ");
                        if(!_loc5_)
                        {
                           §§goto(addr82);
                        }
                        §§goto(addr101);
                     }
                     addr82:
                     §§push(§§pop() + param1);
                     if(!(_loc5_ && param1))
                     {
                        addr101:
                        §§push(§§pop() + " does not exist");
                     }
                     §§pop().log(§§pop());
                  }
                  §§goto(addr104);
               }
            }
            addr104:
            return;
         }
         §§goto(addr30);
      }
      
      public function getItemByName(param1:String) : §;[§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§;[§ = null;
         var _loc3_:§;[§ = null;
         if(_loc6_ || param1)
         {
            §§push(param1);
            if(!_loc7_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(_loc6_ || param1)
            {
               §§goto(addr42);
            }
            §§goto(addr53);
         }
         addr42:
         if(mName.toUpperCase() == param1)
         {
            if(!(_loc7_ && this))
            {
               addr53:
               return this;
            }
         }
         var _loc4_:int = 0;
         var _loc5_:* = this.§<C§;
         while(true)
         {
            for each(_loc2_ in _loc5_)
            {
               if(_loc7_)
               {
                  break;
               }
               if(_loc2_.mName.toUpperCase() == param1)
               {
                  if(!_loc7_)
                  {
                     break;
                  }
               }
               if(_loc2_ is §"!a§)
               {
                  _loc3_ = (_loc2_ as §"!a§).getItemByName(param1);
                  if(!(_loc7_ && _loc2_))
                  {
                     if(_loc3_ == null)
                     {
                        continue;
                     }
                     if(!(_loc6_ || this))
                     {
                        continue;
                     }
                  }
                  return _loc3_;
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            mClip.mouseEnabled = param1;
         }
         while(param2)
         {
            if(_loc3_ && _loc3_)
            {
               break;
            }
            addr59:
            if(!_loc4_)
            {
               continue;
            }
            mClip.mouseChildren = param1;
            §§goto(addr59);
         }
      }
      
      override public function getParentView() : §2W§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§!!>§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && this))
                  {
                     §§goto(addr53);
                  }
               }
               return super.getParentView();
            }
            §§goto(addr53);
         }
         addr53:
         return this.§!!>§;
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§;[§ = null;
         if(_loc5_)
         {
            super.viewWidth = param1;
         }
         for each(_loc2_ in this.§<C§)
         {
            if(!(_loc6_ && this))
            {
               _loc2_.viewWidth = param1;
            }
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§;[§ = null;
         if(!(_loc5_ && this))
         {
            super.viewHeight = param1;
         }
         for each(_loc2_ in this.§<C§)
         {
            if(_loc6_ || param1)
            {
               _loc2_.viewHeight = param1;
            }
         }
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = this.getItemByName(param2);
         if(!_loc4_)
         {
            if(!(_loc3_ is §+!@§))
            {
               throw new Error("--#UIContainerRovio[setText]:: object was not an instance of UITextFieldRovio");
            }
            if(_loc5_ || param2)
            {
               (_loc3_ as §+!@§).setText(param1);
            }
         }
      }
   }
}
