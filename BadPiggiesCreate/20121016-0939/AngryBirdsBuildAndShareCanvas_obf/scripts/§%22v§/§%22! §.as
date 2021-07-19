package §"v§
{
   import flash.utils.Dictionary;
   
   public class §"! §
   {
       
      
      private var §@x§:String = "";
      
      private var mName:String = "";
      
      private var §;!§:String = "";
      
      private var §0§:String = "";
      
      private var §,4§:String = "";
      
      private var §#C§:Array = null;
      
      private var §^"7§:int = 0;
      
      private var §3V§:Array = null;
      
      private var §4!!§:Array;
      
      private var §+!6§:Array;
      
      private var §7!+§:int = 0;
      
      private var §&h§:Dictionary;
      
      public function §"! §()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§&h§ = new Dictionary();
            do
            {
               super();
            }
            while(!_loc1_);
            
         }
      }
      
      public function §#!r§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §"b§(param1:String) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         var _loc2_:Array = new Array();
         var _loc3_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_ || this)
            {
               if(§§pop() >= this.levelsPerPage)
               {
                  if(!(_loc6_ && param1))
                  {
                     if(!(_loc6_ && param1))
                     {
                        break;
                     }
                     _loc2_.push(_loc4_);
                     loop2:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!(_loc6_ && this))
                        {
                           addr85:
                           §§push(§§pop() + 1);
                           if(_loc5_ || _loc3_)
                           {
                           }
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr86:
                              while(_loc6_)
                              {
                                 continue loop2;
                              }
                              continue loop0;
                           }
                           addr85:
                        }
                        §§goto(addr85);
                     }
                     addr131:
                  }
                  §§goto(addr86);
               }
               else
               {
                  §§push(param1);
                  if(_loc5_ || _loc2_)
                  {
                     §§push(§§pop() + "-");
                     if(!(_loc6_ && param1))
                     {
                        §§push(_loc3_);
                        if(!_loc6_)
                        {
                           §§push(§§pop() + 1);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§push(§§pop());
                  }
                  _loc4_ = §§pop();
               }
               §§goto(addr131);
            }
            §§goto(addr85);
         }
         return _loc2_;
      }
      
      public function §!";§(param1:int) : Object
      {
         return this.§4!!§[param1];
      }
      
      public function §^"1§(param1:int) : String
      {
         return this.§+!6§[param1];
      }
      
      public function §3!q§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§3h§().indexOf(param1) == -1);
         if(!_loc3_)
         {
            return !§§pop();
         }
      }
      
      public function §3h§() : Array
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(_loc9_ || _loc3_)
         {
            if(this.§3V§ == null)
            {
               addr39:
               _loc1_ = new Array();
               for each(_loc2_ in this.pageIndexes)
               {
                  _loc3_ = this.§"b§(_loc2_);
                  if(_loc9_)
                  {
                     var _loc7_:int = 0;
                     if(_loc9_)
                     {
                        var _loc8_:* = _loc3_;
                        if(_loc10_ && this)
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
               if(!(_loc10_ && _loc3_))
               {
                  this.§3V§ = _loc1_;
                  if(!_loc10_)
                  {
                     return _loc1_;
                  }
               }
            }
            return this.§3V§;
         }
         §§goto(addr39);
      }
      
      public function §8M§(param1:String) : int
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
               if(!(_loc5_ && _loc2_))
               {
                  if(§§pop() >= this.pageIndexes.length)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           §§push(param1);
                           if(_loc4_)
                           {
                              break;
                           }
                           addr97:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              continue loop1;
                           }
                        }
                        if(§§pop().indexOf(_loc3_ + "-") == 0)
                        {
                           if(_loc4_)
                           {
                              §§goto(addr78);
                           }
                           addr79:
                           while(true)
                           {
                           }
                           addr79:
                        }
                        while(true)
                        {
                           _loc2_++;
                           §§goto(addr79);
                        }
                     }
                     while(!_loc4_)
                     {
                        §§goto(addr79);
                     }
                     continue;
                  }
                  §§push(this.pageIndexes[_loc2_]);
                  §§goto(addr97);
               }
               addr78:
               return _loc2_;
            }
            break;
         }
         return §§pop();
      }
      
      public function §;d§(param1:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = 0;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(§§pop().substring(0,param1.indexOf("-")));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = parseInt(param1.substring(param1.indexOf("-") + 1));
         if(!_loc5_)
         {
            §§push(_loc3_);
            loop0:
            while(§§pop() >= this.levelsPerPage)
            {
               while(true)
               {
                  §§push(0);
                  if(_loc5_ && _loc3_)
                  {
                     break;
                  }
                  _loc4_ = §§pop();
                  if(_loc5_)
                  {
                     continue;
                  }
                  if(_loc5_ && param1)
                  {
                     break loop0;
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!_loc5_)
                     {
                        if(§§pop() >= this.pageIndexes.length)
                        {
                           if(!(_loc5_ && _loc2_))
                           {
                              if(_loc5_)
                              {
                                 §§goto(addr112);
                              }
                           }
                           else
                           {
                              addr69:
                              if(_loc6_ || this)
                              {
                                 if(_loc5_)
                                 {
                                    addr102:
                                    §§push(_loc4_);
                                 }
                                 continue;
                                 break;
                              }
                              addr65:
                           }
                           return null;
                        }
                        §§push(this.pageIndexes);
                        if(_loc6_)
                        {
                           §§push(_loc4_);
                           if(_loc6_)
                           {
                              if(§§pop()[§§pop()] != _loc2_)
                              {
                                 _loc4_++;
                                 §§goto(addr69);
                              }
                              §§goto(addr102);
                           }
                        }
                        §§goto(addr112);
                     }
                     break;
                  }
                  if(§§pop() + 1 < this.pageIndexes.length)
                  {
                     addr112:
                     §§push(this.pageIndexes[_loc4_ + 1] + "-");
                     if(_loc6_ || _loc2_)
                     {
                        return §§pop() + 1;
                     }
                  }
                  §§goto(addr65);
               }
            }
         }
         §§push(_loc2_ + "-");
         if(_loc6_ || _loc2_)
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
         if(_loc2_ || this)
         {
            this.mName = param1;
         }
      }
      
      public function get menuImage() : String
      {
         return this.§;!§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§;!§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§^"7§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§^"7§ = param1;
         }
      }
      
      public function get §'a§() : Array
      {
         return this.§3V§;
      }
      
      public function get §>!j§() : Array
      {
         return this.§4!!§;
      }
      
      public function set §>!j§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§4!!§ = param1;
         }
      }
      
      public function get §@!M§() : int
      {
         return this.§7!+§;
      }
      
      public function set §@!M§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               addr79:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop4:
                     while(§§pop())
                     {
                        if(!(_loc2_ && param1))
                        {
                           while(true)
                           {
                              this.§7!+§ = param1;
                           }
                           addr60:
                        }
                        while(true)
                        {
                           if(_loc3_)
                           {
                              break loop4;
                           }
                           continue loop0;
                        }
                     }
                     return;
                     addr51:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function get pageIndexes() : Array
      {
         return this.§#C§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§#C§ = param1;
         }
      }
      
      public function §7"#§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§&h§[param1] = param2;
         }
      }
      
      public function §3!2§(param1:String) : String
      {
         return this.§&h§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§+!6§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§+!6§ = param1;
         }
      }
      
      public function get §#!"§() : String
      {
         return this.§0§;
      }
      
      public function set §#!"§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§0§ = param1;
         }
      }
      
      public function get §`%§() : String
      {
         return this.§,4§;
      }
      
      public function set §`%§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,4§ = param1;
         }
      }
      
      public function get writtenName() : String
      {
         return this.§@x§;
      }
      
      public function set writtenName(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@x§ = param1;
         }
      }
   }
}
