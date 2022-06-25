package §3!G§
{
   import flash.utils.Dictionary;
   
   public class §<!#§
   {
       
      
      private var §,!=§:String = "";
      
      private var mName:String = "";
      
      private var §?M§:String = "";
      
      private var §4!d§:String = "";
      
      private var §@u§:String = "";
      
      private var §"!U§:Array = null;
      
      private var §-!2§:int = 0;
      
      private var §;5§:Array = null;
      
      private var §?!N§:Array;
      
      private var §^!f§:Array;
      
      private var §2!D§:int = 0;
      
      private var §,q§:Dictionary;
      
      public function §<!#§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§,q§ = new Dictionary();
         }
         do
         {
            super();
         }
         while(_loc1_);
         
      }
      
      public function §&!R§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §^!j§(param1:String) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         var _loc2_:Array = new Array();
         var _loc3_:* = Number(0);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc6_ && _loc2_))
            {
               if(§§pop() >= this.levelsPerPage)
               {
                  if(_loc5_ || param1)
                  {
                     break;
                  }
                  loop1:
                  for(; !(_loc5_ || _loc2_); while(true)
                  {
                     _loc3_ = §§pop();
                     continue loop1;
                  })
                  {
                     loop2:
                     while(_loc6_ && param1)
                     {
                        while(true)
                        {
                           _loc2_.push(_loc4_);
                           continue loop2;
                        }
                     }
                     §§push(_loc3_);
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(§§pop() + 1);
                        if(!(_loc5_ || _loc3_))
                        {
                           continue;
                        }
                     }
                     §§push(Number(§§pop()));
                  }
                  continue;
               }
               §§push(param1);
               if(_loc5_ || param1)
               {
                  §§push(§§pop() + "-");
                  if(_loc5_ || this)
                  {
                     §§push(_loc3_);
                     if(_loc5_ || _loc3_)
                     {
                        §§push(§§pop() + 1);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop());
               }
               _loc4_ = §§pop();
               §§goto(addr141);
            }
            §§goto(addr78);
         }
         return _loc2_;
      }
      
      public function §^J§(param1:int) : Object
      {
         return this.§?!N§[param1];
      }
      
      public function §+>§(param1:int) : String
      {
         return this.§^!f§[param1];
      }
      
      public function §,H§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§9f§().indexOf(param1) == -1);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function §9f§() : Array
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(!(_loc9_ && _loc3_))
         {
            if(this.§;5§ == null)
            {
               addr40:
               _loc1_ = new Array();
               for each(_loc2_ in this.pageIndexes)
               {
                  _loc3_ = this.§^!j§(_loc2_);
                  if(_loc9_ && this)
                  {
                     continue;
                  }
                  var _loc7_:int = 0;
                  if(_loc10_ || this)
                  {
                     var _loc8_:* = _loc3_;
                     if(!_loc9_)
                     {
                        for each(_loc4_ in _loc8_)
                        {
                           if(_loc9_ && _loc1_)
                           {
                              continue;
                           }
                        }
                        addr123:
                        continue;
                        addr120:
                     }
                     while(true)
                     {
                        _loc1_.push(_loc4_);
                        §§goto(addr120);
                     }
                  }
                  §§goto(addr123);
               }
               if(!_loc9_)
               {
                  this.§;5§ = _loc1_;
                  if(_loc10_ || this)
                  {
                     return _loc1_;
                  }
               }
            }
            return this.§;5§;
         }
         §§goto(addr40);
      }
      
      public function §"!>§(param1:String) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(_loc5_ || param1)
               {
                  if(§§pop() >= this.pageIndexes.length)
                  {
                     if(_loc5_ || _loc2_)
                     {
                        break;
                     }
                     while(_loc4_)
                     {
                        while(_loc4_)
                        {
                           do
                           {
                              §§push(param1);
                           }
                           while(_loc4_ && param1);
                           
                           if(§§pop().indexOf(_loc3_ + "-") != 0)
                           {
                              break;
                           }
                           if(!(_loc4_ && this))
                           {
                              §§goto(addr97);
                           }
                        }
                        _loc2_++;
                     }
                     continue;
                  }
                  §§push(this.pageIndexes[_loc2_]);
                  while(true)
                  {
                     _loc3_ = §§pop();
                     §§goto(addr109);
                  }
               }
               addr97:
               return _loc2_;
            }
            break;
         }
         return §§pop();
      }
      
      public function §7!X§(param1:String) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = 0;
         §§push(param1);
         if(!_loc6_)
         {
            §§push(§§pop().substring(0,param1.indexOf("-")));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = parseInt(param1.substring(param1.indexOf("-") + 1));
         if(_loc5_)
         {
            §§push(_loc3_);
            while(true)
            {
               if(§§pop() < this.levelsPerPage)
               {
                  if(_loc5_)
                  {
                     break;
                  }
                  while(true)
                  {
                  }
                  addr171:
               }
               while(true)
               {
                  §§push(0);
                  if(!_loc5_)
                  {
                     break;
                  }
                  _loc4_ = §§pop();
                  if(!_loc6_)
                  {
                     addr42:
                     §§push(_loc4_);
                     if(!_loc6_)
                     {
                        if(§§pop() >= this.pageIndexes.length)
                        {
                           if(_loc6_ && _loc3_)
                           {
                              §§goto(addr83);
                           }
                           if(!(_loc5_ || _loc3_))
                           {
                              addr69:
                           }
                           return null;
                        }
                        §§push(this.pageIndexes);
                        if(!_loc6_)
                        {
                           §§push(_loc4_);
                           if(!_loc6_)
                           {
                              if(§§pop()[§§pop()] != _loc2_)
                              {
                                 _loc4_++;
                                 §§goto(addr83);
                              }
                              if(!(_loc6_ && this))
                              {
                                 addr107:
                                 if(_loc4_ + 1 >= this.pageIndexes.length)
                                 {
                                    §§goto(addr69);
                                 }
                              }
                           }
                           §§goto(addr83);
                        }
                        addr83:
                        if(!_loc6_)
                        {
                           §§goto(addr42);
                        }
                        §§push(this.pageIndexes[_loc4_ + 1] + "-");
                        if(_loc5_ || this)
                        {
                           return §§pop() + 1;
                        }
                     }
                     §§goto(addr107);
                  }
                  else
                  {
                     §§goto(addr171);
                  }
               }
            }
         }
         §§push(_loc2_ + "-");
         if(_loc5_ || _loc3_)
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
         if(_loc2_ || _loc2_)
         {
            this.mName = param1;
         }
      }
      
      public function get menuImage() : String
      {
         return this.§?M§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§?M§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§-!2§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§-!2§ = param1;
         }
      }
      
      public function get §!!C§() : Array
      {
         return this.§;5§;
      }
      
      public function get §=m§() : Array
      {
         return this.§?!N§;
      }
      
      public function set §=m§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§?!N§ = param1;
         }
      }
      
      public function get § each§() : int
      {
         return this.§2!D§;
      }
      
      public function set § each§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || _loc3_)
                           {
                              if(_loc2_ || this)
                              {
                                 this.§2!D§ = param1;
                                 addr87:
                                 break;
                              }
                              continue loop0;
                           }
                           §§goto(addr87);
                        }
                        §§push(§§pop() < this.pageIndexes.length);
                        addr47:
                        break;
                        if(_loc2_ || param1)
                        {
                           continue;
                        }
                        addr95:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr95:
                     }
                     return;
                  }
               }
               §§goto(addr95);
            }
         }
         §§goto(addr87);
      }
      
      public function get pageIndexes() : Array
      {
         return this.§"!U§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§"!U§ = param1;
         }
      }
      
      public function §]!0§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§,q§[param1] = param2;
         }
      }
      
      public function §`!q§(param1:String) : String
      {
         return this.§,q§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§^!f§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§^!f§ = param1;
         }
      }
      
      public function get §3#§() : String
      {
         return this.§4!d§;
      }
      
      public function set §3#§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§4!d§ = param1;
         }
      }
      
      public function get §4x§() : String
      {
         return this.§@u§;
      }
      
      public function set §4x§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§@u§ = param1;
         }
      }
      
      public function get writtenName() : String
      {
         return this.§,!=§;
      }
      
      public function set writtenName(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§,!=§ = param1;
         }
      }
   }
}
