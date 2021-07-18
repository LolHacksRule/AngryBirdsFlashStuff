package §[!m§
{
   import §0!=§.§]"3§;
   import §1#R§.§+#[§;
   import §1#R§.PopupLayerEvent;
   import §>@§.§5"H§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §&j§ extends EventDispatcher implements §;a§
   {
       
      
      protected var §^c§:MovieClip;
      
      protected var §+"p§:Number;
      
      protected var §?!"§:Number;
      
      protected var §!#T§:Vector.<§7#S§>;
      
      protected var §^"N§:§5"H§;
      
      protected var §;D§:§]"3§;
      
      public function §&j§(param1:MovieClip, param2:§5"H§, param3:§]"3§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super();
            while(true)
            {
               this.§!#T§ = new Vector.<§7#S§>(param6,true);
               addr89:
               while(true)
               {
                  this.§^"N§ = param2;
               }
            }
            addr92:
         }
         loop2:
         while(true)
         {
            this.§;D§ = param3;
            loop3:
            while(true)
            {
               if(!_loc8_)
               {
                  if(!_loc8_)
                  {
                     this.§^c§ = param1;
                     loop4:
                     do
                     {
                        this.§+"p§ = param4;
                        for(; _loc7_; this.§?!"§ = param5,if(!_loc8_)
                        {
                           continue loop4;
                        })
                        {
                           if(!_loc8_)
                           {
                              continue;
                           }
                           §§goto(addr92);
                        }
                        continue loop3;
                     }
                     while(_loc8_);
                     
                     return;
                  }
                  break;
               }
               continue loop2;
            }
            §§goto(addr89);
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§7#S§ = null;
         if(!_loc6_)
         {
            this.§+"p§ = param1;
            if(_loc7_)
            {
               this.§?!"§ = param2;
               addr27:
            }
            for each(_loc3_ in this.§!#T§)
            {
               if(_loc7_)
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
                  if(_loc6_)
                  {
                     continue;
                  }
               }
               _loc3_.setViewSize(param1,param2);
            }
            return;
         }
         §§goto(addr27);
      }
      
      public function §""n§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§7#S§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§!#T§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_ || _loc2_)
               {
                  §§push(Boolean(_loc1_));
                  if(_loc5_ || _loc1_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           §§pop();
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(Boolean(_loc1_.§""n§()));
                              if(_loc5_ || this)
                              {
                              }
                              §§goto(addr100);
                           }
                           continue;
                        }
                        §§goto(addr100);
                     }
                     if(§§pop())
                     {
                        if(!(_loc4_ && this))
                        {
                           break;
                        }
                     }
                     continue;
                  }
                  §§goto(addr100);
               }
               break;
            }
            return false;
         }
         addr100:
         true;
         return §§pop();
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§7#S§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§!#T§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc6_)
               {
                  §§push(Boolean(_loc2_));
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                        §§pop();
                        if(_loc5_)
                        {
                           addr55:
                           §§push(Boolean(_loc2_.isPopupOpenById(param1)));
                           if(_loc6_ && _loc2_)
                           {
                              break;
                           }
                           addr66:
                           if(§§pop())
                           {
                              if(_loc5_ || _loc2_)
                              {
                                 §§push(true);
                                 break;
                              }
                           }
                        }
                        continue;
                     }
                  }
                  §§goto(addr66);
               }
               §§goto(addr55);
            }
            return false;
         }
         return §§pop();
      }
      
      public function §6#-§(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§7#S§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§!#T§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_)
               {
                  §§push(Boolean(_loc2_));
                  if(!(_loc6_ && param1))
                  {
                     if(§§pop())
                     {
                        if(!_loc6_)
                        {
                           §§pop();
                           if(!_loc5_)
                           {
                              addr85:
                              break;
                           }
                           §§push(Boolean(_loc2_.§6#-§(param1)));
                           if(_loc6_)
                           {
                              return §§pop();
                           }
                           addr66:
                           if(§§pop())
                           {
                              if(!(_loc6_ && this))
                              {
                                 break;
                              }
                           }
                           continue;
                        }
                     }
                  }
                  §§goto(addr66);
               }
               break;
            }
            return false;
         }
         §§goto(addr85);
         §§push(true);
      }
      
      public function § #6§(param1:String) : §[!j§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§7#S§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§!#T§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_ || _loc3_)
               {
                  §§push(Boolean(_loc2_));
                  if(_loc5_ || param1)
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           §§pop();
                           if(!(_loc5_ || _loc2_))
                           {
                              continue;
                           }
                           addr70:
                           §§push(Boolean(_loc2_.isPopupOpenById(param1)));
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc5_ || this)
                     {
                        break;
                     }
                  }
                  continue;
               }
               §§goto(addr70);
            }
            return null;
         }
         return _loc2_.§ #6§(param1);
      }
      
      public function §5!a§(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §7#S§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:§7#S§;
         if(_loc5_ = this.§!#T§[param1])
         {
            if(_loc7_ || param1)
            {
               _loc5_.isPersistentLayer = param4;
               if(_loc7_ || param1)
               {
                  return _loc5_;
               }
            }
         }
         (_loc5_ = this.§!#T§[param1] = this.§;!5§(param1,param2,param3,param4)).addEventListener(PopupLayerEvent.OPEN,this.§%"x§);
         if(_loc7_)
         {
            _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§'M§);
            while(true)
            {
               _loc5_.addEventListener(PopupLayerEvent.§!C§,this.onPopupCloseRequest);
               loop1:
               while(!_loc8_)
               {
                  while(true)
                  {
                     this.§7c§();
                     if(!_loc8_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return _loc5_;
               }
            }
         }
         §§goto(addr108);
      }
      
      protected function §;!5§(param1:int, param2:Boolean, param3:Rectangle, param4:Boolean) : §7#S§
      {
         var _loc5_:§7#S§;
         (_loc5_ = new §7#S§(param1,this.§^c§,this.§^"N§,this.§;D§,param2,param3)).isPersistentLayer = param4;
         return _loc5_;
      }
      
      protected function §5!i§(param1:§7#S§, param2:§7#S§) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            if(param2 != null)
            {
               while(true)
               {
                  if(param1 == null)
                  {
                     if(_loc4_)
                     {
                        §§push(1);
                        if(!_loc3_)
                        {
                           return §§pop();
                        }
                        break;
                     }
                     if(_loc3_ && _loc3_)
                     {
                        continue;
                     }
                     if(!_loc4_)
                     {
                        addr77:
                        break;
                     }
                  }
                  return param1.index - param2.index;
               }
               return §§pop();
            }
         }
         §§goto(addr77);
      }
      
      protected function §7c§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§7#S§ = null;
         var _loc1_:Vector.<§7#S§> = this.§!#T§.concat();
         if(!_loc5_)
         {
            _loc1_.sort(this.§5!i§);
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc4_ || _loc1_)
            {
               if(_loc2_)
               {
                  if(_loc4_ || this)
                  {
                     _loc2_.§-"1§();
                     if(!_loc4_)
                     {
                        continue;
                     }
                  }
               }
            }
            _loc3_++;
         }
      }
      
      public function §-!j§(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§!#T§[param1])
            {
               if(!_loc3_)
               {
                  addr46:
                  this.§!#T§[param1].isPersistentLayer = param2;
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function openPopup(param1:§[!j§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:§7#S§ = this.§`"d§(param1.§^!F§);
         var _loc7_:§1!v§ = new §1!v§(param1,param2,param3,param4);
         if(_loc8_ || param3)
         {
            _loc6_.openPopup(_loc7_,param5);
            do
            {
               this.setViewSize(this.§+"p§,this.§?!"§);
            }
            while(!_loc8_);
            
         }
      }
      
      public function §,"o§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§[!j§;
         if(_loc4_ = this.§ #6§(param1))
         {
            if(!(_loc6_ && this))
            {
               this.closePopup(_loc4_.§^!F§,param2,param3);
            }
         }
      }
      
      public function §<"w§(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§7#S§ = null;
         for each(_loc3_ in this.§!#T§)
         {
            if(!(_loc6_ && _loc3_))
            {
               if(_loc3_)
               {
                  if(_loc7_ || param2)
                  {
                     if(_loc3_.isPersistentLayer)
                     {
                        continue;
                     }
                     if(_loc6_ && param2)
                     {
                        continue;
                     }
                  }
                  this.§1![§(_loc3_,param1,param2);
               }
            }
         }
      }
      
      protected function §1![§(param1:§7#S§, param2:Boolean, param3:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            param1.closePopup(param2,param3);
         }
      }
      
      public function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:§7#S§ = null;
         var _loc6_:* = 0;
         if(_loc8_)
         {
            §§push(param1);
            if(_loc8_ || param3)
            {
               §§push(§§pop() >= 0);
               if(!_loc7_)
               {
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        addr40:
                        §§pop();
                        §§goto(addr92);
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc8_ || this)
                     {
                        if(_loc5_ = this.§!#T§[param1])
                        {
                           if(_loc8_ || this)
                           {
                              this.§1![§(_loc5_,param2,param3);
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr92);
                     }
                     §§goto(addr161);
                  }
                  else
                  {
                     addr91:
                     _loc6_ = int(this.§!#T§.length - 1);
                     §§goto(addr92);
                  }
                  loop0:
                  do
                  {
                     if(_loc6_ < 0)
                     {
                        addr161:
                        return;
                     }
                     if(_loc5_ = this.§!#T§[_loc6_])
                     {
                        if(_loc8_)
                        {
                           if(param4)
                           {
                              if(_loc7_)
                              {
                                 continue;
                              }
                              this.§1![§(_loc5_,param2,false);
                              if(!_loc8_)
                              {
                                 continue;
                              }
                              loop1:
                              while(true)
                              {
                                 addr117:
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    if(!(_loc7_ && param2))
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc6_ = §§pop();
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 if(_loc8_ || param3)
                                 {
                                    continue loop0;
                                 }
                              }
                           }
                           else
                           {
                              this.§1![§(_loc5_,param2,param3);
                           }
                           break;
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr117);
                  }
                  while(true);
                  
                  return;
               }
               §§goto(addr40);
            }
            §§goto(addr91);
         }
         §§goto(addr40);
      }
      
      protected function onPopupCloseRequest(param1:PopupLayerEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§7#S§ = this.§!#T§[param1.§^!F§];
         if(_loc4_)
         {
            if(_loc2_)
            {
               if(_loc4_ || _loc2_)
               {
                  this.§1![§(_loc2_,param1.§#"^§.useTransitionOut,param1.§#"^§.allowQueue);
               }
            }
         }
      }
      
      protected function §'M§(param1:PopupLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(!this.§""n§())
            {
               if(_loc3_ || this)
               {
                  addr54:
                  dispatchEvent(new §+#[§(§+#[§.CLOSE,null));
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      protected function §%"x§(param1:PopupLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            dispatchEvent(new §+#[§(§+#[§.OPEN,null));
         }
      }
      
      protected function §`"d§(param1:int) : §7#S§
      {
         return this.§5!a§(param1);
      }
   }
}
