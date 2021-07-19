package §`![§
{
   import flash.utils.Dictionary;
   
   public class §1!K§
   {
       
      
      private var §6A§:String = "";
      
      private var mName:String = "";
      
      private var §6!-§:String = "";
      
      private var §,! §:String = "";
      
      private var §>`§:String = "";
      
      private var §=l§:Array = null;
      
      private var §2!J§:int = 0;
      
      private var §"H§:Array = null;
      
      private var §9z§:Array;
      
      private var §#t§:Array;
      
      private var §0e§:int = 0;
      
      private var §3Y§:Dictionary;
      
      public function §1!K§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§3Y§ = new Dictionary();
         }
         do
         {
            super();
         }
         while(_loc1_);
         
      }
      
      public function §-b§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §2!D§(param1:String) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         var _loc2_:Array = new Array();
         var _loc3_:Number = 0;
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               if(_loc5_)
               {
                  if(§§pop() >= this.levelsPerPage)
                  {
                     if(_loc5_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(_loc5_ || this)
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                           addr116:
                           while(true)
                           {
                              _loc2_.push(_loc4_);
                           }
                        }
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!_loc6_)
                           {
                              addr47:
                              §§push(§§pop() + 1);
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 continue loop1;
                              }
                              addr47:
                           }
                           §§goto(addr47);
                        }
                     }
                     continue;
                  }
                  §§push(param1);
                  if(!(_loc6_ && this))
                  {
                     §§push(§§pop() + "-");
                     if(_loc5_ || param1)
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
                  §§goto(addr116);
               }
               §§goto(addr47);
            }
            §§goto(addr48);
         }
         return _loc2_;
      }
      
      public function §5Z§(param1:int) : Object
      {
         return this.§9z§[param1];
      }
      
      public function §6i§(param1:int) : String
      {
         return this.§#t§[param1];
      }
      
      public function §&!e§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§4%§().indexOf(param1) == -1);
         if(_loc3_)
         {
            return !§§pop();
         }
      }
      
      public function §4%§() : Array
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(!(_loc9_ && _loc3_))
         {
            if(this.§"H§ == null)
            {
               §§goto(addr40);
            }
            §§goto(addr132);
         }
         addr40:
         _loc1_ = new Array();
         for each(_loc2_ in this.pageIndexes)
         {
            _loc3_ = this.§2!D§(_loc2_);
            if(_loc9_)
            {
               continue;
            }
            var _loc7_:int = 0;
            if(_loc10_ || _loc2_)
            {
               var _loc8_:* = _loc3_;
               if(_loc10_)
               {
                  for each(_loc4_ in _loc8_)
                  {
                     if(!(_loc10_ || _loc2_))
                     {
                        continue;
                     }
                  }
                  addr108:
                  continue;
                  addr105:
               }
               while(true)
               {
                  _loc1_.push(_loc4_);
                  §§goto(addr105);
               }
            }
            §§goto(addr108);
         }
         if(_loc10_)
         {
            this.§"H§ = _loc1_;
            if(_loc9_)
            {
               addr132:
               return this.§"H§;
            }
         }
         return _loc1_;
      }
      
      public function §5g§(param1:String) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc5_ && _loc3_))
            {
               if(_loc4_)
               {
                  if(§§pop() >= this.pageIndexes.length)
                  {
                     if(!(_loc4_ || _loc3_))
                     {
                        continue;
                     }
                     if(!_loc5_)
                     {
                        break;
                     }
                     addr60:
                     _loc2_++;
                     continue;
                     addr94:
                  }
                  else
                  {
                     §§push(this.pageIndexes[_loc2_]);
                     loop1:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        while(true)
                        {
                           §§push(param1);
                           if(!(_loc5_ && _loc2_))
                           {
                              if(§§pop().indexOf(_loc3_ + "-") == 0)
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    if(_loc4_ || this)
                                    {
                                       §§goto(addr93);
                                    }
                                    continue;
                                 }
                                 §§goto(addr94);
                              }
                              break;
                           }
                           continue loop1;
                        }
                        §§goto(addr60);
                     }
                  }
               }
               addr93:
               return _loc2_;
            }
            break;
         }
         return §§pop();
      }
      
      public function §,!L§(param1:String) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = 0;
         §§push(param1);
         if(!(_loc6_ && param1))
         {
            §§push(§§pop().substring(0,param1.indexOf("-")));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = parseInt(param1.substring(param1.indexOf("-") + 1));
         if(!(_loc6_ && param1))
         {
            §§push(_loc3_);
            loop0:
            while(§§pop() >= this.levelsPerPage)
            {
               while(true)
               {
                  §§push(0);
                  if(!(_loc5_ || _loc3_))
                  {
                     break;
                  }
                  _loc4_ = §§pop();
                  if(!(_loc5_ || _loc2_))
                  {
                     continue;
                  }
                  if(!(_loc5_ || param1))
                  {
                     break loop0;
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!(_loc6_ && _loc3_))
                     {
                        if(§§pop() >= this.pageIndexes.length)
                        {
                           if(_loc5_)
                           {
                              if(!(_loc5_ || _loc3_))
                              {
                                 addr79:
                              }
                              return null;
                           }
                           addr128:
                           addr83:
                           if(_loc5_)
                           {
                              if(!(_loc5_ || _loc3_))
                              {
                                 addr121:
                                 §§push(_loc4_);
                              }
                              continue;
                              break;
                           }
                           §§push(this.pageIndexes);
                        }
                        else
                        {
                           §§push(this.pageIndexes);
                           if(!(_loc6_ && _loc3_))
                           {
                              §§push(_loc4_);
                              if(_loc5_)
                              {
                                 if(§§pop()[§§pop()] != _loc2_)
                                 {
                                    _loc4_++;
                                    §§goto(addr83);
                                 }
                                 §§goto(addr121);
                              }
                              §§goto(addr131);
                           }
                        }
                        addr131:
                        §§push(§§pop()[§§pop() + 1] + "-");
                        if(_loc5_)
                        {
                           §§push(§§pop() + 1);
                        }
                        return §§pop();
                        §§push(_loc4_);
                     }
                     break;
                  }
                  if(§§pop() + 1 < this.pageIndexes.length)
                  {
                     §§goto(addr128);
                  }
                  else
                  {
                     §§goto(addr79);
                  }
               }
            }
         }
         §§push(_loc2_ + "-");
         if(_loc5_)
         {
            return §§pop() + (_loc3_ + 1);
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mName = param1;
         }
      }
      
      public function get menuImage() : String
      {
         return this.§6!-§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6!-§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§2!J§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§2!J§ = param1;
         }
      }
      
      public function get §0!B§() : Array
      {
         return this.§"H§;
      }
      
      public function get §`$§() : Array
      {
         return this.§9z§;
      }
      
      public function set §`$§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§9z§ = param1;
         }
      }
      
      public function get § !X§() : int
      {
         return this.§0e§;
      }
      
      public function set § !X§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1);
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
                        if(!_loc3_)
                        {
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           this.§0e§ = param1;
                        }
                        break;
                     }
                     return;
                     addr48:
                  }
               }
               addr75:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
            addr69:
         }
         while(true)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(§§pop() < this.pageIndexes.length);
               if(!_loc2_)
               {
                  continue;
               }
            }
            else
            {
               §§goto(addr69);
            }
            §§goto(addr48);
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§=l§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§=l§ = param1;
         }
      }
      
      public function §?!f§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§3Y§[param1] = param2;
         }
      }
      
      public function §]<§(param1:String) : String
      {
         return this.§3Y§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§#t§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§#t§ = param1;
         }
      }
      
      public function get §4+§() : String
      {
         return this.§,! §;
      }
      
      public function set §4+§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§,! § = param1;
         }
      }
      
      public function get §`k§() : String
      {
         return this.§>`§;
      }
      
      public function set §`k§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>`§ = param1;
         }
      }
      
      public function get writtenName() : String
      {
         return this.§6A§;
      }
      
      public function set writtenName(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§6A§ = param1;
         }
      }
   }
}
