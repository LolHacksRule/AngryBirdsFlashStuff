package §7!H§
{
   import §#!b§.§'y§;
   import §%!r§.§3!'§;
   import §^r§.§@!T§;
   import §^r§.PopupLayerEvent;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §#!f§ extends EventDispatcher implements §>1§
   {
       
      
      protected var §[S§:MovieClip;
      
      protected var § !%§:Number;
      
      protected var §=D§:Number;
      
      protected var §<M§:Vector.<§'!3§>;
      
      private var §7Z§:§3!'§;
      
      private var §3!+§:§'y§;
      
      public function §#!f§(param1:MovieClip, param2:§3!'§, param3:§'y§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param3)
         {
            super();
            while(true)
            {
               this.§<M§ = new Vector.<§'!3§>(param6,true);
               addr92:
               while(_loc7_)
               {
                  this.§7Z§ = param2;
                  while(true)
                  {
                     this.§3!+§ = param3;
                  }
               }
            }
         }
         loop3:
         do
         {
            this.§[S§ = param1;
            while(true)
            {
               if(!_loc8_)
               {
                  this.§ !%§ = param4;
                  for(; !_loc8_; this.§=D§ = param5,if(_loc7_)
                  {
                     continue loop3;
                  })
                  {
                     if(_loc7_)
                     {
                        continue;
                     }
                  }
                  continue;
               }
               §§goto(addr92);
               §§goto(addr72);
            }
         }
         while(!_loc7_);
         
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§'!3§ = null;
         if(_loc7_ || param2)
         {
            this.§ !%§ = param1;
            if(_loc7_)
            {
               addr32:
               this.§=D§ = param2;
            }
            loop0:
            for each(_loc3_ in this.§<M§)
            {
               if(_loc7_ || this)
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(_loc3_.isPersistentLayer));
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 addr147:
                                 while(true)
                                 {
                                    addr109:
                                    while(true)
                                    {
                                       §§push(_loc3_.index == §1#§.§&R§);
                                       addr115:
                                       while(!_loc6_)
                                       {
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc6_ && param2)
                              {
                                 continue loop3;
                              }
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    loop10:
                                    while(true)
                                    {
                                       §§push(_loc3_.index == §1#§.§=g§);
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       if(_loc7_)
                                       {
                                          if(!_loc6_)
                                          {
                                             while(§§pop())
                                             {
                                                if(_loc7_ || this)
                                                {
                                                   while(true)
                                                   {
                                                      _loc3_.setViewSize(param1,param2);
                                                   }
                                                   addr87:
                                                }
                                                while(true)
                                                {
                                                   if(_loc6_ && this)
                                                   {
                                                      continue loop10;
                                                   }
                                                   if(_loc7_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§goto(addr147);
                                                }
                                             }
                                             continue loop0;
                                             addr78:
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr115);
                                    }
                                 }
                              }
                              §§goto(addr78);
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               §§goto(addr87);
            }
            return;
         }
         §§goto(addr32);
      }
      
      public function §^",§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§'!3§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§<M§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc4_ || _loc2_)
               {
                  §§push(Boolean(_loc1_));
                  if(!(_loc5_ && this))
                  {
                     if(§§pop())
                     {
                        if(!(_loc5_ && this))
                        {
                           §§pop();
                           if(!(_loc5_ && _loc2_))
                           {
                              addr75:
                              §§push(Boolean(_loc1_.§^",§()));
                              if(_loc4_)
                              {
                                 addr80:
                                 if(!§§pop())
                                 {
                                    continue;
                                 }
                                 if(!_loc4_)
                                 {
                                    continue;
                                 }
                              }
                              break;
                           }
                           §§push(true);
                           break;
                        }
                        break;
                     }
                     §§goto(addr80);
                  }
                  break;
               }
               §§goto(addr75);
            }
            return false;
         }
         return §§pop();
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§'!3§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§<M§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_ || _loc2_)
               {
                  §§push(Boolean(_loc2_));
                  if(_loc6_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           addr68:
                           §§pop();
                           if(_loc5_)
                           {
                              continue;
                           }
                           §§push(Boolean(_loc2_.isPopupOpenById(param1)));
                           if(_loc6_ || _loc2_)
                           {
                              addr82:
                              if(§§pop())
                              {
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                              }
                              continue;
                           }
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr68);
               }
               break;
            }
            return false;
         }
         addr96:
         true;
         return §§pop();
      }
      
      public function §'!Q§(param1:String) : §3z§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§'!3§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§<M§)
         {
            if(_loc6_)
            {
               §§push(Boolean(_loc2_));
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     if(_loc6_ || _loc3_)
                     {
                        §§pop();
                        if(_loc5_ && param1)
                        {
                           continue;
                        }
                        §§push(Boolean(_loc2_.isPopupOpenById(param1)));
                     }
                  }
               }
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     return _loc2_.§'!Q§(param1);
                  }
               }
            }
         }
         return null;
      }
      
      public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §'!3§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:§'!3§;
         if(_loc5_ = this.§<M§[param1])
         {
            if(_loc8_ || param3)
            {
               _loc5_.isPersistentLayer = param4;
               if(!(_loc8_ || param3))
               {
                  (_loc5_ = this.§<M§[param1] = new §'!3§(param1,this.§[S§,this.§7Z§,this.§3!+§,param2,param3)).isPersistentLayer = param4;
                  addr44:
                  if(!(_loc7_ && param1))
                  {
                     _loc5_.addEventListener(PopupLayerEvent.OPEN,this.§,l§);
                     while(true)
                     {
                        _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§?r§);
                        loop1:
                        while(_loc8_)
                        {
                           while(true)
                           {
                              _loc5_.addEventListener(PopupLayerEvent.§^!I§,this.§6'§);
                              do
                              {
                                 this.§%2§();
                              }
                              while(_loc7_);
                              
                              if(!(_loc7_ && param1))
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           return _loc5_;
                        }
                     }
                  }
                  §§goto(addr131);
               }
            }
            return _loc5_;
         }
         §§goto(addr44);
      }
      
      protected function §'!N§(param1:§'!3§, param2:§'!3§) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param2 == null)
            {
               if(!_loc4_)
               {
                  return -1;
               }
               else
               {
                  while(true)
                  {
                     §§goto(addr28);
                  }
               }
               return §§pop();
            }
            addr28:
            while(param1 == null)
            {
               if(_loc4_ && this)
               {
                  continue loop0;
               }
               §§push(1);
               if(_loc3_)
               {
                  return §§pop();
               }
               continue loop0;
            }
            addr19:
            return param1.index - param2.index;
         }
         §§goto(addr49);
      }
      
      protected function §%2§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§'!3§ = null;
         var _loc1_:Vector.<§'!3§> = this.§<M§.concat();
         if(_loc4_)
         {
            _loc1_.sort(this.§'!N§);
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(!_loc5_)
            {
               if(_loc2_)
               {
                  if(_loc4_ || this)
                  {
                     _loc2_.§,!<§();
                     addr60:
                     if(_loc5_)
                     {
                        continue;
                     }
                  }
               }
               _loc3_++;
               continue;
            }
            §§goto(addr60);
         }
      }
      
      public function setPersistentLayer(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            if(this.§<M§[param1])
            {
               if(!_loc4_)
               {
                  addr50:
                  this.§<M§[param1].isPersistentLayer = param2;
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function openPopup(param1:§3z§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:§'!3§ = this.§?!k§(param1.§<!]§);
         var _loc7_:§'"H§ = new §'"H§(param1,param2,param3,param4);
         if(!_loc9_)
         {
            if(_loc6_.§<! §(_loc7_,param5))
            {
               loop0:
               while(true)
               {
                  _loc6_.openPopup(_loc7_,param5);
                  addr83:
                  while(true)
                  {
                     _loc6_.setViewSize(this.§ !%§,this.§=D§);
                     if(_loc8_)
                     {
                        if(!(_loc9_ && param1))
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr43);
               }
            }
            addr43:
            return;
         }
         §§goto(addr83);
      }
      
      public function §9"4§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§3z§;
         if(_loc4_ = this.§'!Q§(param1))
         {
            if(_loc5_)
            {
               this.closePopup(_loc4_.§<!]§,param2,param3);
            }
         }
      }
      
      public function §@;§(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§'!3§ = null;
         for each(_loc3_ in this.§<M§)
         {
            if(_loc7_ || param1)
            {
               if(_loc3_)
               {
                  if(!(_loc6_ && param1))
                  {
                     if(!_loc3_.isPersistentLayer)
                     {
                        if(!(_loc6_ && param2))
                        {
                           _loc3_.closePopup(param1,param2);
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:§'!3§ = null;
         var _loc6_:* = 0;
         if(_loc7_ || param3)
         {
            §§push(param1);
            if(_loc7_)
            {
               §§push(§§pop() >= 0);
               if(_loc7_ || param2)
               {
                  if(§§pop())
                  {
                     if(!(_loc8_ && param2))
                     {
                        §§pop();
                        §§goto(addr69);
                     }
                     §§goto(addr60);
                  }
                  if(§§pop())
                  {
                     if(_loc7_ || param3)
                     {
                        §§goto(addr69);
                     }
                     else
                     {
                        addr100:
                        loop0:
                        while(_loc6_ >= 0)
                        {
                           if(_loc5_ = this.§<M§[_loc6_])
                           {
                              if(_loc7_ || param3)
                              {
                                 if(param4)
                                 {
                                    if(_loc7_ || this)
                                    {
                                       _loc5_.closePopup(param2,false);
                                       if(_loc7_)
                                       {
                                          while(true)
                                          {
                                             §§goto(addr134);
                                          }
                                          addr133:
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr133);
                                    }
                                 }
                                 else
                                 {
                                    _loc5_.closePopup(param2,param3);
                                 }
                              }
                              §§goto(addr178);
                           }
                           addr134:
                           while(true)
                           {
                              §§push(_loc6_);
                              if(_loc7_ || param1)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc6_ = §§pop();
                              if(!(_loc8_ && param1))
                              {
                                 if(false)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              if(!(_loc7_ || param3))
                              {
                                 break;
                              }
                              addr178:
                              continue loop1;
                           }
                           return;
                        }
                     }
                     §§goto(addr69);
                  }
                  else
                  {
                     addr99:
                     _loc6_ = int(this.§<M§.length - 1);
                  }
                  §§goto(addr100);
               }
               §§goto(addr60);
            }
            §§goto(addr99);
         }
         addr69:
         if(_loc7_ || this)
         {
            §§push(param4);
            if(!_loc8_)
            {
               addr60:
               §§push(!§§pop());
            }
         }
         if(_loc5_ = this.§<M§[param1])
         {
            if(!_loc8_)
            {
               _loc5_.closePopup(param2,param3);
            }
         }
      }
      
      protected function §6'§(param1:PopupLayerEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§'!3§ = this.§<M§[param1.§<!]§];
         if(_loc3_ || _loc2_)
         {
            if(_loc2_)
            {
               if(_loc3_)
               {
                  _loc2_.closePopup(param1.§ L§.useTransitionOut,param1.§ L§.allowQueue);
               }
            }
         }
      }
      
      protected function §?r§(param1:PopupLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.§^",§())
            {
               if(_loc3_ || this)
               {
                  addr49:
                  dispatchEvent(new §@!T§(§@!T§.CLOSE,null));
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      protected function §,l§(param1:PopupLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            dispatchEvent(new §@!T§(§@!T§.OPEN,null));
         }
      }
      
      protected function §?!k§(param1:int) : §'!3§
      {
         return this.addLayer(param1);
      }
   }
}
