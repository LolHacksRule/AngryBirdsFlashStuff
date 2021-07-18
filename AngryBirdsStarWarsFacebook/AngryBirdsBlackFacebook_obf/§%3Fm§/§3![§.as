package §?m§
{
   import §1!i§.§,#_§;
   
   public class §3![§
   {
       
      
      protected var §@#_§:String = "";
      
      protected var mName:String = "";
      
      protected var §^"E§:String = "";
      
      protected var §@#U§:String = "";
      
      protected var §3"h§:String = "";
      
      protected var §5"Q§:Vector.<int> = null;
      
      protected var §#"X§:int = 0;
      
      protected var §=!^§:Array = null;
      
      protected var §@"[§:Array;
      
      protected var §;!^§:Array;
      
      protected var §#"x§:int = 0;
      
      protected var §@#R§:§,#_§;
      
      protected var §,#G§:Boolean = false;
      
      protected var §'!2§:Boolean = false;
      
      protected var §["?§:§,#_§;
      
      public function §3![§(param1:Array)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         if(!(_loc6_ && _loc2_))
         {
            this.§@#R§ = new §,#_§();
            while(true)
            {
               this.§["?§ = new §,#_§();
               loop1:
               while(!(_loc6_ && param1))
               {
                  loop2:
                  while(true)
                  {
                     super();
                     loop3:
                     while(!_loc6_)
                     {
                        while(param1)
                        {
                           if(_loc5_)
                           {
                              if(!(_loc5_ || _loc2_))
                              {
                                 continue loop3;
                              }
                              this.§=!^§ = [];
                           }
                           if(true)
                           {
                              for each(_loc2_ in param1)
                              {
                                 if(_loc5_)
                                 {
                                    this.§=!^§.push(_loc2_.toLowerCase());
                                 }
                              }
                           }
                           continue loop2;
                        }
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      public function §!#J§() : int
      {
         return this.§6">§ * this.levelsPerPage;
      }
      
      public function getLevelIndex(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§7!M§();
         }
         return int(this.§=!^§.indexOf(param1));
      }
      
      public function getLevelName(param1:int) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§7!M§();
            loop0:
            while(true)
            {
               §§push(param1);
               addr93:
               loop1:
               while(true)
               {
                  §§push(§§pop() >= 0);
                  addr95:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(_loc3_ || _loc2_)
                           {
                              if(!_loc2_)
                              {
                                 return this.§=!^§[param1];
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                        addr25:
                        return null;
                        addr57:
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(param1);
            if(!_loc2_)
            {
               §§push(§§pop() < this.§=!^§.length);
               if(!_loc3_)
               {
                  continue;
               }
               if(!(_loc2_ && _loc3_))
               {
                  §§goto(addr57);
               }
               §§goto(addr95);
            }
            §§goto(addr93);
         }
      }
      
      public function §^"b§(param1:int) : Object
      {
         return this.§@"[§[param1];
      }
      
      public function §'"w§(param1:int) : String
      {
         return this.§;!^§[param1];
      }
      
      public function §9"?§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§7!M§();
         }
         §§push(this.§=!^§.indexOf(param1) == -1);
         if(!_loc3_)
         {
            return !§§pop();
         }
      }
      
      public function §&"b§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§7!M§();
         }
         loop0:
         while(true)
         {
            §§push(this.§=!^§);
            loop1:
            while(true)
            {
               §§push(param1);
               addr67:
               addr95:
               loop2:
               while(true)
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                     continue loop1;
                  }
                  if(!(_loc3_ && this))
                  {
                     continue loop0;
                  }
                  addr96:
                  while(true)
                  {
                     continue loop1;
                     addr54:
                     §§pop().push(§§pop());
                     if(!(_loc3_ && this))
                     {
                        §§push(true);
                        if(_loc2_)
                        {
                           return §§pop();
                        }
                        break loop2;
                     }
                  }
               }
               return §§pop();
            }
         }
      }
      
      public function §,"O§(param1:int) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:String = null;
         if(_loc5_)
         {
            this.§7!M§();
         }
         var _loc2_:Array = new Array();
         if(_loc5_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr141:
                           while(true)
                           {
                              §§push(param1);
                              if(!_loc5_)
                              {
                                 continue loop0;
                              }
                              §§push(this.§6">§);
                              if(!_loc5_)
                              {
                                 break;
                              }
                              §§push(§§pop() < §§pop());
                              if(_loc6_ && _loc3_)
                              {
                                 continue loop3;
                              }
                              if(_loc6_)
                              {
                                 continue loop2;
                              }
                           }
                           continue loop1;
                        }
                     }
                     loop5:
                     while(§§pop())
                     {
                        if(!_loc6_)
                        {
                           continue loop0;
                        }
                        addr117:
                        while(true)
                        {
                           if(!(_loc6_ && this))
                           {
                              while(true)
                              {
                                 if(_loc3_ >= this.levelsPerPage)
                                 {
                                    if(!_loc6_)
                                    {
                                       break loop5;
                                    }
                                    while(!(_loc5_ || _loc2_))
                                    {
                                       _loc3_++;
                                    }
                                    continue;
                                 }
                                 _loc4_ = this.§=!^§[_loc3_ + param1 * this.levelsPerPage];
                                 while(true)
                                 {
                                    _loc2_.push(_loc4_);
                                 }
                                 addr85:
                                 while(!_loc5_)
                                 {
                                    §§goto(addr85);
                                 }
                                 §§goto(addr60);
                              }
                              addr134:
                           }
                           else
                           {
                              §§goto(addr141);
                           }
                        }
                     }
                     return _loc2_;
                  }
               }
            }
         }
         §§goto(addr134);
      }
      
      protected function getDefaultLevelNamesForPage(param1:int) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:String = null;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(true)
         {
            §§push(_loc3_);
            if(!_loc5_)
            {
               if(§§pop() >= this.levelsPerPage)
               {
                  if(_loc6_)
                  {
                     break;
                  }
                  do
                  {
                     if(_loc5_ && param1)
                     {
                        continue;
                     }
                  }
                  while(_loc5_ && _loc2_);
                  
                  continue;
                  addr51:
               }
               else
               {
                  addr74:
                  §§push(param1 + "-");
                  if(!_loc5_)
                  {
                     §§push(§§pop() + (_loc3_ + 1));
                  }
                  _loc4_ = §§pop();
               }
               while(true)
               {
                  _loc2_.push(_loc4_);
                  while(true)
                  {
                     _loc3_++;
                     §§goto(addr51);
                  }
               }
            }
            §§goto(addr74);
         }
         return _loc2_;
      }
      
      private function §7!M§() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(_loc10_)
         {
            §§push(this.§=!^§);
            if(_loc10_)
            {
               §§push(Boolean(§§pop()));
               if(_loc10_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc9_)
                     {
                        addr46:
                        §§pop();
                        if(!_loc9_)
                        {
                           §§push(this.§=!^§);
                           if(_loc10_)
                           {
                              §§goto(addr57);
                           }
                        }
                        §§goto(addr99);
                     }
                  }
                  addr57:
                  if(§§pop().length < this.§!#J§())
                  {
                     if(!(_loc9_ && _loc3_))
                     {
                        §§goto(addr65);
                     }
                     else
                     {
                        addr101:
                        _loc1_ = new Array();
                        for each(_loc2_ in this.§5"Q§)
                        {
                           _loc3_ = this.getDefaultLevelNamesForPage(_loc2_);
                           if(_loc9_)
                           {
                              continue;
                           }
                           var _loc7_:int = 0;
                           if(!(_loc9_ && _loc1_))
                           {
                              var _loc8_:* = _loc3_;
                              if(_loc10_)
                              {
                                 for each(_loc4_ in _loc8_)
                                 {
                                    if(_loc9_ && this)
                                    {
                                       continue;
                                    }
                                 }
                                 addr159:
                                 continue;
                                 addr156:
                              }
                              while(true)
                              {
                                 _loc1_.push(_loc4_);
                                 §§goto(addr156);
                              }
                           }
                           §§goto(addr159);
                        }
                        if(!(_loc9_ && this))
                        {
                           this.§=!^§ = _loc1_;
                        }
                     }
                  }
                  else
                  {
                     addr99:
                     if(this.§=!^§ == null)
                     {
                        §§goto(addr101);
                     }
                  }
                  return;
               }
               §§goto(addr46);
            }
            §§goto(addr99);
         }
         addr65:
         throw new Error("Not enough level names defined for episode: " + this.§=!^§.length + " names, " + this.§!#J§() + " levels");
      }
      
      public function §0!_§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§7!M§();
         }
         return this.§=!^§.concat();
      }
      
      public function §3#4§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§=!^§.indexOf(param1);
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(!(_loc3_ && this))
            {
               §§push(0);
               if(_loc4_ || _loc3_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc4_ || _loc2_)
                     {
                        addr59:
                        §§push(_loc2_);
                        if(_loc4_ || _loc2_)
                        {
                           §§goto(addr79);
                        }
                        else
                        {
                           §§goto(addr82);
                        }
                     }
                     §§goto(addr82);
                  }
                  addr82:
                  return §§pop();
                  §§push(-1);
               }
               addr79:
               return §§pop() / this.§#"X§;
            }
            §§goto(addr82);
         }
         §§goto(addr59);
      }
      
      public function §^"0§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§=!^§.indexOf(param1);
         if(_loc3_ || _loc2_)
         {
            §§push(_loc2_);
            if(_loc3_ || this)
            {
               §§push(0);
               if(_loc3_ || param1)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc3_)
                     {
                        §§push(_loc2_);
                        if(_loc3_ || _loc3_)
                        {
                           §§push(this.§#"X§);
                        }
                        else
                        {
                           §§goto(addr81);
                        }
                     }
                     else
                     {
                        addr80:
                        addr81:
                        return §§pop();
                        §§push(-1);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr80);
               }
               return §§pop() % §§pop();
            }
            §§goto(addr81);
         }
         §§goto(addr80);
      }
      
      public function getNextLevelId(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§7!M§();
         }
         §§push(this.getLevelIndex(param1));
         if(!(_loc3_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               addr101:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc4_)
                        {
                           return this.§=!^§[_loc2_ + 1];
                        }
                        if(_loc4_)
                        {
                           addr97:
                           break;
                        }
                        continue loop0;
                     }
                     return null;
                     addr74:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mName = param1;
         }
      }
      
      public function get menuImage() : String
      {
         return this.§^"E§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§^"E§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§#"X§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§#"X§ = param1;
         }
      }
      
      public function set §"!p§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§@"[§ = param1;
         }
      }
      
      public function get currentPage() : int
      {
         return this.§#"x§;
      }
      
      public function set currentPage(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr83:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  addr84:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(!_loc3_)
                           {
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                              this.§#"x§ = param1;
                           }
                           break;
                        }
                        return;
                        addr61:
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
            }
            addr82:
         }
         while(true)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(this.§6">§);
               if(!(_loc3_ && this))
               {
                  §§push(§§pop() < §§pop());
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     §§goto(addr84);
                  }
                  §§goto(addr61);
               }
               else
               {
                  §§goto(addr83);
               }
            }
            else
            {
               §§goto(addr82);
            }
            §§goto(addr83);
         }
      }
      
      public function get §6">§() : int
      {
         return this.§5"Q§.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr93:
                           while(true)
                           {
                              §§push(param1);
                              addr51:
                              while(true)
                              {
                                 §§push(this.§6">§);
                                 if(_loc2_ && _loc2_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() < §§pop());
                                 if(_loc2_)
                                 {
                                    continue loop3;
                                 }
                                 if(!_loc3_)
                                 {
                                    continue loop2;
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§goto(addr93);
                           }
                           else
                           {
                              addr25:
                              §§push(-1);
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                           }
                           §§goto(addr51);
                        }
                        §§goto(addr25);
                     }
                  }
               }
            }
         }
         return this.§5"Q§[param1];
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         if(!_loc6_)
         {
            this.§5"Q§ = new Vector.<int>();
         }
         for each(_loc2_ in param1)
         {
            if(!(_loc6_ && _loc2_))
            {
               this.§5"Q§.push(parseInt(_loc2_));
            }
         }
      }
      
      public function § "Y§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§@#R§[param1] = param2;
         }
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.§@#R§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§;!^§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§;!^§ = param1;
         }
      }
      
      public function get §@#$§() : String
      {
         return this.§@#U§;
      }
      
      public function set §@#$§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§@#U§ = param1;
         }
      }
      
      public function get §#!w§() : String
      {
         return this.§3"h§;
      }
      
      public function set §#!w§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§3"h§ = param1;
         }
      }
      
      public function get writtenName() : String
      {
         return this.§@#_§;
      }
      
      public function set writtenName(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§@#_§ = param1;
         }
      }
      
      public function addLevel(param1:String, param2:§8!B§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§["?§[param1] = param2;
         }
      }
      
      public function §8N§(param1:String) : §8!B§
      {
         return this.§["?§[param1];
      }
      
      public function get §3"i§() : Boolean
      {
         return this.§,#G§;
      }
      
      public function set §3"i§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,#G§ = param1;
         }
      }
      
      public function get isLocked() : Boolean
      {
         return this.§'!2§;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'!2§ = param1;
         }
      }
   }
}
