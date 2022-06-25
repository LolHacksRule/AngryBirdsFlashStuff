package §!!§
{
   import flash.utils.Dictionary;
   
   public class §@+§
   {
       
      
      private var §,!,§:String = "";
      
      private var mName:String = "";
      
      private var §8!v§:String = "";
      
      private var §!!e§:String = "";
      
      private var §7§:String = "";
      
      private var §@y§:Array = null;
      
      private var §`T§:int = 0;
      
      private var §1!-§:Array = null;
      
      private var §9!g§:Array;
      
      private var §;A§:Array;
      
      private var §7O§:int = 0;
      
      private var §4L§:Dictionary;
      
      public function §@+§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§4L§ = new Dictionary();
            do
            {
               super();
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function §+]§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §=H§(param1:String) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         var _loc2_:Array = new Array();
         var _loc3_:Number = 0;
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc6_ && _loc2_))
            {
               if(!(_loc6_ && param1))
               {
                  if(_loc5_)
                  {
                     if(§§pop() >= this.levelsPerPage)
                     {
                        if(!_loc6_)
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                           loop1:
                           while(_loc6_ && _loc2_)
                           {
                              while(true)
                              {
                                 _loc2_.push(_loc4_);
                                 continue loop1;
                              }
                           }
                           addr70:
                           _loc3_++;
                           addr68:
                        }
                        continue;
                     }
                     §§push(param1);
                     if(!(_loc6_ && _loc2_))
                     {
                        §§push(§§pop() + "-");
                        if(!(_loc6_ && param1))
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
                     §§goto(addr121);
                  }
               }
               §§goto(addr68);
            }
            §§goto(addr70);
         }
         return _loc2_;
      }
      
      public function §8=§(param1:int) : Object
      {
         return this.§9!g§[param1];
      }
      
      public function §%c§(param1:int) : String
      {
         return this.§;A§[param1];
      }
      
      public function §]!1§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§-K§().indexOf(param1) == -1);
         if(!(_loc2_ && param1))
         {
            return !§§pop();
         }
      }
      
      public function §-K§() : Array
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(_loc9_ || _loc2_)
         {
            if(this.§1!-§ == null)
            {
               addr39:
               _loc1_ = new Array();
               for each(_loc2_ in this.pageIndexes)
               {
                  _loc3_ = this.§=H§(_loc2_);
                  if(_loc9_ || _loc2_)
                  {
                     var _loc7_:int = 0;
                     if(!_loc10_)
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
               if(!_loc10_)
               {
                  this.§1!-§ = _loc1_;
                  if(_loc9_ || this)
                  {
                     return _loc1_;
                  }
               }
            }
            return this.§1!-§;
         }
         §§goto(addr39);
      }
      
      public function §'Z§(param1:String) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_ || this)
            {
               if(§§pop() >= this.pageIndexes.length)
               {
                  if(!_loc4_)
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        if(!(_loc4_ && param1))
                        {
                           §§goto(addr63);
                        }
                        break;
                     }
                     if(_loc4_)
                     {
                        loop1:
                        while(true)
                        {
                           §§push(param1);
                           if(_loc5_ || _loc3_)
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
                        if(§§pop().indexOf(_loc3_ + "-") == 0)
                        {
                           break;
                        }
                     }
                     _loc2_++;
                  }
                  continue;
               }
               §§push(this.pageIndexes[_loc2_]);
               §§goto(addr113);
            }
            addr63:
            §§push(-1);
            if(!(_loc4_ && _loc3_))
            {
               return §§pop();
            }
            addr102:
            return §§pop();
         }
         §§goto(addr102);
         §§push(_loc2_);
      }
      
      public function §=L§(param1:String) : String
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
            while(§§pop() >= this.levelsPerPage)
            {
               loop1:
               while(true)
               {
                  §§push(0);
                  if(!(_loc6_ || this))
                  {
                     break;
                  }
                  _loc4_ = §§pop();
                  if(!_loc5_)
                  {
                     if(!(_loc6_ || _loc3_))
                     {
                        break loop0;
                     }
                     while(true)
                     {
                        §§push(_loc4_);
                        if(!(_loc5_ && this))
                        {
                           if(§§pop() >= this.pageIndexes.length)
                           {
                              if(_loc6_)
                              {
                                 if(_loc6_)
                                 {
                                    if(!(_loc6_ || this))
                                    {
                                       addr122:
                                       §§push(_loc4_);
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    addr92:
                                 }
                                 return null;
                              }
                              addr96:
                              if(!(_loc5_ && _loc3_))
                              {
                                 continue;
                              }
                              addr129:
                              §§push(this.pageIndexes);
                           }
                           else
                           {
                              §§push(this.pageIndexes);
                              if(!(_loc5_ && param1))
                              {
                                 §§push(_loc4_);
                                 if(!_loc5_)
                                 {
                                    if(§§pop()[§§pop()] == _loc2_)
                                    {
                                       §§goto(addr122);
                                    }
                                    else
                                    {
                                       _loc4_++;
                                       §§goto(addr96);
                                    }
                                 }
                                 §§goto(addr132);
                              }
                           }
                           addr132:
                           §§push(§§pop()[§§pop() + 1] + "-");
                           if(_loc6_ || _loc2_)
                           {
                              §§push(§§pop() + 1);
                           }
                           return §§pop();
                           §§push(_loc4_);
                        }
                        break;
                     }
                     if(§§pop() + 1 < this.pageIndexes.length)
                     {
                        §§goto(addr129);
                     }
                     else
                     {
                        §§goto(addr92);
                     }
                  }
                  else
                  {
                     while(true)
                     {
                        continue loop1;
                     }
                     addr192:
                  }
               }
            }
            §§push(_loc2_ + "-");
            if(!_loc5_)
            {
               return §§pop() + (_loc3_ + 1);
            }
         }
         §§goto(addr192);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.mName = param1;
         }
      }
      
      public function get menuImage() : String
      {
         return this.§8!v§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8!v§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§`T§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§`T§ = param1;
         }
      }
      
      public function get §%v§() : Array
      {
         return this.§1!-§;
      }
      
      public function get §^B§() : Array
      {
         return this.§9!g§;
      }
      
      public function set §^B§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§9!g§ = param1;
         }
      }
      
      public function get §-+§() : int
      {
         return this.§7O§;
      }
      
      public function set §-+§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     loop1:
                     while(§§pop())
                     {
                        if(_loc2_)
                        {
                           while(true)
                           {
                              this.§7O§ = param1;
                           }
                           addr62:
                        }
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              break loop1;
                           }
                           continue loop0;
                        }
                     }
                     return;
                     addr58:
                  }
               }
               addr75:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr62);
      }
      
      public function get pageIndexes() : Array
      {
         return this.§@y§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§@y§ = param1;
         }
      }
      
      public function §5k§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§4L§[param1] = param2;
         }
      }
      
      public function §4!#§(param1:String) : String
      {
         return this.§4L§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§;A§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§;A§ = param1;
         }
      }
      
      public function get §0l§() : String
      {
         return this.§!!e§;
      }
      
      public function set §0l§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!!e§ = param1;
         }
      }
      
      public function get §1!S§() : String
      {
         return this.§7§;
      }
      
      public function set §1!S§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§7§ = param1;
         }
      }
      
      public function get writtenName() : String
      {
         return this.§,!,§;
      }
      
      public function set writtenName(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,!,§ = param1;
         }
      }
   }
}
