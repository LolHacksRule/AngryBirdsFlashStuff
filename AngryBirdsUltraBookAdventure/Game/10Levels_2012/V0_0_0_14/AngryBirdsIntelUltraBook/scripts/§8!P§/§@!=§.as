package §8!P§
{
   import §&=§.§#!5§;
   import §&=§.§>!-§;
   import §&=§.Item;
   import §<z§.§`G§;
   import §@_§.§!T§;
   import §^c§.§+-§;
   import com.rovio.assets.§9!N§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §@!=§ extends Sprite
   {
      
      public static const §@5§:Number = 0.5;
      
      public static const §for§:Boolean = false;
      
      public static const §+R§:String = "avatar_equip";
      
      public static const §`l§:String = "avatar_character";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §@!=§)
         {
            §@5§ = 0.5;
            loop0:
            while(true)
            {
               §for§ = false;
               while(true)
               {
                  §+R§ = "avatar_equip";
                  while(!(_loc2_ && §@!=§))
                  {
                     continue loop0;
                     §`l§ = "avatar_character";
                     if(_loc1_)
                     {
                        return;
                        addr54:
                     }
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public var §+!?§:Object;
      
      private var §9-§:MovieClip;
      
      private var §+!N§:MovieClip;
      
      private var §;[§:MovieClip;
      
      private var §!+§:Number = 0.5;
      
      private var §^'§:§#!5§ = null;
      
      public function §@!=§(param1:§#!5§)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || _loc3_)
         {
            super();
            while(true)
            {
               this.§^'§ = param1;
               loop1:
               for(; _loc5_ || this; while(true)
               {
                  if(_loc5_ || this)
                  {
                     this.§!+§ = this.§^'§.§'!%§;
                     if(_loc5_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop1;
               },while(false)
               {
                  §§goto(addr34);
               },var _loc2_:Class = §9!N§.§0!k§("BackgroundContainer"),if(_loc5_)
               {
                  this.§+!N§ = new _loc2_();
                  loop5:
                  while(true)
                  {
                     addr79:
                     while(true)
                     {
                        this.§+!N§.stop();
                        while(true)
                        {
                           if(_loc5_)
                           {
                              addChild(this.§+!N§);
                              if(_loc5_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop5;
                        }
                     }
                  }
               },while(false)
               {
                  §§goto(addr79);
               },var _loc3_:Class = §9!N§.§0!k§(param1.§49§ + "_Animations"),if(!_loc6_)
               {
                  this.§9-§ = new _loc3_();
                  while(true)
                  {
                     this.§9-§.stop();
                     addr156:
                     while(true)
                     {
                        this.§-!H§();
                        addr151:
                        while(true)
                        {
                           this.§9-§.scaleX = this.§!+§;
                           loop12:
                           while(_loc5_)
                           {
                              while(true)
                              {
                                 this.§9-§.scaleY = this.§!+§;
                                 addr136:
                                 while(!_loc6_)
                                 {
                                 }
                                 continue loop12;
                              }
                           }
                        }
                     }
                  }
                  addr161:
               },while(true)
               {
                  this.addChild(this.§9-§);
                  if(_loc5_ || _loc3_)
                  {
                     if(!_loc6_)
                     {
                        if(!_loc6_)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr130);
                        }
                        else
                        {
                           §§goto(addr161);
                        }
                     }
                     §§goto(addr156);
                  }
                  §§goto(addr136);
               },var _loc4_:Class = §9!N§.§0!k§("ForegroundContainer"),if(_loc5_)
               {
                  this.§;[§ = new _loc4_();
               },do
               {
                  this.§;[§.stop();
                  do
                  {
                     addChild(this.§;[§);
                  }
                  while(_loc6_);
                  
               }
               while(_loc6_);
               ,return)
               {
                  while(true)
                  {
                     this.§+!?§ = new Object();
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr32);
      }
      
      public function §1!U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§+!N§.visible = false;
         }
         do
         {
            this.§;[§.visible = false;
         }
         while(_loc2_ && this);
         
      }
      
      public function §<d§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§+!N§.gotoAndStop(param1.toLowerCase());
            while(true)
            {
               this.§;[§.gotoAndStop(param1.toLowerCase());
               while(_loc3_)
               {
                  this.§%D§(§+-§.§?!9§().§ !`§(param1));
                  if(!_loc2_)
                  {
                     return;
                     addr58:
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      public function §]L§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:§>!-§ = null;
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         for each(_loc1_ in §+-§.§?!9§().§1K§)
         {
            if(!_loc7_)
            {
               §§push(_loc1_.name);
               if(_loc6_ || _loc2_)
               {
                  §§push(§§pop().toUpperCase() == "CATEGORYBIRDS");
                  if(!(_loc7_ && _loc1_))
                  {
                     §§push(!§§pop());
                     if(!(_loc7_ && _loc1_))
                     {
                        addr67:
                        if(§§pop())
                        {
                           if(_loc6_)
                           {
                              addr71:
                              §§pop();
                              if(!(_loc7_ && _loc2_))
                              {
                                 addr91:
                                 §§push(_loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS");
                                 if(_loc6_ || _loc1_)
                                 {
                                 }
                                 addr102:
                                 if(!§§pop())
                                 {
                                    continue;
                                 }
                                 addr103:
                                 _loc2_ = §+-§.§?!9§().§#$§(_loc1_.name);
                                 _loc2_ = this.§4!8§(_loc2_);
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§push(int(Math.random() * (_loc2_.length + 1)));
                                    loop1:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       addr185:
                                       while(true)
                                       {
                                          continue loop1;
                                       }
                                    }
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr103);
                           }
                           §§push(!§§pop());
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr67);
               }
               §§goto(addr91);
            }
            §§goto(addr103);
         }
      }
      
      private function §4!8§(param1:Array) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Item = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(_loc7_ || _loc2_)
            {
               if(§!T§.§+!q§(_loc3_.§49§))
               {
                  if(!_loc6_)
                  {
                     _loc2_.push(_loc3_);
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function show(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            this.x = param1;
            while(true)
            {
               this.y = param2;
               loop1:
               while(!_loc3_)
               {
                  this.§&O§(this.§>!!§().§'[§);
                  while(true)
                  {
                     visible = true;
                     if(_loc4_ || param1)
                     {
                        if(!(_loc3_ && param1))
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
      
      public function hide() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            visible = false;
         }
      }
      
      public function §-!H§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc1_:* = Number(0);
         while(_loc1_ < this.§9-§.numChildren)
         {
            _loc3_ = this.§9-§.getChildAt(_loc1_) as MovieClip;
            if(!_loc7_)
            {
               if(_loc3_)
               {
                  if(!(_loc7_ && _loc3_))
                  {
                     addr46:
                     _loc3_.stop();
                     if(_loc7_)
                     {
                        continue;
                     }
                  }
               }
               §§push(_loc1_);
               if(_loc6_ || this)
               {
                  §§push(§§pop() + 1);
                  if(!(_loc7_ && _loc2_))
                  {
                     addr76:
                     §§push(Number(§§pop()));
                  }
                  _loc1_ = §§pop();
                  continue;
               }
               §§goto(addr76);
            }
            §§goto(addr46);
         }
         if(!(_loc7_ && _loc1_))
         {
            var _loc4_:int = 0;
            if(!_loc7_)
            {
               var _loc5_:* = §+-§.§?!9§().§"!n§;
               if(_loc7_)
               {
               }
               for each(_loc2_ in _loc5_)
               {
                  if(_loc6_)
                  {
                     this.§5,§(_loc2_);
                  }
               }
            }
         }
      }
      
      public function §5,§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MovieClip = this.§9-§.getChildByName("Items_" + param1) as MovieClip;
         if(!_loc4_)
         {
            §§push(Boolean(_loc2_));
            if(!_loc4_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr96:
                     while(true)
                     {
                        §§push(param1.toUpperCase() == "NOHAT");
                        if(_loc3_)
                        {
                           §§push(!§§pop());
                        }
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr95:
               }
               for(; §§pop(); §§goto(addr96))
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     if(_loc4_)
                     {
                        continue;
                     }
                     _loc2_.stop();
                     do
                     {
                        _loc2_.visible = false;
                     }
                     while(_loc4_ && this);
                     
                     break;
                     addr88:
                  }
                  §§goto(addr88);
               }
               return;
            }
            §§goto(addr95);
         }
         §§goto(addr88);
      }
      
      public function §89§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Item = null;
         var _loc4_:MovieClip = null;
         var _loc1_:* = Number(0);
         while(_loc1_ < §+-§.§?!9§().§1K§.length)
         {
            _loc2_ = §+-§.§?!9§().§1K§[_loc1_].name;
            if(!(_loc5_ || _loc3_))
            {
               break;
            }
            _loc3_ = this.§=!<§(_loc2_);
            if(_loc6_)
            {
               continue;
            }
            if(_loc3_ == null)
            {
               if(_loc6_ && _loc3_)
               {
                  continue;
               }
            }
            else if(_loc4_ = this.§9-§.getChildByName("Items_" + _loc3_.§]!C§) as MovieClip)
            {
               if(_loc5_ || _loc1_)
               {
                  _loc4_.gotoAndStop("Item_" + _loc3_.§49§);
               }
            }
            §§push(_loc1_);
            if(!(_loc6_ && this))
            {
               §§push(§§pop() + 1);
               if(_loc5_)
               {
                  addr121:
                  §§push(Number(§§pop()));
               }
               _loc1_ = §§pop();
               continue;
            }
            §§goto(addr121);
         }
      }
      
      public function §1S§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§>!-§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in §+-§.§?!9§().§1K§)
         {
            if(_loc4_)
            {
               §§push(_loc1_.name);
               if(!(_loc5_ && _loc2_))
               {
                  §§push(§§pop().toUpperCase() == "CATEGORYBIRDS");
                  if(_loc4_ || this)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc5_ && this))
                        {
                           §§pop();
                           addr99:
                           if(!_loc5_)
                           {
                              addr88:
                              §§push(_loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS");
                           }
                           continue;
                        }
                     }
                  }
                  if(!§§pop())
                  {
                     this.§'P§(_loc1_.name);
                     continue;
                  }
                  if(!(_loc4_ || this))
                  {
                     continue;
                  }
                  §§goto(addr99);
               }
               §§goto(addr88);
            }
            §§goto(addr99);
         }
      }
      
      public function §&O§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§!+§ = param1;
            while(true)
            {
               this.§9-§.scaleX = this.§!+§;
               while(_loc2_)
               {
                  this.§9-§.scaleY = this.§!+§;
                  if(!_loc3_)
                  {
                     return;
                     addr46:
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      public function §%q§(param1:§@!=§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:Item = null;
         var _loc3_:§>!-§ = null;
         var _loc4_:* = null;
         var _loc5_:Item = null;
         for each(_loc3_ in §+-§.§?!9§().§1K§)
         {
            if(_loc9_ || this)
            {
               §§push(_loc3_.name);
               if(_loc9_)
               {
                  §§push(§§pop());
               }
               _loc4_ = §§pop();
            }
            _loc2_ = this.§+!?§[_loc4_.toUpperCase()];
            if(_loc5_ = param1.§+!?§[_loc4_.toUpperCase()])
            {
               if(!(_loc8_ && this))
               {
                  this.§%D§(_loc5_);
                  if(!_loc8_)
                  {
                     loop1:
                     while(true)
                     {
                        if(_loc2_)
                        {
                           if(!_loc8_)
                           {
                              param1.§%D§(_loc2_);
                              break;
                           }
                           break;
                        }
                        param1.§'P§(_loc4_);
                        if(!(_loc9_ || param1))
                        {
                           break;
                        }
                        if(_loc8_ && _loc3_)
                        {
                           while(true)
                           {
                              continue loop1;
                           }
                           addr140:
                        }
                     }
                     continue;
                     addr127:
                  }
               }
               while(false)
               {
                  §§goto(addr127);
               }
               continue;
            }
            this.§'P§(_loc4_);
            §§goto(addr140);
         }
      }
      
      public function §@%§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Item = null;
         for each(_loc1_ in this.§+!?§)
         {
            if(!_loc5_)
            {
               this.§%D§(_loc1_);
            }
         }
      }
      
      public function §%D§(param1:Item) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(param1 == null)
            {
               if(!_loc5_)
               {
                  §§goto(addr23);
               }
            }
            var _loc2_:Item = this.§+!?§[param1.§5H§.toUpperCase()];
            if(_loc4_)
            {
               if(_loc2_ != param1)
               {
                  loop0:
                  while(true)
                  {
                     this.§'P§(param1.§5H§);
                     loop1:
                     while(_loc4_ || this)
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           while(true)
                           {
                              this.§+!?§[param1.§5H§.toUpperCase()] = param1;
                              if(!_loc4_)
                              {
                                 continue loop1;
                              }
                              if(!_loc4_)
                              {
                                 addr75:
                                 if(§for§)
                                 {
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       this.§'P§(param1.§5H§);
                                       addr88:
                                       break;
                                    }
                                    §§goto(addr88);
                                 }
                                 break;
                              }
                              if(false)
                              {
                                 continue loop0;
                              }
                              var _loc3_:MovieClip = this.§9-§.getChildByName("Items_" + param1.§]!C§) as MovieClip;
                              if(!(_loc5_ && _loc3_))
                              {
                                 if(!_loc3_)
                                 {
                                    §§push(param1.category);
                                    if(!_loc5_)
                                    {
                                       if(§§pop().toUpperCase() == "CATEGORYTOP")
                                       {
                                          if(_loc4_)
                                          {
                                             this.§=!h§();
                                          }
                                          if(_loc4_)
                                          {
                                             if(!(_loc5_ && param1))
                                             {
                                                §§goto(addr118);
                                             }
                                             loop11:
                                             while(true)
                                             {
                                                §+-§.§5!0§.§'P§(param1.§]!C§);
                                                addr217:
                                                loop9:
                                                while(_loc5_)
                                                {
                                                   addr227:
                                                   while(!_loc5_)
                                                   {
                                                      if(_loc3_.currentLabel != "Item_" + param1.§49§)
                                                      {
                                                         continue loop11;
                                                      }
                                                      §§push(this);
                                                      §§push("Items_");
                                                      if(_loc4_)
                                                      {
                                                         §§push(§§pop() + param1.§]!C§);
                                                         if(_loc4_)
                                                         {
                                                            addr190:
                                                            §§push(§§pop() + "_Equip");
                                                         }
                                                         §§pop().§>`§(§§pop());
                                                         while(true)
                                                         {
                                                            break loop9;
                                                         }
                                                         addr193:
                                                      }
                                                      §§goto(addr190);
                                                   }
                                                   loop10:
                                                   while(true)
                                                   {
                                                      _loc3_.visible = true;
                                                      addr235:
                                                      while(true)
                                                      {
                                                         _loc3_.gotoAndStop("Item_" + param1.§49§);
                                                         §§goto(addr227);
                                                         continue loop10;
                                                      }
                                                   }
                                                }
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(param1.category);
                                                   addr149:
                                                   while(true)
                                                   {
                                                      if(§§pop().toUpperCase() == "CATEGORYTOP")
                                                      {
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               this.§!O§();
                                                               while(true)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc4_ || param1)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr235);
                                                                  }
                                                                  §§goto(addr193);
                                                               }
                                                               addr122:
                                                               addr118:
                                                               return;
                                                               addr168:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr217);
                                                            }
                                                            §§goto(addr227);
                                                         }
                                                         §§goto(addr168);
                                                      }
                                                      §§goto(addr122);
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                             addr212:
                                             §§goto(addr118);
                                          }
                                          §§goto(addr122);
                                       }
                                       §§goto(addr118);
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr232);
                              }
                              §§goto(addr212);
                           }
                           return;
                           addr68:
                        }
                        §§goto(addr88);
                     }
                  }
               }
               §§goto(addr75);
            }
            §§goto(addr68);
         }
         addr23:
      }
      
      private function §=!h§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MovieClip = this.§9-§.getChildByName("Items_NoHat") as MovieClip;
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.visible = true;
         }
      }
      
      private function §!O§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MovieClip = this.§9-§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc3_)
         {
            _loc1_.visible = false;
         }
      }
      
      public function §=!<§(param1:String) : Item
      {
         return this.§+!?§[param1.toUpperCase()];
      }
      
      public function §4!y§() : Object
      {
         return this.§+!?§;
      }
      
      public function §'P§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:MovieClip = null;
         var _loc2_:Item = this.§+!?§[param1.toUpperCase()];
         if(_loc4_ || param1)
         {
            if(_loc2_)
            {
               if(!(_loc5_ && param1))
               {
                  addr52:
                  _loc3_ = this.§9-§.getChildByName("Items_" + _loc2_.§]!C§) as MovieClip;
                  if(!_loc5_)
                  {
                     if(_loc3_)
                     {
                        if(!(_loc5_ && this))
                        {
                           _loc3_.visible = false;
                           if(_loc4_)
                           {
                              if(_loc2_.category.toUpperCase() == "CATEGORYTOP")
                              {
                                 if(!_loc4_)
                                 {
                                 }
                              }
                              §§goto(addr98);
                           }
                        }
                        this.§=!h§();
                     }
                  }
               }
               §§goto(addr98);
            }
            addr98:
            delete this.§+!?§[param1.toUpperCase()];
            return;
         }
         §§goto(addr52);
      }
      
      public function §>`§(param1:String) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:FrameLabel = null;
         var _loc2_:* = Number(-1);
         for each(_loc3_ in this.§9-§.currentLabels)
         {
            if(!_loc7_)
            {
               §§push(_loc2_);
               if(_loc6_)
               {
                  if(§§pop() == -1)
                  {
                     loop1:
                     while(_loc3_.name == param1)
                     {
                        loop2:
                        while(true)
                        {
                           this.§9-§.gotoAndPlay(param1);
                           while(true)
                           {
                              §§push(Number(_loc3_.frame));
                              if(_loc6_)
                              {
                                 if(!_loc7_)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc6_ || param1)
                                    {
                                       if(_loc6_ || _loc3_)
                                       {
                                          if(_loc6_ || this)
                                          {
                                             if(_loc7_)
                                             {
                                                addr102:
                                                §§push(_loc3_.frame - _loc2_ - 1);
                                             }
                                             else
                                             {
                                                addr98:
                                             }
                                             if(true)
                                             {
                                                break loop1;
                                             }
                                             continue loop1;
                                             break;
                                          }
                                          continue loop1;
                                       }
                                       continue loop2;
                                    }
                                    continue;
                                 }
                                 §§goto(addr102);
                              }
                              break;
                           }
                           return §§pop();
                        }
                     }
                     continue;
                  }
               }
               §§goto(addr98);
            }
            §§goto(addr88);
         }
         if(_loc6_)
         {
            §§push(_loc2_);
            if(_loc6_ || _loc3_)
            {
               if(§§pop() != -1)
               {
                  if(_loc6_ || _loc2_)
                  {
                     §§push(this.§9-§.framesLoaded - _loc2_);
                     if(_loc6_ || _loc3_)
                     {
                        addr150:
                        return §§pop() - 1;
                     }
                  }
                  §§goto(addr152);
               }
               §§goto(addr152);
            }
            §§goto(addr150);
         }
         addr152:
         return -1;
      }
      
      public function §9!l§(param1:String) : Boolean
      {
         return true;
      }
      
      public function §>!!§() : §#!5§
      {
         return this.§^'§;
      }
      
      public function §6B§() : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Array = [];
         var _loc2_:Object = {"list":_loc1_};
         _loc1_ = this.§>!I§();
         §§push(§`G§.§,Y§(_loc1_));
         if(_loc4_ || _loc3_)
         {
            return §§pop();
         }
      }
      
      public function §>!I§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Item = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§+!?§)
         {
            if(!(_loc5_ && this))
            {
               _loc1_.push({
                  "itemId":_loc2_.§49§,
                  "category":_loc2_.§5H§,
                  "sId":_loc2_.sId
               });
            }
         }
         return _loc1_;
      }
      
      public function §5U§() : Number
      {
         return this.§!+§;
      }
      
      public function §'L§() : MovieClip
      {
         return this.§9-§;
      }
   }
}
