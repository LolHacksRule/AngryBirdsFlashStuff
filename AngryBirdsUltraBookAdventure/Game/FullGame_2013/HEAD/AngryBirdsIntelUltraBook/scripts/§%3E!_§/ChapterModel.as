package §>!_§
{
   import flash.utils.Dictionary;
   
   public class ChapterModel
   {
       
      
      private var §"!g§:String = "";
      
      private var mName:String = "";
      
      private var §'2§:String = "";
      
      private var §1j§:String = "";
      
      private var §5+§:String = "";
      
      private var §#!H§:Array = null;
      
      private var §[T§:int = 0;
      
      private var §;!B§:Array = null;
      
      private var §';§:Array;
      
      private var §4h§:Array;
      
      private var §]Y§:int = 0;
      
      private var §;>§:Dictionary;
      
      public function ChapterModel()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§;>§ = new Dictionary();
         }
         do
         {
            super();
         }
         while(_loc1_);
         
      }
      
      public function §=5§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §2!<§(param1:String) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         var _loc2_:Array = new Array();
         var _loc3_:* = Number(0);
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               if(§§pop() >= this.levelsPerPage)
               {
                  if(!_loc6_)
                  {
                     break;
                  }
                  loop1:
                  while(_loc6_ && param1)
                  {
                     while(true)
                     {
                        _loc3_ = §§pop();
                        continue loop1;
                     }
                  }
                  continue;
               }
               §§push(param1);
               if(_loc5_ || _loc3_)
               {
                  §§push(§§pop() + "-");
                  if(_loc5_)
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
               while(true)
               {
                  _loc2_.push(_loc4_);
               }
               addr117:
               while(_loc6_)
               {
                  §§goto(addr117);
               }
               §§push(_loc3_);
               if(!_loc6_)
               {
                  §§push(§§pop() + 1);
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            §§goto(addr63);
         }
         return _loc2_;
      }
      
      public function §]!>§(param1:int) : Object
      {
         return this.§';§[param1];
      }
      
      public function §-f§(param1:int) : String
      {
         return this.§4h§[param1];
      }
      
      public function §,!B§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§"4§().indexOf(param1) == -1);
         if(!(_loc3_ && this))
         {
            return !§§pop();
         }
      }
      
      public function §"4§() : Array
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(_loc10_)
         {
            if(this.§;!B§ == null)
            {
               §§goto(addr35);
            }
            §§goto(addr133);
         }
         addr35:
         _loc1_ = new Array();
         for each(_loc2_ in this.pageIndexes)
         {
            _loc3_ = this.§2!<§(_loc2_);
            if(_loc10_)
            {
               var _loc7_:int = 0;
               if(!(_loc9_ && _loc3_))
               {
                  var _loc8_:* = _loc3_;
                  if(_loc10_ || this)
                  {
                  }
                  for each(_loc4_ in _loc8_)
                  {
                     if(!(_loc9_ && this))
                     {
                        _loc1_.push(_loc4_);
                     }
                  }
               }
            }
         }
         if(!_loc9_)
         {
            this.§;!B§ = _loc1_;
            if(!_loc10_)
            {
               addr133:
               return this.§;!B§;
            }
         }
         return _loc1_;
      }
      
      public function §1k§(param1:String) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = null;
         §§push(0);
         if(_loc4_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(!_loc5_)
            {
               if(§§pop() >= this.pageIndexes.length)
               {
                  if(_loc5_ && _loc2_)
                  {
                     continue;
                  }
                  if(!_loc5_)
                  {
                     if(!(_loc4_ || _loc3_))
                     {
                        break;
                     }
                     addr65:
                     §§push(-1);
                     if(_loc4_ || _loc3_)
                     {
                        if(!(_loc5_ && this))
                        {
                           if(!(_loc5_ && this))
                           {
                              return §§pop();
                           }
                           addr91:
                           if(!(_loc4_ || _loc3_))
                           {
                              §§goto(addr123);
                           }
                           §§push(§§pop() + 1);
                        }
                        §§push(int(§§pop()));
                     }
                     _loc2_ = §§pop();
                     continue;
                  }
                  if(_loc5_)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(param1);
                        if(_loc4_)
                        {
                           break;
                        }
                        addr134:
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
                  §§push(_loc2_);
                  §§goto(addr91);
               }
               else
               {
                  §§push(this.pageIndexes[_loc2_]);
               }
               §§goto(addr134);
            }
            §§goto(addr65);
         }
         addr123:
         _loc2_;
         return §§pop();
      }
      
      public function §8!I§(param1:String) : String
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
         if(!(_loc6_ && _loc2_))
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               if(§§pop() < this.levelsPerPage)
               {
                  if(_loc5_ || this)
                  {
                     break;
                  }
                  addr208:
                  while(true)
                  {
                  }
               }
               while(true)
               {
                  §§push(0);
                  if(_loc5_)
                  {
                     continue loop0;
                  }
                  addr168:
                  _loc4_ = §§pop();
                  if(_loc5_ || this)
                  {
                     while(true)
                     {
                        §§push(_loc4_);
                        if(!(_loc6_ && _loc3_))
                        {
                           if(_loc5_ || param1)
                           {
                              if(§§pop() >= this.pageIndexes.length)
                              {
                                 if(_loc6_ && this)
                                 {
                                    addr112:
                                    if(!_loc5_)
                                    {
                                       addr155:
                                       break;
                                    }
                                    continue;
                                 }
                                 if(!_loc6_)
                                 {
                                    §§goto(addr76);
                                 }
                                 addr137:
                                 §§push(this.pageIndexes);
                              }
                              else
                              {
                                 §§push(this.pageIndexes);
                                 if(_loc5_)
                                 {
                                    §§push(_loc4_);
                                    if(!_loc6_)
                                    {
                                       if(§§pop()[§§pop()] == _loc2_)
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(_loc4_);
                                          }
                                          else
                                          {
                                             §§goto(addr155);
                                          }
                                       }
                                       else
                                       {
                                          addr85:
                                          §§push(_loc4_ + 1);
                                          if(_loc5_ || _loc2_)
                                          {
                                             addr104:
                                             §§push(int(§§pop()));
                                             if(_loc5_ || _loc3_)
                                             {
                                                _loc4_ = §§pop();
                                                §§goto(addr112);
                                             }
                                          }
                                          §§goto(addr104);
                                       }
                                       if(§§pop() + 1 >= this.pageIndexes.length)
                                       {
                                          break;
                                       }
                                       §§goto(addr137);
                                    }
                                    §§goto(addr140);
                                 }
                              }
                              addr140:
                              §§push(§§pop()[§§pop() + 1] + "-");
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§push(§§pop() + 1);
                              }
                              return §§pop();
                              §§push(_loc4_);
                           }
                           §§goto(addr85);
                        }
                        §§goto(addr104);
                     }
                     addr76:
                     return null;
                  }
               }
            }
            §§push(_loc2_ + "-");
            if(_loc5_)
            {
               return §§pop() + (_loc3_ + 1);
            }
         }
         §§goto(addr208);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.mName = param1;
         }
      }
      
      public function get menuImage() : String
      {
         return this.§'2§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§'2§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§[T§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§[T§ = param1;
         }
      }
      
      public function get levels() : Array
      {
         return this.§;!B§;
      }
      
      public function get §"K§() : Array
      {
         return this.§';§;
      }
      
      public function set §"K§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§';§ = param1;
         }
      }
      
      public function get §0N§() : int
      {
         return this.§]Y§;
      }
      
      public function set §0N§(param1:int) : void
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
               addr103:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  addr104:
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     if(!_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                           addr61:
                           if(_loc3_ && this)
                           {
                              continue;
                           }
                           if(_loc3_ && _loc3_)
                           {
                              continue loop2;
                           }
                           while(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 this.§]Y§ = param1;
                              }
                              if(_loc2_ || param1)
                              {
                                 addr99:
                                 break;
                              }
                              continue loop0;
                           }
                           return;
                           addr85:
                        }
                     }
                     else
                     {
                        §§goto(addr85);
                     }
                  }
               }
            }
         }
         §§goto(addr99);
      }
      
      public function get pageIndexes() : Array
      {
         return this.§#!H§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§#!H§ = param1;
         }
      }
      
      public function §-!f§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§;>§[param1] = param2;
         }
      }
      
      public function §+B§(param1:String) : String
      {
         return this.§;>§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§4h§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§4h§ = param1;
         }
      }
      
      public function get §=g§() : String
      {
         return this.§1j§;
      }
      
      public function set §=g§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§1j§ = param1;
         }
      }
      
      public function get §>3§() : String
      {
         return this.§5+§;
      }
      
      public function set §>3§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§5+§ = param1;
         }
      }
      
      public function get writtenName() : String
      {
         return this.§"!g§;
      }
      
      public function set writtenName(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§"!g§ = param1;
         }
      }
   }
}
