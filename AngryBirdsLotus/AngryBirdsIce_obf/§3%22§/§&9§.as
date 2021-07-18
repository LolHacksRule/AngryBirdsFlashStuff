package §3"§
{
   import flash.utils.Dictionary;
   
   public class §&9§
   {
       
      
      private var §%q§:String = "";
      
      private var mName:String = "";
      
      private var §'!7§:String = "";
      
      private var §"H§:String = "";
      
      private var §7!$§:String = "";
      
      private var §2Z§:Array = null;
      
      private var §0!F§:int = 0;
      
      private var §7B§:Array = null;
      
      private var §#L§:Array;
      
      private var §^U§:Array;
      
      private var §!O§:int = 0;
      
      private var §-u§:Dictionary;
      
      public function §&9§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§-u§ = new Dictionary();
            do
            {
               super();
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public function §"v§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §4!5§(param1:String) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         var _loc2_:Array = new Array();
         var _loc3_:* = Number(0);
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_ || this)
            {
               if(§§pop() >= this.levelsPerPage)
               {
                  if(!(_loc6_ && param1))
                  {
                     if(_loc5_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!(_loc6_ && _loc2_))
                        {
                           §§push(§§pop() + 1);
                           if(!(_loc6_ && param1))
                           {
                              addr80:
                              §§push(Number(§§pop()));
                              while(true)
                              {
                                 _loc3_ = §§pop();
                              }
                              addr80:
                           }
                        }
                        §§goto(addr80);
                        addr131:
                        while(true)
                        {
                           _loc2_.push(_loc4_);
                           continue loop1;
                        }
                     }
                  }
                  while(_loc6_ && _loc3_)
                  {
                  }
                  continue;
               }
               §§push(param1);
               if(_loc5_)
               {
                  §§push(§§pop() + "-");
                  if(_loc5_ || this)
                  {
                     §§push(_loc3_);
                     if(_loc5_ || param1)
                     {
                        §§push(§§pop() + 1);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop());
               }
               _loc4_ = §§pop();
               §§goto(addr131);
            }
            §§goto(addr80);
         }
         return _loc2_;
      }
      
      public function §6_§(param1:int) : Object
      {
         return this.§#L§[param1];
      }
      
      public function §"X§(param1:int) : String
      {
         return this.§^U§[param1];
      }
      
      public function §&;§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§ ;§().indexOf(param1) == -1);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function § ;§() : Array
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(_loc9_)
         {
            if(this.§7B§ == null)
            {
               §§goto(addr34);
            }
            §§goto(addr126);
         }
         addr34:
         _loc1_ = new Array();
         for each(_loc2_ in this.pageIndexes)
         {
            _loc3_ = this.§4!5§(_loc2_);
            if(_loc10_ && this)
            {
               continue;
            }
            var _loc7_:int = 0;
            if(!_loc10_)
            {
               var _loc8_:* = _loc3_;
               if(!(_loc10_ && _loc1_))
               {
                  for each(_loc4_ in _loc8_)
                  {
                     if(!_loc9_)
                     {
                        continue;
                     }
                  }
                  addr112:
                  continue;
                  addr109:
               }
               while(true)
               {
                  _loc1_.push(_loc4_);
                  §§goto(addr109);
               }
            }
            §§goto(addr112);
         }
         if(!_loc10_)
         {
            this.§7B§ = _loc1_;
            if(!_loc9_)
            {
               addr126:
               return this.§7B§;
            }
         }
         return _loc1_;
      }
      
      public function §%X§(param1:String) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               if(!(_loc4_ && _loc2_))
               {
                  if(§§pop() >= this.pageIndexes.length)
                  {
                     if(_loc5_)
                     {
                        if(!(_loc4_ && param1))
                        {
                           §§goto(addr58);
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           if(_loc5_ || _loc2_)
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 continue loop0;
                              }
                              loop2:
                              while(true)
                              {
                                 §§push(param1);
                                 if(!(_loc4_ && this))
                                 {
                                    break;
                                 }
                                 addr113:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    continue loop2;
                                 }
                              }
                              if(§§pop().indexOf(_loc3_ + "-") == 0)
                              {
                                 break;
                              }
                           }
                           _loc2_++;
                        }
                     }
                     §§push(_loc2_);
                     break;
                  }
                  §§push(this.pageIndexes[_loc2_]);
                  §§goto(addr113);
               }
               break;
            }
            addr58:
            return -1;
         }
         return §§pop();
      }
      
      public function §?W§(param1:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = 0;
         §§push(param1);
         if(!(_loc5_ && _loc3_))
         {
            §§push(§§pop().substring(0,param1.indexOf("-")));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = parseInt(param1.substring(param1.indexOf("-") + 1));
         if(!_loc5_)
         {
            §§push(_loc3_);
            loop0:
            while(§§pop() >= this.levelsPerPage)
            {
               loop1:
               while(true)
               {
                  §§push(0);
                  if(!(_loc6_ || this))
                  {
                     break;
                  }
                  _loc4_ = §§pop();
                  if(_loc6_)
                  {
                     if(!(_loc6_ || param1))
                     {
                        break loop0;
                     }
                     while(true)
                     {
                        §§push(_loc4_);
                        if(!_loc5_)
                        {
                           if(§§pop() >= this.pageIndexes.length)
                           {
                              if(_loc6_ || param1)
                              {
                                 §§goto(addr127);
                              }
                              §§goto(addr96);
                           }
                           else
                           {
                              §§push(this.pageIndexes);
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§push(_loc4_);
                                 if(!_loc5_)
                                 {
                                    if(§§pop()[§§pop()] == _loc2_)
                                    {
                                       §§goto(addr117);
                                    }
                                    else
                                    {
                                       _loc4_++;
                                       addr96:
                                       if(_loc6_)
                                       {
                                          continue;
                                       }
                                       addr92:
                                       §§goto(addr88);
                                    }
                                 }
                                 §§goto(addr127);
                              }
                           }
                           §§goto(addr127);
                        }
                        break;
                     }
                     if(§§pop() + 1 < this.pageIndexes.length)
                     {
                        addr127:
                        if(!(_loc5_ && param1))
                        {
                           if(!(_loc5_ && this))
                           {
                              addr88:
                              return null;
                           }
                           addr117:
                           §§push(_loc4_);
                           break loop2;
                        }
                        §§push(this.pageIndexes[_loc4_ + 1] + "-");
                        if(!(_loc5_ && this))
                        {
                           return §§pop() + 1;
                        }
                     }
                     §§goto(addr92);
                  }
                  else
                  {
                     while(true)
                     {
                        continue loop1;
                     }
                     addr187:
                  }
               }
            }
            §§push(_loc2_ + "-");
            if(!_loc5_)
            {
               return §§pop() + (_loc3_ + 1);
            }
         }
         §§goto(addr187);
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
         return this.§'!7§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'!7§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§0!F§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§0!F§ = param1;
         }
      }
      
      public function get §'v§() : Array
      {
         return this.§7B§;
      }
      
      public function get §,!'§() : Array
      {
         return this.§#L§;
      }
      
      public function set §,!'§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#L§ = param1;
         }
      }
      
      public function get §^A§() : int
      {
         return this.§!O§;
      }
      
      public function set §^A§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               addr84:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(!_loc2_)
                        {
                           if(_loc3_ || this)
                           {
                              this.§!O§ = param1;
                              addr80:
                              break;
                           }
                           continue loop0;
                        }
                        §§goto(addr80);
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
         §§goto(addr80);
      }
      
      public function get pageIndexes() : Array
      {
         return this.§2Z§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§2Z§ = param1;
         }
      }
      
      public function §0!'§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§-u§[param1] = param2;
         }
      }
      
      public function §1!2§(param1:String) : String
      {
         return this.§-u§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§^U§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^U§ = param1;
         }
      }
      
      public function get §-a§() : String
      {
         return this.§"H§;
      }
      
      public function set §-a§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§"H§ = param1;
         }
      }
      
      public function get § v§() : String
      {
         return this.§7!$§;
      }
      
      public function set § v§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§7!$§ = param1;
         }
      }
      
      public function get writtenName() : String
      {
         return this.§%q§;
      }
      
      public function set writtenName(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§%q§ = param1;
         }
      }
   }
}
