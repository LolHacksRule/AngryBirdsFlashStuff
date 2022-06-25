package §"L§
{
   import flash.utils.Dictionary;
   
   public class ChapterModel
   {
       
      
      private var §[!L§:String = "";
      
      private var mName:String = "";
      
      private var §6f§:String = "";
      
      private var §-W§:String = "";
      
      private var §super§:String = "";
      
      private var §@!P§:Array = null;
      
      private var §"!1§:int = 0;
      
      private var §`Z§:Array = null;
      
      private var §7W§:Array;
      
      private var §!!"§:Array;
      
      private var §3!&§:int = 0;
      
      private var §`!<§:Dictionary;
      
      public function ChapterModel()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§`!<§ = new Dictionary();
         }
         do
         {
            super();
         }
         while(!_loc1_);
         
      }
      
      public function §+u§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §;Z§(param1:String) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         var _loc2_:Array = new Array();
         var _loc3_:* = Number(0);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc6_ && param1))
            {
               if(!(_loc6_ && param1))
               {
                  if(§§pop() >= this.levelsPerPage)
                  {
                     if(!(_loc6_ && _loc3_))
                     {
                        if(!_loc6_)
                        {
                           break;
                        }
                        _loc2_.push(_loc4_);
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!(_loc6_ && _loc3_))
                           {
                              addr79:
                              §§push(§§pop() + 1);
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr80:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                 }
                              }
                              addr79:
                           }
                           §§goto(addr79);
                        }
                        addr89:
                        addr132:
                     }
                     while(!_loc5_)
                     {
                        §§goto(addr89);
                        §§goto(addr80);
                     }
                     continue;
                  }
                  §§push(param1);
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(§§pop() + "-");
                     if(!(_loc6_ && this))
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
                  §§goto(addr132);
               }
               §§goto(addr79);
            }
            §§goto(addr80);
         }
         return _loc2_;
      }
      
      public function §?b§(param1:int) : Object
      {
         return this.§7W§[param1];
      }
      
      public function §5J§(param1:int) : String
      {
         return this.§!!"§[param1];
      }
      
      public function §=$§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§&W§().indexOf(param1) == -1);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function §&W§() : Array
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(!_loc9_)
         {
            if(this.§`Z§ == null)
            {
               §§goto(addr35);
            }
            §§goto(addr133);
         }
         addr35:
         _loc1_ = new Array();
         for each(_loc2_ in this.pageIndexes)
         {
            _loc3_ = this.§;Z§(_loc2_);
            if(!_loc10_)
            {
               continue;
            }
            var _loc7_:int = 0;
            if(_loc10_)
            {
               var _loc8_:* = _loc3_;
               if(!(_loc9_ && _loc1_))
               {
                  for each(_loc4_ in _loc8_)
                  {
                     if(_loc9_ && this)
                     {
                        continue;
                     }
                  }
                  addr114:
                  continue;
                  addr111:
               }
               while(true)
               {
                  _loc1_.push(_loc4_);
                  §§goto(addr111);
               }
            }
            §§goto(addr114);
         }
         if(_loc10_ || _loc1_)
         {
            this.§`Z§ = _loc1_;
            if(_loc9_)
            {
               addr133:
               return this.§`Z§;
            }
         }
         return _loc1_;
      }
      
      public function §-u§(param1:String) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = null;
         §§push(0);
         if(!(_loc4_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_ || this)
            {
               if(§§pop() >= this.pageIndexes.length)
               {
                  if(!(_loc4_ && param1))
                  {
                     addr62:
                     §§push(-1);
                     if(_loc5_ || _loc2_)
                     {
                        if(!_loc4_)
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(§§pop() + 1);
                           }
                           addr78:
                        }
                        while(true)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     while(true)
                     {
                        if(_loc5_)
                        {
                           addr82:
                           _loc2_ = §§pop();
                           while(true)
                           {
                              if(_loc5_ || _loc2_)
                              {
                                 if(_loc5_ || param1)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    loop2:
                                    while(true)
                                    {
                                       §§push(param1);
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       addr130:
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
                                    addr76:
                                    §§goto(addr78);
                                    §§push(_loc2_);
                                 }
                                 break;
                              }
                              §§goto(addr76);
                              §§goto(addr82);
                           }
                           §§push(_loc2_);
                           addr83:
                        }
                        return §§pop();
                     }
                  }
                  §§goto(addr83);
               }
               else
               {
                  §§push(this.pageIndexes[_loc2_]);
               }
               §§goto(addr130);
            }
            §§goto(addr62);
         }
         return §§pop();
      }
      
      public function §>!1§(param1:String) : String
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
            loop0:
            while(true)
            {
               if(§§pop() >= this.levelsPerPage)
               {
                  continue;
               }
               if(!_loc6_)
               {
                  break;
               }
               addr193:
               while(true)
               {
                  continue loop0;
               }
            }
            §§push(_loc2_ + "-");
            if(!(_loc6_ && param1))
            {
               return §§pop() + (_loc3_ + 1);
            }
         }
         while(true)
         {
            §§push(_loc4_);
            if(_loc5_)
            {
               if(!(_loc6_ && this))
               {
                  if(_loc5_ || _loc2_)
                  {
                     if(§§pop() >= this.pageIndexes.length)
                     {
                        if(!_loc6_)
                        {
                           if(!(_loc6_ && _loc3_))
                           {
                              if(_loc6_ && _loc2_)
                              {
                                 §§goto(addr135);
                              }
                           }
                           else
                           {
                              addr95:
                           }
                           return null;
                        }
                        addr104:
                        if(_loc6_ && this)
                        {
                           addr125:
                           §§push(_loc4_);
                        }
                        continue;
                        break;
                     }
                     §§push(this.pageIndexes);
                     if(_loc5_)
                     {
                        §§push(_loc4_);
                        if(_loc5_)
                        {
                           if(§§pop()[§§pop()] != _loc2_)
                           {
                              addr99:
                              §§push(int(_loc4_ + 1));
                              if(_loc5_)
                              {
                                 _loc4_ = §§pop();
                                 §§goto(addr104);
                              }
                              break;
                           }
                           §§goto(addr125);
                        }
                     }
                     §§goto(addr135);
                  }
               }
            }
            §§goto(addr99);
         }
         if(§§pop() + 1 < this.pageIndexes.length)
         {
            addr135:
            §§push(this.pageIndexes[_loc4_ + 1] + "-");
            if(!_loc6_)
            {
               return §§pop() + 1;
            }
         }
         §§goto(addr95);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.mName = param1;
         }
      }
      
      public function get menuImage() : String
      {
         return this.§6f§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§6f§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§"!1§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§"!1§ = param1;
         }
      }
      
      public function get levels() : Array
      {
         return this.§`Z§;
      }
      
      public function get §@@§() : Array
      {
         return this.§7W§;
      }
      
      public function set §@@§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§7W§ = param1;
         }
      }
      
      public function get § !_§() : int
      {
         return this.§3!&§;
      }
      
      public function set § !_§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               if(_loc3_)
               {
                  §§push(Boolean(§§pop()));
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc3_ || _loc2_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        while(true)
                        {
                           addr65:
                           while(§§pop())
                           {
                              if(_loc3_)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    this.§3!&§ = param1;
                                    addr88:
                                    break;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr88);
                           }
                           return;
                           addr61:
                           if(!_loc3_)
                           {
                              break;
                           }
                           §§push(Boolean(§§pop()));
                        }
                        continue;
                     }
                  }
               }
               addr105:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr88);
      }
      
      public function get pageIndexes() : Array
      {
         return this.§@!P§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§@!P§ = param1;
         }
      }
      
      public function §0!k§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§`!<§[param1] = param2;
         }
      }
      
      public function §9!Z§(param1:String) : String
      {
         return this.§`!<§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§!!"§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§!!"§ = param1;
         }
      }
      
      public function get §set §() : String
      {
         return this.§-W§;
      }
      
      public function set §set §(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§-W§ = param1;
         }
      }
      
      public function get §8!^§() : String
      {
         return this.§super§;
      }
      
      public function set §8!^§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§super§ = param1;
         }
      }
      
      public function get writtenName() : String
      {
         return this.§[!L§;
      }
      
      public function set writtenName(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§[!L§ = param1;
         }
      }
   }
}
