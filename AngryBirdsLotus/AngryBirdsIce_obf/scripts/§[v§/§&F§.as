package §[v§
{
   import §2]§.§#H§;
   import §;8§.§3f§;
   import §`W§.§-[§;
   import §`W§.§`H§;
   import com.rovio.assets.§>D§;
   import flash.display.*;
   
   public class §&F§ extends §`H§
   {
       
      
      public var §=o§:§#H§;
      
      public var §1I§:Vector.<§`H§>;
      
      public var §3!A§:Boolean = false;
      
      public function §&F§(param1:XML, param2:§&F§, param3:§#H§, param4:MovieClip = null)
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
         this.mName = param1.@name;
         if(param3)
         {
            if(_loc15_)
            {
               this.§=o§ = param3;
               if(!(_loc16_ && param1))
               {
                  if(!param4)
                  {
                     if(_loc15_)
                     {
                        addr62:
                        _loc12_ = §>D§.§`C§(mName);
                        if(!_loc16_)
                        {
                           mClip = new _loc12_();
                           if(_loc15_ || param3)
                           {
                           }
                           addr85:
                           super(param1,param2,param4);
                           if(_loc15_)
                           {
                              addr92:
                              this.§1I§ = new Vector.<§`H§>();
                              addr98:
                              var _loc13_:* = 0;
                              var _loc14_:* = param1.Container;
                              loop0:
                              while(true)
                              {
                                 §§push(§§hasnext(_loc14_,_loc13_));
                                 if(_loc15_ || param2)
                                 {
                                    if(§§pop())
                                    {
                                       _loc5_ = §§nextvalue(_loc13_,_loc14_);
                                       if(_loc15_ || param1)
                                       {
                                          this.§1I§.push(new §&F§(_loc5_,this,null));
                                       }
                                       continue;
                                    }
                                    if(_loc15_ || param2)
                                    {
                                       if(!(_loc16_ && param1))
                                       {
                                          if(_loc15_)
                                          {
                                             §§push(0);
                                             if(!(_loc16_ && param3))
                                             {
                                                _loc13_ = §§pop();
                                                _loc14_ = param1.Repeater;
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc14_,_loc13_));
                                                   break loop0;
                                                }
                                                addr190:
                                                if(!_loc16_)
                                                {
                                                   if(_loc15_)
                                                   {
                                                      §§push(0);
                                                      if(_loc15_ || param2)
                                                      {
                                                         _loc13_ = §§pop();
                                                         _loc14_ = param1.Button;
                                                         loop2:
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc14_,_loc13_));
                                                            if(_loc15_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  _loc7_ = §§nextvalue(_loc13_,_loc14_);
                                                                  if(_loc15_)
                                                                  {
                                                                     this.§1I§.push(new §^P§(_loc7_,this));
                                                                  }
                                                                  continue;
                                                               }
                                                               if(_loc15_ || param1)
                                                               {
                                                                  §§push(0);
                                                                  if(!(_loc16_ && this))
                                                                  {
                                                                     addr256:
                                                                     _loc13_ = §§pop();
                                                                     if(_loc15_)
                                                                     {
                                                                        for each(_loc8_ in param1.TextField)
                                                                        {
                                                                           if(!_loc16_)
                                                                           {
                                                                              this.§1I§.push(new §'4§(_loc8_,this));
                                                                           }
                                                                        }
                                                                        if(_loc15_ || this)
                                                                        {
                                                                           addr288:
                                                                           if(!(_loc16_ && this))
                                                                           {
                                                                              §§push(0);
                                                                              if(!_loc16_)
                                                                              {
                                                                                 addr300:
                                                                                 _loc13_ = §§pop();
                                                                                 addr301:
                                                                                 for each(_loc9_ in param1.MovieClip)
                                                                                 {
                                                                                    if(!(_loc16_ && param2))
                                                                                    {
                                                                                       this.§1I§.push(new §=!=§(_loc9_,this));
                                                                                    }
                                                                                 }
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    addr330:
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(!(_loc16_ && param2))
                                                                                       {
                                                                                          _loc13_ = §§pop();
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             addr345:
                                                                                             _loc14_ = param1.Popup;
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                break loop2;
                                                                                             }
                                                                                             addr370:
                                                                                          }
                                                                                          this.readInitialVisibility(param1);
                                                                                          if(param1.@MouseDown.toString() != "")
                                                                                          {
                                                                                             §`!E§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                                          }
                                                                                          addr413:
                                                                                          if(param1.@MouseUp.toString() != "")
                                                                                          {
                                                                                             addr482:
                                                                                             while(true)
                                                                                             {
                                                                                                §`!E§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                                             }
                                                                                             addr482:
                                                                                          }
                                                                                          loop5:
                                                                                          while(true)
                                                                                          {
                                                                                             if(param1.@MouseOver.toString() != "")
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §`!E§(§&!<§,param1.@MouseOver);
                                                                                                   addr473:
                                                                                                   while(_loc15_)
                                                                                                   {
                                                                                                   }
                                                                                                   continue loop5;
                                                                                                }
                                                                                                addr458:
                                                                                             }
                                                                                             while(param1.@MouseOut.toString() != "")
                                                                                             {
                                                                                                if(!(_loc16_ && param1))
                                                                                                {
                                                                                                   if(!(_loc16_ && this))
                                                                                                   {
                                                                                                      if(_loc15_ || this)
                                                                                                      {
                                                                                                         §`!E§(§@K§,param1.@MouseOut);
                                                                                                         addr451:
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr458);
                                                                                                   }
                                                                                                   §§goto(addr473);
                                                                                                }
                                                                                                §§goto(addr451);
                                                                                             }
                                                                                             return;
                                                                                          }
                                                                                          addr413:
                                                                                       }
                                                                                       addr384:
                                                                                       _loc13_ = §§pop();
                                                                                    }
                                                                                    for each(_loc11_ in param1.Slider)
                                                                                    {
                                                                                       if(_loc15_ || param2)
                                                                                       {
                                                                                          this.§1I§.push(new § %§(_loc11_,this));
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr413);
                                                                                 }
                                                                                 addr374:
                                                                                 if(_loc15_ || this)
                                                                                 {
                                                                                    §§goto(addr384);
                                                                                    §§push(0);
                                                                                 }
                                                                                 §§goto(addr413);
                                                                              }
                                                                              §§goto(addr384);
                                                                           }
                                                                           §§goto(addr345);
                                                                        }
                                                                        §§goto(addr330);
                                                                     }
                                                                     §§goto(addr413);
                                                                  }
                                                                  §§goto(addr384);
                                                               }
                                                               §§goto(addr288);
                                                            }
                                                            break;
                                                         }
                                                         while(§§pop())
                                                         {
                                                            _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                                            if(!(_loc16_ && this))
                                                            {
                                                               this.§1I§.push(new §+B§(_loc10_,this));
                                                            }
                                                            §§goto(addr370);
                                                         }
                                                         if(!_loc16_)
                                                         {
                                                            §§goto(addr374);
                                                         }
                                                         §§goto(addr330);
                                                      }
                                                      §§goto(addr300);
                                                   }
                                                   §§goto(addr301);
                                                }
                                                §§goto(addr330);
                                                addr188:
                                             }
                                             §§goto(addr256);
                                          }
                                          §§goto(addr482);
                                       }
                                       §§goto(addr345);
                                    }
                                    §§goto(addr288);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    _loc6_ = §§nextvalue(_loc13_,_loc14_);
                                    if(!(_loc16_ && param3))
                                    {
                                       this.§1I§.push(new §?H§(_loc6_,this,null));
                                    }
                                    continue;
                                 }
                                 §§goto(addr190);
                              }
                           }
                           §§goto(addr98);
                        }
                        this.§=o§.movieClip.addChild(mClip);
                        §§goto(addr85);
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr85);
               }
               §§goto(addr92);
            }
            §§goto(addr62);
         }
         §§goto(addr85);
      }
      
      public function §#!E§(param1:§`H§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function §''§(param1:§`H§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function §&!?§(param1:§`H§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§1I§.indexOf(param1) < 0)
            {
               loop0:
               while(true)
               {
                  this.§1I§.push(param1);
                  addr129:
                  while(true)
                  {
                     param1.mParentContainer = this;
                     addr118:
                     while(true)
                     {
                        param1.setActiveStatus(this.§^[§);
                        continue loop0;
                        addr99:
                        §§pop().setVisibility(§§pop());
                        do
                        {
                           param1.viewWidth = viewWidth;
                        }
                        while(!_loc3_);
                        
                        if(_loc3_ || _loc2_)
                        {
                           param1.viewHeight = viewHeight;
                           if(_loc3_)
                           {
                              §§goto(addr20);
                           }
                           continue loop0;
                           addr44:
                        }
                     }
                     continue loop0;
                  }
               }
            }
            addr20:
            return;
         }
         §§goto(addr129);
      }
      
      public function §[4§(param1:§`H§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§1I§.indexOf(param1);
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ >= 0)
            {
               do
               {
                  param1.mParentContainer = null;
                  do
                  {
                     this.§1I§.splice(_loc2_,1);
                     do
                     {
                        mClip.removeChild(param1.mClip);
                     }
                     while(!(_loc3_ || param1));
                     
                  }
                  while(_loc4_ && _loc3_);
                  
               }
               while(!_loc3_);
               
               addr75:
            }
            return;
         }
         §§goto(addr75);
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!mClip)
            {
               if(_loc3_ || _loc3_)
               {
                  return;
               }
            }
         }
         var _loc2_:String = param1.@visible;
         §§push(_loc2_);
         loop0:
         while(true)
         {
            §§push(Boolean(§§pop()));
            loop1:
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
                        §§push(_loc2_);
                        addr145:
                        while(true)
                        {
                           §§push(§§pop().toUpperCase() == "FALSE");
                           addr148:
                           while(!_loc4_)
                           {
                           }
                           continue loop1;
                        }
                     }
                     addr160:
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.setVisibility(true);
                        loop7:
                        while(true)
                        {
                           if(_loc4_)
                           {
                              while(true)
                              {
                                 this.setVisibility(false);
                                 addr155:
                                 while(true)
                                 {
                                 }
                              }
                              addr152:
                           }
                           while(true)
                           {
                              §§push(param1.@enabled);
                              addr111:
                              while(_loc3_)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop7;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr145);
                              §§goto(addr155);
                           }
                           addr66:
                           this.setEnabled(true);
                           addr33:
                           return;
                        }
                     }
                     §§goto(addr152);
                  }
               }
            }
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function containerEventOccured(param1:int, param2:String, param3:§-[§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(!mParentContainer)
            {
               §§push(this.§=o§);
               if(!(_loc5_ && param3))
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        if(_loc4_)
                        {
                           addr62:
                           this.§=o§.listenerEventOccured(param1,param2,param3);
                           addr66:
                           if(_loc4_)
                           {
                              §§goto(addr19);
                           }
                           else
                           {
                              addr71:
                              mParentContainer.containerEventOccured(param1,param2,param3);
                           }
                        }
                        §§goto(addr19);
                     }
                     §§goto(addr66);
                  }
                  addr19:
                  return;
               }
               §§goto(addr62);
            }
         }
         §§goto(addr71);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§`H§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§1I§)
         {
            if(_loc5_ || _loc3_)
            {
               _loc2_.setActiveStatus(param1);
            }
         }
         if(_loc5_)
         {
            super.setActiveStatus(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         if(_loc2_ || _loc2_)
         {
            if(this.§1I§)
            {
               if(_loc2_ || this)
               {
                  addr106:
                  _loc1_ = 0;
               }
               while(_loc1_ < this.§1I§.length)
               {
                  this.§1I§[_loc1_].clear();
                  _loc1_++;
               }
            }
            this.§1I§ = null;
            §§push(this.§=o§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  addr59:
                  this.§=o§.movieClip.removeChild(mClip);
                  while(true)
                  {
                  }
                  addr62:
               }
               while(true)
               {
                  super.clear();
                  if(_loc2_ || _loc3_)
                  {
                     break;
                  }
                  §§goto(addr62);
               }
               return;
            }
            §§goto(addr59);
         }
         §§goto(addr106);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.setVisibility(param1);
         }
         do
         {
            this.onParentVisibilityChange(param1);
         }
         while(_loc3_);
         
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§`H§ = null;
         if(!(_loc6_ && param1))
         {
            super.onParentVisibilityChange(param1);
            if(!_loc6_)
            {
               §§goto(addr41);
            }
            §§goto(addr55);
         }
         addr41:
         if(this.§1I§ != null)
         {
            addr55:
            for each(_loc2_ in this.§1I§)
            {
               if(!(_loc6_ && this))
               {
                  _loc2_.onParentVisibilityChange(param1);
               }
            }
         }
      }
      
      public function §=W§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = null;
         if(!(_loc5_ && param1))
         {
            if(mName.toUpperCase() == param1)
            {
               if(!(_loc5_ && param2))
               {
                  this.setVisibility(param2);
                  addr40:
               }
               §§goto(addr40);
            }
            else
            {
               _loc3_ = this.getItemByName(param1);
               if(_loc4_ || param2)
               {
                  if(_loc3_ is §`H§)
                  {
                     if(!_loc5_)
                     {
                        (_loc3_ as §`H§).setVisibility(param2);
                        if(_loc5_)
                        {
                        }
                        §§goto(addr128);
                     }
                  }
                  else
                  {
                     §§push(§3f§);
                     §§push("WARNING: UIContainer(");
                     if(!_loc5_)
                     {
                        §§push(§§pop() + mName);
                        if(!(_loc5_ && param2))
                        {
                           §§push(") setItemVisibility can not be done because item ");
                           if(_loc4_ || param1)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc4_ || _loc3_)
                              {
                                 addr116:
                                 §§push(§§pop() + param1);
                                 if(!(_loc5_ && param1))
                                 {
                                    addr126:
                                    §§push(§§pop() + " does not exist");
                                 }
                              }
                              §§pop().log(§§pop());
                              §§goto(addr128);
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr128);
               }
            }
            addr128:
            return;
         }
         §§goto(addr40);
      }
      
      public function getItemByName(param1:String) : §`H§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§`H§ = null;
         var _loc3_:§`H§ = null;
         if(_loc6_)
         {
            §§push(param1);
            if(!_loc7_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(!_loc7_)
            {
               if(mName.toUpperCase() == param1)
               {
                  if(_loc6_ || param1)
                  {
                     §§goto(addr43);
                  }
               }
            }
            var _loc4_:int = 0;
            var _loc5_:* = this.§1I§;
            while(true)
            {
               for each(_loc2_ in _loc5_)
               {
                  if(_loc6_)
                  {
                     if(_loc2_.mName.toUpperCase() == param1)
                     {
                        if(_loc6_)
                        {
                           return _loc2_;
                        }
                     }
                     else
                     {
                        addr96:
                        if(!(_loc2_ is §&F§))
                        {
                           continue;
                        }
                     }
                     _loc3_ = (_loc2_ as §&F§).getItemByName(param1);
                     if(_loc7_)
                     {
                        break;
                     }
                     if(_loc3_ != null)
                     {
                        if(!_loc7_)
                        {
                           break;
                        }
                     }
                     continue;
                  }
                  §§goto(addr96);
               }
               return null;
            }
            return _loc3_;
         }
         addr43:
         return this;
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            mClip.mouseEnabled = param1;
         }
      }
      
      override public function getParentView() : §#H§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§=o§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && this))
                  {
                     §§push(this.§=o§);
                  }
                  else
                  {
                     §§goto(addr44);
                  }
               }
               §§goto(addr44);
            }
            return §§pop();
         }
         addr44:
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§`H§ = null;
         if(_loc6_ || _loc3_)
         {
            super.viewWidth = param1;
         }
         for each(_loc2_ in this.§1I§)
         {
            if(!(_loc5_ && this))
            {
               _loc2_.viewWidth = param1;
            }
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§`H§ = null;
         if(!(_loc6_ && this))
         {
            super.viewHeight = param1;
         }
         for each(_loc2_ in this.§1I§)
         {
            if(_loc5_ || this)
            {
               _loc2_.viewHeight = param1;
            }
         }
      }
   }
}
