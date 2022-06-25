package §_-Ga§
{
   import flash.utils.Dictionary;
   
   public class §_-0C5§
   {
       
      
      private var §_-0Bb§:String = "";
      
      private var mName:String = "";
      
      private var §_-Nt§:String = "";
      
      private var §_-b4§:String = "";
      
      private var §_-3D§:String = "";
      
      private var §_-vf§:Array = null;
      
      private var §_-36§:int = 0;
      
      private var §_-T7§:Array = null;
      
      private var §_-01S§:Array;
      
      private var §_-t7§:Array;
      
      private var §_-TW§:int = 0;
      
      private var §_-My§:Dictionary;
      
      public function §_-0C5§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§_-My§ = new Dictionary();
         }
         do
         {
            super();
         }
         while(_loc2_ && _loc1_);
         
      }
      
      public function §_-Dd§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §_-27§(param1:String) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         var _loc2_:Array = new Array();
         var _loc3_:* = Number(0);
         while(true)
         {
            §§push(_loc3_);
            if(!_loc6_)
            {
               if(!_loc6_)
               {
                  if(_loc5_ || _loc2_)
                  {
                     if(§§pop() >= this.levelsPerPage)
                     {
                        if(_loc5_ || this)
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              §§push(_loc3_);
                              addr68:
                              while(true)
                              {
                                 §§push(§§pop() + 1);
                                 addr69:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr70:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                    }
                                 }
                              }
                              addr116:
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
                        if(_loc5_)
                        {
                           §§push(_loc3_);
                           if(_loc5_ || param1)
                           {
                              §§push(§§pop() + 1);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§push(§§pop());
                     }
                     _loc4_ = §§pop();
                     §§goto(addr116);
                  }
                  §§goto(addr68);
               }
               §§goto(addr69);
            }
            §§goto(addr70);
         }
         return _loc2_;
      }
      
      public function §_-3k§(param1:int) : Object
      {
         return this.§_-01S§[param1];
      }
      
      public function §_-vx§(param1:int) : String
      {
         return this.§_-t7§[param1];
      }
      
      public function §_-PP§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§_-3R§().indexOf(param1) == -1);
         if(!_loc3_)
         {
            return !§§pop();
         }
      }
      
      public function §_-3R§() : Array
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(!(_loc9_ && _loc3_))
         {
            if(this.§_-T7§ == null)
            {
               §§goto(addr40);
            }
            §§goto(addr147);
         }
         addr40:
         _loc1_ = new Array();
         for each(_loc2_ in this.pageIndexes)
         {
            _loc3_ = this.§_-27§(_loc2_);
            if(!(_loc9_ && _loc3_))
            {
               var _loc7_:int = 0;
               if(_loc10_ || _loc3_)
               {
                  var _loc8_:* = _loc3_;
                  if(_loc10_ || _loc1_)
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
         if(!(_loc9_ && this))
         {
            this.§_-T7§ = _loc1_;
            if(!_loc10_)
            {
               addr147:
               return this.§_-T7§;
            }
         }
         return _loc1_;
      }
      
      public function §_-tT§(param1:String) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && this))
            {
               if(!_loc4_)
               {
                  if(§§pop() >= this.pageIndexes.length)
                  {
                     if(_loc4_ && this)
                     {
                        continue;
                     }
                     if(!(_loc4_ && this))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           if(_loc5_ || _loc2_)
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
                              addr113:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 continue loop1;
                              }
                           }
                           if(§§pop().indexOf(_loc3_ + "-") != 0)
                           {
                              addr90:
                              _loc2_++;
                              continue;
                           }
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr90);
                  }
                  else
                  {
                     §§push(this.pageIndexes[_loc2_]);
                  }
                  §§goto(addr113);
               }
               addr104:
               return _loc2_;
            }
            break;
         }
         return §§pop();
      }
      
      public function §_-xE§(param1:String) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = 0;
         §§push(param1);
         if(_loc5_ || this)
         {
            §§push(§§pop().substring(0,param1.indexOf("-")));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = parseInt(param1.substring(param1.indexOf("-") + 1));
         if(!(_loc6_ && this))
         {
            §§push(_loc3_);
            loop0:
            while(§§pop() >= this.levelsPerPage)
            {
               while(true)
               {
                  §§push(0);
                  if(_loc6_ && this)
                  {
                     break;
                  }
                  _loc4_ = §§pop();
                  if(_loc6_ && this)
                  {
                     continue;
                  }
                  if(!_loc5_)
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
                           if(_loc5_)
                           {
                              if(_loc5_)
                              {
                                 if(_loc6_)
                                 {
                                    §§goto(addr121);
                                 }
                              }
                              else
                              {
                                 addr71:
                              }
                              return null;
                           }
                           addr75:
                           if(_loc6_ && this)
                           {
                              addr111:
                              §§push(_loc4_);
                           }
                           continue;
                           break;
                        }
                        §§push(this.pageIndexes);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(_loc4_);
                           if(_loc5_)
                           {
                              if(§§pop()[§§pop()] != _loc2_)
                              {
                                 _loc4_++;
                                 §§goto(addr75);
                              }
                              §§goto(addr111);
                           }
                        }
                        §§goto(addr121);
                     }
                     break;
                  }
                  if(§§pop() + 1 < this.pageIndexes.length)
                  {
                     addr121:
                     §§push(this.pageIndexes[_loc4_ + 1] + "-");
                     if(!_loc6_)
                     {
                        return §§pop() + 1;
                     }
                  }
                  §§goto(addr71);
               }
            }
            §§push(_loc2_ + "-");
            if(_loc5_ || _loc2_)
            {
               return §§pop() + (_loc3_ + 1);
            }
         }
         §§goto(addr161);
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
         return this.§_-Nt§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-Nt§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§_-36§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-36§ = param1;
         }
      }
      
      public function get §_-bD§() : Array
      {
         return this.§_-T7§;
      }
      
      public function get §_-rc§() : Array
      {
         return this.§_-01S§;
      }
      
      public function set §_-rc§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-01S§ = param1;
         }
      }
      
      public function get §_-h-§() : int
      {
         return this.§_-TW§;
      }
      
      public function set §_-h-§(param1:int) : void
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
               addr88:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc2_)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              this.§_-TW§ = param1;
                              addr84:
                              break;
                           }
                           continue loop0;
                        }
                        §§goto(addr84);
                     }
                     return;
                     addr70:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      public function get pageIndexes() : Array
      {
         return this.§_-vf§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-vf§ = param1;
         }
      }
      
      public function §_-0E8§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§_-My§[param1] = param2;
         }
      }
      
      public function §_-gy§(param1:String) : String
      {
         return this.§_-My§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§_-t7§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§_-t7§ = param1;
         }
      }
      
      public function get §_-Rx§() : String
      {
         return this.§_-b4§;
      }
      
      public function set §_-Rx§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-b4§ = param1;
         }
      }
      
      public function get §_-dx§() : String
      {
         return this.§_-3D§;
      }
      
      public function set §_-dx§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§_-3D§ = param1;
         }
      }
      
      public function get writtenName() : String
      {
         return this.§_-0Bb§;
      }
      
      public function set writtenName(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-0Bb§ = param1;
         }
      }
   }
}
