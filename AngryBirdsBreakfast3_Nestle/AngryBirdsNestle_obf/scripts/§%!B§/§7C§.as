package §%!B§
{
   import §4!i§.§0]§;
   
   public class §7C§
   {
       
      
      protected var §@!H§:String = "";
      
      protected var mName:String = "";
      
      protected var §^!G§:String = "";
      
      protected var § !#§:String = "";
      
      protected var §"!B§:String = "";
      
      protected var §'x§:Vector.<int> = null;
      
      protected var §&!v§:int = 0;
      
      protected var §+!E§:Array = null;
      
      protected var §5v§:Array;
      
      protected var §,!u§:Array;
      
      protected var §'!6§:int = 0;
      
      protected var §'C§:§0]§;
      
      protected var §9Y§:Boolean = false;
      
      protected var §7!Z§:Boolean = false;
      
      protected var §>!"§:§0]§;
      
      public function §7C§(param1:Array)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         if(!_loc6_)
         {
            this.§'C§ = new §0]§();
            loop0:
            while(true)
            {
               this.§>!"§ = new §0]§();
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     super();
                     loop3:
                     while(true)
                     {
                        if(_loc5_)
                        {
                           if(param1)
                           {
                              if(!_loc6_)
                              {
                                 continue loop0;
                              }
                              addr37:
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    if(true)
                                    {
                                       var _loc3_:int = 0;
                                       var _loc4_:* = param1;
                                       addr102:
                                    }
                                    continue loop2;
                                    for each(_loc2_ in _loc4_)
                                    {
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          this.§+!E§.push(_loc2_.toLowerCase());
                                       }
                                       §§goto(addr102);
                                    }
                                    break loop3;
                                 }
                                 continue loop3;
                              }
                           }
                           break;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
         }
         while(true)
         {
            this.§+!E§ = [];
            §§goto(addr37);
         }
      }
      
      public function §+5§() : int
      {
         return this.§4!%§ * this.levelsPerPage;
      }
      
      public function §-!H§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§9a§();
         }
         return int(this.§+!E§.indexOf(param1));
      }
      
      public function §`z§(param1:int) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§9a§();
            loop0:
            while(true)
            {
               §§push(param1);
               addr88:
               loop1:
               while(true)
               {
                  §§push(§§pop() >= 0);
                  addr90:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           if(!(_loc2_ && param1))
                           {
                              if(!_loc2_)
                              {
                                 return this.§+!E§[param1];
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
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
               §§push(§§pop() < this.§+!E§.length);
               if(_loc2_ && this)
               {
                  continue;
               }
               if(_loc3_)
               {
                  §§goto(addr57);
               }
               §§goto(addr90);
            }
            §§goto(addr88);
         }
      }
      
      public function §""%§(param1:int) : Object
      {
         return this.§5v§[param1];
      }
      
      public function §@",§(param1:int) : String
      {
         return this.§,!u§[param1];
      }
      
      public function §5"0§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§9a§();
         }
         §§push(this.§+!E§.indexOf(param1) == -1);
         if(!(_loc3_ && _loc3_))
         {
            return !§§pop();
         }
      }
      
      public function §39§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§9a§();
            while(true)
            {
               §§push(this.§+!E§);
               while(true)
               {
                  §§push(param1);
                  addr68:
                  §§goto(addr96);
               }
            }
         }
         addr96:
         loop2:
         while(true)
         {
            if(§§pop().indexOf(§§pop()) < 0)
            {
               continue loop1;
            }
            if(_loc3_ || this)
            {
               continue loop0;
            }
            addr97:
            while(true)
            {
               continue loop1;
               addr55:
               §§pop().push(§§pop());
               if(_loc3_ || param1)
               {
                  §§push(true);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
                  break loop2;
               }
            }
         }
         false;
         return §§pop();
      }
      
      public function §&d§(param1:int) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = 0;
         var _loc4_:String = null;
         if(_loc6_ || param1)
         {
            this.§9a§();
         }
         var _loc2_:Array = new Array();
         if(_loc6_)
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
                           addr152:
                           while(true)
                           {
                              §§push(param1);
                              if(_loc5_)
                              {
                                 break;
                              }
                              §§push(this.§4!%§);
                              if(_loc5_)
                              {
                                 continue loop1;
                              }
                              §§push(§§pop() < §§pop());
                              if(!(_loc6_ || this))
                              {
                                 continue loop3;
                              }
                              if(!_loc6_)
                              {
                                 continue loop2;
                              }
                           }
                           continue loop0;
                        }
                     }
                     while(§§pop())
                     {
                        if(_loc6_ || _loc2_)
                        {
                           if(_loc6_)
                           {
                              while(true)
                              {
                                 continue loop0;
                              }
                              addr126:
                           }
                           else
                           {
                              §§goto(addr152);
                           }
                        }
                        else
                        {
                           addr38:
                           if(_loc3_ >= this.levelsPerPage)
                           {
                              if(!(_loc5_ && param1))
                              {
                                 if(!(_loc6_ || _loc2_))
                                 {
                                    _loc2_.push(_loc4_);
                                    _loc3_++;
                                    addr81:
                                    addr96:
                                 }
                                 break;
                              }
                              if(_loc6_)
                              {
                                 §§goto(addr38);
                              }
                              §§goto(addr81);
                           }
                           _loc4_ = this.§+!E§[_loc3_ + param1 * this.levelsPerPage];
                           §§goto(addr96);
                           addr145:
                        }
                     }
                     return _loc2_;
                  }
               }
            }
         }
         §§goto(addr126);
      }
      
      protected function getDefaultLevelNamesForPage(param1:int) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:String = null;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               if(§§pop() >= this.levelsPerPage)
               {
                  if(_loc5_ || _loc3_)
                  {
                     break;
                  }
                  while(!(_loc5_ || this))
                  {
                     loop2:
                     while(!(_loc5_ || this))
                     {
                        while(true)
                        {
                           _loc2_.push(_loc4_);
                           continue loop2;
                        }
                     }
                     _loc3_++;
                  }
                  continue;
               }
               addr78:
               §§push(param1 + "-");
               if(_loc5_)
               {
                  §§push(§§pop() + (_loc3_ + 1));
               }
               _loc4_ = §§pop();
               §§goto(addr98);
            }
            §§goto(addr78);
         }
         return _loc2_;
      }
      
      private function §9a§() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(!(_loc10_ && _loc1_))
         {
            §§push(this.§+!E§);
            if(!(_loc10_ && _loc3_))
            {
               §§push(Boolean(§§pop()));
               if(_loc9_ || _loc1_)
               {
                  if(§§pop())
                  {
                     if(!(_loc10_ && _loc2_))
                     {
                        §§pop();
                        if(!(_loc10_ && _loc3_))
                        {
                           §§goto(addr113);
                        }
                        §§goto(addr115);
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc9_ || this)
                  {
                     throw new Error("Not enough level names defined for episode: " + this.§+!E§.length + " names, " + this.§+5§() + " levels");
                  }
               }
               §§push(this.§+!E§);
            }
            addr113:
            §§push(this.§+!E§);
            if(!_loc10_)
            {
               §§push(§§pop().length < this.§+5§());
            }
            if(§§pop() == null)
            {
               addr115:
               _loc1_ = new Array();
               for each(_loc2_ in this.§'x§)
               {
                  _loc3_ = this.getDefaultLevelNamesForPage(_loc2_);
                  if(!(_loc10_ && _loc2_))
                  {
                     var _loc7_:int = 0;
                     if(!_loc10_)
                     {
                        var _loc8_:* = _loc3_;
                        if(_loc10_)
                        {
                        }
                        for each(_loc4_ in _loc8_)
                        {
                           if(!(_loc10_ && _loc1_))
                           {
                              _loc1_.push(_loc4_);
                           }
                        }
                     }
                  }
               }
               if(!_loc10_)
               {
                  this.§+!E§ = _loc1_;
               }
            }
            return;
         }
         §§goto(addr115);
      }
      
      public function §,!@§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§9a§();
         }
         return this.§+!E§.concat();
      }
      
      public function §2!"§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§+!E§.indexOf(param1);
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               §§push(0);
               if(_loc3_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        §§push(_loc2_);
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(this.§&!v§);
                        }
                        else
                        {
                           §§goto(addr76);
                        }
                     }
                     else
                     {
                        addr75:
                        addr76:
                        return §§pop();
                        §§push(-1);
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr75);
               }
               return §§pop() / §§pop();
            }
            §§goto(addr76);
         }
         §§goto(addr75);
      }
      
      public function §!!B§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§+!E§.indexOf(param1);
         if(_loc4_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               §§push(0);
               if(!(_loc3_ && param1))
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc4_ || this)
                     {
                        §§push(_loc2_);
                        if(!_loc3_)
                        {
                           §§push(this.§&!v§);
                        }
                        else
                        {
                           §§goto(addr72);
                        }
                     }
                     else
                     {
                        addr71:
                        addr72:
                        return §§pop();
                        §§push(-1);
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr71);
               }
               return §§pop() % §§pop();
            }
            §§goto(addr72);
         }
         §§goto(addr71);
      }
      
      public function getNextLevelId(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§9a§();
         }
         §§push(this.§-!H§(param1));
         if(_loc4_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               addr106:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(!(_loc4_ || this))
                        {
                           break;
                        }
                        if(_loc4_ || this)
                        {
                           return this.§+!E§[_loc2_ + 1];
                        }
                        continue loop0;
                     }
                     return null;
                     addr69:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            addr104:
         }
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               §§push(§§pop() < this.§+!E§.length - 1);
               if(!(_loc4_ || param1))
               {
                  continue;
               }
               if(!_loc4_)
               {
                  §§goto(addr106);
               }
               §§goto(addr69);
            }
            else
            {
               §§goto(addr104);
            }
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.mName = param1;
         }
      }
      
      public function get menuImage() : String
      {
         return this.§^!G§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§^!G§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§&!v§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§&!v§ = param1;
         }
      }
      
      public function set §]!]§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§5v§ = param1;
         }
      }
      
      public function get currentPage() : int
      {
         return this.§'!6§;
      }
      
      public function set currentPage(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr98:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  addr99:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              if(_loc3_ && param1)
                              {
                                 continue loop0;
                              }
                              this.§'!6§ = param1;
                           }
                           break;
                        }
                        return;
                        addr66:
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
            }
            addr97:
         }
         while(true)
         {
            §§push(param1);
            if(_loc2_ || _loc3_)
            {
               §§push(this.§4!%§);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc2_ || param1))
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     §§goto(addr99);
                  }
                  §§goto(addr66);
               }
               else
               {
                  §§goto(addr98);
               }
            }
            else
            {
               §§goto(addr97);
            }
            §§goto(addr98);
         }
      }
      
      public function get §4!%§() : int
      {
         return this.§'x§.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr104:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  addr105:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 return this.§'x§[param1];
                              }
                              if(_loc2_ && param1)
                              {
                                 while(true)
                                 {
                                    §§push(param1);
                                    continue loop0;
                                 }
                                 addr108:
                              }
                           }
                           §§push(-1);
                           if(_loc3_ || _loc3_)
                           {
                              return §§pop();
                           }
                           continue loop0;
                        }
                        continue;
                        addr75:
                     }
                     while(true)
                     {
                        §§pop();
                     }
                  }
               }
            }
         }
         §§goto(addr108);
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         if(_loc5_)
         {
            this.§'x§ = new Vector.<int>();
         }
         for each(_loc2_ in param1)
         {
            if(!_loc6_)
            {
               this.§'x§.push(parseInt(_loc2_));
            }
         }
      }
      
      public function §0x§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§'C§[param1] = param2;
         }
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.§'C§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§,!u§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,!u§ = param1;
         }
      }
      
      public function get §#T§() : String
      {
         return this.§ !#§;
      }
      
      public function set §#T§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§ !#§ = param1;
         }
      }
      
      public function get §@"2§() : String
      {
         return this.§"!B§;
      }
      
      public function set §@"2§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§"!B§ = param1;
         }
      }
      
      public function get writtenName() : String
      {
         return this.§@!H§;
      }
      
      public function set writtenName(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§@!H§ = param1;
         }
      }
      
      public function §`!E§(param1:String, param2:§5L§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§>!"§[param1] = param2;
         }
      }
      
      public function §92§(param1:String) : §5L§
      {
         return this.§>!"§[param1];
      }
      
      public function get §%!u§() : Boolean
      {
         return this.§9Y§;
      }
      
      public function set §%!u§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§9Y§ = param1;
         }
      }
      
      public function get §'K§() : Boolean
      {
         return this.§7!Z§;
      }
      
      public function set §'K§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§7!Z§ = param1;
         }
      }
   }
}
