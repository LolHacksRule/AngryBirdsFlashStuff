package §#!X§
{
   import flash.utils.Dictionary;
   
   public class ChapterModel
   {
       
      
      private var §=?§:String = "";
      
      private var mName:String = "";
      
      private var §?!J§:String = "";
      
      private var §+!E§:String = "";
      
      private var §@j§:String = "";
      
      private var §!;§:Array = null;
      
      private var §+k§:int = 0;
      
      private var §66§:Array = null;
      
      private var §4!@§:Array;
      
      private var §04§:Array;
      
      private var §?f§:int = 0;
      
      private var §;!R§:Dictionary;
      
      public function ChapterModel()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§;!R§ = new Dictionary();
            do
            {
               super();
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function §#!%§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §]l§(param1:String) : Array
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
               if(_loc6_)
               {
                  if(§§pop() >= this.levelsPerPage)
                  {
                     if(_loc6_ || _loc2_)
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                        _loc2_.push(_loc4_);
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!_loc5_)
                           {
                              addr65:
                              §§push(§§pop() + 1);
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr66:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                 }
                              }
                              addr65:
                           }
                           §§goto(addr65);
                        }
                        addr75:
                        addr118:
                     }
                     while(_loc5_)
                     {
                        §§goto(addr75);
                        §§goto(addr66);
                     }
                     continue;
                  }
                  §§push(param1);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(§§pop() + "-");
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(_loc3_);
                        if(_loc6_ || _loc2_)
                        {
                           §§push(§§pop() + 1);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§push(§§pop());
                  }
                  _loc4_ = §§pop();
                  §§goto(addr118);
               }
               §§goto(addr65);
            }
            §§goto(addr66);
         }
         return _loc2_;
      }
      
      public function §>!O§(param1:int) : Object
      {
         return this.§4!@§[param1];
      }
      
      public function §4[§(param1:int) : String
      {
         return this.§04§[param1];
      }
      
      public function §15§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§-Y§().indexOf(param1) == -1);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function §-Y§() : Array
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(!_loc9_)
         {
            if(this.§66§ == null)
            {
               §§goto(addr35);
            }
            §§goto(addr123);
         }
         addr35:
         _loc1_ = new Array();
         for each(_loc2_ in this.pageIndexes)
         {
            _loc3_ = this.§]l§(_loc2_);
            if(_loc10_)
            {
               var _loc7_:int = 0;
               if(_loc10_ || this)
               {
                  var _loc8_:* = _loc3_;
                  if(_loc9_)
                  {
                  }
                  for each(_loc4_ in _loc8_)
                  {
                     if(_loc10_)
                     {
                        _loc1_.push(_loc4_);
                     }
                  }
               }
            }
         }
         if(!_loc9_)
         {
            this.§66§ = _loc1_;
            if(_loc9_)
            {
               addr123:
               return this.§66§;
            }
         }
         return _loc1_;
      }
      
      public function § !,§(param1:String) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = null;
         §§push(0);
         if(_loc5_ || param1)
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
               if(!(_loc4_ && _loc2_))
               {
                  if(!_loc4_)
                  {
                     if(_loc5_)
                     {
                        if(§§pop() >= this.pageIndexes.length)
                        {
                           if(_loc5_ || _loc2_)
                           {
                              if(_loc5_ || this)
                              {
                                 §§goto(addr80);
                              }
                              while(_loc4_)
                              {
                                 do
                                 {
                                    §§push(param1);
                                 }
                                 while(_loc4_);
                                 
                                 if(§§pop().indexOf(_loc3_ + "-") != 0)
                                 {
                                    break;
                                 }
                                 if(!_loc4_)
                                 {
                                    §§push(_loc2_);
                                    break loop0;
                                 }
                              }
                              addr85:
                              §§push(_loc2_ + 1);
                              if(!(_loc5_ || _loc3_))
                              {
                                 break;
                              }
                              addr104:
                              _loc2_ = int(§§pop());
                           }
                           continue;
                        }
                        §§push(this.pageIndexes[_loc2_]);
                        while(true)
                        {
                           _loc3_ = §§pop();
                           §§goto(addr131);
                        }
                     }
                  }
                  §§goto(addr85);
               }
               §§goto(addr104);
            }
            addr80:
            return -1;
         }
         return §§pop();
      }
      
      public function §`l§(param1:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = 0;
         §§push(param1);
         if(_loc6_)
         {
            §§push(§§pop().substring(0,param1.indexOf("-")));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = parseInt(param1.substring(param1.indexOf("-") + 1));
         if(_loc6_)
         {
            §§push(_loc3_);
            loop0:
            while(§§pop() >= this.levelsPerPage)
            {
               while(true)
               {
                  §§push(0);
                  if(!(_loc5_ && this))
                  {
                     §§push(int(§§pop()));
                  }
                  if(_loc5_)
                  {
                     break;
                  }
                  _loc4_ = §§pop();
                  if(_loc5_ && param1)
                  {
                     continue;
                  }
                  if(!(_loc6_ || this))
                  {
                     break loop0;
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                     if(_loc6_ || _loc2_)
                     {
                        if(_loc6_ || _loc3_)
                        {
                           if(_loc6_)
                           {
                              if(§§pop() >= this.pageIndexes.length)
                              {
                                 if(_loc6_)
                                 {
                                    if(_loc6_)
                                    {
                                       §§goto(addr71);
                                    }
                                    addr71:
                                    if(_loc5_)
                                    {
                                       addr114:
                                       §§push(_loc4_);
                                       break;
                                    }
                                 }
                                 continue;
                                 return null;
                              }
                              §§push(this.pageIndexes);
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§push(_loc4_);
                                 if(_loc6_)
                                 {
                                    if(§§pop()[§§pop()] == _loc2_)
                                    {
                                       §§goto(addr114);
                                    }
                                    else
                                    {
                                       addr80:
                                       §§push(_loc4_ + 1);
                                       if(!_loc5_)
                                       {
                                          addr94:
                                          _loc4_ = int(§§pop());
                                          continue;
                                       }
                                       §§goto(addr94);
                                    }
                                 }
                                 §§goto(addr126);
                              }
                              addr125:
                              addr126:
                              §§push(§§pop()[§§pop() + 1] + "-");
                              if(_loc6_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              return §§pop();
                              §§push(_loc4_);
                              §§goto(addr114);
                           }
                           break;
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr94);
                  }
                  if(§§pop() + 1 < this.pageIndexes.length)
                  {
                     if(_loc6_)
                     {
                        §§goto(addr125);
                        §§push(this.pageIndexes);
                     }
                     else
                     {
                        §§goto(addr136);
                     }
                  }
                  §§goto(addr76);
               }
            }
         }
         §§push(_loc2_ + "-");
         if(_loc6_)
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
         if(!_loc3_)
         {
            this.mName = param1;
         }
      }
      
      public function get menuImage() : String
      {
         return this.§?!J§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§?!J§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§+k§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§+k§ = param1;
         }
      }
      
      public function get levels() : Array
      {
         return this.§66§;
      }
      
      public function get §79§() : Array
      {
         return this.§4!@§;
      }
      
      public function set §79§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4!@§ = param1;
         }
      }
      
      public function get §9!O§() : int
      {
         return this.§?f§;
      }
      
      public function set §9!O§(param1:int) : void
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
               if(_loc3_)
               {
                  §§push(Boolean(§§pop()));
                  while(true)
                  {
                     §§push(§§pop());
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(!(_loc2_ && this))
                           {
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              this.§?f§ = param1;
                           }
                           break;
                        }
                        return;
                        addr59:
                     }
                     addr52:
                     if(_loc2_ && _loc3_)
                     {
                        continue;
                     }
                     §§goto(addr59);
                  }
                  addr90:
               }
               addr100:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
            addr85:
         }
         while(true)
         {
            §§push(param1);
            if(!_loc2_)
            {
               §§push(§§pop() < this.pageIndexes.length);
               if(_loc3_ || _loc2_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr52);
            }
            else
            {
               §§goto(addr85);
            }
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§!;§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§!;§ = param1;
         }
      }
      
      public function §[K§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§;!R§[param1] = param2;
         }
      }
      
      public function §#L§(param1:String) : String
      {
         return this.§;!R§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§04§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§04§ = param1;
         }
      }
      
      public function get §=F§() : String
      {
         return this.§+!E§;
      }
      
      public function set §=F§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§+!E§ = param1;
         }
      }
      
      public function get §,`§() : String
      {
         return this.§@j§;
      }
      
      public function set §,`§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§@j§ = param1;
         }
      }
      
      public function get writtenName() : String
      {
         return this.§=?§;
      }
      
      public function set writtenName(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§=?§ = param1;
         }
      }
   }
}
