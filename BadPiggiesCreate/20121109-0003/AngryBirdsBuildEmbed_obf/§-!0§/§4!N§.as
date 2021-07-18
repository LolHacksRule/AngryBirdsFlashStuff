package §-!0§
{
   import flash.utils.Dictionary;
   
   public class §4!N§
   {
       
      
      private var §=f§:String = "";
      
      private var mName:String = "";
      
      private var §]M§:String = "";
      
      private var §9!9§:String = "";
      
      private var §^<§:String = "";
      
      private var §%!U§:Array = null;
      
      private var §'!R§:int = 0;
      
      private var §"n§:Array = null;
      
      private var §[u§:Array;
      
      private var §%U§:Array;
      
      private var §%<§:int = 0;
      
      private var §9!5§:Dictionary;
      
      public function §4!N§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§9!5§ = new Dictionary();
            if(_loc1_)
            {
               super();
            }
         }
      }
      
      public function §=!?§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §1S§(param1:String) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         var _loc2_:Array = new Array();
         var _loc3_:* = Number(0);
         while(true)
         {
            §§push(_loc3_);
            while(true)
            {
               if(§§pop() < this.levelsPerPage)
               {
                  §§push(param1);
                  if(!(_loc6_ && _loc2_))
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
                  if(!(_loc5_ || _loc2_))
                  {
                     break;
                  }
                  _loc2_.push(_loc4_);
                  if(_loc5_ || _loc2_)
                  {
                     §§push(_loc3_);
                     if(_loc5_ || _loc3_)
                     {
                        §§push(§§pop() + 1);
                        if(_loc6_ && _loc2_)
                        {
                           continue;
                        }
                        §§push(Number(§§pop()));
                        if(_loc6_)
                        {
                           continue;
                        }
                     }
                     _loc3_ = §§pop();
                     if(!(_loc6_ && this))
                     {
                        break;
                     }
                  }
               }
               return _loc2_;
            }
         }
      }
      
      public function §6!%§(param1:int) : Object
      {
         return this.§[u§[param1];
      }
      
      public function §,!X§(param1:int) : String
      {
         return this.§%U§[param1];
      }
      
      public function §,!k§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§ >§().indexOf(param1) == -1);
         if(_loc3_ || _loc3_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function § >§() : Array
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(_loc10_)
         {
            if(this.§"n§ == null)
            {
               addr35:
               _loc1_ = new Array();
               for each(_loc2_ in this.pageIndexes)
               {
                  _loc3_ = this.§1S§(_loc2_);
                  if(_loc10_ || _loc2_)
                  {
                     var _loc7_:int = 0;
                     if(!(_loc9_ && _loc1_))
                     {
                        var _loc8_:* = _loc3_;
                        if(_loc10_ || _loc2_)
                        {
                        }
                        for each(_loc4_ in _loc8_)
                        {
                           if(!_loc9_)
                           {
                              _loc1_.push(_loc4_);
                           }
                        }
                     }
                  }
               }
               if(!_loc9_)
               {
                  this.§"n§ = _loc1_;
                  if(!_loc9_)
                  {
                     return _loc1_;
                  }
               }
            }
            return this.§"n§;
         }
         §§goto(addr35);
      }
      
      public function §#;§(param1:String) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_ || param1)
            {
               if(§§pop() < this.pageIndexes.length)
               {
                  §§push(this.pageIndexes[_loc2_]);
                  if(!_loc4_)
                  {
                     _loc3_ = §§pop();
                     addr94:
                     if(_loc5_ || param1)
                     {
                        §§push(param1);
                     }
                     break;
                  }
                  if(§§pop().indexOf(_loc3_ + "-") == 0)
                  {
                     if(_loc5_)
                     {
                        §§push(_loc2_);
                        if(!(_loc4_ && _loc3_))
                        {
                           return §§pop();
                        }
                        break;
                     }
                  }
                  _loc2_++;
                  if(!_loc4_)
                  {
                     continue;
                  }
               }
               §§goto(addr94);
            }
            break;
         }
         return §§pop();
      }
      
      public function §`!L§(param1:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = 0;
         §§push(param1);
         if(!(_loc5_ && _loc3_))
         {
            §§push(§§pop().substring(0,param1.indexOf("-")));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = parseInt(param1.substring(param1.indexOf("-") + 1));
         if(_loc6_ || _loc3_)
         {
            §§push(_loc3_);
            if(!_loc5_)
            {
               if(§§pop() < this.levelsPerPage)
               {
                  if(!(_loc5_ && param1))
                  {
                     §§push(_loc2_ + "-");
                     if(!(_loc5_ && param1))
                     {
                        return §§pop() + (_loc3_ + 1);
                     }
                  }
               }
               §§push(0);
            }
            _loc4_ = §§pop();
         }
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() < this.pageIndexes.length)
            {
               §§push(this.pageIndexes);
               if(!_loc5_)
               {
                  §§push(_loc4_);
                  if(_loc6_ || _loc3_)
                  {
                     if(§§pop()[§§pop()] == _loc2_)
                     {
                        if(_loc6_)
                        {
                           §§push(_loc4_);
                           if(_loc6_ || param1)
                           {
                              if(§§pop() + 1 < this.pageIndexes.length)
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    §§goto(addr137);
                                 }
                              }
                              break;
                           }
                           continue;
                        }
                     }
                     else
                     {
                        _loc4_++;
                        if(_loc5_ && param1)
                        {
                           break;
                        }
                     }
                     continue loop0;
                  }
                  §§goto(addr137);
               }
               addr137:
               §§push(this.pageIndexes[_loc4_ + 1] + "-");
               if(_loc6_ || _loc2_)
               {
                  return §§pop() + 1;
               }
            }
            return null;
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
         return this.§]M§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§]M§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§'!R§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§'!R§ = param1;
         }
      }
      
      public function get levels() : Array
      {
         return this.§"n§;
      }
      
      public function get §2!f§() : Array
      {
         return this.§[u§;
      }
      
      public function set §2!f§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§[u§ = param1;
         }
      }
      
      public function get §2!%§() : int
      {
         return this.§%<§;
      }
      
      public function set §2!%§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(!_loc2_)
            {
               §§push(§§pop() >= 0);
               if(!(_loc2_ && param1))
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§pop();
                        if(!(_loc2_ && _loc3_))
                        {
                           addr68:
                           if(param1 < this.pageIndexes.length)
                           {
                              if(_loc3_)
                              {
                                 this.§%<§ = param1;
                              }
                           }
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public function get pageIndexes() : Array
      {
         return this.§%!U§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§%!U§ = param1;
         }
      }
      
      public function §%!'§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§9!5§[param1] = param2;
         }
      }
      
      public function §8!Z§(param1:String) : String
      {
         return this.§9!5§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§%U§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§%U§ = param1;
         }
      }
      
      public function get §!!6§() : String
      {
         return this.§9!9§;
      }
      
      public function set §!!6§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§9!9§ = param1;
         }
      }
      
      public function get §1!§() : String
      {
         return this.§^<§;
      }
      
      public function set §1!§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§^<§ = param1;
         }
      }
      
      public function get writtenName() : String
      {
         return this.§=f§;
      }
      
      public function set writtenName(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§=f§ = param1;
         }
      }
   }
}
