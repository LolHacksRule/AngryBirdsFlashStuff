package §]!F§
{
   import flash.utils.Dictionary;
   
   public class §^!O§
   {
       
      
      private var §3`§:String = "";
      
      private var mName:String = "";
      
      private var §^;§:String = "";
      
      private var §+A§:String = "";
      
      private var §#V§:String = "";
      
      private var § H§:Array = null;
      
      private var §>i§:int = 0;
      
      private var §+g§:Array = null;
      
      private var §7U§:Array;
      
      private var §,C§:Array;
      
      private var §[H§:int = 0;
      
      private var §]!R§:Dictionary;
      
      public function §^!O§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§]!R§ = new Dictionary();
            do
            {
               super();
            }
            while(!_loc2_);
            
         }
      }
      
      public function §%!D§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §4!=§(param1:String) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = null;
         var _loc2_:Array = new Array();
         var _loc3_:* = Number(0);
         while(true)
         {
            §§push(_loc3_);
            if(_loc6_ || param1)
            {
               if(_loc6_ || param1)
               {
                  if(§§pop() >= this.levelsPerPage)
                  {
                     if(_loc6_)
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc6_ || _loc3_)
                           {
                              addr75:
                              §§push(§§pop() + 1);
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr76:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                 }
                              }
                              addr75:
                           }
                           §§goto(addr75);
                           addr127:
                           while(true)
                           {
                              _loc2_.push(_loc4_);
                              continue loop1;
                           }
                        }
                     }
                     while(!_loc6_)
                     {
                     }
                     continue;
                  }
                  §§push(param1);
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(§§pop() + "-");
                     if(!(_loc5_ && param1))
                     {
                        §§push(_loc3_);
                        if(!(_loc5_ && this))
                        {
                           §§push(§§pop() + 1);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§push(§§pop());
                  }
                  _loc4_ = §§pop();
                  §§goto(addr127);
               }
               §§goto(addr75);
            }
            §§goto(addr76);
         }
         return _loc2_;
      }
      
      public function §5Z§(param1:int) : Object
      {
         return this.§7U§[param1];
      }
      
      public function §@G§(param1:int) : String
      {
         return this.§,C§[param1];
      }
      
      public function §[g§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§0B§().indexOf(param1) == -1);
         if(_loc3_)
         {
            return !§§pop();
         }
      }
      
      public function §0B§() : Array
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(!_loc9_)
         {
            if(this.§+g§ == null)
            {
               §§goto(addr35);
            }
            §§goto(addr137);
         }
         addr35:
         _loc1_ = new Array();
         for each(_loc2_ in this.pageIndexes)
         {
            _loc3_ = this.§4!=§(_loc2_);
            if(!(_loc10_ || _loc1_))
            {
               continue;
            }
            var _loc7_:int = 0;
            if(!_loc9_)
            {
               var _loc8_:* = _loc3_;
               if(!(_loc9_ && this))
               {
                  for each(_loc4_ in _loc8_)
                  {
                     if(_loc9_)
                     {
                        continue;
                     }
                  }
                  addr103:
                  continue;
                  addr100:
               }
               while(true)
               {
                  _loc1_.push(_loc4_);
                  §§goto(addr100);
               }
            }
            §§goto(addr103);
         }
         if(_loc10_ || this)
         {
            this.§+g§ = _loc1_;
            if(!(_loc10_ || _loc3_))
            {
               addr137:
               return this.§+g§;
            }
         }
         return _loc1_;
      }
      
      public function §7b§(param1:String) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() >= this.pageIndexes.length)
               {
                  if(_loc5_ && this)
                  {
                     continue;
                  }
                  if(!_loc5_)
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     if(!_loc5_)
                     {
                        §§goto(addr54);
                     }
                     loop1:
                     while(true)
                     {
                        §§push(param1);
                        if(_loc4_)
                        {
                           break;
                        }
                        addr92:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           continue loop1;
                        }
                     }
                     if(§§pop().indexOf(_loc3_ + "-") == 0)
                     {
                        break;
                     }
                     addr59:
                     _loc2_++;
                     continue;
                  }
                  §§goto(addr59);
               }
               else
               {
                  §§push(this.pageIndexes[_loc2_]);
               }
               §§goto(addr92);
            }
            addr54:
            §§push(-1);
            if(!_loc5_)
            {
               return §§pop();
            }
            addr73:
            return §§pop();
         }
         §§goto(addr73);
         §§push(_loc2_);
      }
      
      public function §3N§(param1:String) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = 0;
         §§push(param1);
         if(!(_loc6_ && _loc3_))
         {
            §§push(§§pop().substring(0,param1.indexOf("-")));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = parseInt(param1.substring(param1.indexOf("-") + 1));
         if(_loc5_)
         {
            §§push(_loc3_);
            loop0:
            while(§§pop() >= this.levelsPerPage)
            {
               while(true)
               {
                  §§push(0);
                  if(_loc6_ && _loc2_)
                  {
                     break;
                  }
                  _loc4_ = §§pop();
                  if(_loc6_ && _loc3_)
                  {
                     continue;
                  }
                  if(!_loc5_)
                  {
                     break loop0;
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!_loc6_)
                     {
                        if(§§pop() >= this.pageIndexes.length)
                        {
                           if(_loc5_)
                           {
                              if(_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    §§goto(addr111);
                                 }
                              }
                              else
                              {
                                 addr66:
                              }
                              return null;
                           }
                           addr70:
                           if(_loc6_)
                           {
                              addr101:
                              §§push(_loc4_);
                           }
                           continue;
                           break;
                        }
                        §§push(this.pageIndexes);
                        if(_loc5_)
                        {
                           §§push(_loc4_);
                           if(!(_loc6_ && this))
                           {
                              if(§§pop()[§§pop()] != _loc2_)
                              {
                                 _loc4_++;
                                 §§goto(addr70);
                              }
                              §§goto(addr101);
                           }
                        }
                        §§goto(addr111);
                     }
                     break;
                  }
                  if(§§pop() + 1 < this.pageIndexes.length)
                  {
                     addr111:
                     §§push(this.pageIndexes[_loc4_ + 1] + "-");
                     if(!(_loc6_ && _loc2_))
                     {
                        return §§pop() + 1;
                     }
                  }
                  §§goto(addr66);
               }
            }
            §§push(_loc2_ + "-");
            if(_loc5_ || param1)
            {
               return §§pop() + (_loc3_ + 1);
            }
         }
         §§goto(addr146);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mName = param1;
         }
      }
      
      public function get menuImage() : String
      {
         return this.§^;§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§^;§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§>i§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>i§ = param1;
         }
      }
      
      public function get §@g§() : Array
      {
         return this.§+g§;
      }
      
      public function get §8!C§() : Array
      {
         return this.§7U§;
      }
      
      public function set §8!C§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7U§ = param1;
         }
      }
      
      public function get currentPage() : int
      {
         return this.§[H§;
      }
      
      public function set currentPage(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               addr78:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(!(_loc3_ && param1))
                        {
                           if(!_loc3_)
                           {
                              this.§[H§ = param1;
                              addr74:
                              break;
                           }
                           continue loop0;
                        }
                        §§goto(addr74);
                     }
                     return;
                     addr50:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function get pageIndexes() : Array
      {
         return this.§ H§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§ H§ = param1;
         }
      }
      
      public function §6B§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§]!R§[param1] = param2;
         }
      }
      
      public function §9[§(param1:String) : String
      {
         return this.§]!R§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§,C§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,C§ = param1;
         }
      }
      
      public function get §;!'§() : String
      {
         return this.§+A§;
      }
      
      public function set §;!'§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+A§ = param1;
         }
      }
      
      public function get § 2§() : String
      {
         return this.§#V§;
      }
      
      public function set § 2§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#V§ = param1;
         }
      }
      
      public function get writtenName() : String
      {
         return this.§3`§;
      }
      
      public function set writtenName(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§3`§ = param1;
         }
      }
   }
}
