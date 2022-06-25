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
         if(!(_loc2_ && _loc1_))
         {
            this.§`!<§ = new Dictionary();
         }
         do
         {
            super();
         }
         while(!(_loc1_ || this));
         
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
               if(!(_loc6_ && this))
               {
                  if(_loc5_)
                  {
                     if(§§pop() >= this.levelsPerPage)
                     {
                        if(_loc5_ || _loc2_)
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              §§push(_loc3_);
                              addr73:
                              while(true)
                              {
                                 §§push(§§pop() + 1);
                                 addr74:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr75:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                    }
                                 }
                              }
                              addr122:
                              while(true)
                              {
                                 _loc2_.push(_loc4_);
                                 continue loop1;
                              }
                           }
                        }
                        while(_loc6_)
                        {
                        }
                        continue;
                     }
                     §§push(param1);
                     if(!(_loc6_ && param1))
                     {
                        §§push(§§pop() + "-");
                        if(_loc5_ || _loc2_)
                        {
                           §§push(_loc3_);
                           if(_loc5_)
                           {
                              §§push(§§pop() + 1);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§push(§§pop());
                     }
                     _loc4_ = §§pop();
                     §§goto(addr122);
                  }
                  §§goto(addr73);
               }
               §§goto(addr74);
            }
            §§goto(addr75);
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§&W§().indexOf(param1) == -1);
         if(!(_loc3_ && _loc2_))
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
            §§goto(addr128);
         }
         addr35:
         _loc1_ = new Array();
         for each(_loc2_ in this.pageIndexes)
         {
            _loc3_ = this.§;Z§(_loc2_);
            if(_loc9_)
            {
               continue;
            }
            var _loc7_:int = 0;
            if(!(_loc9_ && _loc3_))
            {
               var _loc8_:* = _loc3_;
               if(_loc10_ || _loc2_)
               {
                  for each(_loc4_ in _loc8_)
                  {
                     if(_loc9_)
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
         if(!_loc9_)
         {
            this.§`Z§ = _loc1_;
            if(!_loc10_)
            {
               addr128:
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
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         do
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               if(_loc5_ || this)
               {
                  if(§§pop() >= this.pageIndexes.length)
                  {
                     if(_loc4_)
                     {
                        continue;
                     }
                     if(_loc5_ || param1)
                     {
                        if(_loc5_ || this)
                        {
                           addr68:
                           §§push(-1);
                           if(_loc5_ || _loc3_)
                           {
                              if(_loc5_ || _loc2_)
                              {
                                 return §§pop();
                              }
                              addr88:
                              if(_loc4_)
                              {
                                 §§goto(addr126);
                              }
                              §§push(int(§§pop()));
                           }
                           _loc2_ = §§pop();
                           continue;
                        }
                        loop1:
                        while(true)
                        {
                           §§push(param1);
                           if(_loc5_ || this)
                           {
                              break;
                           }
                           addr135:
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
                        addr85:
                        §§push(_loc2_ + 1);
                        §§goto(addr88);
                     }
                     §§goto(addr85);
                  }
                  else
                  {
                     §§push(this.pageIndexes[_loc2_]);
                  }
                  §§goto(addr135);
               }
               §§goto(addr85);
            }
            §§goto(addr68);
         }
         while(!(_loc4_ && _loc3_));
         
         addr126:
         _loc2_;
         return §§pop();
      }
      
      public function §>!1§(param1:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = 0;
         §§push(param1);
         if(!(_loc5_ && this))
         {
            §§push(§§pop().substring(0,param1.indexOf("-")));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = parseInt(param1.substring(param1.indexOf("-") + 1));
         if(!_loc5_)
         {
            §§push(_loc3_);
            loop0:
            for(; §§pop() >= this.levelsPerPage; if(!_loc6_)
            {
               continue;
            },§§goto(addr169),§§push(int(§§pop())))
            {
               while(true)
               {
                  §§push(0);
                  if(_loc6_ || _loc3_)
                  {
                     continue loop0;
                  }
                  addr169:
                  _loc4_ = §§pop();
                  if(_loc5_)
                  {
                     continue;
                  }
                  if(_loc5_)
                  {
                     break loop0;
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                     if(_loc6_)
                     {
                        if(§§pop() < this.pageIndexes.length)
                        {
                           §§push(this.pageIndexes);
                           if(_loc6_ || this)
                           {
                              §§push(_loc4_);
                              if(!(_loc5_ && this))
                              {
                                 if(§§pop()[§§pop()] == _loc2_)
                                 {
                                    §§goto(addr121);
                                 }
                                 else
                                 {
                                    §§push(_loc4_);
                                    if(_loc6_)
                                    {
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() + 1);
                                          if(!_loc6_)
                                          {
                                          }
                                          addr77:
                                          _loc4_ = §§pop();
                                          §§goto(addr78);
                                       }
                                       else
                                       {
                                          §§goto(addr121);
                                       }
                                    }
                                    §§goto(addr77);
                                    §§push(int(§§pop()));
                                 }
                                 §§goto(addr65);
                              }
                              §§goto(addr131);
                           }
                           break;
                        }
                        if(!_loc5_)
                        {
                           if(!_loc6_)
                           {
                              addr121:
                              if(_loc4_ + 1 < this.pageIndexes.length)
                              {
                                 addr128:
                                 §§push(this.pageIndexes);
                                 break;
                              }
                              addr65:
                           }
                           return null;
                        }
                        addr78:
                        if(_loc6_)
                        {
                           if(!(_loc5_ && _loc3_))
                           {
                              continue;
                           }
                           §§goto(addr128);
                        }
                        §§goto(addr65);
                        §§goto(addr121);
                     }
                     §§goto(addr77);
                  }
                  addr131:
                  §§push(§§pop()[§§pop() + 1] + "-");
                  if(_loc6_ || _loc3_)
                  {
                     §§push(§§pop() + 1);
                  }
                  return §§pop();
                  §§push(_loc4_);
               }
            }
            §§push(_loc2_ + "-");
            if(_loc6_ || _loc3_)
            {
               return §§pop() + (_loc3_ + 1);
            }
         }
         §§goto(addr174);
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
         return this.§6f§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
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
         if(_loc3_)
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
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
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               if(_loc3_ || param1)
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc2_ && param1))
                  {
                     §§push(§§pop());
                     if(!(_loc2_ && this))
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        while(true)
                        {
                           addr58:
                           loop2:
                           while(§§pop())
                           {
                              if(_loc3_)
                              {
                                 while(true)
                                 {
                                    this.§3!&§ = param1;
                                 }
                                 addr61:
                              }
                              while(true)
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    break loop2;
                                 }
                                 continue loop0;
                              }
                           }
                           return;
                           addr56:
                        }
                     }
                  }
               }
               addr110:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr61);
      }
      
      public function get pageIndexes() : Array
      {
         return this.§@!P§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§@!P§ = param1;
         }
      }
      
      public function §0!k§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
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
         if(!_loc2_)
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
         if(!_loc2_)
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
