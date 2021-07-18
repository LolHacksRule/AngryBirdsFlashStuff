package §8!K§
{
   import §"n§.§<!Z§;
   
   public class §3%§
   {
       
      
      protected var §?o§:String = "";
      
      protected var mName:String = "";
      
      protected var §`!p§:String = "";
      
      protected var §4",§:String = "";
      
      protected var §?k§:String = "";
      
      protected var §%!e§:Vector.<int> = null;
      
      protected var §^!c§:int = 0;
      
      protected var §%f§:Array = null;
      
      protected var §"§:Array;
      
      protected var §`!>§:Array;
      
      protected var §!b§:int = 0;
      
      protected var §7!,§:§<!Z§;
      
      protected var §^!I§:Boolean = false;
      
      protected var dynamic:Boolean = false;
      
      protected var §>s§:§<!Z§;
      
      public function §3%§(param1:Array)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         if(!(_loc6_ && param1))
         {
            this.§7!,§ = new §<!Z§();
            loop0:
            while(true)
            {
               this.§>s§ = new §<!Z§();
               loop1:
               while(true)
               {
                  while(true)
                  {
                     super();
                     while(true)
                     {
                        if(!_loc6_)
                        {
                           if(!param1)
                           {
                              break;
                           }
                           if(_loc5_)
                           {
                              if(!_loc6_)
                              {
                                 this.§%f§ = [];
                                 continue loop0;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                     addr111:
                     return;
                     addr46:
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(false)
            {
               §§goto(addr46);
            }
            else
            {
               for each(_loc2_ in param1)
               {
                  if(!(_loc6_ && param1))
                  {
                     this.§%f§.push(_loc2_.toLowerCase());
                  }
               }
            }
            §§goto(addr111);
         }
      }
      
      public function §7!f§() : int
      {
         return this.§4!5§ * this.levelsPerPage;
      }
      
      public function §#n§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            this.§-"'§();
         }
         return int(this.§%f§.indexOf(param1));
      }
      
      public function §;!l§(param1:int) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§-"'§();
         }
         loop0:
         while(true)
         {
            §§push(param1);
            loop1:
            while(true)
            {
               §§push(§§pop() >= 0);
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(!(_loc2_ || _loc2_))
                        {
                           break;
                        }
                        if(!(_loc3_ && _loc2_))
                        {
                           return this.§%f§[param1];
                        }
                        addr95:
                        while(_loc2_)
                        {
                           continue loop1;
                           §§goto(addr94);
                        }
                        §§push(§§pop() < this.§%f§.length);
                        continue loop0;
                        if(!_loc3_)
                        {
                           continue;
                        }
                        §§goto(addr94);
                     }
                     return null;
                  }
                  addr94:
                  while(true)
                  {
                     §§pop();
                  }
                  addr94:
                  §§goto(addr95);
               }
               §§goto(addr94);
            }
         }
      }
      
      public function §,U§(param1:int) : Object
      {
         return this.§"§[param1];
      }
      
      public function §1!#§(param1:int) : String
      {
         return this.§`!>§[param1];
      }
      
      public function §]"-§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§-"'§();
         }
         §§push(this.§%f§.indexOf(param1) == -1);
         if(!_loc3_)
         {
            return !§§pop();
         }
      }
      
      public function §,!"§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§-"'§();
            loop0:
            while(true)
            {
               §§push(this.§%f§);
               loop1:
               while(true)
               {
                  §§push(param1);
                  addr72:
                  while(true)
                  {
                     if(§§pop().indexOf(§§pop()) < 0)
                     {
                        continue loop1;
                     }
                     if(!(_loc3_ && _loc3_))
                     {
                        if(!_loc3_)
                        {
                           §§push(false);
                           break;
                        }
                        continue loop0;
                     }
                  }
                  addr95:
                  return §§pop();
               }
            }
         }
         while(true)
         {
            §§goto(addr36);
         }
      }
      
      public function §>!N§(param1:int) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:String = null;
         if(!_loc6_)
         {
            this.§-"'§();
         }
         var _loc2_:Array = new Array();
         if(!(_loc6_ && _loc3_))
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
                        while(true)
                        {
                           §§pop();
                           addr141:
                           loop7:
                           while(true)
                           {
                              §§push(param1);
                              if(!_loc6_)
                              {
                                 §§push(this.§4!5§);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() < §§pop());
                                    if(!_loc6_)
                                    {
                                       if(!(_loc6_ && param1))
                                       {
                                          while(§§pop())
                                          {
                                             if(!(_loc6_ && param1))
                                             {
                                                §§push(0);
                                                while(!_loc6_)
                                                {
                                                   _loc3_ = §§pop();
                                                   continue loop7;
                                                }
                                                continue loop0;
                                                addr119:
                                             }
                                             while(!_loc5_)
                                             {
                                                continue loop7;
                                             }
                                             addr37:
                                             if(_loc3_ >= this.levelsPerPage)
                                             {
                                                if(!(_loc6_ && param1))
                                                {
                                                   if(_loc6_)
                                                   {
                                                      addr73:
                                                      if(!_loc6_)
                                                      {
                                                         _loc3_++;
                                                         addr58:
                                                         §§goto(addr37);
                                                      }
                                                      _loc2_.push(_loc4_);
                                                      §§goto(addr73);
                                                      addr90:
                                                   }
                                                   break;
                                                }
                                                §§goto(addr58);
                                             }
                                             _loc4_ = this.§%f§[_loc3_ + param1 * this.levelsPerPage];
                                             §§goto(addr90);
                                          }
                                          return _loc2_;
                                          addr109:
                                       }
                                       continue loop2;
                                    }
                                    continue;
                                 }
                                 continue loop1;
                              }
                              §§goto(addr119);
                           }
                        }
                     }
                     §§goto(addr109);
                  }
               }
            }
         }
         §§goto(addr141);
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
            if(!(_loc6_ && param1))
            {
               if(§§pop() >= this.levelsPerPage)
               {
                  if(_loc5_ || _loc3_)
                  {
                     if(_loc5_ || _loc2_)
                     {
                        if(_loc5_)
                        {
                           break;
                        }
                        _loc2_.push(_loc4_);
                        addr103:
                     }
                     _loc3_++;
                  }
                  continue;
               }
               addr78:
               §§push(param1 + "-");
               if(_loc5_ || _loc2_)
               {
                  §§push(§§pop() + (_loc3_ + 1));
               }
               _loc4_ = §§pop();
               §§goto(addr103);
            }
            §§goto(addr78);
         }
         return _loc2_;
      }
      
      private function §-"'§() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(_loc10_ || this)
         {
            §§push(this.§%f§);
            if(!_loc9_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc9_ && this))
               {
                  if(§§pop())
                  {
                     if(_loc10_)
                     {
                        addr51:
                        §§pop();
                        if(_loc10_)
                        {
                           §§goto(addr99);
                        }
                        §§goto(addr101);
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc10_)
                     {
                        throw new Error("Not enough level names defined for episode: " + this.§%f§.length + " names, " + this.§7!f§() + " levels");
                     }
                     §§goto(addr101);
                  }
                  else
                  {
                     addr99:
                     §§push(this.§%f§);
                     if(!(_loc9_ && _loc3_))
                     {
                        §§push(§§pop().length < this.§7!f§());
                     }
                     if(§§pop() == null)
                     {
                        addr101:
                        _loc1_ = new Array();
                        for each(_loc2_ in this.§%!e§)
                        {
                           _loc3_ = this.getDefaultLevelNamesForPage(_loc2_);
                           if(_loc9_ && _loc1_)
                           {
                              continue;
                           }
                           var _loc7_:int = 0;
                           if(_loc10_)
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
                        if(!_loc9_)
                        {
                           this.§%f§ = _loc1_;
                        }
                     }
                     return;
                     §§push(this.§%f§);
                  }
                  §§goto(addr99);
               }
               §§goto(addr51);
            }
            §§goto(addr99);
         }
         §§goto(addr101);
      }
      
      public function §@!8§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§-"'§();
         }
         return this.§%f§.concat();
      }
      
      public function §@e§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§%f§.indexOf(param1);
         if(_loc3_ || _loc2_)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               §§push(0);
               if(!_loc4_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr63:
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           §§goto(addr68);
                        }
                        else
                        {
                           §§goto(addr71);
                        }
                     }
                     §§goto(addr71);
                  }
                  addr71:
                  return §§pop();
                  §§push(-1);
               }
               addr68:
               return §§pop() / this.§^!c§;
            }
            §§goto(addr71);
         }
         §§goto(addr63);
      }
      
      public function §7!J§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§%f§.indexOf(param1);
         if(_loc4_ || param1)
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc2_))
            {
               §§push(0);
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(_loc2_);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(this.§^!c§);
                        }
                        else
                        {
                           §§goto(addr87);
                        }
                     }
                     else
                     {
                        addr86:
                        addr87:
                        return §§pop();
                        §§push(-1);
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr86);
               }
               return §§pop() % §§pop();
            }
            §§goto(addr87);
         }
         §§goto(addr86);
      }
      
      public function getNextLevelId(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§-"'§();
         }
         §§push(this.§#n§(param1));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        addr90:
                        if(!_loc3_)
                        {
                           return this.§%f§[_loc2_ + 1];
                        }
                        §§push(§§pop() < this.§%f§.length - 1);
                        continue loop0;
                        if(!(_loc3_ && _loc3_))
                        {
                           continue;
                        }
                        addr108:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr108:
                     }
                     return null;
                  }
               }
               §§goto(addr108);
            }
         }
         §§goto(addr90);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.mName = param1;
         }
      }
      
      public function get menuImage() : String
      {
         return this.§`!p§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§`!p§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§^!c§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§^!c§ = param1;
         }
      }
      
      public function set §&!<§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§"§ = param1;
         }
      }
      
      public function get currentPage() : int
      {
         return this.§!b§;
      }
      
      public function set currentPage(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr81:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(!_loc3_)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(_loc2_)
                           {
                              if(!(_loc2_ || this))
                              {
                                 continue loop0;
                              }
                              this.§!b§ = param1;
                           }
                           break;
                        }
                        return;
                        addr54:
                     }
                  }
                  addr86:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      public function get §4!5§() : int
      {
         return this.§%!e§.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr88:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  addr89:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    return this.§%!e§[param1];
                                 }
                                 addr92:
                                 while(true)
                                 {
                                    §§push(param1);
                                    continue loop0;
                                 }
                              }
                           }
                           §§push(-1);
                           if(!(_loc3_ && _loc2_))
                           {
                              return §§pop();
                           }
                           continue loop0;
                        }
                        continue;
                        addr64:
                     }
                     while(true)
                     {
                        §§pop();
                     }
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         if(_loc6_)
         {
            this.§%!e§ = new Vector.<int>();
         }
         for each(_loc2_ in param1)
         {
            if(!_loc5_)
            {
               this.§%!e§.push(parseInt(_loc2_));
            }
         }
      }
      
      public function §23§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§7!,§[param1] = param2;
         }
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.§7!,§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§`!>§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§`!>§ = param1;
         }
      }
      
      public function get §&!p§() : String
      {
         return this.§4",§;
      }
      
      public function set §&!p§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§4",§ = param1;
         }
      }
      
      public function get §@"%§() : String
      {
         return this.§?k§;
      }
      
      public function set §@"%§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?k§ = param1;
         }
      }
      
      public function get writtenName() : String
      {
         return this.§?o§;
      }
      
      public function set writtenName(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§?o§ = param1;
         }
      }
      
      public function §^8§(param1:String, param2:§5!0§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§>s§[param1] = param2;
         }
      }
      
      public function §&t§(param1:String) : §5!0§
      {
         return this.§>s§[param1];
      }
      
      public function get §3F§() : Boolean
      {
         return this.§^!I§;
      }
      
      public function set §3F§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^!I§ = param1;
         }
      }
      
      public function get §9>§() : Boolean
      {
         return this.dynamic;
      }
      
      public function set §9>§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.dynamic = param1;
         }
      }
   }
}
