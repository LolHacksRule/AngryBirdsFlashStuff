package §<i§
{
   import flash.utils.Dictionary;
   
   public class §3!l§
   {
       
      
      private var §+"8§:String = "";
      
      private var mName:String = "";
      
      private var §63§:String = "";
      
      private var §9p§:String = "";
      
      private var §07§:String = "";
      
      private var §&B§:Array = null;
      
      private var §@!H§:int = 0;
      
      private var §2!Z§:Array = null;
      
      private var §7!k§:Array;
      
      private var §<!L§:Array;
      
      private var §<!6§:int = 0;
      
      private var §?l§:Dictionary;
      
      public function §3!l§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§?l§ = new Dictionary();
            do
            {
               super();
            }
            while(!_loc1_);
            
         }
      }
      
      public function §;!§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §-!L§(param1:String) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = null;
         var _loc2_:Array = new Array();
         var _loc3_:* = Number(0);
         while(true)
         {
            §§push(_loc3_);
            if(!_loc5_)
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
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(§§pop() + 1);
                           if(!(_loc5_ && this))
                           {
                              addr71:
                              §§push(Number(§§pop()));
                              while(true)
                              {
                                 _loc3_ = §§pop();
                              }
                              addr71:
                           }
                        }
                        §§goto(addr71);
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
               if(_loc6_ || param1)
               {
                  §§push(§§pop() + "-");
                  if(!(_loc5_ && param1))
                  {
                     §§push(_loc3_);
                     if(!_loc5_)
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
            §§goto(addr71);
         }
         return _loc2_;
      }
      
      public function §@G§(param1:int) : Object
      {
         return this.§7!k§[param1];
      }
      
      public function §^b§(param1:int) : String
      {
         return this.§<!L§[param1];
      }
      
      public function §,e§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§ "?§().indexOf(param1) == -1);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function § "?§() : Array
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(_loc9_)
         {
            if(this.§2!Z§ == null)
            {
               §§goto(addr34);
            }
            §§goto(addr131);
         }
         addr34:
         _loc1_ = new Array();
         for each(_loc2_ in this.pageIndexes)
         {
            _loc3_ = this.§-!L§(_loc2_);
            if(_loc9_ || _loc1_)
            {
               var _loc7_:int = 0;
               if(!(_loc10_ && _loc1_))
               {
                  var _loc8_:* = _loc3_;
                  if(!_loc9_)
                  {
                  }
                  for each(_loc4_ in _loc8_)
                  {
                     if(_loc9_)
                     {
                        _loc1_.push(_loc4_);
                     }
                  }
               }
            }
         }
         if(!(_loc10_ && this))
         {
            this.§2!Z§ = _loc1_;
            if(!_loc9_)
            {
               addr131:
               return this.§2!Z§;
            }
         }
         return _loc1_;
      }
      
      public function §#"<§(param1:String) : int
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
               if(_loc5_ || _loc2_)
               {
                  if(§§pop() >= this.pageIndexes.length)
                  {
                     if(_loc4_)
                     {
                        continue;
                     }
                     if(_loc5_ || this)
                     {
                        if(_loc5_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           §§push(param1);
                           if(_loc5_)
                           {
                              break;
                           }
                           addr98:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              continue loop1;
                           }
                        }
                        if(§§pop().indexOf(_loc3_ + "-") == 0)
                        {
                           if(!_loc4_)
                           {
                              §§goto(addr79);
                           }
                           addr80:
                        }
                        _loc2_++;
                        continue;
                     }
                     §§goto(addr80);
                  }
                  else
                  {
                     §§push(this.pageIndexes[_loc2_]);
                  }
                  §§goto(addr98);
               }
               addr79:
               return _loc2_;
            }
            break;
         }
         return §§pop();
      }
      
      public function §8E§(param1:String) : String
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
               loop1:
               while(true)
               {
                  §§push(0);
                  if(!_loc5_)
                  {
                     break;
                  }
                  _loc4_ = §§pop();
                  if(!(_loc6_ && this))
                  {
                     if(_loc6_)
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
                                 if(!(_loc6_ && this))
                                 {
                                    §§goto(addr76);
                                 }
                                 addr76:
                              }
                              continue;
                              if(!(_loc5_ || param1))
                              {
                                 addr114:
                                 §§push(_loc4_);
                                 break;
                              }
                              return null;
                           }
                           §§push(this.pageIndexes);
                           if(!_loc6_)
                           {
                              §§push(_loc4_);
                              if(!(_loc6_ && param1))
                              {
                                 if(§§pop()[§§pop()] != _loc2_)
                                 {
                                    _loc4_++;
                                    continue;
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr131);
                           }
                           addr130:
                           addr131:
                           §§push(§§pop()[§§pop() + 1] + "-");
                           if(!_loc6_)
                           {
                              §§push(§§pop() + 1);
                           }
                           return §§pop();
                           §§push(_loc4_);
                           §§goto(addr114);
                        }
                        break;
                     }
                     if(§§pop() + 1 < this.pageIndexes.length)
                     {
                        if(_loc5_ || param1)
                        {
                           §§goto(addr130);
                           §§push(this.pageIndexes);
                        }
                        else
                        {
                           §§goto(addr141);
                        }
                     }
                     §§goto(addr81);
                  }
                  else
                  {
                     while(true)
                     {
                        continue loop1;
                     }
                     addr186:
                  }
               }
            }
            §§push(_loc2_ + "-");
            if(!(_loc6_ && this))
            {
               return §§pop() + (_loc3_ + 1);
            }
         }
         §§goto(addr186);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.mName = param1;
         }
      }
      
      public function get menuImage() : String
      {
         return this.§63§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§63§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§@!H§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§@!H§ = param1;
         }
      }
      
      public function get §=Q§() : Array
      {
         return this.§2!Z§;
      }
      
      public function get § "#§() : Array
      {
         return this.§7!k§;
      }
      
      public function set § "#§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7!k§ = param1;
         }
      }
      
      public function get §?"8§() : int
      {
         return this.§<!6§;
      }
      
      public function set §?"8§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               addr83:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop4:
                     while(§§pop())
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           while(true)
                           {
                              this.§<!6§ = param1;
                           }
                           addr64:
                        }
                        while(true)
                        {
                           if(_loc2_)
                           {
                              break loop4;
                           }
                           continue loop0;
                        }
                     }
                     return;
                     addr55:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public function get pageIndexes() : Array
      {
         return this.§&B§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§&B§ = param1;
         }
      }
      
      public function §""?§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§?l§[param1] = param2;
         }
      }
      
      public function §#!F§(param1:String) : String
      {
         return this.§?l§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§<!L§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§<!L§ = param1;
         }
      }
      
      public function get §#! §() : String
      {
         return this.§9p§;
      }
      
      public function set §#! §(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§9p§ = param1;
         }
      }
      
      public function get § "'§() : String
      {
         return this.§07§;
      }
      
      public function set § "'§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§07§ = param1;
         }
      }
      
      public function get writtenName() : String
      {
         return this.§+"8§;
      }
      
      public function set writtenName(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§+"8§ = param1;
         }
      }
   }
}
