package §1!i§
{
   import §,!'§.§5O§;
   import §,M§.§+f§;
   import §8]§.§7O§;
   import §8]§.PopupLayerEvent;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §"g§ extends EventDispatcher implements §^Q§
   {
       
      
      protected var §29§:MovieClip;
      
      protected var §^!J§:Number;
      
      protected var §+=§:Number;
      
      protected var §3S§:Vector.<§ 3§>;
      
      protected var §8&§:§+f§;
      
      protected var §-p§:§5O§;
      
      public function §"g§(param1:MovieClip, param2:§+f§, param3:§5O§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param3))
         {
            super();
            loop0:
            while(true)
            {
               this.§3S§ = new Vector.<§ 3§>(param6,true);
               addr115:
               while(true)
               {
                  this.§8&§ = param2;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§-p§ = param3;
            loop4:
            do
            {
               this.§29§ = param1;
               while(true)
               {
                  this.§^!J§ = param4;
                  while(!(_loc7_ && param1))
                  {
                     this.§+=§ = param5;
                     if(!(_loc7_ && param1))
                     {
                        continue loop4;
                     }
                  }
               }
            }
            while(!(_loc8_ || param2));
            
            §§goto(addr47);
         }
         §§goto(addr61);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§ 3§ = null;
         if(_loc6_)
         {
            this.§^!J§ = param1;
            if(_loc6_)
            {
               addr26:
               this.§+=§ = param2;
            }
            for each(_loc3_ in this.§3S§)
            {
               if(_loc6_)
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
                  if(!(_loc6_ || this))
                  {
                     continue;
                  }
               }
               _loc3_.setViewSize(param1,param2);
            }
            return;
         }
         §§goto(addr26);
      }
      
      public function §8!5§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§ 3§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§3S§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc4_ || _loc1_)
               {
                  §§push(Boolean(_loc1_));
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           addr57:
                           §§pop();
                           if(_loc4_ || _loc3_)
                           {
                              §§push(Boolean(_loc1_.§8!5§()));
                              if(_loc5_ && _loc3_)
                              {
                                 return §§pop();
                              }
                              addr75:
                              if(§§pop())
                              {
                                 if(_loc4_ || this)
                                 {
                                    break;
                                 }
                              }
                              addr94:
                           }
                           continue;
                        }
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr57);
               }
               break;
            }
            return false;
         }
         §§goto(addr94);
         §§push(true);
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§ 3§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§3S§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc6_ || this))
               {
                  continue;
               }
               §§push(Boolean(_loc2_));
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(_loc6_)
                     {
                        §§pop();
                        if(_loc5_)
                        {
                           continue;
                        }
                        §§push(Boolean(_loc2_.isPopupOpenById(param1)));
                        if(!_loc5_)
                        {
                           addr67:
                           if(§§pop())
                           {
                              if(!(_loc5_ && _loc3_))
                              {
                                 break;
                              }
                           }
                           continue;
                        }
                     }
                     §§goto(addr86);
                  }
               }
               §§goto(addr67);
            }
            return false;
         }
         addr86:
         true;
         return §§pop();
      }
      
      public function §+7§(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§ 3§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§3S§;
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
                        if(!_loc6_)
                        {
                           §§pop();
                           if(_loc5_ || param1)
                           {
                              addr60:
                              §§push(Boolean(_loc2_.§+7§(param1)));
                              if(!(_loc5_ || _loc2_))
                              {
                                 break;
                              }
                              addr71:
                              if(§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    §§push(true);
                                    break;
                                 }
                              }
                           }
                           continue;
                        }
                     }
                  }
                  §§goto(addr71);
               }
               §§goto(addr60);
            }
            return false;
         }
         return §§pop();
      }
      
      public function §;j§(param1:String) : §?!a§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§ 3§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§3S§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_)
               {
                  continue;
               }
               §§push(Boolean(_loc2_));
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(_loc6_ || _loc2_)
                     {
                        addr58:
                        §§pop();
                        if(_loc5_)
                        {
                           break;
                        }
                        addr65:
                        if(_loc2_.isPopupOpenById(param1))
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                        }
                        continue;
                     }
                  }
                  §§goto(addr65);
               }
               §§goto(addr58);
            }
            return null;
         }
         return _loc2_.§;j§(param1);
      }
      
      public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : § 3§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:§ 3§;
         if(_loc5_ = this.§3S§[param1])
         {
            if(!_loc7_)
            {
               _loc5_.isPersistentLayer = param4;
               if(_loc7_)
               {
                  (_loc5_ = this.§3S§[param1] = this.§1#§(param1,param2,param3,param4)).addEventListener(PopupLayerEvent.OPEN,this.§6<§);
                  addr34:
                  if(!(_loc7_ && param3))
                  {
                     _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§ for§);
                     while(true)
                     {
                        _loc5_.addEventListener(PopupLayerEvent.§9! §,this.§-!^§);
                        loop1:
                        while(_loc8_ || param1)
                        {
                           while(true)
                           {
                              this.§"!m§();
                              if(_loc8_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           return _loc5_;
                        }
                     }
                  }
                  §§goto(addr109);
               }
            }
            return _loc5_;
         }
         §§goto(addr34);
      }
      
      protected function §1#§(param1:int, param2:Boolean, param3:Rectangle, param4:Boolean) : § 3§
      {
         var _loc5_:§ 3§;
         (_loc5_ = new § 3§(param1,this.§29§,this.§8&§,this.§-p§,param2,param3)).isPersistentLayer = param4;
         return _loc5_;
      }
      
      protected function §^!7§(param1:§ 3§, param2:§ 3§) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            if(param2 == null)
            {
               if(_loc3_ || this)
               {
                  addr91:
                  return -1;
               }
               else
               {
                  while(true)
                  {
                     §§goto(addr33);
                  }
               }
               return §§pop();
            }
            addr33:
            while(param1 == null)
            {
               if(_loc4_ && param2)
               {
                  continue loop0;
               }
               §§push(1);
               if(!(_loc4_ && param1))
               {
                  return §§pop();
               }
               continue loop0;
            }
            addr24:
            return param1.index - param2.index;
         }
         §§goto(addr91);
      }
      
      protected function §"!m§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§ 3§ = null;
         var _loc1_:Vector.<§ 3§> = this.§3S§.concat();
         if(!(_loc4_ && _loc3_))
         {
            _loc1_.sort(this.§^!7§);
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc5_)
            {
               if(_loc2_)
               {
                  if(!(_loc5_ || _loc1_))
                  {
                     continue;
                  }
                  addr66:
                  _loc2_.§&A§();
                  if(_loc4_ && _loc1_)
                  {
                     continue;
                  }
               }
               _loc3_++;
               continue;
            }
            §§goto(addr66);
         }
      }
      
      public function setPersistentLayer(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§3S§[param1])
            {
               if(_loc4_)
               {
                  addr46:
                  this.§3S§[param1].isPersistentLayer = param2;
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function openPopup(param1:§?!a§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:§ 3§ = this.§;!9§(param1.§,!1§);
         var _loc7_:§?O§ = new §?O§(param1,param2,param3,param4);
         if(!(_loc9_ && this))
         {
            _loc6_.openPopup(_loc7_,param5);
         }
         do
         {
            this.setViewSize(this.§^!J§,this.§+=§);
         }
         while(_loc9_ && param3);
         
      }
      
      public function §3!a§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§?!a§;
         if(_loc4_ = this.§;j§(param1))
         {
            if(!_loc6_)
            {
               this.closePopup(_loc4_.§,!1§,param2,param3);
            }
         }
      }
      
      public function closeAllPopups(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§ 3§ = null;
         for each(_loc3_ in this.§3S§)
         {
            if(_loc7_)
            {
               if(_loc3_)
               {
                  if(_loc7_)
                  {
                     if(!_loc3_.isPersistentLayer)
                     {
                        if(!(_loc6_ && this))
                        {
                           this.§0!R§(_loc3_,param1,param2);
                        }
                     }
                  }
               }
            }
         }
      }
      
      protected function §0!R§(param1:§ 3§, param2:Boolean, param3:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            param1.closePopup(param2,param3);
         }
      }
      
      public function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:§ 3§ = null;
         var _loc6_:* = 0;
         if(_loc8_)
         {
            §§push(param1);
            if(!(_loc7_ && param3))
            {
               §§push(§§pop() >= 0);
               if(_loc8_)
               {
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        §§pop();
                        §§goto(addr97);
                     }
                  }
               }
               if(§§pop())
               {
                  if(!(_loc7_ && param1))
                  {
                     if(_loc5_ = this.§3S§[param1])
                     {
                        if(!(_loc7_ && param1))
                        {
                           this.§0!R§(_loc5_,param2,param3);
                        }
                     }
                  }
                  else
                  {
                     §§goto(addr97);
                  }
                  §§goto(addr166);
               }
               else
               {
                  §§push(int(this.§3S§.length - 1));
               }
               §§goto(addr97);
            }
            _loc6_ = §§pop();
         }
         addr97:
         if(!_loc7_)
         {
            §§push(param4);
            if(_loc8_ || this)
            {
               §§push(!§§pop());
            }
         }
         loop0:
         do
         {
            if(_loc6_ < 0)
            {
               addr166:
               return;
            }
            if(_loc5_ = this.§3S§[_loc6_])
            {
               if(_loc8_)
               {
                  if(param4)
                  {
                     if(_loc8_ || this)
                     {
                        this.§0!R§(_loc5_,param2,false);
                        if(_loc8_)
                        {
                           loop1:
                           while(true)
                           {
                              addr127:
                              while(true)
                              {
                                 §§push(_loc6_);
                                 if(!_loc7_)
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
                              if(_loc8_ || param1)
                              {
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     this.§0!R§(_loc5_,param2,param3);
                  }
                  break;
               }
               §§goto(addr145);
            }
            §§goto(addr127);
         }
         while(true);
         
      }
      
      protected function §-!^§(param1:PopupLayerEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§ 3§ = this.§3S§[param1.§,!1§];
         if(_loc4_ || _loc3_)
         {
            if(_loc2_)
            {
               if(!(_loc3_ && param1))
               {
                  this.§0!R§(_loc2_,param1.§7!U§.useTransitionOut,param1.§7!U§.allowQueue);
                  addr50:
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      protected function § for§(param1:PopupLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(!this.§8!5§())
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr54:
                  dispatchEvent(new §7O§(§7O§.CLOSE,null));
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      protected function §6<§(param1:PopupLayerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            dispatchEvent(new §7O§(§7O§.OPEN,null));
         }
      }
      
      protected function §;!9§(param1:int) : § 3§
      {
         return this.addLayer(param1);
      }
   }
}
