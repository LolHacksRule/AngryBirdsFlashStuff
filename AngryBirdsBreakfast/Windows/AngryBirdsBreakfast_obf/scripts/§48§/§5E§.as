package §48§
{
   import §9!`§.§;g§;
   import §9!`§.PopupLayerEvent;
   import §;0§.§6h§;
   import §?""§.§6!A§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §5E§ extends EventDispatcher implements §1k§
   {
       
      
      protected var §@'§:MovieClip;
      
      protected var §+q§:Number;
      
      protected var §;>§:Number;
      
      protected var §"x§:Vector.<§^A§>;
      
      protected var §-!]§:§6h§;
      
      protected var §6!c§:§6!A§;
      
      public function §5E§(param1:MovieClip, param2:§6h§, param3:§6!A§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super();
            loop0:
            while(true)
            {
               this.§"x§ = new Vector.<§^A§>(param6,true);
               loop1:
               while(true)
               {
                  this.§-!]§ = param2;
                  loop2:
                  do
                  {
                     this.§6!c§ = param3;
                     while(true)
                     {
                        this.§@'§ = param1;
                        continue loop1;
                        addr56:
                        while(_loc8_ || param3)
                        {
                           this.§;>§ = param5;
                           if(_loc8_)
                           {
                              if(_loc8_)
                              {
                                 continue loop2;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  while(_loc7_);
                  
                  continue loop0;
               }
            }
         }
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§^A§ = null;
         if(_loc7_)
         {
            this.§+q§ = param1;
            if(!(_loc6_ && param2))
            {
               this.§;>§ = param2;
            }
         }
         for each(_loc3_ in this.§"x§)
         {
            if(!(_loc6_ && _loc3_))
            {
               if(_loc3_)
               {
                  if(_loc7_ || param1)
                  {
                     _loc3_.setViewSize(param1,param2);
                  }
               }
            }
         }
      }
      
      public function §%&§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§^A§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§"x§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!(_loc5_ && _loc3_))
               {
                  §§push(Boolean(_loc1_));
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc5_ && _loc1_))
                        {
                           §§pop();
                           if(_loc4_)
                           {
                              §§push(Boolean(_loc1_.§%&§()));
                              if(_loc4_)
                              {
                                 addr70:
                                 if(§§pop())
                                 {
                                    if(_loc4_ || _loc2_)
                                    {
                                       break;
                                    }
                                 }
                                 continue;
                              }
                           }
                           break;
                        }
                        §§goto(addr89);
                     }
                  }
                  §§goto(addr70);
               }
               break;
            }
            return false;
         }
         addr89:
         true;
         return §§pop();
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§^A§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§"x§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_ || _loc3_)
               {
                  §§push(Boolean(_loc2_));
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        if(_loc6_ || _loc2_)
                        {
                           §§pop();
                           if(_loc6_ || param1)
                           {
                              addr71:
                              §§push(Boolean(_loc2_.isPopupOpenById(param1)));
                              if(_loc5_ && param1)
                              {
                                 break;
                              }
                              addr82:
                              if(§§pop())
                              {
                                 if(_loc6_ || _loc2_)
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
                  §§goto(addr82);
               }
               §§goto(addr71);
            }
            return false;
         }
         return §§pop();
      }
      
      public function §^0§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§^A§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§"x§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc5_)
               {
                  §§push(Boolean(_loc2_));
                  if(_loc6_ || this)
                  {
                     if(§§pop())
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           addr63:
                           §§pop();
                           if(!_loc6_)
                           {
                              addr96:
                              break;
                           }
                           §§push(Boolean(_loc2_.§^0§(param1)));
                           if(_loc5_ && _loc3_)
                           {
                              return §§pop();
                           }
                           addr77:
                           if(§§pop())
                           {
                              if(_loc6_ || this)
                              {
                                 break;
                              }
                           }
                           continue;
                        }
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr63);
               }
               break;
            }
            return false;
         }
         §§goto(addr96);
         §§push(true);
      }
      
      public function §0z§(param1:String) : §["#§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§^A§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§"x§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc6_)
               {
                  continue;
               }
               §§push(Boolean(_loc2_));
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        addr53:
                        §§pop();
                        if(!(_loc6_ || this))
                        {
                           continue;
                        }
                        §§push(Boolean(_loc2_.isPopupOpenById(param1)));
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                  }
                  continue;
               }
               §§goto(addr53);
            }
            return null;
         }
         return _loc2_.§0z§(param1);
      }
      
      public function §?<§(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §^A§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:§^A§;
         if(_loc5_ = this.§"x§[param1])
         {
            if(_loc8_ || param3)
            {
               _loc5_.isPersistentLayer = param4;
               if(_loc8_)
               {
                  return _loc5_;
               }
            }
         }
         (_loc5_ = this.§"x§[param1] = this.§8P§(param1,param2,param3,param4)).addEventListener(PopupLayerEvent.OPEN,this.§@!J§);
         if(!(_loc7_ && param2))
         {
            _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§`!;§);
         }
         while(true)
         {
            _loc5_.addEventListener(PopupLayerEvent.§]]§,this.§^!Q§);
            while(!_loc7_)
            {
               this.§1!'§();
               if(_loc8_)
               {
                  return _loc5_;
               }
            }
         }
      }
      
      protected function §8P§(param1:int, param2:Boolean, param3:Rectangle, param4:Boolean) : §^A§
      {
         var _loc5_:§^A§;
         (_loc5_ = new §^A§(param1,this.§@'§,this.§-!]§,this.§6!c§,param2,param3)).isPersistentLayer = param4;
         return _loc5_;
      }
      
      protected function §9!E§(param1:§^A§, param2:§^A§) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(param2 != null)
            {
               while(param1 == null)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  if(_loc3_)
                  {
                     if(!(_loc4_ && param1))
                     {
                        addr53:
                        §§push(1);
                        if(_loc3_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr71:
                        return -1;
                     }
                     return §§pop();
                  }
               }
               return param1.index - param2.index;
            }
            §§goto(addr71);
         }
         §§goto(addr53);
      }
      
      protected function §1!'§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§^A§ = null;
         var _loc1_:Vector.<§^A§> = this.§"x§.concat();
         if(_loc4_ || _loc1_)
         {
            _loc1_.sort(this.§9!E§);
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc4_)
            {
               if(_loc2_)
               {
                  if(_loc5_)
                  {
                     continue;
                  }
                  _loc2_.§;!y§();
                  if(_loc5_)
                  {
                     continue;
                  }
               }
               _loc3_++;
            }
         }
      }
      
      public function §]k§(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§"x§[param1])
            {
               if(_loc4_)
               {
                  addr46:
                  this.§"x§[param1].isPersistentLayer = param2;
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function openPopup(param1:§["#§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:§^A§ = this.§=!Q§(param1.§<4§);
         var _loc7_:§5!c§ = new §5!c§(param1,param2,param3,param4);
         if(!_loc8_)
         {
            _loc6_.openPopup(_loc7_,param5);
            do
            {
               this.setViewSize(this.§+q§,this.§;>§);
            }
            while(_loc8_ && param3);
            
         }
      }
      
      public function §9G§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§["#§;
         if(_loc4_ = this.§0z§(param1))
         {
            if(!(_loc5_ && this))
            {
               this.closePopup(_loc4_.§<4§,param2,param3);
            }
         }
      }
      
      public function §[!"§(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§^A§ = null;
         for each(_loc3_ in this.§"x§)
         {
            if(_loc6_ || param1)
            {
               if(!_loc3_)
               {
                  continue;
               }
               if(_loc7_ && param2)
               {
                  continue;
               }
               if(_loc3_.isPersistentLayer)
               {
                  continue;
               }
               if(!(_loc6_ || param2))
               {
                  continue;
               }
            }
            this.§5H§(_loc3_,param1,param2);
         }
      }
      
      protected function §5H§(param1:§^A§, param2:Boolean, param3:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            param1.closePopup(param2,param3);
         }
      }
      
      public function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:§^A§ = null;
         var _loc6_:* = 0;
         if(_loc8_ || this)
         {
            §§push(param1);
            if(_loc8_)
            {
               §§push(§§pop() >= 0);
               if(!(_loc7_ && this))
               {
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        §§pop();
                        if(_loc8_ || param3)
                        {
                           §§push(param4);
                           if(_loc8_ || param2)
                           {
                              addr62:
                              if(!§§pop())
                              {
                                 if(_loc8_ || param3)
                                 {
                                    addr70:
                                    if(_loc5_ = this.§"x§[param1])
                                    {
                                       if(_loc8_ || param1)
                                       {
                                          this.§5H§(_loc5_,param2,param3);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr107:
                                    loop0:
                                    while(_loc6_ >= 0)
                                    {
                                       if(_loc5_ = this.§"x§[_loc6_])
                                       {
                                          if(_loc8_)
                                          {
                                             if(param4)
                                             {
                                                if(!(_loc7_ && this))
                                                {
                                                   addr128:
                                                   this.§5H§(_loc5_,param2,false);
                                                   if(_loc8_)
                                                   {
                                                      loop2:
                                                      while(true)
                                                      {
                                                         addr137:
                                                         while(true)
                                                         {
                                                            §§push(_loc6_);
                                                            if(!_loc7_)
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                            _loc6_ = §§pop();
                                                            if(_loc8_)
                                                            {
                                                               addr144:
                                                               if(true)
                                                               {
                                                                  continue loop0;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               addr167:
                                                            }
                                                            return;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr144);
                                                }
                                                §§goto(addr150);
                                             }
                                             else
                                             {
                                                this.§5H§(_loc5_,param2,param3);
                                             }
                                             §§goto(addr167);
                                          }
                                          §§goto(addr128);
                                       }
                                       §§goto(addr137);
                                    }
                                 }
                                 return;
                              }
                              addr106:
                              _loc6_ = int(this.§"x§.length - 1);
                              §§goto(addr107);
                              §§goto(addr107);
                           }
                           §§goto(addr62);
                        }
                        §§goto(addr70);
                     }
                  }
               }
               §§goto(addr62);
            }
            §§goto(addr106);
         }
         §§goto(addr107);
      }
      
      protected function §^!Q§(param1:PopupLayerEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§^A§ = this.§"x§[param1.§<4§];
         if(_loc3_)
         {
            if(_loc2_)
            {
               if(_loc3_)
               {
                  this.§5H§(_loc2_,param1.§7!e§.useTransitionOut,param1.§7!e§.allowQueue);
               }
            }
         }
      }
      
      protected function §`!;§(param1:PopupLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.§%&§())
            {
               if(_loc3_)
               {
                  addr44:
                  dispatchEvent(new §;g§(§;g§.CLOSE,null));
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      protected function §@!J§(param1:PopupLayerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            dispatchEvent(new §;g§(§;g§.OPEN,null));
         }
      }
      
      protected function §=!Q§(param1:int) : §^A§
      {
         return this.§?<§(param1);
      }
   }
}
