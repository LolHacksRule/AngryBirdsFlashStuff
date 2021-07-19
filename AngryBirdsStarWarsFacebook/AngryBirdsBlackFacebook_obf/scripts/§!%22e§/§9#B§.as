package §!"e§
{
   import §-#a§.§&d§;
   import §-#a§.§0`§;
   import §-#a§.§<"[§;
   import §-#a§.§>,§;
   import §-#a§.§`"H§;
   import §0!=§.§]"3§;
   import §1#R§.PopupLayerEvent;
   import §4#!§.§ t§;
   import §;! §.§!Z§;
   import §>@§.§5"H§;
   import §[!m§.§&j§;
   import §[!m§.§+5§;
   import §[!m§.§7#S§;
   import §[!m§.§[!j§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §9#B§ extends §&j§
   {
       
      
      protected var §-"+§:§[!j§;
      
      protected var §?!8§:int;
      
      protected var §&!%§:§`"H§;
      
      protected var §##^§:Boolean = true;
      
      public function §9#B§(param1:MovieClip, param2:§5"H§, param3:§]"3§, param4:Number = 960, param5:Number = 560, param6:int = 10)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
         while(true)
         {
            this.§&!%§ = new §`"H§(§`"H§.§""7§,param1,param2,param3,new Rectangle(0,0,-180,0));
            loop1:
            while(true)
            {
               §§push(this.§&!%§);
               addr112:
               while(true)
               {
                  §§push(§ t§.§4o§);
                  addr114:
                  while(true)
                  {
                     §§pop().addEventListener(§§pop(),this.§^"c§);
                     continue loop1;
                  }
               }
            }
            if(!(_loc8_ || param3))
            {
               continue;
            }
            §§push(this.§&!%§);
            loop5:
            for(; !_loc7_; §§push(this.§&!%§),if(!_loc8_)
            {
               continue;
            },§§goto(addr66))
            {
               §§push(§ t§.§]"]§);
               while(true)
               {
                  §§pop().addEventListener(§§pop(),this.onTransitionStart);
                  addr106:
                  while(!_loc7_)
                  {
                     continue loop5;
                  }
                  addr66:
                  §§goto(addr117);
                  §§push(§ t§.END);
                  if(!(_loc8_ || param3))
                  {
                     continue;
                  }
                  if(_loc8_ || param3)
                  {
                     §§pop().addEventListener(§§pop(),this.§!"A§);
                     do
                     {
                        this.§?!8§ = -1;
                        loop9:
                        do
                        {
                           this.§##^§ = false;
                           while(!_loc7_)
                           {
                              this.init();
                              if(!(_loc7_ && param2))
                              {
                                 continue loop9;
                              }
                           }
                           §§goto(addr106);
                        }
                        while(!_loc8_);
                        
                     }
                     while(!(_loc8_ || param2));
                     
                     return;
                  }
                  §§goto(addr114);
               }
            }
            §§goto(addr112);
         }
      }
      
      protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §5!a§(§`"W§.§?z§,true,new Rectangle(0,0,-180,0));
            while(true)
            {
               §5!a§(§`"W§.§+v§,true);
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     §5!a§(§`"W§.ERROR,true);
                     if(_loc1_ || _loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr60);
      }
      
      public function §1!A§() : Boolean
      {
         return this.§&!%§.§1!A§();
      }
      
      public function §[3§() : String
      {
         return this.§&!%§.§[3§();
      }
      
      public function isTransitioning() : Boolean
      {
         return this.§&!%§.isTransitioning();
      }
      
      public function §2"r§() : Boolean
      {
         return this.§&!%§.§2"r§();
      }
      
      public function §4# §(param1:int) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§7#S§ = §!#T§[param1];
         if(_loc4_ || param1)
         {
            if(_loc2_)
            {
               if(_loc4_)
               {
                  §§goto(addr53);
               }
            }
            return false;
         }
         addr53:
         return _loc2_.§""n§();
      }
      
      public function §="M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§&!%§.§="M§();
            do
            {
               this.§-"+§ = null;
               do
               {
                  this.§0"Y§();
               }
               while(!_loc2_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      public function setTransition(param1:§0`§, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§&!%§.setTransition(param1,param2,param3);
            do
            {
               this.§##^§ = param2;
            }
            while(!(_loc5_ || param3));
            
         }
      }
      
      public function showTransition(param1:String, param2:Boolean, param3:§>,§ = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§&!%§.showTransition(param1,param2,param3);
         }
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super.setViewSize(param1,param2);
            do
            {
               this.§&!%§.setViewSize(param1,param2);
            }
            while(_loc4_);
            
         }
      }
      
      override public function openPopup(param1:§[!j§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            §§push(param1.§^!F§);
            loop0:
            while(true)
            {
               §§push(§`"H§.§""7§);
               addr78:
               addr20:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     if(!(_loc6_ && param3))
                     {
                        addr96:
                        this.§7#G§(param1);
                     }
                     break;
                     addr99:
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr96);
      }
      
      override public function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc5_:§7#S§ = null;
         var _loc7_:* = 0;
         var _loc8_:String = null;
         var _loc9_:Boolean = false;
         var _loc10_:String = null;
         if(!(_loc12_ && this))
         {
            §§push(param1);
            if(!_loc12_)
            {
               §§push(§§pop() == §`"W§.§?z§);
               if(!(_loc12_ && param1))
               {
                  if(§§pop())
                  {
                     if(_loc11_ || this)
                     {
                        §§pop();
                        addr90:
                        if(_loc11_)
                        {
                           §§push(param4);
                           if(_loc11_ || param2)
                           {
                              addr69:
                              §§push(!§§pop());
                           }
                        }
                        while(_loc7_ >= 0)
                        {
                           §§push(Boolean(_loc5_ = §!#T§[_loc7_]));
                           if(!(_loc12_ && param3))
                           {
                              §§push(§§pop());
                              if(_loc11_ || param3)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc12_ && param3))
                                    {
                                       §§pop();
                                       if(_loc11_)
                                       {
                                          §§push(Boolean(_loc5_.§""n§()));
                                          if(_loc11_)
                                          {
                                             addr132:
                                             §§push(§§pop());
                                             if(_loc11_ || param2)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc12_ && param1))
                                                   {
                                                      §§pop();
                                                      if(_loc11_ || param1)
                                                      {
                                                         §§push(_loc7_);
                                                         if(!(_loc12_ && this))
                                                         {
                                                            §§push(§`"W§.§?z§);
                                                            if(!(_loc12_ && param2))
                                                            {
                                                               §§push(§§pop() > §§pop());
                                                               if(_loc11_ || param3)
                                                               {
                                                                  addr181:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc11_ || param3)
                                                                     {
                                                                        addr189:
                                                                        §§push(null);
                                                                        if(_loc11_)
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           break;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr217:
                                                                        if(_loc7_ == §`"W§.§?z§)
                                                                        {
                                                                           addr222:
                                                                           break;
                                                                        }
                                                                        §§push(null);
                                                                     }
                                                                     _loc5_ = §§pop();
                                                                     if(!(_loc12_ && param3))
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(!_loc12_)
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                        }
                                                                        _loc7_ = §§pop();
                                                                     }
                                                                     continue;
                                                                  }
                                                                  §§push(Boolean(_loc5_));
                                                                  if(!(_loc12_ && this))
                                                                  {
                                                                     addr205:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc11_)
                                                                        {
                                                                           addr209:
                                                                           §§pop();
                                                                           if(_loc11_ || param3)
                                                                           {
                                                                              §§goto(addr217);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr217);
                                                                  }
                                                                  §§goto(addr209);
                                                                  §§goto(addr222);
                                                               }
                                                               §§goto(addr205);
                                                            }
                                                         }
                                                         §§goto(addr217);
                                                      }
                                                      §§goto(addr189);
                                                   }
                                                   §§goto(addr217);
                                                }
                                                §§goto(addr181);
                                             }
                                             §§goto(addr205);
                                          }
                                          §§goto(addr217);
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr209);
                                 }
                                 §§goto(addr132);
                              }
                           }
                           §§goto(addr205);
                        }
                        addr242:
                        §§push(param4);
                        if(_loc11_ || this)
                        {
                           §§push(!§§pop());
                        }
                        var _loc6_:* = §§pop();
                        if(!(_loc12_ && param2))
                        {
                           §§push(param2);
                           loop0:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop1:
                                 while(true)
                                 {
                                    §§push(param4);
                                    if(_loc11_)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(_loc6_);
                                          if(!(_loc12_ && this))
                                          {
                                             addr536:
                                             §§push(Boolean(§§pop()));
                                             loop4:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                while(true)
                                                {
                                                   _loc6_ = §§pop();
                                                   addr538:
                                                   loop35:
                                                   while(true)
                                                   {
                                                      addr499:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(_loc5_));
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            loop8:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  while(!_loc12_)
                                                                  {
                                                                     §§pop();
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(_loc5_.§""n§()));
                                                                        addr294:
                                                                        if(_loc11_ || param1)
                                                                        {
                                                                           if(!_loc12_)
                                                                           {
                                                                              addr270:
                                                                              return;
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop0;
                                                                  addr505:
                                                               }
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc11_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc12_ && this))
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       §§push(_loc6_);
                                                                                       if(_loc11_ || param2)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                       }
                                                                                       while(_loc11_)
                                                                                       {
                                                                                       }
                                                                                       continue loop4;
                                                                                       addr460:
                                                                                    }
                                                                                    continue loop35;
                                                                                    addr468:
                                                                                    while(!(_loc12_ && param3))
                                                                                    {
                                                                                       §§push(this.§&!%§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().§1!A§());
                                                                                          addr427:
                                                                                          while(_loc11_)
                                                                                          {
                                                                                             continue loop13;
                                                                                          }
                                                                                          §§goto(addr460);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop35;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           §§goto(addr505);
                                                                        }
                                                                        §§goto(addr508);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           super.closePopup(param1,param2,param3,param4);
                                                                           if(_loc11_)
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 if(_loc11_ || param2)
                                                                                 {
                                                                                    §§goto(addr294);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr398);
                                                                                 }
                                                                              }
                                                                              §§goto(addr338);
                                                                           }
                                                                           §§goto(addr308);
                                                                        }
                                                                        §§goto(addr464);
                                                                     }
                                                                  }
                                                                  continue loop8;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr536:
                                          }
                                          §§goto(addr536);
                                       }
                                       §§goto(addr515);
                                    }
                                    §§goto(addr536);
                                 }
                              }
                              §§goto(addr499);
                           }
                        }
                        §§goto(addr538);
                     }
                     §§goto(addr69);
                  }
                  if(§§pop())
                  {
                     if(_loc11_ || this)
                     {
                        _loc5_ = §!#T§[§`"W§.§?z§];
                     }
                     else
                     {
                        §§goto(addr90);
                     }
                     §§goto(addr242);
                  }
                  else
                  {
                     addr89:
                     _loc7_ = int(§!#T§.length - 1);
                     §§goto(addr90);
                  }
               }
               §§goto(addr69);
            }
            §§goto(addr89);
         }
         §§goto(addr90);
      }
      
      protected function §<D§(param1:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§7#S§ = null;
         var _loc2_:* = int(§!#T§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = §!#T§[_loc2_];
            if(!(_loc5_ && _loc3_))
            {
               §§push(Boolean(_loc3_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(_loc3_.index == §`"W§.§?z§);
                              if(!(_loc5_ && param1))
                              {
                                 §§push(!§§pop());
                                 if(_loc4_ || _loc3_)
                                 {
                                    addr131:
                                    if(!(_loc4_ || this))
                                    {
                                       break;
                                    }
                                    §§push(Boolean(§§pop()));
                                    while(true)
                                    {
                                    }
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc4_ || _loc3_))
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       continue loop1;
                                    }
                                    addr72:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             addr81:
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                _loc3_.closePopup(param1,false);
                                                loop10:
                                                while(_loc4_ || _loc2_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc4_ || this)
                                                      {
                                                         §§push(§§pop() - 1);
                                                      }
                                                      _loc2_ = §§pop();
                                                      if(!_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop10;
                                                   }
                                                   while(false)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc3_.index == §`"H§.§""7§);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(!§§pop());
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop4;
                                                addr102:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§goto(addr81);
                                                }
                                                addr158:
                                             }
                                             §§goto(addr54);
                                          }
                                          §§goto(addr102);
                                       }
                                       §§goto(addr39);
                                    }
                                 }
                                 continue loop2;
                              }
                              §§goto(addr131);
                           }
                        }
                     }
                     §§goto(addr140);
                  }
               }
            }
            §§goto(addr52);
         }
      }
      
      protected function §7#G§(param1:§[!j§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:* = false;
         var _loc4_:* = null;
         var _loc5_:§>,§ = null;
         var _loc6_:§0`§ = null;
         if(_loc7_ || _loc3_)
         {
            §§push(this.§&!%§);
            loop0:
            while(true)
            {
               §§push(§§pop().isTransitioning());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     this.§-"+§ = param1;
                     if(_loc7_)
                     {
                        §§push(this.§&!%§);
                        if(_loc7_)
                        {
                           if(_loc7_)
                           {
                              §§push(§§pop().§1!A§());
                              loop2:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc7_)
                                    {
                                       §§push(this.§&!%§);
                                    }
                                    break loop1;
                                 }
                                 _loc5_ = (_loc6_ = this.§0#;§(param1,true)).§=#1§;
                                 if(!_loc8_)
                                 {
                                    §§push(this.§&!%§);
                                    if(_loc7_ || _loc3_)
                                    {
                                       §§pop().setTransition(_loc6_,false);
                                       if(_loc7_)
                                       {
                                          addr202:
                                          §§push(this.§&!%§);
                                       }
                                       break;
                                    }
                                    §§pop().showTransition(param1.id,false,_loc5_);
                                    break;
                                 }
                                 §§goto(addr202);
                                 addr69:
                                 if(!(_loc7_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 if(_loc8_)
                                 {
                                    continue loop1;
                                 }
                                 _loc3_ = §§pop();
                                 loop7:
                                 for(; _loc7_ || _loc2_; if(!(_loc8_ && _loc3_))
                                 {
                                    if(false)
                                    {
                                       while(true)
                                       {
                                          §§push(true);
                                          if(_loc8_ && _loc3_)
                                          {
                                             break;
                                          }
                                          §§goto(addr69);
                                       }
                                       addr60:
                                    }
                                    else
                                    {
                                       §§push(param1 is §>,§);
                                    }
                                    if(§§pop())
                                    {
                                       break loop1;
                                    }
                                    addr150:
                                    _loc5_ = null;
                                    if(_loc7_ || _loc2_)
                                    {
                                       this.§&!%§.showTransition(_loc4_,false,_loc5_);
                                    }
                                    break loop2;
                                 })
                                 {
                                    while(true)
                                    {
                                       §§push(§<"[§.§]#P§(_loc2_,_loc3_));
                                       if(_loc7_)
                                       {
                                          if(_loc8_)
                                          {
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                break loop7;
                                             }
                                             continue loop2;
                                             addr119:
                                          }
                                          §§push(§§pop());
                                       }
                                       _loc4_ = §§pop();
                                       if(!_loc7_)
                                       {
                                          break loop1;
                                       }
                                       continue loop7;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr60);
                                 }
                              }
                              §§goto(addr209);
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           §§push(§§pop().§[3§());
                           if(_loc7_ || param1)
                           {
                              §§push(§§pop());
                           }
                           §§goto(addr119);
                        }
                     }
                     break;
                  }
                  if(!(_loc7_ || this))
                  {
                     break;
                  }
                  addr209:
                  return;
               }
               §§goto(addr150);
            }
         }
         §§goto(addr86);
      }
      
      protected function §0#;§(param1:§[!j§, param2:Boolean) : §0`§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§0`§ = null;
         §§push(param1.id);
         if(!_loc8_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc7_ || _loc3_)
         {
            var _loc5_:§>,§ = param1 is §>,§ ? §>,§(param1) : null;
            var _loc6_:* = _loc3_;
            switch(0)
            {
            }
            §§push(§§findproperty(§&d§));
            §§push(_loc3_);
            if(_loc7_ || param2)
            {
               return new §§pop().§&d§(§§pop(),!!param2 ? _loc5_ : null);
            }
            §§goto(addr68);
         }
         §§goto(addr36);
      }
      
      protected function §!"t§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§-"+§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§-"+§);
                     addr82:
                     while(true)
                     {
                        §§pop().priority = §+5§.§>!g§;
                        while(true)
                        {
                           super.openPopup(this.§-"+§,false,false,false,true);
                           loop3:
                           while(_loc2_)
                           {
                              while(true)
                              {
                                 this.§-"+§ = null;
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                              return;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr47);
            }
            §§goto(addr82);
         }
         §§goto(addr59);
      }
      
      protected function §0"Y§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§7#S§ = null;
         if(!(_loc3_ && this))
         {
            if(this.§?!8§ >= 0)
            {
               addr40:
               _loc1_ = §!#T§[this.§?!8§];
               if(_loc2_)
               {
                  _loc1_.closePopup(false,false);
                  if(_loc2_ || this)
                  {
                  }
                  §§goto(addr72);
               }
               this.§?!8§ = -1;
            }
            addr72:
            return;
         }
         §§goto(addr40);
      }
      
      override protected function onPopupCloseRequest(param1:PopupLayerEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:* = false;
         var _loc4_:* = null;
         if(!_loc6_)
         {
            §§push(param1.§^!F§);
            loop0:
            while(true)
            {
               §§push(§`"W§.§?z§);
               loop1:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     §§push(param1.§^!F§);
                     if(_loc5_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
                  if(_loc5_)
                  {
                     this.§?!8§ = param1.§^!F§;
                  }
                  loop2:
                  while(true)
                  {
                     §§push(this.§&!%§);
                     if(_loc5_)
                     {
                        §§push(§§pop().§1!A§());
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              continue loop2;
                           }
                           §§push(this.§&!%§);
                           loop4:
                           while(true)
                           {
                              if(!_loc6_)
                              {
                                 §§pop().setTransition(this.§0#;§(param1.§#"^§.popup,false),false);
                                 break loop1;
                              }
                              break;
                              addr145:
                              while(true)
                              {
                                 §§push(this.§&!%§);
                                 if(_loc6_)
                                 {
                                    continue loop4;
                                 }
                                 if(_loc5_)
                                 {
                                    §§push(param1.§#"^§.popup.id);
                                    if(_loc5_)
                                    {
                                       §§push(false);
                                       if(!_loc6_)
                                       {
                                          §§pop().showTransition(§§pop(),§§pop());
                                          addr27:
                                          return;
                                          addr31:
                                          addr115:
                                       }
                                    }
                                    else
                                    {
                                       addr150:
                                       §§push(false);
                                    }
                                    §§pop().showTransition(§§pop(),§§pop());
                                    break loop3;
                                 }
                                 addr149:
                                 §§push(_loc4_);
                                 §§goto(addr150);
                              }
                           }
                           loop8:
                           while(true)
                           {
                              §§push(false);
                              if(!(_loc5_ || param1))
                              {
                                 continue loop3;
                              }
                              addr179:
                              _loc3_ = §§pop();
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    §§push(§<"[§.§]#P§(_loc2_,_loc3_));
                                    if(_loc5_)
                                    {
                                       if(_loc5_ || this)
                                       {
                                          §§push(§§pop());
                                          break;
                                       }
                                       addr203:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          continue loop8;
                                       }
                                    }
                                    break;
                                 }
                                 continue loop8;
                                 §§goto(addr179);
                              }
                              _loc4_ = §§pop();
                              §§goto(addr149);
                              §§push(this.§&!%§);
                           }
                        }
                        §§goto(addr31);
                        addr152:
                     }
                     addr199:
                     while(true)
                     {
                        §§push(§§pop().§[3§());
                        if(!_loc6_)
                        {
                           §§push(§§pop());
                        }
                        §§goto(addr203);
                     }
                  }
               }
               while(true)
               {
                  if(_loc5_ || param1)
                  {
                     if(_loc5_ || _loc3_)
                     {
                        §§goto(addr145);
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr152);
               }
            }
         }
         §§goto(addr145);
      }
      
      protected function onTransitionStart(param1:§ t§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            dispatchEvent(new § t§(param1.type,param1.§;"=§));
         }
      }
      
      protected function §^"c§(param1:§ t§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!"t§();
            while(true)
            {
               this.§0"Y§();
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            dispatchEvent(new § t§(param1.type,param1.§;"=§));
            if(!(_loc2_ && this))
            {
               if(_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function §!"A§(param1:§ t§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            dispatchEvent(new § t§(param1.type,param1.§;"=§));
         }
      }
      
      override public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(super.isPopupOpenById(param1));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     §§push(true);
                  }
                  else
                  {
                     loop1:
                     while(true)
                     {
                        addr97:
                        while(true)
                        {
                           §§push(Boolean(this.§&!%§));
                           loop3:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc2_ && param1))
                                       {
                                          §§push(true);
                                          break;
                                       }
                                       addr87:
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop1;
                                          }
                                          while(true)
                                          {
                                             addr25:
                                             while(true)
                                             {
                                                §§push(false);
                                                if(_loc2_ && _loc3_)
                                                {
                                                   break loop7;
                                                }
                                                addr34:
                                                if(_loc3_ || param1)
                                                {
                                                   return §§pop();
                                                }
                                                addr103:
                                                addr50:
                                                while(_loc3_ || this)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop3;
                                                   §§goto(addr34);
                                                }
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§goto(addr129);
                                                   }
                                                   §§pop();
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr50);
                                          §§goto(addr87);
                                       }
                                    }
                                    §§goto(addr25);
                                 }
                                 return §§pop();
                                 addr76:
                              }
                              §§goto(addr103);
                           }
                        }
                     }
                  }
                  addr129:
                  return §§pop();
               }
               §§goto(addr97);
            }
         }
         §§goto(addr96);
      }
      
      public function §@"3§(param1:int = -1) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§!Z§ = null;
         if(_loc4_ || _loc2_)
         {
            if(!this.isPopupOpenById(§!Z§.§%!h§))
            {
               if(!_loc3_)
               {
                  _loc2_ = new §!Z§(§`"W§.§?z§,§+5§.§>!g§,param1);
                  addr34:
                  if(_loc4_)
                  {
                     this.openPopup(_loc2_,true,true,true);
                  }
               }
               else
               {
                  addr65:
                  _loc2_ = §!Z§(§4#;§.singleton.popupManager.§ #6§(§!Z§.§%!h§));
                  if(!_loc3_)
                  {
                     if(_loc2_)
                     {
                        if(!(_loc3_ && this))
                        {
                           _loc2_.§&#`§(param1);
                        }
                     }
                  }
               }
            }
            else if(param1 != -1)
            {
               §§goto(addr65);
            }
            return;
         }
         §§goto(addr34);
      }
   }
}
