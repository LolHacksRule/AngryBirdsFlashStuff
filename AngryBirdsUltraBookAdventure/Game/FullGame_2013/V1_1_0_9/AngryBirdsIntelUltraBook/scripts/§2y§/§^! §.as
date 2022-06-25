package §2y§
{
   import §1!B§.§<m§;
   import §>f§.§&!G§;
   import §@!&§.§'!o§;
   import §@!&§.§7!>§;
   import com.rovio.assets.§,!j§;
   import flash.display.*;
   
   public class §^! § extends §7!>§
   {
       
      
      public var §;8§:§&!G§;
      
      public var §&O§:Vector.<§7!>§>;
      
      public var §9y§:Boolean = false;
      
      public function §^! §(param1:XML, param2:§^! §, param3:§&!G§, param4:MovieClip = null)
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
         if(_loc16_ || this)
         {
            this.mName = param1.@name;
            if(_loc16_ || param1)
            {
               if(param3)
               {
                  if(_loc16_ || param2)
                  {
                     this.§;8§ = param3;
                     if(_loc16_ || this)
                     {
                        if(!param4)
                        {
                           if(_loc16_)
                           {
                              addr82:
                              _loc12_ = §,!j§.§!!N§(mName);
                              if(!(_loc15_ && this))
                              {
                                 mClip = new _loc12_();
                                 if(_loc16_)
                                 {
                                    this.§;8§.movieClip.addChild(mClip);
                                    addr105:
                                    super(param1,param2,param4);
                                    if(_loc16_ || param2)
                                    {
                                       addr117:
                                       this.§&O§ = new Vector.<§7!>§>();
                                    }
                                 }
                              }
                              §§goto(addr105);
                           }
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
                                    if(!(_loc15_ && param1))
                                    {
                                       this.§&O§.push(new §^! §(_loc5_,this,null));
                                    }
                                    continue;
                                 }
                                 if(!_loc15_)
                                 {
                                    if(!(_loc15_ && this))
                                    {
                                       if(!(_loc15_ && param1))
                                       {
                                          §§push(0);
                                          if(_loc16_)
                                          {
                                             _loc13_ = §§pop();
                                             if(!(_loc15_ && param2))
                                             {
                                                _loc14_ = param1.Repeater;
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc14_,_loc13_));
                                                   if(!(_loc15_ && param2))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         _loc6_ = §§nextvalue(_loc13_,_loc14_);
                                                         if(!(_loc15_ && param1))
                                                         {
                                                            this.§&O§.push(new §<N§(_loc6_,this,null));
                                                         }
                                                         continue;
                                                      }
                                                      if(_loc16_ || this)
                                                      {
                                                         if(_loc16_ || param1)
                                                         {
                                                            if(!(_loc15_ && param2))
                                                            {
                                                               §§push(0);
                                                               if(!(_loc15_ && param3))
                                                               {
                                                                  _loc13_ = §§pop();
                                                                  if(_loc16_)
                                                                  {
                                                                     _loc14_ = param1.Button;
                                                                     loop2:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§hasnext(_loc14_,_loc13_));
                                                                        if(_loc16_ || this)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              _loc7_ = §§nextvalue(_loc13_,_loc14_);
                                                                              if(!(_loc15_ && param1))
                                                                              {
                                                                                 this.§&O§.push(new §[!i§(_loc7_,this));
                                                                              }
                                                                              continue;
                                                                           }
                                                                           if(_loc16_)
                                                                           {
                                                                              if(!(_loc15_ && param2))
                                                                              {
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(!(_loc15_ && this))
                                                                                    {
                                                                                       _loc13_ = §§pop();
                                                                                       if(_loc16_ || this)
                                                                                       {
                                                                                          _loc14_ = param1.TextField;
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§hasnext(_loc14_,_loc13_));
                                                                                             if(!(_loc15_ && param3))
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   _loc8_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                   if(_loc16_ || param1)
                                                                                                   {
                                                                                                      this.§&O§.push(new §54§(_loc8_,this));
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                if(_loc16_ || param1)
                                                                                                {
                                                                                                   if(!(_loc15_ && this))
                                                                                                   {
                                                                                                      addr380:
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            addr386:
                                                                                                            _loc13_ = §§pop();
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               _loc14_ = param1.MovieClip;
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     break loop0;
                                                                                                                  }
                                                                                                                  break loop2;
                                                                                                               }
                                                                                                               addr414:
                                                                                                            }
                                                                                                            addr437:
                                                                                                            _loc14_ = param1.Popup;
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                               if(!(_loc15_ && param3))
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        this.§&O§.push(new §=!o§(_loc10_,this));
                                                                                                                     }
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     addr468:
                                                                                                                     if(!(_loc15_ && param2))
                                                                                                                     {
                                                                                                                        addr476:
                                                                                                                        if(!(_loc15_ && param1))
                                                                                                                        {
                                                                                                                           addr485:
                                                                                                                           _loc13_ = 0;
                                                                                                                           if(_loc16_ || param3)
                                                                                                                           {
                                                                                                                              addr493:
                                                                                                                              _loc14_ = param1.Slider;
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                                                 break loop2;
                                                                                                                              }
                                                                                                                              addr513:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr525:
                                                                                                                        return;
                                                                                                                        addr570:
                                                                                                                     }
                                                                                                                     addr516:
                                                                                                                     if(_loc15_ && param3)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     §§goto(addr570);
                                                                                                                  }
                                                                                                                  §§goto(addr516);
                                                                                                               }
                                                                                                               break loop2;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr485);
                                                                                                      }
                                                                                                      this.readInitialVisibility(param1);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(param1.@MouseDown.toString() != "")
                                                                                                         {
                                                                                                            loop5:
                                                                                                            while(_loc16_)
                                                                                                            {
                                                                                                               §,9§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr611:
                                                                                                                  loop8:
                                                                                                                  for(; !(_loc15_ && param2); if(!(_loc15_ && this))
                                                                                                                  {
                                                                                                                     continue loop5;
                                                                                                                  })
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(param1.@MouseOver.toString() != "")
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §,9§(§4§,param1.@MouseOver);
                                                                                                                              addr582:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr577:
                                                                                                                        }
                                                                                                                        for(; param1.@MouseOut.toString() != ""; §§goto(addr582))
                                                                                                                        {
                                                                                                                           if(_loc16_ || param1)
                                                                                                                           {
                                                                                                                              §,9§(§ M§,param1.@MouseOut);
                                                                                                                           }
                                                                                                                           if(_loc15_ && this)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(_loc16_)
                                                                                                                           {
                                                                                                                              continue loop8;
                                                                                                                           }
                                                                                                                           §§goto(addr577);
                                                                                                                        }
                                                                                                                        §§goto(addr525);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               if(!(_loc16_ || this))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§goto(addr525);
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(param1.@MouseUp.toString() != "")
                                                                                                            {
                                                                                                               if(!(_loc15_ && param1))
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §,9§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                                                                  }
                                                                                                                  addr596:
                                                                                                               }
                                                                                                               §§goto(addr611);
                                                                                                            }
                                                                                                            §§goto(addr571);
                                                                                                            §§goto(addr632);
                                                                                                         }
                                                                                                      }
                                                                                                      addr524:
                                                                                                   }
                                                                                                   §§goto(addr476);
                                                                                                }
                                                                                                §§goto(addr468);
                                                                                             }
                                                                                             break loop2;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr437);
                                                                                    }
                                                                                    §§goto(addr386);
                                                                                 }
                                                                                 §§goto(addr582);
                                                                              }
                                                                              §§goto(addr386);
                                                                           }
                                                                           §§goto(addr515);
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(§§pop())
                                                                     {
                                                                        _loc11_ = §§nextvalue(_loc13_,_loc14_);
                                                                        if(!_loc15_)
                                                                        {
                                                                           this.§&O§.push(new §4!n§(_loc11_,this));
                                                                        }
                                                                        §§goto(addr513);
                                                                     }
                                                                     §§goto(addr515);
                                                                     addr514:
                                                                  }
                                                                  §§goto(addr380);
                                                               }
                                                               §§goto(addr386);
                                                            }
                                                            §§goto(addr596);
                                                         }
                                                         §§goto(addr493);
                                                      }
                                                      §§goto(addr515);
                                                   }
                                                   break loop0;
                                                }
                                             }
                                             §§goto(addr476);
                                          }
                                          §§goto(addr485);
                                       }
                                       §§goto(addr476);
                                    }
                                    addr423:
                                    if(_loc16_ || param2)
                                    {
                                       §§push(0);
                                       if(!_loc15_)
                                       {
                                          _loc13_ = §§pop();
                                          if(!_loc15_)
                                          {
                                             §§goto(addr386);
                                          }
                                          §§goto(addr493);
                                       }
                                       §§goto(addr485);
                                    }
                                    §§goto(addr524);
                                 }
                                 if(_loc16_)
                                 {
                                    §§goto(addr423);
                                 }
                                 §§goto(addr493);
                              }
                              break;
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 if(!_loc15_)
                                 {
                                    §§goto(addr420);
                                 }
                                 §§goto(addr468);
                              }
                              else
                              {
                                 _loc9_ = §§nextvalue(_loc13_,_loc14_);
                                 if(!(_loc15_ && param1))
                                 {
                                    this.§&O§.push(new §7!p§(_loc9_,this));
                                 }
                                 §§goto(addr414);
                              }
                           }
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr117);
               }
               §§goto(addr105);
            }
         }
         §§goto(addr117);
      }
      
      public function §8!x§(param1:§7!>§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function §[!L§(param1:§7!>§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function addComponent(param1:§7!>§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§&O§.indexOf(param1) < 0)
            {
               loop0:
               while(true)
               {
                  this.§&O§.push(param1);
                  loop1:
                  while(true)
                  {
                     param1.mParentContainer = this;
                     addr117:
                     loop2:
                     while(true)
                     {
                        param1.setActiveStatus(this.§7!#§);
                        loop3:
                        while(true)
                        {
                           §§push(param1);
                           if(!_loc2_)
                           {
                              §§push(Boolean(this.§0a§));
                              if(!_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       §§pop();
                                       addr78:
                                       §§push(param1.§0a§);
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          addr87:
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                    §§goto(addr87);
                                 }
                                 §§pop().setVisibility(§§pop());
                                 while(!(_loc2_ && _loc2_))
                                 {
                                    param1.viewWidth = viewWidth;
                                    while(!_loc2_)
                                    {
                                       param1.viewHeight = viewHeight;
                                       if(_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   break loop2;
                                                }
                                                continue loop0;
                                             }
                                             continue loop2;
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                                 continue loop1;
                              }
                              §§goto(addr87);
                           }
                           §§goto(addr78);
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr117);
      }
      
      public function §=!=§(param1:§7!>§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§&O§.indexOf(param1);
         if(!_loc4_)
         {
            if(_loc2_ >= 0)
            {
               loop0:
               do
               {
                  param1.mParentContainer = null;
                  while(true)
                  {
                     this.§&O§.splice(_loc2_,1);
                     while(_loc3_ || _loc3_)
                     {
                        mClip.removeChild(param1.mClip);
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(!_loc3_);
               
               addr76:
            }
            return;
         }
         §§goto(addr76);
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(!mClip)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§goto(addr32);
               }
            }
            var _loc2_:* = param1.@visible;
            if(_loc3_ || param1)
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
                                    while(_loc3_ || _loc2_)
                                    {
                                       _loc2_ = §§pop();
                                       loop11:
                                       do
                                       {
                                          §§push(_loc2_);
                                          loop12:
                                          for(; !(_loc4_ && param1); while(true)
                                          {
                                             §§push(_loc2_);
                                             if(_loc3_)
                                             {
                                                continue loop0;
                                             }
                                             continue loop12;
                                             §§goto(addr112);
                                          },continue loop0)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop13:
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(!(_loc3_ || _loc3_))
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§push(§§pop());
                                                   if(_loc4_ && param1)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      while(!(_loc4_ && _loc2_))
                                                      {
                                                         §§pop();
                                                         §§push(§§pop().toUpperCase() == "TRUE");
                                                         continue loop12;
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            continue loop13;
                                                         }
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr93:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc4_ && _loc2_)
                                                         {
                                                            addr112:
                                                            break;
                                                         }
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               this.setEnabled(true);
                                                               break;
                                                            }
                                                            addr200:
                                                            while(!(_loc4_ && param1))
                                                            {
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  §§push(param1.@enabled);
                                                                  break loop12;
                                                                  addr218:
                                                                  while(true)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                               }
                                                               return;
                                                            }
                                                            continue loop4;
                                                         }
                                                         continue loop12;
                                                      }
                                                      this.setEnabled(false);
                                                      if(_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop11;
                                                   }
                                                   if(_loc3_ || this)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         addr215:
                                                         while(true)
                                                         {
                                                            this.setVisibility(false);
                                                            §§goto(addr218);
                                                         }
                                                         addr215:
                                                      }
                                                      §§goto(addr133);
                                                   }
                                                   §§goto(addr218);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr215);
                                                      }
                                                      else
                                                      {
                                                         this.setVisibility(true);
                                                         §§goto(addr200);
                                                      }
                                                   }
                                                   addr214:
                                                }
                                                §§goto(addr215);
                                             }
                                             continue loop2;
                                          }
                                          continue loop10;
                                       }
                                       while(_loc4_ && _loc2_);
                                       
                                       §§goto(addr45);
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr214);
                        }
                     }
                  }
                  if(!(_loc3_ || param1))
                  {
                     continue;
                  }
                  §§goto(addr76);
               }
            }
            §§goto(addr64);
         }
         addr32:
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function containerEventOccured(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(mParentContainer)
            {
               if(_loc5_ || param1)
               {
                  mParentContainer.containerEventOccured(param1,param2,param3);
               }
            }
            else
            {
               §§push(this.§;8§);
               if(_loc5_ || param3)
               {
                  if(§§pop())
                  {
                     if(!(_loc4_ && this))
                     {
                        addr66:
                        this.§;8§.listenerEventOccured(param1,param2,param3);
                     }
                     if(!(_loc5_ || param2))
                     {
                        addr92:
                     }
                  }
                  return;
               }
               §§goto(addr66);
            }
         }
         §§goto(addr92);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§7!>§ = null;
         for each(_loc2_ in this.§&O§)
         {
            if(_loc6_ || this)
            {
               _loc2_.setActiveStatus(param1);
            }
         }
         if(_loc6_ || _loc2_)
         {
            super.setActiveStatus(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         if(!_loc3_)
         {
            if(this.§&O§)
            {
               if(!(_loc3_ && this))
               {
                  addr126:
                  _loc1_ = 0;
               }
               while(true)
               {
                  if(_loc1_ >= this.§&O§.length)
                  {
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           while(true)
                           {
                              this.§&O§ = null;
                              loop3:
                              while(true)
                              {
                                 §§push(this.§;8§);
                                 if(_loc2_ || _loc3_)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          super.clear();
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          continue loop3;
                                       }
                                       return;
                                       addr25:
                                    }
                                    if(_loc3_)
                                    {
                                       continue;
                                    }
                                    §§push(this.§;8§);
                                 }
                                 §§pop().movieClip.removeChild(mClip);
                              }
                           }
                           addr99:
                        }
                        if(_loc3_ && _loc3_)
                        {
                           continue;
                        }
                        if(_loc3_ && _loc1_)
                        {
                           break;
                        }
                        §§goto(addr25);
                     }
                     continue;
                  }
                  this.§&O§[_loc1_].clear();
                  _loc1_++;
               }
            }
            §§goto(addr99);
         }
         §§goto(addr126);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super.setVisibility(param1);
         }
         do
         {
            this.onParentVisibilityChange(param1);
         }
         while(_loc3_ && this);
         
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§7!>§ = null;
         if(_loc5_)
         {
            super.onParentVisibilityChange(param1);
            if(!_loc6_)
            {
               §§goto(addr36);
            }
            §§goto(addr50);
         }
         addr36:
         if(this.§&O§ != null)
         {
            addr50:
            for each(_loc2_ in this.§&O§)
            {
               if(_loc5_ || param1)
               {
                  _loc2_.onParentVisibilityChange(param1);
               }
            }
         }
      }
      
      public function §'!W§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = null;
         if(_loc5_ || param2)
         {
            if(mName.toUpperCase() == param1)
            {
               if(_loc5_)
               {
                  this.setVisibility(param2);
                  addr36:
               }
               §§goto(addr36);
            }
            else
            {
               _loc3_ = this.getItemByName(param1);
               if(_loc5_ || param2)
               {
                  if(_loc3_ is §7!>§)
                  {
                     if(_loc5_)
                     {
                        addr65:
                        (_loc3_ as §7!>§).setVisibility(param2);
                        if(!_loc5_)
                        {
                        }
                     }
                     §§goto(addr114);
                  }
                  else
                  {
                     §§push(§<m§);
                     §§push("WARNING: UIContainer(");
                     if(_loc5_)
                     {
                        §§push(§§pop() + mName);
                        if(_loc5_ || param2)
                        {
                           §§push(") setItemVisibility can not be done because item ");
                           if(!_loc4_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc5_ || param1)
                              {
                                 §§goto(addr113);
                              }
                              §§goto(addr111);
                           }
                           addr113:
                           §§push(§§pop() + param1);
                           if(_loc5_)
                           {
                              addr111:
                              §§push(" does not exist");
                           }
                           §§pop().log(§§pop());
                           addr114:
                           return;
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr113);
                  }
               }
               §§goto(addr65);
            }
         }
         §§goto(addr36);
      }
      
      public function getItemByName(param1:String) : §7!>§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§7!>§ = null;
         var _loc3_:§7!>§ = null;
         if(_loc6_ || param1)
         {
            §§push(param1);
            if(!(_loc7_ && _loc3_))
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(_loc6_ || _loc3_)
            {
               addr47:
               if(mName.toUpperCase() == param1)
               {
                  if(_loc6_ || param1)
                  {
                     return this;
                  }
               }
            }
            var _loc4_:int = 0;
            var _loc5_:* = this.§&O§;
            while(true)
            {
               for each(_loc2_ in _loc5_)
               {
                  if(_loc6_ || _loc2_)
                  {
                     if(_loc2_.mName.toUpperCase() == param1)
                     {
                        if(!_loc7_)
                        {
                           return _loc2_;
                        }
                     }
                     else
                     {
                        addr116:
                        if(!(_loc2_ is §^! §))
                        {
                           continue;
                        }
                     }
                     _loc3_ = (_loc2_ as §^! §).getItemByName(param1);
                     if(_loc7_)
                     {
                        break;
                     }
                     if(_loc3_ != null)
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                     }
                     continue;
                  }
                  §§goto(addr116);
               }
               return null;
            }
            return _loc3_;
         }
         §§goto(addr47);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            mClip.mouseEnabled = param1;
         }
      }
      
      override public function getParentView() : §&!G§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§;8§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     §§push(this.§;8§);
                  }
                  else
                  {
                     §§goto(addr48);
                  }
               }
               §§goto(addr48);
            }
            return §§pop();
         }
         addr48:
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§7!>§ = null;
         if(_loc6_ || this)
         {
            super.viewWidth = param1;
         }
         for each(_loc2_ in this.§&O§)
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
         var _loc2_:§7!>§ = null;
         if(!_loc6_)
         {
            super.viewHeight = param1;
         }
         var _loc3_:int = 0;
         for each(_loc2_ in this.§&O§)
         {
            if(_loc5_ || _loc3_)
            {
               _loc2_.viewHeight = param1;
            }
         }
      }
   }
}
