package §^]§
{
   import flash.utils.Dictionary;
   
   public class §7!K§
   {
       
      
      private var §&!0§:String = "";
      
      private var mName:String = "";
      
      private var §4Q§:String = "";
      
      private var §;r§:String = "";
      
      private var §+#§:String = "";
      
      private var §[3§:Array = null;
      
      private var §&b§:int = 0;
      
      private var §@P§:Array = null;
      
      private var §]!7§:Array;
      
      private var §]C§:Array;
      
      private var §,8§:int = 0;
      
      private var §?!=§:Dictionary;
      
      public function §7!K§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§?!=§ = new Dictionary();
            do
            {
               super();
            }
            while(_loc1_);
            
         }
      }
      
      public function §-!B§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §0t§(param1:String) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = null;
         var _loc2_:Array = new Array();
         var _loc3_:* = Number(0);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc5_ && param1))
            {
               if(_loc6_)
               {
                  if(!_loc5_)
                  {
                     if(§§pop() >= this.levelsPerPage)
                     {
                        if(_loc6_ || _loc2_)
                        {
                           if(!(_loc5_ && this))
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              §§push(_loc3_);
                              addr74:
                              while(true)
                              {
                                 §§push(§§pop() + 1);
                                 addr75:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr76:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                    }
                                 }
                              }
                              addr117:
                              while(true)
                              {
                                 _loc2_.push(_loc4_);
                                 continue loop1;
                              }
                           }
                        }
                        while(!_loc6_)
                        {
                        }
                        continue;
                     }
                     §§push(param1);
                     if(!_loc5_)
                     {
                        §§push(§§pop() + "-");
                        if(!_loc5_)
                        {
                           §§push(_loc3_);
                           if(_loc6_ || this)
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
                  §§goto(addr74);
               }
               §§goto(addr75);
            }
            §§goto(addr76);
         }
         return _loc2_;
      }
      
      public function §#!N§(param1:int) : Object
      {
         return this.§]!7§[param1];
      }
      
      public function §-7§(param1:int) : String
      {
         return this.§]C§[param1];
      }
      
      public function §1e§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§4!G§().indexOf(param1) == -1);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function §4!G§() : Array
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(!_loc9_)
         {
            if(this.§@P§ == null)
            {
               §§goto(addr35);
            }
            §§goto(addr122);
         }
         addr35:
         _loc1_ = new Array();
         for each(_loc2_ in this.pageIndexes)
         {
            _loc3_ = this.§0t§(_loc2_);
            if(!_loc9_)
            {
               var _loc7_:int = 0;
               if(_loc10_)
               {
                  var _loc8_:* = _loc3_;
                  if(_loc9_)
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
         if(_loc10_)
         {
            this.§@P§ = _loc1_;
            if(!_loc10_)
            {
               addr122:
               return this.§@P§;
            }
         }
         return _loc1_;
      }
      
      public function §"!#§(param1:String) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop() >= this.pageIndexes.length)
               {
                  if(_loc4_)
                  {
                     continue;
                  }
                  if(_loc5_)
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     loop1:
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
                           continue loop1;
                        }
                     }
                     if(§§pop().indexOf(_loc3_ + "-") == 0)
                     {
                        if(!_loc4_)
                        {
                           §§goto(addr94);
                        }
                        addr95:
                     }
                     _loc2_++;
                     continue;
                  }
                  §§goto(addr95);
               }
               else
               {
                  §§push(this.pageIndexes[_loc2_]);
               }
               §§goto(addr103);
            }
            break;
         }
         if(!(_loc4_ && this))
         {
            return §§pop();
         }
         addr94:
         return _loc2_;
      }
      
      public function §6J§(param1:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = 0;
         §§push(param1);
         if(!(_loc5_ && _loc2_))
         {
            §§push(§§pop().substring(0,param1.indexOf("-")));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = parseInt(param1.substring(param1.indexOf("-") + 1));
         if(_loc6_ || _loc2_)
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               if(§§pop() >= this.levelsPerPage)
               {
                  continue;
               }
               if(!(_loc5_ && _loc3_))
               {
                  break;
               }
               while(true)
               {
                  continue loop0;
                  addr152:
                  _loc4_ = §§pop();
                  if(_loc5_)
                  {
                     continue;
                  }
                  addr53:
                  §§push(_loc4_);
                  if(_loc6_)
                  {
                     if(§§pop() >= this.pageIndexes.length)
                     {
                        if(!(_loc6_ || _loc2_))
                        {
                           addr98:
                           §§goto(addr53);
                        }
                        if(_loc6_ || _loc2_)
                        {
                           if(_loc6_)
                           {
                              if(_loc5_)
                              {
                                 addr122:
                                 if(_loc4_ + 1 < this.pageIndexes.length)
                                 {
                                    §§goto(addr129);
                                 }
                                 addr94:
                              }
                              return null;
                           }
                           §§goto(addr129);
                        }
                        §§goto(addr94);
                     }
                     §§push(this.pageIndexes);
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(_loc4_);
                        if(!(_loc5_ && _loc2_))
                        {
                           if(§§pop()[§§pop()] != _loc2_)
                           {
                              _loc4_++;
                              §§goto(addr98);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr129);
                     }
                     addr129:
                     §§push(this.pageIndexes[_loc4_ + 1] + "-");
                     if(_loc6_)
                     {
                        return §§pop() + 1;
                     }
                  }
                  §§goto(addr122);
               }
            }
         }
         §§push(_loc2_ + "-");
         if(_loc6_ || _loc3_)
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
         if(_loc2_)
         {
            this.mName = param1;
         }
      }
      
      public function get menuImage() : String
      {
         return this.§4Q§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§4Q§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§&b§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&b§ = param1;
         }
      }
      
      public function get §+8§() : Array
      {
         return this.§@P§;
      }
      
      public function get §8!L§() : Array
      {
         return this.§]!7§;
      }
      
      public function set §8!L§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§]!7§ = param1;
         }
      }
      
      public function get §9!F§() : int
      {
         return this.§,8§;
      }
      
      public function set §9!F§(param1:int) : void
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
               addr83:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop4:
                     while(§§pop())
                     {
                        if(_loc2_)
                        {
                           while(true)
                           {
                              this.§,8§ = param1;
                           }
                           addr69:
                        }
                        while(true)
                        {
                           if(!(_loc3_ && this))
                           {
                              break loop4;
                           }
                           continue loop0;
                        }
                     }
                     return;
                     addr65:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function get pageIndexes() : Array
      {
         return this.§[3§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§[3§ = param1;
         }
      }
      
      public function §&L§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§?!=§[param1] = param2;
         }
      }
      
      public function §?3§(param1:String) : String
      {
         return this.§?!=§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§]C§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§]C§ = param1;
         }
      }
      
      public function get §9`§() : String
      {
         return this.§;r§;
      }
      
      public function set §9`§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§;r§ = param1;
         }
      }
      
      public function get §@<§() : String
      {
         return this.§+#§;
      }
      
      public function set §@<§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§+#§ = param1;
         }
      }
      
      public function get writtenName() : String
      {
         return this.§&!0§;
      }
      
      public function set writtenName(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&!0§ = param1;
         }
      }
   }
}
