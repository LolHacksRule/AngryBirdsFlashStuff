package §`!j§
{
   import § !Y§.§[!%§;
   
   public class §3,§
   {
       
      
      private var §,!G§:String = "";
      
      private var mName:String = "";
      
      private var §?L§:String = "";
      
      private var §^3§:String = "";
      
      private var §4%§:String = "";
      
      private var §>M§:Vector.<int> = null;
      
      private var §%%§:int = 0;
      
      private var §%"4§:Array = null;
      
      private var §1-§:Array;
      
      private var §]!F§:Array;
      
      private var §@!-§:int = 0;
      
      private var §"!e§:§[!%§;
      
      private var §>!h§:Boolean = false;
      
      private var §`!c§:Boolean = false;
      
      protected var §0i§:§[!%§;
      
      public function §3,§(param1:Array)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         if(!(_loc6_ && param1))
         {
            this.§"!e§ = new §[!%§();
            loop0:
            while(true)
            {
               this.§0i§ = new §[!%§();
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
                        if(!_loc6_)
                        {
                           if(_loc5_)
                           {
                              if(param1)
                              {
                                 if(_loc5_ || _loc2_)
                                 {
                                    while(true)
                                    {
                                       this.§%"4§ = [];
                                    }
                                    addr37:
                                 }
                                 while(true)
                                 {
                                    if(_loc5_)
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
                                          if(_loc5_)
                                          {
                                             this.§%"4§.push(_loc2_.toLowerCase());
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
                           continue loop0;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr37);
      }
      
      public function §^!-§() : int
      {
         return this.§`;§ * this.levelsPerPage;
      }
      
      public function §-!;§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§@",§();
         }
         return int(this.§%"4§.indexOf(param1));
      }
      
      public function §=!U§(param1:int) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@",§();
            loop0:
            while(true)
            {
               §§push(param1);
               addr86:
               loop1:
               while(true)
               {
                  §§push(§§pop() >= 0);
                  if(_loc3_)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(!(_loc3_ || _loc2_))
                           {
                              break;
                           }
                           if(_loc3_ || param1)
                           {
                              continue loop0;
                           }
                           continue loop1;
                           addr34:
                           §§push(§§pop() < this.§%"4§.length);
                           if(!(_loc2_ && param1))
                           {
                              continue;
                           }
                           addr102:
                           while(true)
                           {
                              §§pop();
                              continue loop1;
                              §§goto(addr34);
                           }
                           addr102:
                        }
                        return null;
                     }
                  }
                  §§goto(addr102);
               }
            }
         }
         while(true)
         {
            §§push(param1);
            if(_loc3_ || this)
            {
               §§goto(addr34);
            }
            §§goto(addr86);
            §§goto(addr102);
         }
      }
      
      public function §<!n§(param1:int) : Object
      {
         return this.§1-§[param1];
      }
      
      public function §,"2§(param1:int) : String
      {
         return this.§]!F§[param1];
      }
      
      public function §[9§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§@",§();
         }
         §§push(this.§%"4§.indexOf(param1) == -1);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function §`!x§(param1:int) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:String = null;
         if(_loc6_)
         {
            this.§@",§();
         }
         var _loc2_:Array = new Array();
         if(_loc6_ || _loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr158:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  addr159:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop5:
                        while(§§pop())
                        {
                           if(!(_loc5_ && param1))
                           {
                              §§goto(addr142);
                              §§push(0);
                           }
                           while(true)
                           {
                              if(_loc6_)
                              {
                                 while(true)
                                 {
                                    if(_loc3_ >= this.levelsPerPage)
                                    {
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          break loop5;
                                       }
                                       while(_loc5_ && param1)
                                       {
                                          loop10:
                                          while(_loc5_ && param1)
                                          {
                                             while(true)
                                             {
                                                _loc2_.push(_loc4_);
                                                continue loop10;
                                             }
                                          }
                                          _loc3_++;
                                       }
                                       continue;
                                    }
                                    _loc4_ = this.§%"4§[_loc3_ + param1 * this.levelsPerPage];
                                    §§goto(addr101);
                                 }
                                 addr155:
                              }
                              else
                              {
                                 §§goto(addr162);
                              }
                           }
                        }
                        return _loc2_;
                        addr132:
                     }
                     while(true)
                     {
                        §§pop();
                        addr162:
                        while(true)
                        {
                           §§push(param1);
                           if(_loc6_ || param1)
                           {
                              continue loop0;
                           }
                           addr142:
                           while(true)
                           {
                              _loc3_ = §§pop();
                           }
                        }
                        continue loop0;
                     }
                     §§goto(addr143);
                  }
               }
            }
         }
         §§goto(addr155);
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
            if(_loc3_ >= this.levelsPerPage)
            {
               if(_loc5_ || param1)
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     break;
                  }
                  _loc2_.push(_loc4_);
                  addr100:
                  while(true)
                  {
                     _loc3_++;
                  }
                  addr72:
                  addr100:
               }
               while(!(_loc5_ || this))
               {
                  §§goto(addr72);
               }
               continue;
            }
            §§push("level" + param1);
            if(_loc5_)
            {
               §§push(§§pop() + "-");
               if(_loc5_)
               {
                  addr94:
                  §§push(§§pop() + (_loc3_ + 1));
               }
               _loc4_ = §§pop();
               §§goto(addr100);
            }
            §§goto(addr94);
            §§goto(addr100);
         }
         return _loc2_;
      }
      
      private function §@",§() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(!(_loc10_ && _loc1_))
         {
            §§push(this.§%"4§);
            if(_loc9_)
            {
               §§push(Boolean(§§pop()));
               if(_loc9_)
               {
                  if(§§pop())
                  {
                     if(_loc9_ || _loc1_)
                     {
                        §§pop();
                        if(!(_loc10_ && _loc2_))
                        {
                           §§push(this.§%"4§);
                           if(_loc9_ || _loc2_)
                           {
                              §§goto(addr71);
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr105);
                     }
                  }
               }
               addr71:
               §§goto(addr67);
            }
            addr67:
            if(§§pop().length < this.§^!-§())
            {
               if(!_loc10_)
               {
                  throw new Error("Not enough level names defined for episode: " + this.§%"4§.length + " names, " + this.§^!-§() + " levels");
                  addr74:
               }
               else
               {
                  addr105:
                  _loc1_ = new Array();
                  for each(_loc2_ in this.§>M§)
                  {
                     _loc3_ = this.getDefaultLevelNamesForPage(_loc2_);
                     if(_loc9_)
                     {
                        var _loc7_:int = 0;
                        if(_loc9_)
                        {
                           var _loc8_:* = _loc3_;
                           if(_loc9_ || _loc1_)
                           {
                           }
                           for each(_loc4_ in _loc8_)
                           {
                              if(!_loc10_)
                              {
                                 _loc1_.push(_loc4_);
                              }
                           }
                        }
                     }
                  }
                  if(_loc9_ || _loc2_)
                  {
                     this.§%"4§ = _loc1_;
                  }
               }
            }
            else
            {
               addr103:
               if(this.§%"4§ == null)
               {
                  §§goto(addr105);
               }
            }
            return;
         }
         §§goto(addr74);
      }
      
      public function §9"<§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§@",§();
         }
         return this.§%"4§.concat();
      }
      
      public function §'!f§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§%"4§.indexOf(param1);
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               §§push(0);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc3_ || _loc2_)
                     {
                        §§push(_loc2_);
                        if(!(_loc4_ && this))
                        {
                           §§goto(addr73);
                        }
                     }
                     else
                     {
                        addr75:
                        return -1;
                     }
                     return §§pop();
                  }
                  §§goto(addr75);
               }
               §§goto(addr73);
            }
            addr73:
            return §§pop() / this.§%%§;
         }
         §§goto(addr75);
      }
      
      public function §"@§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§%"4§.indexOf(param1);
         if(_loc3_)
         {
            §§push(_loc2_);
            if(!(_loc4_ && this))
            {
               §§push(0);
               if(!(_loc4_ && this))
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc3_)
                     {
                        addr63:
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           §§goto(addr68);
                        }
                     }
                     else
                     {
                        addr70:
                        return -1;
                     }
                     return §§pop();
                  }
                  §§goto(addr70);
               }
               §§goto(addr68);
            }
            addr68:
            return §§pop() % this.§%%§;
         }
         §§goto(addr63);
      }
      
      public function getNextLevelId(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§@",§();
         }
         §§push(this.§-!;§(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               if(_loc3_)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        addr84:
                        if(_loc3_)
                        {
                           return this.§%"4§[_loc2_ + 1];
                        }
                        §§push(§§pop() < this.§%"4§.length - 1);
                        continue loop0;
                        if(!(_loc4_ && _loc2_))
                        {
                           continue;
                        }
                        addr102:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr102:
                     }
                     return null;
                  }
               }
               §§goto(addr102);
            }
         }
         §§goto(addr84);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.mName = param1;
         }
      }
      
      public function get menuImage() : String
      {
         return this.§?L§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§?L§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§%%§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§%%§ = param1;
         }
      }
      
      public function set §9@§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§1-§ = param1;
         }
      }
      
      public function get currentPage() : int
      {
         return this.§@!-§;
      }
      
      public function set currentPage(param1:int) : void
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
               addr79:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  addr80:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(_loc3_ || _loc3_)
                           {
                              this.§@!-§ = param1;
                           }
                           if(_loc3_)
                           {
                              addr76:
                              break;
                           }
                           continue loop0;
                        }
                        return;
                        addr52:
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      public function get §`;§() : int
      {
         return this.§>M§.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
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
                           addr108:
                           while(true)
                           {
                              §§push(param1);
                              addr41:
                              while(true)
                              {
                                 §§push(this.§`;§);
                                 if(!(_loc3_ || param1))
                                 {
                                    break;
                                 }
                                 §§push(§§pop() < §§pop());
                                 if(_loc2_ && this)
                                 {
                                    continue loop3;
                                 }
                                 if(_loc2_ && _loc2_)
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
                           if(_loc3_)
                           {
                              break;
                           }
                           if(_loc3_ || this)
                           {
                              addr25:
                              §§push(-1);
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr41);
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr25);
                     }
                  }
               }
            }
         }
         return this.§>M§[param1];
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         if(!_loc6_)
         {
            this.§>M§ = new Vector.<int>();
         }
         for each(_loc2_ in param1)
         {
            if(!(_loc6_ && param1))
            {
               this.§>M§.push(parseInt(_loc2_));
            }
         }
      }
      
      public function § z§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§"!e§[param1] = param2;
         }
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.§"!e§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§]!F§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§]!F§ = param1;
         }
      }
      
      public function get §[! §() : String
      {
         return this.§^3§;
      }
      
      public function set §[! §(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§^3§ = param1;
         }
      }
      
      public function get §`!]§() : String
      {
         return this.§4%§;
      }
      
      public function set §`!]§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§4%§ = param1;
         }
      }
      
      public function get writtenName() : String
      {
         return this.§,!G§;
      }
      
      public function set writtenName(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,!G§ = param1;
         }
      }
      
      public function addLevel(param1:String, param2:§#b§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§0i§[param1] = param2;
         }
      }
      
      public function §1!B§(param1:String) : §#b§
      {
         return this.§0i§[param1];
      }
      
      public function get §@!i§() : Boolean
      {
         return this.§>!h§;
      }
      
      public function set §@!i§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§>!h§ = param1;
         }
      }
      
      public function get §]Y§() : Boolean
      {
         return this.§`!c§;
      }
      
      public function set §]Y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§`!c§ = param1;
         }
      }
   }
}
