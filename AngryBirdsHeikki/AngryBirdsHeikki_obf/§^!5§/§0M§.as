package §^!5§
{
   import flash.utils.Dictionary;
   
   public class §0M§
   {
       
      
      private var §#!@§:String = "";
      
      private var mName:String = "";
      
      private var §^!M§:String = "";
      
      private var §60§:String = "";
      
      private var § !B§:String = "";
      
      private var §do§:Array = null;
      
      private var § var§:int = 0;
      
      private var §#,§:Array = null;
      
      private var §=M§:Array;
      
      private var §"k§:Array;
      
      private var §2!T§:int = 0;
      
      private var §,%§:Dictionary;
      
      public function §0M§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§,%§ = new Dictionary();
         }
         do
         {
            super();
         }
         while(_loc2_);
         
      }
      
      public function §?M§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §[q§(param1:String) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = null;
         var _loc2_:Array = new Array();
         var _loc3_:* = Number(0);
         while(true)
         {
            §§push(_loc3_);
            if(_loc6_)
            {
               if(_loc6_ || param1)
               {
                  if(§§pop() >= this.levelsPerPage)
                  {
                     if(_loc6_)
                     {
                        break;
                     }
                     loop1:
                     for(; !_loc6_; while(true)
                     {
                        _loc3_ = §§pop();
                        continue loop1;
                     })
                     {
                        while(!_loc6_)
                        {
                        }
                        §§push(_loc3_);
                        if(_loc5_ && _loc3_)
                        {
                           continue;
                        }
                        §§push(§§pop() + 1);
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  §§push(param1);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(§§pop() + "-");
                     if(_loc6_ || this)
                     {
                        §§push(_loc3_);
                        if(!(_loc5_ && param1))
                        {
                           §§push(§§pop() + 1);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§push(§§pop());
                  }
                  _loc4_ = §§pop();
                  while(true)
                  {
                     _loc2_.push(_loc4_);
                     §§goto(addr77);
                  }
               }
               §§goto(addr68);
            }
            §§goto(addr69);
         }
         return _loc2_;
      }
      
      public function §"w§(param1:int) : Object
      {
         return this.§=M§[param1];
      }
      
      public function §^!$§(param1:int) : String
      {
         return this.§"k§[param1];
      }
      
      public function §6!^§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§9$§().indexOf(param1) == -1);
         if(_loc2_ || this)
         {
            return !§§pop();
         }
      }
      
      public function §9$§() : Array
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(!(_loc10_ && _loc2_))
         {
            if(this.§#,§ == null)
            {
               addr39:
               _loc1_ = new Array();
               for each(_loc2_ in this.pageIndexes)
               {
                  _loc3_ = this.§[q§(_loc2_);
                  if(_loc10_)
                  {
                     continue;
                  }
                  var _loc7_:int = 0;
                  if(_loc9_)
                  {
                     var _loc8_:* = _loc3_;
                     if(!_loc10_)
                     {
                        for each(_loc4_ in _loc8_)
                        {
                           if(_loc10_)
                           {
                              continue;
                           }
                        }
                        addr97:
                        continue;
                        addr94:
                     }
                     while(true)
                     {
                        _loc1_.push(_loc4_);
                        §§goto(addr94);
                     }
                  }
                  §§goto(addr97);
               }
               if(_loc9_ || _loc2_)
               {
                  this.§#,§ = _loc1_;
                  if(_loc9_)
                  {
                     return _loc1_;
                  }
               }
            }
            return this.§#,§;
         }
         §§goto(addr39);
      }
      
      public function §3c§(param1:String) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:int = 0;
         do
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() >= this.pageIndexes.length)
               {
                  if(_loc5_ || this)
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        §§goto(addr56);
                     }
                     if(!_loc5_)
                     {
                        loop1:
                        while(true)
                        {
                           §§push(param1);
                           if(_loc5_)
                           {
                              break;
                           }
                           addr108:
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
                     }
                     _loc2_++;
                  }
                  continue;
               }
               §§push(this.pageIndexes[_loc2_]);
               §§goto(addr108);
            }
            addr56:
            §§push(-1);
            if(_loc5_ || _loc3_)
            {
               return §§pop();
            }
            addr87:
            return §§pop();
         }
         while(_loc5_ || _loc2_);
         
         §§goto(addr87);
         §§push(_loc2_);
      }
      
      public function §;!4§(param1:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = 0;
         §§push(param1);
         if(_loc6_ || _loc2_)
         {
            §§push(§§pop().substring(0,param1.indexOf("-")));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = parseInt(param1.substring(param1.indexOf("-") + 1));
         if(!_loc5_)
         {
            §§push(_loc3_);
            while(true)
            {
               if(§§pop() < this.levelsPerPage)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
                  addr162:
                  while(true)
                  {
                  }
               }
               while(true)
               {
                  §§push(0);
                  if(!_loc6_)
                  {
                     break;
                  }
                  _loc4_ = §§pop();
                  if(_loc6_ || param1)
                  {
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc6_)
                        {
                           if(§§pop() >= this.pageIndexes.length)
                           {
                              if(_loc6_)
                              {
                                 if(!_loc6_)
                                 {
                                    addr100:
                                    §§push(_loc4_);
                                    break;
                                 }
                              }
                              else
                              {
                                 addr69:
                                 if(_loc6_ || _loc3_)
                                 {
                                    continue;
                                 }
                                 addr122:
                              }
                              return null;
                           }
                           addr111:
                           §§push(this.pageIndexes);
                           if(_loc6_)
                           {
                              §§push(_loc4_);
                              if(!_loc5_)
                              {
                                 if(§§pop()[§§pop()] == _loc2_)
                                 {
                                    §§goto(addr100);
                                 }
                                 else
                                 {
                                    _loc4_++;
                                    §§goto(addr69);
                                 }
                              }
                              §§goto(addr112);
                           }
                           addr112:
                           §§push(§§pop()[§§pop() + 1] + "-");
                           if(!_loc5_)
                           {
                              §§push(§§pop() + 1);
                           }
                           return §§pop();
                           §§push(_loc4_);
                           §§goto(addr100);
                        }
                        break;
                     }
                     if(§§pop() + 1 < this.pageIndexes.length)
                     {
                        if(_loc6_)
                        {
                           §§goto(addr111);
                           §§push(this.pageIndexes);
                        }
                        else
                        {
                           §§goto(addr122);
                        }
                     }
                     §§goto(addr122);
                  }
               }
            }
            §§push(_loc2_ + "-");
            if(_loc6_)
            {
               return §§pop() + (_loc3_ + 1);
            }
         }
         §§goto(addr162);
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
         return this.§^!M§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§^!M§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§ var§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§ var§ = param1;
         }
      }
      
      public function get §%!I§() : Array
      {
         return this.§#,§;
      }
      
      public function get §1!4§() : Array
      {
         return this.§=M§;
      }
      
      public function set §1!4§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§=M§ = param1;
         }
      }
      
      public function get §2l§() : int
      {
         return this.§2!T§;
      }
      
      public function set §2l§(param1:int) : void
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
               if(!(_loc3_ && this))
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 this.§2!T§ = param1;
                                 addr57:
                                 break;
                              }
                              continue loop0;
                           }
                           §§goto(addr57);
                        }
                        §§push(§§pop() < this.pageIndexes.length);
                        addr27:
                        break;
                        if(!(_loc3_ && this))
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
         §§goto(addr57);
      }
      
      public function get pageIndexes() : Array
      {
         return this.§do§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§do§ = param1;
         }
      }
      
      public function §7W§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§,%§[param1] = param2;
         }
      }
      
      public function §4V§(param1:String) : String
      {
         return this.§,%§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§"k§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§"k§ = param1;
         }
      }
      
      public function get §4!8§() : String
      {
         return this.§60§;
      }
      
      public function set §4!8§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§60§ = param1;
         }
      }
      
      public function get §2N§() : String
      {
         return this.§ !B§;
      }
      
      public function set §2N§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§ !B§ = param1;
         }
      }
      
      public function get writtenName() : String
      {
         return this.§#!@§;
      }
      
      public function set writtenName(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§#!@§ = param1;
         }
      }
   }
}
