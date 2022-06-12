package §#!e§
{
   import flash.utils.Dictionary;
   
   public class §>x§
   {
       
      
      private var §+,§:String = "";
      
      private var mName:String = "";
      
      private var §>@§:String = "";
      
      private var §1Q§:String = "";
      
      private var §2!a§:String = "";
      
      private var §7"$§:Array = null;
      
      private var §7H§:int = 0;
      
      private var §=!J§:Array = null;
      
      private var §^!l§:Array;
      
      private var §@H§:Array;
      
      private var §`&§:int = 0;
      
      private var §7z§:Dictionary;
      
      public function §>x§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§7z§ = new Dictionary();
            do
            {
               super();
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function §@>§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §<6§(param1:String) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         var _loc2_:Array = new Array();
         var _loc3_:Number = 0;
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_ || _loc3_)
            {
               if(_loc5_ || _loc2_)
               {
                  if(§§pop() >= this.levelsPerPage)
                  {
                     if(!_loc6_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(!(_loc6_ && param1))
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                           addr126:
                           while(true)
                           {
                              _loc2_.push(_loc4_);
                           }
                        }
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!(_loc5_ || _loc3_))
                           {
                              continue loop1;
                           }
                           §§push(§§pop() + 1);
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              continue loop1;
                           }
                        }
                     }
                     continue;
                  }
                  §§push(param1);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(§§pop() + "-");
                     if(!_loc6_)
                     {
                        §§push(_loc3_);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(§§pop() + 1);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§push(§§pop());
                  }
                  _loc4_ = §§pop();
                  §§goto(addr126);
               }
               §§goto(addr72);
            }
            §§goto(addr73);
         }
         return _loc2_;
      }
      
      public function §^" §(param1:int) : Object
      {
         return this.§^!l§[param1];
      }
      
      public function §?T§(param1:int) : String
      {
         return this.§@H§[param1];
      }
      
      public function §2"C§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§&<§().indexOf(param1) == -1);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function §&<§() : Array
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(_loc9_ || _loc3_)
         {
            if(this.§=!J§ == null)
            {
               §§goto(addr39);
            }
            §§goto(addr141);
         }
         addr39:
         _loc1_ = new Array();
         for each(_loc2_ in this.pageIndexes)
         {
            _loc3_ = this.§<6§(_loc2_);
            if(!_loc9_)
            {
               continue;
            }
            var _loc7_:int = 0;
            if(_loc9_ || _loc3_)
            {
               var _loc8_:* = _loc3_;
               if(!(_loc10_ && _loc1_))
               {
                  for each(_loc4_ in _loc8_)
                  {
                     if(!(_loc9_ || _loc3_))
                     {
                        continue;
                     }
                  }
                  addr122:
                  continue;
                  addr119:
               }
               while(true)
               {
                  _loc1_.push(_loc4_);
                  §§goto(addr119);
               }
            }
            §§goto(addr122);
         }
         if(_loc9_ || this)
         {
            this.§=!J§ = _loc1_;
            if(_loc10_)
            {
               addr141:
               return this.§=!J§;
            }
         }
         return _loc1_;
      }
      
      public function §3"0§(param1:String) : int
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
               if(!_loc4_)
               {
                  if(§§pop() >= this.pageIndexes.length)
                  {
                     if(!(_loc4_ && param1))
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        while(_loc4_ && _loc2_)
                        {
                           loop2:
                           while(true)
                           {
                              §§push(param1);
                              if(_loc5_ || _loc2_)
                              {
                                 break;
                              }
                              addr103:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 continue loop2;
                              }
                           }
                           if(§§pop().indexOf(_loc3_ + "-") != 0)
                           {
                              break;
                           }
                           if(!_loc4_)
                           {
                              §§goto(addr87);
                           }
                        }
                        _loc2_++;
                     }
                     continue;
                  }
                  §§push(this.pageIndexes[_loc2_]);
                  §§goto(addr103);
               }
               addr87:
               return _loc2_;
            }
            break;
         }
         return §§pop();
      }
      
      public function §6!M§(param1:String) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = 0;
         §§push(param1);
         if(!(_loc6_ && this))
         {
            §§push(§§pop().substring(0,param1.indexOf("-")));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = parseInt(param1.substring(param1.indexOf("-") + 1));
         if(!_loc6_)
         {
            §§push(_loc3_);
            loop0:
            while(§§pop() >= this.levelsPerPage)
            {
               loop1:
               while(true)
               {
                  §§push(0);
                  if(_loc6_ && this)
                  {
                     break;
                  }
                  _loc4_ = §§pop();
                  if(_loc5_ || param1)
                  {
                     if(!(_loc5_ || _loc2_))
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
                              if(!(_loc6_ && param1))
                              {
                                 if(!_loc5_)
                                 {
                                    §§goto(addr111);
                                 }
                              }
                              else
                              {
                                 addr73:
                                 if(!_loc6_)
                                 {
                                    if(_loc6_)
                                    {
                                       addr101:
                                       §§push(_loc4_);
                                    }
                                    continue;
                                    break;
                                 }
                                 addr69:
                              }
                              return null;
                           }
                           §§push(this.pageIndexes);
                           if(_loc5_)
                           {
                              §§push(_loc4_);
                              if(_loc5_)
                              {
                                 if(§§pop()[§§pop()] != _loc2_)
                                 {
                                    _loc4_++;
                                    §§goto(addr73);
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
                        if(!_loc6_)
                        {
                           return §§pop() + 1;
                        }
                     }
                     §§goto(addr69);
                  }
                  else
                  {
                     while(true)
                     {
                        continue loop1;
                     }
                     addr176:
                  }
               }
            }
            §§push(_loc2_ + "-");
            if(!(_loc6_ && _loc3_))
            {
               return §§pop() + (_loc3_ + 1);
            }
         }
         §§goto(addr176);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.mName = param1;
         }
      }
      
      public function get menuImage() : String
      {
         return this.§>@§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>@§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§7H§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§7H§ = param1;
         }
      }
      
      public function get levels() : Array
      {
         return this.§=!J§;
      }
      
      public function get §7f§() : Array
      {
         return this.§^!l§;
      }
      
      public function set §7f§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§^!l§ = param1;
         }
      }
      
      public function get §9!f§() : int
      {
         return this.§`&§;
      }
      
      public function set §9!f§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc3_ || _loc3_)
                           {
                              while(true)
                              {
                                 this.§`&§ = param1;
                              }
                              addr68:
                           }
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 break loop1;
                              }
                              continue loop0;
                           }
                        }
                        §§push(§§pop() < this.pageIndexes.length);
                        addr38:
                        break;
                        if(_loc3_ || param1)
                        {
                           continue;
                        }
                        addr81:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr81:
                     }
                     return;
                  }
               }
               §§goto(addr81);
            }
         }
         §§goto(addr68);
      }
      
      public function get pageIndexes() : Array
      {
         return this.§7"$§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7"$§ = param1;
         }
      }
      
      public function §9!j§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§7z§[param1] = param2;
         }
      }
      
      public function §<!5§(param1:String) : String
      {
         return this.§7z§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§@H§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@H§ = param1;
         }
      }
      
      public function get §return§() : String
      {
         return this.§1Q§;
      }
      
      public function set §return§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§1Q§ = param1;
         }
      }
      
      public function get §!!u§() : String
      {
         return this.§2!a§;
      }
      
      public function set §!!u§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§2!a§ = param1;
         }
      }
      
      public function get writtenName() : String
      {
         return this.§+,§;
      }
      
      public function set writtenName(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§+,§ = param1;
         }
      }
   }
}
