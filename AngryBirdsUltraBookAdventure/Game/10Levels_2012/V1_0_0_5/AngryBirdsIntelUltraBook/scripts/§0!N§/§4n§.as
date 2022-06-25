package §0!N§
{
   import flash.utils.Dictionary;
   
   public class §4n§
   {
       
      
      private var §6!o§:String = "";
      
      private var mName:String = "";
      
      private var §+r§:String = "";
      
      private var §8E§:String = "";
      
      private var §30§:String = "";
      
      private var §+!y§:Array = null;
      
      private var §9!6§:int = 0;
      
      private var §0c§:Array = null;
      
      private var §=!;§:Array;
      
      private var § !<§:Array;
      
      private var §;!q§:int = 0;
      
      private var §'V§:Dictionary;
      
      public function §4n§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§'V§ = new Dictionary();
         }
         do
         {
            super();
         }
         while(_loc1_);
         
      }
      
      public function §?!`§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §]!"§(param1:String) : Array
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
                  if(_loc5_)
                  {
                     if(!(_loc6_ && _loc2_))
                     {
                        break;
                     }
                     _loc2_.push(_loc4_);
                     loop2:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc5_ || this)
                        {
                           addr80:
                           §§push(§§pop() + 1);
                           if(_loc6_ && this)
                           {
                           }
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr81:
                              while(_loc6_ && _loc3_)
                              {
                                 continue loop2;
                              }
                              continue loop0;
                           }
                           addr80:
                        }
                        §§goto(addr80);
                     }
                     addr131:
                  }
                  §§goto(addr81);
               }
               else
               {
                  §§push(param1);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(§§pop() + "-");
                     if(!(_loc6_ && _loc3_))
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
               }
               §§goto(addr131);
            }
            §§goto(addr80);
         }
         return _loc2_;
      }
      
      public function §9!R§(param1:int) : Object
      {
         return this.§=!;§[param1];
      }
      
      public function §]!C§(param1:int) : String
      {
         return this.§ !<§[param1];
      }
      
      public function §'!,§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§3!"§().indexOf(param1) == -1);
         if(!(_loc3_ && _loc2_))
         {
            return !§§pop();
         }
      }
      
      public function §3!"§() : Array
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(_loc9_)
         {
            if(this.§0c§ == null)
            {
               addr34:
               _loc1_ = new Array();
               for each(_loc2_ in this.pageIndexes)
               {
                  _loc3_ = this.§]!"§(_loc2_);
                  if(_loc9_)
                  {
                     var _loc7_:int = 0;
                     if(!(_loc10_ && _loc2_))
                     {
                        var _loc8_:* = _loc3_;
                        if(_loc10_)
                        {
                        }
                        for each(_loc4_ in _loc8_)
                        {
                           if(!_loc10_)
                           {
                              _loc1_.push(_loc4_);
                           }
                        }
                     }
                  }
               }
               if(_loc9_)
               {
                  this.§0c§ = _loc1_;
                  if(!(_loc10_ && _loc1_))
                  {
                     return _loc1_;
                  }
               }
            }
            return this.§0c§;
         }
         §§goto(addr34);
      }
      
      public function §@h§(param1:String) : int
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
               if(_loc4_)
               {
                  if(§§pop() >= this.pageIndexes.length)
                  {
                     if(!_loc4_)
                     {
                        continue;
                     }
                     if(_loc4_ || param1)
                     {
                        if(!_loc5_)
                        {
                           if(_loc4_ || param1)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              §§push(param1);
                              if(!(_loc5_ && _loc2_))
                              {
                                 break;
                              }
                              addr102:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 continue loop1;
                              }
                           }
                           if(§§pop().indexOf(_loc3_ + "-") != 0)
                           {
                              addr74:
                              _loc2_++;
                              continue;
                           }
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr74);
                  }
                  else
                  {
                     §§push(this.pageIndexes[_loc2_]);
                  }
                  §§goto(addr102);
               }
               addr93:
               return _loc2_;
            }
            break;
         }
         return §§pop();
      }
      
      public function §9!j§(param1:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = 0;
         §§push(param1);
         if(_loc6_ || param1)
         {
            §§push(§§pop().substring(0,param1.indexOf("-")));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = parseInt(param1.substring(param1.indexOf("-") + 1));
         if(!(_loc5_ && this))
         {
            §§push(_loc3_);
            while(true)
            {
               if(§§pop() < this.levelsPerPage)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     break;
                  }
                  while(true)
                  {
                     addr157:
                     _loc4_ = §§pop();
                     if(_loc5_)
                     {
                        continue;
                     }
                     addr53:
                     §§push(_loc4_);
                     if(!(_loc5_ && _loc2_))
                     {
                        if(§§pop() >= this.pageIndexes.length)
                        {
                           if(!(_loc6_ || this))
                           {
                              §§goto(addr84);
                           }
                           if(_loc5_)
                           {
                              addr152:
                           }
                           return null;
                        }
                        §§push(this.pageIndexes);
                        if(!(_loc5_ && param1))
                        {
                           §§push(_loc4_);
                           if(_loc6_ || _loc3_)
                           {
                              if(§§pop()[§§pop()] != _loc2_)
                              {
                                 _loc4_++;
                                 §§goto(addr84);
                              }
                              if(!(_loc5_ && _loc3_))
                              {
                                 addr133:
                                 if(_loc4_ + 1 < this.pageIndexes.length)
                                 {
                                    §§goto(addr84);
                                 }
                              }
                              else
                              {
                                 §§goto(addr152);
                              }
                              §§goto(addr152);
                           }
                           §§goto(addr84);
                        }
                        addr84:
                        if(_loc6_ || _loc2_)
                        {
                           §§goto(addr53);
                        }
                        §§push(this.pageIndexes[_loc4_ + 1] + "-");
                        if(!_loc5_)
                        {
                           return §§pop() + 1;
                        }
                     }
                     §§goto(addr133);
                  }
               }
               while(true)
               {
                  §§push(0);
                  if(!_loc6_)
                  {
                     break;
                  }
                  §§goto(addr157);
               }
            }
         }
         §§push(_loc2_ + "-");
         if(!(_loc5_ && _loc2_))
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
         if(!(_loc2_ && param1))
         {
            this.mName = param1;
         }
      }
      
      public function get menuImage() : String
      {
         return this.§+r§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§+r§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§9!6§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§9!6§ = param1;
         }
      }
      
      public function get §+!v§() : Array
      {
         return this.§0c§;
      }
      
      public function get §0!"§() : Array
      {
         return this.§=!;§;
      }
      
      public function set §0!"§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§=!;§ = param1;
         }
      }
      
      public function get §-!F§() : int
      {
         return this.§;!q§;
      }
      
      public function set §-!F§(param1:int) : void
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
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(!(_loc2_ && this))
                        {
                           this.§;!q§ = param1;
                        }
                        if(_loc3_)
                        {
                           addr83:
                           break;
                        }
                        §§push(§§pop() < this.pageIndexes.length);
                        continue loop0;
                        if(!(_loc2_ && param1))
                        {
                           continue;
                        }
                        addr91:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr91:
                     }
                     return;
                  }
               }
               §§goto(addr91);
            }
         }
         §§goto(addr83);
      }
      
      public function get pageIndexes() : Array
      {
         return this.§+!y§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+!y§ = param1;
         }
      }
      
      public function §&!Z§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§'V§[param1] = param2;
         }
      }
      
      public function §['§(param1:String) : String
      {
         return this.§'V§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§ !<§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ !<§ = param1;
         }
      }
      
      public function get §-!p§() : String
      {
         return this.§8E§;
      }
      
      public function set §-!p§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§8E§ = param1;
         }
      }
      
      public function get §%V§() : String
      {
         return this.§30§;
      }
      
      public function set §%V§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§30§ = param1;
         }
      }
      
      public function get writtenName() : String
      {
         return this.§6!o§;
      }
      
      public function set writtenName(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6!o§ = param1;
         }
      }
   }
}
