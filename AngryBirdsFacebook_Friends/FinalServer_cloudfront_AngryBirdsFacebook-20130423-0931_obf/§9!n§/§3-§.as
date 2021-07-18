package §9!n§
{
   import flash.utils.Dictionary;
   
   public class §3-§
   {
       
      
      private var §?!"§:String = "";
      
      private var mName:String = "";
      
      private var §[!]§:String = "";
      
      private var §]Q§:String = "";
      
      private var §?!e§:String = "";
      
      private var §9§:Array = null;
      
      private var §]!W§:int = 0;
      
      private var §5"O§:Array = null;
      
      private var §,"O§:Array;
      
      private var §<!&§:Array;
      
      private var §6"B§:int = 0;
      
      private var §+!P§:Dictionary;
      
      public function §3-§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§+!P§ = new Dictionary();
         }
         do
         {
            super();
         }
         while(_loc2_ && _loc1_);
         
      }
      
      public function §,!i§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §3B§(param1:String) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = null;
         var _loc2_:Array = new Array();
         var _loc3_:* = Number(0);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc5_ && _loc3_))
            {
               if(!(_loc5_ && _loc3_))
               {
                  if(§§pop() >= this.levelsPerPage)
                  {
                     if(!_loc5_)
                     {
                        if(!(_loc5_ && this))
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           §§push(_loc3_);
                           addr72:
                           while(true)
                           {
                              §§push(§§pop() + 1);
                              if(_loc6_ || param1)
                              {
                                 addr91:
                                 §§push(Number(§§pop()));
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                 }
                                 addr91:
                              }
                              §§goto(addr91);
                           }
                           addr117:
                           while(true)
                           {
                              _loc2_.push(_loc4_);
                              continue loop1;
                           }
                        }
                     }
                     while(_loc5_)
                     {
                     }
                     continue;
                  }
                  §§push(param1);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + "-");
                     if(_loc6_)
                     {
                        §§push(_loc3_);
                        if(_loc6_)
                        {
                           §§push(§§pop() + 1);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§push(§§pop());
                  }
                  _loc4_ = §§pop();
                  §§goto(addr117);
               }
               §§goto(addr72);
            }
            §§goto(addr91);
         }
         return _loc2_;
      }
      
      public function §-D§(param1:int) : Object
      {
         return this.§,"O§[param1];
      }
      
      public function §2T§(param1:int) : String
      {
         return this.§<!&§[param1];
      }
      
      public function §6_§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§-"K§().indexOf(param1) == -1);
         if(!_loc3_)
         {
            return !§§pop();
         }
      }
      
      public function §-"K§() : Array
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(!(_loc10_ && _loc2_))
         {
            if(this.§5"O§ == null)
            {
               addr39:
               _loc1_ = new Array();
               for each(_loc2_ in this.pageIndexes)
               {
                  _loc3_ = this.§3B§(_loc2_);
                  if(!(_loc9_ || this))
                  {
                     continue;
                  }
                  var _loc7_:int = 0;
                  if(_loc9_ || _loc2_)
                  {
                     var _loc8_:* = _loc3_;
                     if(_loc9_ || _loc3_)
                     {
                        for each(_loc4_ in _loc8_)
                        {
                           if(!(_loc9_ || _loc2_))
                           {
                              continue;
                           }
                        }
                        addr127:
                        continue;
                        addr124:
                     }
                     while(true)
                     {
                        _loc1_.push(_loc4_);
                        §§goto(addr124);
                     }
                  }
                  §§goto(addr127);
               }
               if(_loc9_)
               {
                  this.§5"O§ = _loc1_;
                  if(_loc9_)
                  {
                     return _loc1_;
                  }
               }
            }
            return this.§5"O§;
         }
         §§goto(addr39);
      }
      
      public function §!!N§(param1:String) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_ || _loc3_)
            {
               if(_loc5_ || this)
               {
                  if(§§pop() >= this.pageIndexes.length)
                  {
                     if(!_loc5_)
                     {
                        continue;
                     }
                     if(!(_loc4_ && this))
                     {
                        break;
                     }
                     addr66:
                     _loc2_++;
                     continue;
                     addr100:
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
                           if(!(_loc4_ && _loc3_))
                           {
                              if(§§pop().indexOf(_loc3_ + "-") == 0)
                              {
                                 if(_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       §§goto(addr99);
                                    }
                                    continue;
                                 }
                                 §§goto(addr100);
                              }
                              break;
                           }
                           continue loop1;
                        }
                        §§goto(addr66);
                     }
                  }
               }
               addr99:
               return _loc2_;
            }
            break;
         }
         return §§pop();
      }
      
      public function §8t§(param1:String) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = 0;
         §§push(param1);
         if(_loc5_)
         {
            §§push(§§pop().substring(0,param1.indexOf("-")));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = parseInt(param1.substring(param1.indexOf("-") + 1));
         if(_loc5_ || param1)
         {
            §§push(_loc3_);
            loop0:
            while(§§pop() >= this.levelsPerPage)
            {
               while(true)
               {
                  §§push(0);
                  if(_loc6_)
                  {
                     break;
                  }
                  _loc4_ = §§pop();
                  if(_loc6_)
                  {
                     continue;
                  }
                  if(_loc6_)
                  {
                     break loop0;
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!(_loc6_ && this))
                     {
                        if(§§pop() >= this.pageIndexes.length)
                        {
                           if(_loc5_ || _loc2_)
                           {
                              if(!(_loc5_ || param1))
                              {
                                 addr151:
                              }
                              return null;
                           }
                           continue;
                        }
                        §§push(this.pageIndexes);
                        if(!_loc6_)
                        {
                           §§push(_loc4_);
                           if(!(_loc6_ && _loc3_))
                           {
                              if(§§pop()[§§pop()] != _loc2_)
                              {
                                 _loc4_++;
                                 continue;
                              }
                              addr125:
                              if(!_loc6_)
                              {
                                 §§push(_loc4_);
                                 break;
                              }
                              §§push(this.pageIndexes);
                              §§push(_loc4_);
                           }
                           §§push(§§pop()[§§pop() + 1] + "-");
                           if(_loc5_ || this)
                           {
                              return §§pop() + 1;
                           }
                        }
                        §§goto(addr125);
                     }
                     break;
                  }
                  if(§§pop() + 1 < this.pageIndexes.length)
                  {
                     if(!_loc6_)
                     {
                        §§goto(addr125);
                     }
                     else
                     {
                        §§goto(addr151);
                     }
                  }
                  §§goto(addr151);
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mName = param1;
         }
      }
      
      public function get menuImage() : String
      {
         return this.§[!]§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§[!]§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§]!W§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§]!W§ = param1;
         }
      }
      
      public function get levels() : Array
      {
         return this.§5"O§;
      }
      
      public function get §%"2§() : Array
      {
         return this.§,"O§;
      }
      
      public function set §%"2§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§,"O§ = param1;
         }
      }
      
      public function get §4t§() : int
      {
         return this.§6"B§;
      }
      
      public function set §4t§(param1:int) : void
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
               if(_loc2_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || param1)
                           {
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                              this.§6"B§ = param1;
                           }
                           break;
                        }
                        §§push(§§pop() < this.pageIndexes.length);
                        addr27:
                        break;
                        if(_loc2_)
                        {
                           continue;
                        }
                        addr80:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr80:
                     }
                     return;
                  }
               }
               §§goto(addr80);
            }
         }
         §§goto(addr64);
      }
      
      public function get pageIndexes() : Array
      {
         return this.§9§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§9§ = param1;
         }
      }
      
      public function §=""§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            this.§+!P§[param1] = param2;
         }
      }
      
      public function §"!X§(param1:String) : String
      {
         return this.§+!P§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§<!&§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§<!&§ = param1;
         }
      }
      
      public function get §#">§() : String
      {
         return this.§]Q§;
      }
      
      public function set §#">§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§]Q§ = param1;
         }
      }
      
      public function get §2A§() : String
      {
         return this.§?!e§;
      }
      
      public function set §2A§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§?!e§ = param1;
         }
      }
      
      public function get writtenName() : String
      {
         return this.§?!"§;
      }
      
      public function set writtenName(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§?!"§ = param1;
         }
      }
   }
}
