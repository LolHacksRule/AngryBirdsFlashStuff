package §-#a§
{
   import §0!=§.§]"3§;
   import §4#!§.§ t§;
   import §>@§.§5"H§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §`"H§ extends EventDispatcher
   {
      
      public static const §""7§:int = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §`"H§))
         {
            §""7§ = 1;
         }
      }
      
      protected var §^c§:MovieClip;
      
      protected var §^"N§:§5"H§;
      
      protected var §;D§:§]"3§;
      
      protected var §;!O§:Rectangle;
      
      protected var §+"p§:Number;
      
      protected var §?!"§:Number;
      
      protected var §9#<§:§6,§;
      
      public function §`"H§(param1:int, param2:MovieClip, param3:§5"H§, param4:§]"3§, param5:Rectangle = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param3)
         {
            super();
            while(true)
            {
               this.§^"N§ = param3;
            }
            addr85:
         }
         loop1:
         while(true)
         {
            this.§;D§ = param4;
            while(_loc7_ || param2)
            {
               this.§;!O§ = param5;
               while(!_loc6_)
               {
                  this.§=#T§(param1,param2);
                  if(_loc6_)
                  {
                     continue;
                  }
                  if(_loc7_)
                  {
                     break loop1;
                  }
                  §§goto(addr85);
               }
            }
         }
      }
      
      protected function §=#T§(param1:int, param2:MovieClip) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§^c§ = param2.addChild(new MovieClip()) as MovieClip;
         }
         while(param1 < param2.numChildren)
         {
            if(!(_loc4_ || param1))
            {
               break;
            }
            addr63:
            if(!(_loc4_ || param1))
            {
               continue;
            }
            param2.setChildIndex(this.§^c§,param1);
            §§goto(addr63);
         }
      }
      
      protected function §###§(param1:§6,§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§6#M§();
            if(!_loc4_)
            {
               addr27:
               this.§9#<§ = param1;
            }
            var _loc2_:§0`§ = this.§9#<§.§,!+§;
            if(_loc3_ || _loc3_)
            {
               _loc2_.open(this.§^c§,this.§^"N§,this.§;D§,true);
               while(true)
               {
                  this.setViewSize(this.§+"p§,this.§?!"§);
               }
               addr126:
            }
            do
            {
               _loc2_.addEventListener(§ t§.§]"]§,this.onTransitionStart);
               loop2:
               do
               {
                  _loc2_.addEventListener(§ t§.§4o§,this.onTransitionMiddle);
                  while(_loc3_)
                  {
                     _loc2_.addEventListener(§ t§.END,this.§!"A§);
                     if(_loc3_ || param1)
                     {
                        continue loop2;
                     }
                  }
                  §§goto(addr126);
               }
               while(!(_loc3_ || _loc3_));
               
            }
            while(!_loc3_);
            
            return;
         }
         §§goto(addr27);
      }
      
      protected function §6#M§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§0`§ = null;
         if(!(_loc3_ && _loc1_))
         {
            §§push(this.§9#<§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr45:
                     _loc1_ = this.§9#<§.§,!+§;
                     if(_loc2_)
                     {
                        _loc1_.removeEventListener(§ t§.§]"]§,this.onTransitionStart);
                        loop0:
                        while(true)
                        {
                           _loc1_.removeEventListener(§ t§.§4o§,this.onTransitionMiddle);
                           addr97:
                           while(true)
                           {
                              addr75:
                              while(true)
                              {
                                 _loc1_.removeEventListener(§ t§.END,this.§!"A§);
                                 continue loop0;
                              }
                           }
                        }
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr121);
               }
               §§goto(addr118);
            }
         }
         §§goto(addr45);
      }
      
      protected function onTransitionStart(param1:§ t§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            dispatchEvent(new § t§(param1.type,param1.§;"=§));
         }
      }
      
      protected function onTransitionMiddle(param1:§ t§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            dispatchEvent(new § t§(param1.type,param1.§;"=§));
         }
      }
      
      protected function §!"A§(param1:§ t§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§9#<§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && _loc3_))
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              if(_loc2_ && _loc3_)
                              {
                                 continue loop0;
                              }
                              this.§6#M§();
                           }
                           addr90:
                           break;
                        }
                        §§push(§§pop().§7t§);
                        addr61:
                        break;
                        if(_loc3_ || _loc2_)
                        {
                           §§push(!§§pop());
                        }
                        if(_loc3_ || param1)
                        {
                           continue;
                        }
                        addr113:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                           §§goto(addr61);
                        }
                        addr113:
                     }
                     dispatchEvent(new § t§(param1.type,param1.§;"=§));
                     if(_loc2_)
                     {
                        §§goto(addr90);
                     }
                     return;
                     addr77:
                  }
               }
               §§goto(addr113);
            }
            addr93:
         }
         while(true)
         {
            §§push(this.§9#<§);
            if(_loc3_ || this)
            {
               §§goto(addr61);
            }
            else
            {
               §§goto(addr93);
            }
            §§goto(addr113);
         }
      }
      
      public function §="M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§6#M§();
         }
      }
      
      public function setTransition(param1:§0`§, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            §§push(this.§9#<§);
            while(true)
            {
               §§push(Boolean(§§pop()));
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc5_)
                              {
                                 break;
                              }
                              while(true)
                              {
                              }
                              addr191:
                           }
                           for(; param1; §§goto(addr191))
                           {
                              if(_loc4_)
                              {
                                 if(_loc5_)
                                 {
                                    continue;
                                 }
                                 §§push(this.§9#<§);
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             continue;
                                          }
                                          §§pop();
                                       }
                                    }
                                 }
                              }
                              §§goto(addr153);
                           }
                           return;
                        }
                        return;
                     }
                     §§goto(addr197);
                  }
               }
               while(_loc4_ || param2)
               {
                  §§goto(addr166);
                  §§push(§§pop().§,!+§.isTransitioning);
               }
            }
         }
         §§goto(addr55);
      }
      
      public function showTransition(param1:String, param2:Boolean = false, param3:§>,§ = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§0`§ = null;
         if(_loc5_ || param3)
         {
            §§push(this.§9#<§);
            if(_loc5_ || param3)
            {
               §§push(Boolean(§§pop()));
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     if(_loc5_ || param2)
                     {
                        §§pop();
                        if(_loc5_ || this)
                        {
                           §§push(this.§9#<§);
                           if(_loc5_ || this)
                           {
                              §§push(§§pop().§,!+§);
                              if(_loc5_ || param3)
                              {
                                 §§push(§§pop().isTransitioning);
                                 if(!(_loc6_ && this))
                                 {
                                    addr91:
                                    if(§§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          return;
                                       }
                                       §§goto(addr146);
                                    }
                                    else
                                    {
                                       addr102:
                                       if(param1)
                                       {
                                          if(_loc5_ || param3)
                                          {
                                             addr111:
                                             §§push(this.§9#<§);
                                             if(_loc5_)
                                             {
                                                addr115:
                                                if(§§pop())
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      addr143:
                                                      if(_loc5_ || param2)
                                                      {
                                                         _loc4_.showTransition("",param2);
                                                      }
                                                      return;
                                                   }
                                                   addr118:
                                                   §§push(this.§9#<§);
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop().§,!+§);
                                                      if(_loc5_)
                                                      {
                                                         addr125:
                                                         (_loc4_ = §§pop()).§=#1§ = param3;
                                                         if(!_loc6_)
                                                         {
                                                            _loc4_.showTransition(param1,param2);
                                                         }
                                                         addr137:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr146);
                                                      }
                                                      addr146:
                                                      (_loc4_ = this.§9#<§.§,!+§).§=#1§ = param3;
                                                      §§goto(addr145);
                                                   }
                                                   else
                                                   {
                                                      addr145:
                                                      §§goto(addr143);
                                                   }
                                                   §§goto(addr146);
                                                }
                                                §§goto(addr137);
                                             }
                                             §§goto(addr146);
                                          }
                                          §§goto(addr118);
                                       }
                                       else
                                       {
                                          §§push(this.§9#<§);
                                          if(!_loc6_)
                                          {
                                             if(!§§pop())
                                             {
                                             }
                                          }
                                          §§goto(addr146);
                                       }
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr91);
                              }
                              §§goto(addr125);
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr91);
                  }
               }
               §§goto(addr91);
            }
            §§goto(addr146);
         }
         §§goto(addr111);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§0`§ = null;
         if(!_loc5_)
         {
            this.§+"p§ = param1;
            if(!(_loc5_ && this))
            {
               this.§?!"§ = param2;
               if(_loc4_ || param1)
               {
                  addr51:
                  §§push(this.§9#<§);
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        addr58:
                        _loc3_ = this.§9#<§.§,!+§;
                        if(_loc4_)
                        {
                           _loc3_.setViewSize(this.§+"p§ + this.§;!O§.width,this.§?!"§ + this.§;!O§.height);
                        }
                     }
                     return;
                  }
                  §§goto(addr58);
               }
            }
            §§goto(addr58);
         }
         §§goto(addr51);
      }
      
      public function §2"r§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§9#<§)
            {
               if(_loc2_ || _loc2_)
               {
                  addr49:
                  §§push(true);
                  if(!_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr53:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr53);
         }
         §§goto(addr49);
      }
      
      public function isTransitioning() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§9#<§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr48:
                     §§push(this.§9#<§.§,!+§.isTransitioning);
                     if(_loc2_ || _loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr68:
                     return false;
                  }
                  return §§pop();
               }
               §§goto(addr68);
            }
            §§goto(addr48);
         }
         §§goto(addr68);
      }
      
      public function §1!A§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§9#<§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr57:
                     §§push(this.§9#<§.§7t§);
                     if(_loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr61:
                     return false;
                  }
                  return §§pop();
               }
               §§goto(addr61);
            }
            §§goto(addr57);
         }
         §§goto(addr61);
      }
      
      public function §[3§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§9#<§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr57);
                  }
               }
               return "";
            }
            §§goto(addr57);
         }
         addr57:
         return this.§9#<§.§,!+§.id;
      }
   }
}
