package §>!C§
{
   import flash.utils.Dictionary;
   
   public class §^h§
   {
       
      
      private var §4g§:String = "";
      
      private var mName:String = "";
      
      private var §>!A§:String = "";
      
      private var §@!@§:String = "";
      
      private var §3!§:String = "";
      
      private var §0!D§:Array = null;
      
      private var §=!7§:int = 0;
      
      private var §#4§:Array = null;
      
      private var §6q§:Array;
      
      private var §^y§:Array;
      
      private var § try§:int = 0;
      
      private var §3!+§:Dictionary;
      
      public function §^h§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§3!+§ = new Dictionary();
            if(_loc2_)
            {
               addr25:
               super();
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function §'T§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §?h§(param1:String) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = null;
         var _loc2_:Array = new Array();
         var _loc3_:Number = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(§§pop() < this.levelsPerPage)
            {
               §§push(param1);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop() + "-");
                  if(!(_loc5_ && _loc2_))
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
               if(!_loc5_)
               {
                  _loc2_.push(_loc4_);
                  if(_loc5_)
                  {
                     break;
                  }
               }
               §§push(_loc3_);
               if(!_loc5_)
               {
                  §§push(§§pop() + 1);
                  if(!_loc5_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc5_ && _loc3_))
                     {
                        continue loop0;
                     }
                     continue;
                  }
               }
               continue loop0;
            }
            addr112:
            return _loc2_;
         }
      }
      
      public function §!f§(param1:int) : Object
      {
         return this.§6q§[param1];
      }
      
      public function §1! §(param1:int) : String
      {
         return this.§^y§[param1];
      }
      
      public function §2!"§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§ B§().indexOf(param1) == -1);
         if(_loc2_ || _loc3_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function § B§() : Array
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(_loc10_)
         {
            if(this.§#4§ == null)
            {
               addr35:
               _loc1_ = new Array();
               for each(_loc2_ in this.pageIndexes)
               {
                  _loc3_ = this.§?h§(_loc2_);
                  if(_loc10_ || _loc3_)
                  {
                     var _loc7_:int = 0;
                     if(_loc10_ || this)
                     {
                        var _loc8_:* = _loc3_;
                        if(_loc10_ || _loc3_)
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
               if(_loc10_ || _loc3_)
               {
                  this.§#4§ = _loc1_;
                  if(!_loc9_)
                  {
                     return _loc1_;
                  }
               }
            }
            return this.§#4§;
         }
         §§goto(addr35);
      }
      
      public function §var§(param1:String) : int
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
               if(§§pop() < this.pageIndexes.length)
               {
                  §§push(this.pageIndexes[_loc2_]);
                  if(!(_loc5_ && _loc3_))
                  {
                     _loc3_ = §§pop();
                     if(!(_loc5_ && _loc2_))
                     {
                        addr54:
                        if(param1.indexOf(_loc3_ + "-") != 0)
                        {
                           _loc2_++;
                           if(!(_loc4_ || this))
                           {
                              addr103:
                              §§push(-1);
                           }
                           continue;
                           break;
                        }
                        if(!(_loc4_ || _loc3_))
                        {
                           continue;
                        }
                     }
                     §§push(_loc2_);
                     if(!_loc5_)
                     {
                        return §§pop();
                     }
                     break;
                  }
                  §§goto(addr54);
               }
               §§goto(addr103);
            }
            break;
         }
         return §§pop();
      }
      
      public function §1$§(param1:String) : String
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
         if(!(_loc5_ && _loc3_))
         {
            §§push(_loc3_);
            if(_loc6_)
            {
               if(§§pop() < this.levelsPerPage)
               {
                  if(!_loc5_)
                  {
                     §§push(_loc2_ + "-");
                     if(_loc6_ || _loc2_)
                     {
                        return §§pop() + (_loc3_ + 1);
                     }
                  }
                  addr89:
                  loop0:
                  while(true)
                  {
                     §§push(_loc4_);
                     while(§§pop() < this.pageIndexes.length)
                     {
                        §§push(this.pageIndexes);
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(_loc4_);
                           if(!(_loc5_ && _loc3_))
                           {
                              if(§§pop()[§§pop()] != _loc2_)
                              {
                                 continue loop0;
                              }
                              if(_loc6_)
                              {
                                 §§push(_loc4_);
                                 if(!(_loc6_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 if(§§pop() + 1 >= this.pageIndexes.length)
                                 {
                                    break;
                                 }
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                              }
                              addr131:
                              §§push(this.pageIndexes);
                              §§push(_loc4_);
                           }
                           §§push(§§pop()[§§pop() + 1] + "-");
                           if(_loc6_ || this)
                           {
                              return §§pop() + 1;
                           }
                        }
                        §§goto(addr131);
                     }
                     addr173:
                     return null;
                  }
               }
               else
               {
                  §§push(0);
               }
               §§goto(addr89);
            }
            _loc4_ = §§pop();
         }
         §§goto(addr89);
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
         return this.§>!A§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§>!A§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§=!7§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§=!7§ = param1;
         }
      }
      
      public function get §;!-§() : Array
      {
         return this.§#4§;
      }
      
      public function get §8B§() : Array
      {
         return this.§6q§;
      }
      
      public function set §8B§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§6q§ = param1;
         }
      }
      
      public function get §8H§() : int
      {
         return this.§ try§;
      }
      
      public function set §8H§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop() >= 0);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§pop();
                        §§goto(addr54);
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     this.§ try§ = param1;
                  }
               }
               §§goto(addr54);
            }
            §§goto(addr44);
         }
         addr54:
         if(_loc3_)
         {
            addr44:
            §§push(param1 < this.pageIndexes.length);
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§0!D§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§0!D§ = param1;
         }
      }
      
      public function §]!3§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            this.§3!+§[param1] = param2;
         }
      }
      
      public function §,"§(param1:String) : String
      {
         return this.§3!+§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§^y§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§^y§ = param1;
         }
      }
      
      public function get §;!%§() : String
      {
         return this.§@!@§;
      }
      
      public function set §;!%§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§@!@§ = param1;
         }
      }
      
      public function get §<-§() : String
      {
         return this.§3!§;
      }
      
      public function set §<-§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§3!§ = param1;
         }
      }
      
      public function get writtenName() : String
      {
         return this.§4g§;
      }
      
      public function set writtenName(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4g§ = param1;
         }
      }
   }
}
