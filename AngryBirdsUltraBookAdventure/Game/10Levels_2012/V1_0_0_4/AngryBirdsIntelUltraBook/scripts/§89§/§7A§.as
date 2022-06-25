package §89§
{
   import §1e§.§5m§;
   import §7r§.§#!q§;
   import §7r§.§?V§;
   import §7r§.Item;
   import §`!%§.§6!_§;
   import com.rovio.assets.§%!G§;
   import §finally§.§4!S§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §7A§ extends Sprite
   {
      
      public static const §]%§:Number = 0.5;
      
      public static const §<v§:Boolean = false;
      
      public static const §8!1§:String = "avatar_equip";
      
      public static const §"4§:String = "avatar_character";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §]%§ = 0.5;
         }
         loop0:
         do
         {
            §<v§ = false;
            while(true)
            {
               §8!1§ = "avatar_equip";
               while(!_loc2_)
               {
                  §"4§ = "avatar_character";
                  if(!(_loc2_ && _loc2_))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc2_ && _loc1_);
         
      }
      
      public var §]H§:Object;
      
      private var §"!V§:MovieClip;
      
      private var §?!<§:MovieClip;
      
      private var §`&§:MovieClip;
      
      private var §'8§:Number = 0.5;
      
      private var §2!!§:§#!q§ = null;
      
      public function §7A§(param1:§#!q§)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§2!!§ = param1;
            loop1:
            while(true)
            {
               addr41:
               while(true)
               {
                  this.§]H§ = new Object();
                  while(!_loc6_)
                  {
                     this.§'8§ = this.§2!!§.§2!V§;
                     if(_loc5_)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function §1!3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§?!<§.visible = false;
            do
            {
               this.§`&§.visible = false;
            }
            while(!_loc1_);
            
         }
      }
      
      public function §&!x§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§?!<§.gotoAndStop(param1.toLowerCase());
            do
            {
               this.§`&§.gotoAndStop(param1.toLowerCase());
               do
               {
                  this.§9!r§(§6!_§.§1w§().§1]§(param1));
               }
               while(!(_loc2_ || this));
               
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function § !5§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:§?V§ = null;
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         loop0:
         for each(_loc1_ in §6!_§.§1w§().§=!b§)
         {
            if(!(_loc6_ && _loc2_))
            {
               §§push(_loc1_.name);
               if(_loc7_)
               {
                  §§push(§§pop().toUpperCase() == "CATEGORYBIRDS");
                  if(_loc7_)
                  {
                     §§push(!§§pop());
                     if(_loc7_ || this)
                     {
                        if(§§pop())
                        {
                           if(_loc7_ || _loc1_)
                           {
                              addr82:
                              §§pop();
                              if(_loc7_)
                              {
                                 addr87:
                                 §§push(_loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS");
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    addr98:
                                    if(§§pop())
                                    {
                                       continue;
                                    }
                                 }
                                 §§goto(addr98);
                              }
                              _loc2_ = §6!_§.§1w§().§ L§(_loc1_.name);
                              _loc2_ = this.§=Y§(_loc2_);
                              if(_loc7_)
                              {
                                 §§push(int(Math.random() * (_loc2_.length + 1)));
                                 loop1:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    loop2:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          if(_loc7_)
                                          {
                                             if(§§pop() < _loc2_.length)
                                             {
                                                this.§9!r§(_loc2_[_loc3_]);
                                                if(!(_loc6_ && _loc1_))
                                                {
                                                   if(_loc6_ && _loc2_)
                                                   {
                                                      break;
                                                   }
                                                   if(false)
                                                   {
                                                      continue;
                                                   }
                                                   continue loop0;
                                                }
                                                while(true)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      break loop2;
                                                   }
                                                   continue loop2;
                                                }
                                                addr159:
                                             }
                                             break;
                                          }
                                          continue loop1;
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                              while(true)
                              {
                                 this.§'!X§(_loc1_.name);
                                 §§goto(addr159);
                              }
                           }
                        }
                        §§goto(addr98);
                     }
                  }
                  §§goto(addr82);
               }
            }
            §§goto(addr87);
         }
      }
      
      private function §=Y§(param1:Array) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Item = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            if(!_loc7_)
            {
               if(!§5m§.§+!d§(_loc3_.§&!X§))
               {
                  continue;
               }
               if(_loc7_)
               {
                  continue;
               }
            }
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      public function show(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.x = param1;
            loop0:
            do
            {
               this.y = param2;
               while(true)
               {
                  this.§<!K§(this.§6;§().§7!6§);
                  while(!_loc4_)
                  {
                     visible = true;
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public function hide() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            visible = false;
         }
      }
      
      public function §#!'§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc1_:* = Number(0);
         while(_loc1_ < this.§"!V§.numChildren)
         {
            _loc3_ = this.§"!V§.getChildAt(_loc1_) as MovieClip;
            if(_loc6_ || _loc3_)
            {
               if(_loc3_)
               {
                  if(_loc7_ && _loc1_)
                  {
                     continue;
                  }
                  _loc3_.stop();
                  if(_loc7_)
                  {
                     continue;
                  }
               }
            }
            §§push(_loc1_);
            if(!(_loc7_ && _loc1_))
            {
               §§push(§§pop() + 1);
               if(_loc6_)
               {
                  §§push(Number(§§pop()));
               }
            }
            _loc1_ = §§pop();
         }
         if(_loc6_ || _loc1_)
         {
            var _loc4_:int = 0;
            if(_loc6_ || _loc3_)
            {
               var _loc5_:* = §6!_§.§1w§().§]n§;
               if(_loc6_ || this)
               {
                  for each(_loc2_ in _loc5_)
                  {
                     if(_loc7_ && _loc2_)
                     {
                        continue;
                     }
                  }
                  addr142:
                  return;
                  addr138:
                  addr141:
               }
               while(true)
               {
                  this.§?!w§(_loc2_);
                  §§goto(addr138);
               }
            }
            §§goto(addr141);
         }
         §§goto(addr142);
      }
      
      public function §?!w§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MovieClip = this.§"!V§.getChildByName("Items_" + param1) as MovieClip;
         if(_loc4_ || _loc3_)
         {
            §§push(Boolean(_loc2_));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop3:
                  while(§§pop())
                  {
                     loop4:
                     while(!(_loc3_ && this))
                     {
                        while(true)
                        {
                           _loc2_.stop();
                           do
                           {
                              _loc2_.visible = false;
                           }
                           while(!(_loc4_ || param1));
                           
                           if(!(_loc3_ && _loc3_))
                           {
                              break loop3;
                           }
                           continue loop4;
                        }
                     }
                     loop2:
                     while(true)
                     {
                        §§push(param1.toUpperCase() == "NOHAT");
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        if(_loc4_ || _loc3_)
                        {
                           §§push(!§§pop());
                           continue loop0;
                        }
                        addr116:
                        while(true)
                        {
                           §§pop();
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
                  return;
                  addr100:
               }
               §§goto(addr116);
            }
         }
         §§goto(addr109);
      }
      
      public function §3$§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         var _loc3_:Item = null;
         var _loc4_:MovieClip = null;
         var _loc1_:* = Number(0);
         while(_loc1_ < §6!_§.§1w§().§=!b§.length)
         {
            _loc2_ = §6!_§.§1w§().§=!b§[_loc1_].name;
            if(_loc5_)
            {
               break;
            }
            _loc3_ = this.§66§(_loc2_);
            if(!_loc5_)
            {
               if(_loc3_ == null)
               {
                  if(!(_loc6_ || this))
                  {
                     continue;
                  }
                  addr68:
               }
               else if(_loc4_ = this.§"!V§.getChildByName("Items_" + _loc3_.§-^§) as MovieClip)
               {
                  if(_loc6_ || _loc3_)
                  {
                     _loc4_.gotoAndStop("Item_" + _loc3_.§&!X§);
                  }
               }
               §§push(_loc1_);
               if(_loc6_)
               {
                  §§push(§§pop() + 1);
                  if(!(_loc5_ && this))
                  {
                     addr117:
                     §§push(Number(§§pop()));
                  }
                  _loc1_ = §§pop();
                  continue;
               }
               §§goto(addr117);
            }
            §§goto(addr68);
         }
      }
      
      public function §,!!§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§?V§ = null;
         for each(_loc1_ in §6!_§.§1w§().§=!b§)
         {
            if(!(_loc5_ && _loc1_))
            {
               §§push(_loc1_.name);
               if(!_loc5_)
               {
                  §§push(§§pop().toUpperCase() == "CATEGORYBIRDS");
                  if(_loc4_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc5_ && this))
                        {
                           addr78:
                           §§pop();
                           if(!_loc4_)
                           {
                              continue;
                           }
                           addr83:
                           §§push(_loc1_.name.toUpperCase() == "CATEGORYBACKGROUNDS");
                        }
                     }
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           addr89:
                        }
                     }
                     else
                     {
                        this.§'!X§(_loc1_.name);
                     }
                     continue;
                  }
                  §§goto(addr78);
               }
               §§goto(addr83);
            }
            §§goto(addr89);
         }
      }
      
      public function §<!K§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§'8§ = param1;
            while(true)
            {
               this.§"!V§.scaleX = this.§'8§;
               §§goto(addr55);
            }
         }
         addr55:
         while(true)
         {
            this.§"!V§.scaleY = this.§'8§;
            if(!_loc3_)
            {
               if(!(_loc3_ && param1))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §8!g§(param1:§7A§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:Item = null;
         var _loc3_:§?V§ = null;
         var _loc4_:* = null;
         var _loc5_:Item = null;
         loop0:
         for each(_loc3_ in §6!_§.§1w§().§=!b§)
         {
            if(_loc8_ || _loc2_)
            {
               §§push(_loc3_.name);
               if(!_loc9_)
               {
                  §§push(§§pop());
               }
               _loc4_ = §§pop();
            }
            _loc2_ = this.§]H§[_loc4_.toUpperCase()];
            if(_loc5_ = param1.§]H§[_loc4_.toUpperCase()])
            {
               if(!(_loc9_ && this))
               {
                  this.§9!r§(_loc5_);
                  if(_loc8_)
                  {
                     loop1:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           param1.§'!X§(_loc4_);
                           if(!_loc9_)
                           {
                              if(_loc8_ || _loc2_)
                              {
                                 while(false)
                                 {
                                    continue loop1;
                                 }
                                 continue loop0;
                                 addr119:
                              }
                              addr124:
                              param1.§9!r§(_loc2_);
                           }
                           if(_loc8_)
                           {
                              break;
                           }
                           addr134:
                           while(true)
                           {
                              continue loop1;
                           }
                        }
                        §§goto(addr124);
                     }
                     continue;
                     addr129:
                  }
                  §§goto(addr119);
               }
               §§goto(addr129);
            }
            else
            {
               this.§'!X§(_loc4_);
            }
            §§goto(addr134);
         }
      }
      
      public function §1! §() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Item = null;
         for each(_loc1_ in this.§]H§)
         {
            if(!_loc5_)
            {
               this.§9!r§(_loc1_);
            }
         }
      }
      
      public function §9!r§(param1:Item) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(param1 == null)
            {
               if(!_loc4_)
               {
                  §§goto(addr24);
               }
            }
            var _loc2_:Item = this.§]H§[param1.§@§.toUpperCase()];
            if(_loc5_ || this)
            {
               if(_loc2_ == param1)
               {
                  if(_loc5_)
                  {
                     if(§<v§)
                     {
                        addr90:
                        this.§'!X§(param1.§@§);
                     }
                     return;
                  }
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     this.§'!X§(param1.§@§);
                     while(_loc5_ || this)
                     {
                        this.§]H§[param1.§@§.toUpperCase()] = param1;
                        if(!_loc5_)
                        {
                           continue;
                        }
                        if(!(_loc5_ || _loc3_))
                        {
                           continue loop0;
                        }
                        if(!(_loc4_ && _loc2_))
                        {
                           if(true)
                           {
                              break loop0;
                           }
                           continue loop0;
                        }
                        §§goto(addr90);
                     }
                  }
                  var _loc3_:MovieClip = this.§"!V§.getChildByName("Items_" + param1.§-^§) as MovieClip;
                  if(_loc5_)
                  {
                     if(!_loc3_)
                     {
                        §§push(param1.category);
                        if(_loc5_ || _loc3_)
                        {
                           if(§§pop().toUpperCase() == "CATEGORYTOP")
                           {
                              if(!_loc4_)
                              {
                                 if(_loc5_)
                                 {
                                    this.§`C§();
                                    addr144:
                                    if(_loc5_)
                                    {
                                       if(_loc5_ || _loc2_)
                                       {
                                          §§goto(addr119);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §6!_§.§+!e§.§'!X§(param1.§-^§);
                                          }
                                          addr215:
                                       }
                                       §§goto(addr119);
                                    }
                                    while(true)
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§push(param1.category);
                                          addr157:
                                          while(true)
                                          {
                                             if(§§pop().toUpperCase() == "CATEGORYTOP")
                                             {
                                                if(_loc5_)
                                                {
                                                   while(true)
                                                   {
                                                      this.§<!;§();
                                                      addr164:
                                                      while(true)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            loop3:
                                                            while(true)
                                                            {
                                                               _loc3_.gotoAndStop("Item_" + param1.§&!X§);
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  if(_loc3_.currentLabel != "Item_" + param1.§&!X§)
                                                                  {
                                                                     §§goto(addr215);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(this);
                                                                     §§push("Items_");
                                                                     if(_loc5_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop() + param1.§-^§);
                                                                        if(_loc5_)
                                                                        {
                                                                           addr191:
                                                                           §§push(§§pop() + "_Equip");
                                                                        }
                                                                        §§pop().§1-§(§§pop());
                                                                        while(true)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                        addr194:
                                                                     }
                                                                     §§goto(addr191);
                                                                  }
                                                               }
                                                               continue loop8;
                                                            }
                                                         }
                                                         §§goto(addr194);
                                                      }
                                                   }
                                                   addr162:
                                                }
                                                §§goto(addr164);
                                             }
                                             §§goto(addr119);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr164);
                              }
                              §§goto(addr144);
                           }
                           addr119:
                           return;
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr233);
                  }
                  §§goto(addr162);
               }
            }
            §§goto(addr90);
         }
         addr24:
      }
      
      private function §`C§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MovieClip = this.§"!V§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc2_ || _loc2_)
         {
            _loc1_.visible = true;
         }
      }
      
      private function §<!;§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MovieClip = this.§"!V§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc3_)
         {
            _loc1_.visible = false;
         }
      }
      
      public function §66§(param1:String) : Item
      {
         return this.§]H§[param1.toUpperCase()];
      }
      
      public function §5]§() : Object
      {
         return this.§]H§;
      }
      
      public function §'!X§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:MovieClip = null;
         var _loc2_:Item = this.§]H§[param1.toUpperCase()];
         if(!_loc4_)
         {
            if(_loc2_)
            {
               if(_loc5_ || _loc2_)
               {
                  _loc3_ = this.§"!V§.getChildByName("Items_" + _loc2_.§-^§) as MovieClip;
                  if(!_loc4_)
                  {
                     if(_loc3_)
                     {
                        if(_loc5_ || _loc2_)
                        {
                           _loc3_.visible = false;
                           if(!_loc4_)
                           {
                              if(_loc2_.category.toUpperCase() == "CATEGORYTOP")
                              {
                                 if(_loc4_)
                                 {
                                 }
                              }
                           }
                           §§goto(addr94);
                        }
                     }
                     §§goto(addr94);
                  }
                  this.§`C§();
               }
            }
            §§goto(addr94);
         }
         addr94:
         delete this.§]H§[param1.toUpperCase()];
      }
      
      public function §1-§(param1:String) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:FrameLabel = null;
         var _loc2_:Number = -1;
         for each(_loc3_ in this.§"!V§.currentLabels)
         {
            if(!(_loc7_ && _loc2_))
            {
               §§push(_loc2_);
               if(_loc6_)
               {
                  if(§§pop() == -1)
                  {
                     loop1:
                     while(_loc3_.name == param1)
                     {
                        if(!_loc7_)
                        {
                           this.§"!V§.gotoAndPlay(param1);
                        }
                        while(true)
                        {
                           if(!(_loc6_ || param1))
                           {
                              continue loop1;
                           }
                           if(!_loc7_)
                           {
                              §§push(Number(_loc3_.frame));
                              if(!(_loc6_ || this))
                              {
                                 return §§pop();
                              }
                              addr113:
                              continue;
                           }
                        }
                        §§goto(addr113);
                        §§push(§§pop() - 1);
                     }
                     continue;
                  }
                  §§push(_loc3_.frame - _loc2_);
               }
               §§goto(addr112);
            }
            §§goto(addr70);
         }
         if(_loc6_)
         {
            §§push(_loc2_);
            if(!_loc7_)
            {
               if(§§pop() != -1)
               {
                  if(_loc6_)
                  {
                     addr128:
                     §§push(this.§"!V§.framesLoaded - _loc2_);
                     if(_loc7_)
                     {
                     }
                     §§goto(addr136);
                  }
               }
               return -1;
            }
            addr136:
            return §§pop() - 1;
         }
         §§goto(addr128);
      }
      
      public function §implements§(param1:String) : Boolean
      {
         return true;
      }
      
      public function §6;§() : §#!q§
      {
         return this.§2!!§;
      }
      
      public function §?!_§() : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Array = [];
         var _loc2_:Object = {"list":_loc1_};
         _loc1_ = this.§&@§();
         §§push(§4!S§.§#D§(_loc1_));
         if(!_loc4_)
         {
            return §§pop();
         }
      }
      
      public function §&@§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Item = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§]H§)
         {
            if(_loc6_ || this)
            {
               _loc1_.push({
                  "itemId":_loc2_.§&!X§,
                  "category":_loc2_.§@§,
                  "sId":_loc2_.sId
               });
            }
         }
         return _loc1_;
      }
      
      public function §1!-§() : Number
      {
         return this.§'8§;
      }
      
      public function §'!'§() : MovieClip
      {
         return this.§"!V§;
      }
   }
}
