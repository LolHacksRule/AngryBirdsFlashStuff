package §"U§
{
   import §6v§.§`M§;
   import §6v§.§var §;
   import §]!-§.§`o§;
   import §`K§.§ L§;
   import com.rovio.assets.§[!D§;
   import flash.display.*;
   
   public class §[Q§ extends §var §
   {
       
      
      public var §<!O§:§`o§;
      
      public var §`!O§:Vector.<§var §>;
      
      public var §82§:Boolean = false;
      
      public function §[Q§(param1:XML, param2:§[Q§, param3:§`o§, param4:MovieClip = null)
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
         if(_loc15_)
         {
            this.mName = param1.@name;
            if(param3)
            {
               this.§<!O§ = param3;
               if(!(_loc16_ && this))
               {
                  if(!param4)
                  {
                     _loc12_ = §[!D§.§8!N§(mName);
                     if(!(_loc16_ && this))
                     {
                        mClip = new _loc12_();
                        if(!_loc15_)
                        {
                        }
                        addr83:
                        super(param1,param2,param4);
                        addr88:
                        this.§`!O§ = new Vector.<§var §>();
                        addr94:
                        var _loc13_:* = 0;
                        for each(_loc5_ in param1.Container)
                        {
                           if(!_loc16_)
                           {
                              this.§`!O§.push(new §[Q§(_loc5_,this,null));
                           }
                        }
                        if(_loc15_ || param3)
                        {
                           if(!_loc16_)
                           {
                              §§push(0);
                              if(!(_loc16_ && param2))
                              {
                                 _loc13_ = §§pop();
                                 if(!(_loc16_ && param2))
                                 {
                                    var _loc14_:* = param1.Repeater;
                                    loop1:
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc14_,_loc13_));
                                       if(_loc15_)
                                       {
                                          if(§§pop())
                                          {
                                             _loc6_ = §§nextvalue(_loc13_,_loc14_);
                                             if(!_loc16_)
                                             {
                                                this.§`!O§.push(new §"]§(_loc6_,this,null));
                                             }
                                             continue;
                                          }
                                          if(!_loc16_)
                                          {
                                             if(_loc15_)
                                             {
                                                addr176:
                                                if(!_loc16_)
                                                {
                                                   §§push(0);
                                                   if(_loc15_)
                                                   {
                                                      _loc13_ = §§pop();
                                                      addr183:
                                                      _loc14_ = param1.Button;
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc14_,_loc13_));
                                                         if(_loc15_ || param3)
                                                         {
                                                            break loop1;
                                                         }
                                                         addr367:
                                                         loop11:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(!_loc16_)
                                                               {
                                                                  addr373:
                                                                  _loc13_ = 0;
                                                                  addr371:
                                                                  if(_loc15_)
                                                                  {
                                                                     _loc14_ = param1.Slider;
                                                                     loop3:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§hasnext(_loc14_,_loc13_));
                                                                        addr397:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              break loop3;
                                                                           }
                                                                           _loc11_ = §§nextvalue(_loc13_,_loc14_);
                                                                           if(_loc15_)
                                                                           {
                                                                              this.§`!O§.push(new §,l§(_loc11_,this));
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                     }
                                                                     addr398:
                                                                  }
                                                                  if(!(_loc16_ && this))
                                                                  {
                                                                     this.readInitialVisibility(param1);
                                                                     if(param1.@MouseDown.toString() != "")
                                                                     {
                                                                        §9A§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                     }
                                                                     if(param1.@MouseUp.toString() != "")
                                                                     {
                                                                        loop4:
                                                                        while(true)
                                                                        {
                                                                           §9A§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                           addr473:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                           addr430:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc16_ && param1))
                                                                              {
                                                                                 §§goto(addr408);
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(param1.@MouseOver.toString() != "")
                                                                        {
                                                                           if(_loc16_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §9A§(§^! §,param1.@MouseOver);
                                                                           }
                                                                        }
                                                                        while(param1.@MouseOut.toString() != "")
                                                                        {
                                                                           if(_loc15_ || param1)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §9A§(§&U§,param1.@MouseOut);
                                                                              }
                                                                              addr425:
                                                                           }
                                                                           §§goto(addr430);
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr408:
                                                                     return;
                                                                  }
                                                                  §§goto(addr446);
                                                                  addr370:
                                                               }
                                                               §§goto(addr398);
                                                            }
                                                            else
                                                            {
                                                               _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                                               if(!(_loc16_ && param2))
                                                               {
                                                                  this.§`!O§.push(new §36§(_loc10_,this));
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§hasnext(_loc14_,_loc13_));
                                                                  if(!(_loc15_ || param2))
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               addr359:
                                                            }
                                                            §§goto(addr397);
                                                         }
                                                      }
                                                      addr203:
                                                   }
                                                   addr226:
                                                   _loc13_ = §§pop();
                                                   if(_loc15_ || this)
                                                   {
                                                      _loc14_ = param1.TextField;
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc14_,_loc13_));
                                                         if(_loc15_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               _loc8_ = §§nextvalue(_loc13_,_loc14_);
                                                               if(_loc15_ || param3)
                                                               {
                                                                  this.§`!O§.push(new §@4§(_loc8_,this));
                                                               }
                                                               continue;
                                                            }
                                                            if(_loc15_)
                                                            {
                                                               addr275:
                                                               if(_loc15_ || param1)
                                                               {
                                                                  §§push(0);
                                                                  if(_loc15_ || param3)
                                                                  {
                                                                     _loc13_ = §§pop();
                                                                     if(!_loc16_)
                                                                     {
                                                                        _loc14_ = param1.MovieClip;
                                                                        while(true)
                                                                        {
                                                                           §§push(§§hasnext(_loc14_,_loc13_));
                                                                           if(_loc15_ || param1)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 _loc9_ = §§nextvalue(_loc13_,_loc14_);
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    this.§`!O§.push(new §!o§(_loc9_,this));
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              if(_loc15_)
                                                                              {
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    addr329:
                                                                                    §§push(0);
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       addr333:
                                                                                       _loc13_ = §§pop();
                                                                                       addr334:
                                                                                       _loc14_ = param1.Popup;
                                                                                       §§goto(addr359);
                                                                                    }
                                                                                    §§goto(addr373);
                                                                                 }
                                                                                 §§goto(addr371);
                                                                              }
                                                                              §§goto(addr398);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr367);
                                                                     }
                                                                     §§goto(addr329);
                                                                  }
                                                                  §§goto(addr373);
                                                               }
                                                               §§goto(addr334);
                                                            }
                                                            §§goto(addr370);
                                                         }
                                                         §§goto(addr367);
                                                      }
                                                   }
                                                   §§goto(addr373);
                                                }
                                                §§goto(addr425);
                                             }
                                             §§goto(addr334);
                                          }
                                          §§goto(addr275);
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          _loc7_ = §§nextvalue(_loc13_,_loc14_);
                                          if(_loc15_)
                                          {
                                             this.§`!O§.push(new §^'§(_loc7_,this));
                                          }
                                          continue;
                                       }
                                       if(_loc15_)
                                       {
                                          if(!_loc16_)
                                          {
                                             §§push(0);
                                             if(!(_loc16_ && this))
                                             {
                                                §§goto(addr226);
                                             }
                                             §§goto(addr333);
                                          }
                                          §§goto(addr473);
                                       }
                                       §§goto(addr275);
                                    }
                                 }
                                 §§goto(addr176);
                              }
                              §§goto(addr333);
                           }
                           §§goto(addr183);
                        }
                        §§goto(addr398);
                     }
                     this.§<!O§.movieClip.addChild(mClip);
                  }
                  §§goto(addr83);
               }
               §§goto(addr88);
            }
            §§goto(addr83);
         }
         §§goto(addr94);
      }
      
      public function §#!$§(param1:§var §) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function §,!G§(param1:§var §) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function addComponent(param1:§var §) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(this.§`!O§.indexOf(param1) < 0)
         {
            do
            {
               this.§`!O§.push(param1);
               do
               {
                  param1.mParentContainer = this;
                  do
                  {
                     param1.setActiveStatus(this.mActive);
                     §§push(param1);
                     if(!_loc2_)
                     {
                        §§push(Boolean(this.§9'§));
                        if(_loc3_ || this)
                        {
                           if(§§pop())
                           {
                              if(!(_loc2_ && param1))
                              {
                                 §§pop();
                                 addr79:
                                 §§push(param1.§9'§);
                                 if(_loc2_ && _loc3_)
                                 {
                                    continue;
                                 }
                              }
                              §§push(Boolean(§§pop()));
                           }
                        }
                        continue;
                     }
                     §§goto(addr79);
                  }
                  while(§§pop().setVisibility(§§pop()), do
                  {
                     param1.viewWidth = viewWidth;
                  }
                  while(_loc2_);
                  , !_loc3_);
                  
                  param1.viewHeight = viewHeight;
               }
               while(!(_loc3_ || param1));
               
            }
            while(_loc2_);
            
         }
      }
      
      public function §[1§(param1:§var §) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§`!O§.indexOf(param1);
         if(_loc4_ || _loc2_)
         {
            if(_loc2_ >= 0)
            {
               loop0:
               while(true)
               {
                  param1.mParentContainer = null;
                  loop1:
                  while(true)
                  {
                     this.§`!O§.splice(_loc2_,1);
                     while(_loc4_)
                     {
                        mClip.removeChild(param1.mClip);
                        if(_loc4_ || param1)
                        {
                           if(_loc4_ || this)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
               addr87:
            }
            return;
         }
         §§goto(addr87);
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(!mClip)
            {
               if(_loc3_)
               {
                  return;
               }
            }
         }
         var _loc2_:* = param1.@visible;
         if(_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
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
                           §§push(_loc2_);
                           while(true)
                           {
                              §§push(§§pop().toUpperCase() == "FALSE");
                              addr172:
                              while(!(_loc4_ && _loc2_))
                              {
                              }
                              continue loop3;
                              loop9:
                              while(!(_loc4_ && this))
                              {
                                 _loc2_ = §§pop();
                                 loop10:
                                 do
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(_loc2_);
                                       loop11:
                                       for(; _loc3_ || _loc3_; §§pop(),§§push(_loc2_),if(!(_loc3_ || this))
                                       {
                                          continue;
                                       },§§goto(addr73))
                                       {
                                          if(_loc3_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop12:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!_loc3_)
                                                {
                                                   continue loop2;
                                                }
                                                if(!§§pop())
                                                {
                                                   break;
                                                }
                                                while(_loc3_ || _loc3_)
                                                {
                                                   §§push(§§pop().toUpperCase() == "TRUE");
                                                   continue loop11;
                                                   if(!(_loc4_ && this))
                                                   {
                                                      continue loop12;
                                                   }
                                                }
                                                §§goto(addr172);
                                             }
                                             if(§§pop())
                                             {
                                                continue loop10;
                                             }
                                             this.setEnabled(false);
                                          }
                                          continue loop0;
                                          if(!_loc4_)
                                          {
                                             if(_loc4_ && param1)
                                             {
                                                continue loop10;
                                             }
                                             addr54:
                                             if(_loc3_ || param1)
                                             {
                                                if(_loc3_)
                                                {
                                                   §§goto(addr35);
                                                }
                                                else
                                                {
                                                   addr184:
                                                }
                                                addr184:
                                                while(true)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                addr166:
                                                while(true)
                                                {
                                                   §§goto(addr54);
                                                }
                                                addr166:
                                             }
                                             while(true)
                                             {
                                                break loop11;
                                             }
                                             §§goto(addr166);
                                          }
                                          else
                                          {
                                             addr109:
                                          }
                                          addr35:
                                          return;
                                       }
                                       continue loop9;
                                    }
                                    addr181:
                                    while(true)
                                    {
                                       this.setVisibility(false);
                                       §§goto(addr184);
                                    }
                                 }
                                 while(!_loc3_);
                                 
                                 this.setEnabled(true);
                                 §§goto(addr109);
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           this.setVisibility(true);
                           §§goto(addr166);
                        }
                        §§goto(addr181);
                     }
                  }
               }
            }
         }
         §§goto(addr184);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function containerEventOccured(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            if(!mParentContainer)
            {
               §§push(this.§<!O§);
               if(_loc4_ || param3)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        if(_loc4_)
                        {
                           addr67:
                           this.§<!O§.listenerEventOccured(param1,param2,param3);
                           addr71:
                           if(!(_loc5_ && this))
                           {
                              §§goto(addr24);
                           }
                           else
                           {
                              addr81:
                              mParentContainer.containerEventOccured(param1,param2,param3);
                           }
                        }
                        §§goto(addr24);
                     }
                     §§goto(addr71);
                  }
                  addr24:
                  return;
               }
               §§goto(addr67);
            }
         }
         §§goto(addr81);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§var § = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§`!O§)
         {
            if(!(_loc6_ && _loc2_))
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
         if(!(_loc3_ && _loc1_))
         {
            if(this.§`!O§)
            {
               if(_loc2_ || _loc1_)
               {
                  _loc1_ = 0;
                  addr117:
                  loop3:
                  while(true)
                  {
                     if(_loc1_ >= this.§`!O§.length)
                     {
                        addr71:
                        if(_loc2_ || _loc2_)
                        {
                           while(true)
                           {
                              this.§`!O§ = null;
                              while(true)
                              {
                                 §§push(this.§<!O§);
                                 if(_loc2_)
                                 {
                                    if(!§§pop())
                                    {
                                       super.clear();
                                    }
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    if(_loc2_ || _loc3_)
                                    {
                                       §§push(this.§<!O§);
                                       break;
                                    }
                                    continue loop3;
                                    return;
                                    addr30:
                                 }
                                 break;
                              }
                              §§pop().movieClip.removeChild(mClip);
                              §§goto(addr30);
                              §§goto(addr71);
                           }
                           addr88:
                        }
                     }
                     else
                     {
                        this.§`!O§[_loc1_].clear();
                     }
                     addr104:
                     _loc1_++;
                  }
                  addr117:
               }
               §§goto(addr117);
            }
            §§goto(addr88);
         }
         §§goto(addr117);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.setVisibility(param1);
         }
         do
         {
            this.onParentVisibilityChange(param1);
         }
         while(!_loc3_);
         
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§var § = null;
         if(!(_loc5_ && _loc3_))
         {
            super.onParentVisibilityChange(param1);
            if(!_loc5_)
            {
               if(this.§`!O§ != null)
               {
                  addr56:
                  for each(_loc2_ in this.§`!O§)
                  {
                     if(_loc6_ || param1)
                     {
                        _loc2_.onParentVisibilityChange(param1);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr56);
      }
      
      public function §>V§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = null;
         if(_loc5_)
         {
            if(mName.toUpperCase() == param1)
            {
               if(!_loc4_)
               {
                  this.setVisibility(param2);
                  addr31:
               }
               §§goto(addr31);
            }
            else
            {
               _loc3_ = this.getItemByName(param1);
               if(!(_loc4_ && param1))
               {
                  if(_loc3_ is §var §)
                  {
                     if(!_loc4_)
                     {
                        (_loc3_ as §var §).setVisibility(param2);
                        if(_loc4_ && _loc3_)
                        {
                        }
                        §§goto(addr119);
                     }
                  }
                  else
                  {
                     §§push(§ L§);
                     §§push("WARNING: UIContainer(");
                     if(!_loc4_)
                     {
                        §§push(§§pop() + mName);
                        if(!_loc4_)
                        {
                           §§push(") setItemVisibility can not be done because item ");
                           if(_loc5_ || this)
                           {
                              §§push(§§pop() + §§pop());
                              if(!(_loc4_ && this))
                              {
                                 §§goto(addr118);
                              }
                              §§goto(addr116);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        addr118:
                        §§push(§§pop() + param1);
                        if(!(_loc4_ && param2))
                        {
                           addr116:
                           §§push(" does not exist");
                        }
                        §§pop().log(§§pop());
                        §§goto(addr119);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr119);
               }
            }
            addr119:
            return;
         }
         §§goto(addr31);
      }
      
      public function getItemByName(param1:String) : §var §
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§var § = null;
         var _loc3_:§var § = null;
         if(!_loc6_)
         {
            §§push(param1);
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(_loc7_ || _loc3_)
            {
               if(mName.toUpperCase() == param1)
               {
                  if(!(_loc6_ && this))
                  {
                     §§goto(addr64);
                  }
               }
               var _loc4_:int = 0;
               var _loc5_:* = this.§`!O§;
               while(true)
               {
                  for each(_loc2_ in _loc5_)
                  {
                     if(_loc7_ || this)
                     {
                        if(_loc2_.mName.toUpperCase() == param1)
                        {
                           if(_loc7_ || param1)
                           {
                              return _loc2_;
                           }
                        }
                     }
                     if(_loc2_ is §[Q§)
                     {
                        _loc3_ = (_loc2_ as §[Q§).getItemByName(param1);
                        if(_loc6_)
                        {
                           break;
                        }
                        if(_loc3_ != null)
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                        }
                     }
                  }
                  return null;
               }
               return _loc3_;
            }
         }
         addr64:
         return this;
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            mClip.mouseEnabled = param1;
         }
      }
      
      override public function getParentView() : §`o§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§<!O§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§goto(addr42);
                  }
               }
               return super.getParentView();
            }
            §§goto(addr42);
         }
         addr42:
         return this.§<!O§;
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§var § = null;
         if(!_loc6_)
         {
            super.viewWidth = param1;
         }
         for each(_loc2_ in this.§`!O§)
         {
            if(_loc5_)
            {
               _loc2_.viewWidth = param1;
            }
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§var § = null;
         if(_loc5_)
         {
            super.viewHeight = param1;
         }
         for each(_loc2_ in this.§`!O§)
         {
            if(_loc5_)
            {
               _loc2_.viewHeight = param1;
            }
         }
      }
   }
}
