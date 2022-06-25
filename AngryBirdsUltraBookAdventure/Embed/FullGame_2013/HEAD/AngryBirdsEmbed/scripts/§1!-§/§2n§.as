package §1!-§
{
   import flash.utils.Dictionary;
   
   public class §2n§
   {
       
      
      private var §>H§:String = "";
      
      private var mName:String = "";
      
      private var §2"§:String = "";
      
      private var §-T§:String = "";
      
      private var §8!"§:String = "";
      
      private var §>!$§:Array = null;
      
      private var §8!3§:int = 0;
      
      private var §@R§:Array = null;
      
      private var §=!@§:Array;
      
      private var §-W§:Array;
      
      private var §1x§:int = 0;
      
      private var §'d§:Dictionary;
      
      public function §2n§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§'d§ = new Dictionary();
            if(!_loc2_)
            {
               super();
            }
         }
      }
      
      public function §7I§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §1M§(param1:String) : Array
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
            while(§§pop() < this.levelsPerPage)
            {
               §§push(param1);
               if(_loc5_ || this)
               {
                  §§push(§§pop() + "-");
                  if(!(_loc6_ && this))
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
               if(_loc5_)
               {
                  _loc2_.push(_loc4_);
                  if(!_loc5_)
                  {
                  }
                  break;
               }
               §§push(_loc3_);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(§§pop() + 1);
                  if(_loc5_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc6_)
                     {
                        continue;
                     }
                  }
                  _loc3_ = §§pop();
                  if(_loc6_)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
            return _loc2_;
         }
      }
      
      public function §7=§(param1:int) : Object
      {
         return this.§=!@§[param1];
      }
      
      public function §"Q§(param1:int) : String
      {
         return this.§-W§[param1];
      }
      
      public function §=9§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§=!N§().indexOf(param1) == -1);
         if(!_loc2_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function §=!N§() : Array
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(_loc10_)
         {
            if(this.§@R§ == null)
            {
               §§goto(addr35);
            }
            §§goto(addr132);
         }
         addr35:
         _loc1_ = new Array();
         for each(_loc2_ in this.pageIndexes)
         {
            _loc3_ = this.§1M§(_loc2_);
            if(!(_loc10_ || _loc3_))
            {
               continue;
            }
            var _loc7_:int = 0;
            if(_loc10_ || this)
            {
               var _loc8_:* = _loc3_;
               if(!_loc9_)
               {
                  for each(_loc4_ in _loc8_)
                  {
                     if(_loc9_)
                     {
                        continue;
                     }
                  }
                  addr113:
                  continue;
                  addr110:
               }
               while(true)
               {
                  _loc1_.push(_loc4_);
                  §§goto(addr110);
               }
            }
            §§goto(addr113);
         }
         if(_loc10_)
         {
            this.§@R§ = _loc1_;
            if(!(_loc10_ || _loc3_))
            {
               addr132:
               return this.§@R§;
            }
         }
         return _loc1_;
      }
      
      public function §;N§(param1:String) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ || _loc3_)
            {
               if(§§pop() < this.pageIndexes.length)
               {
                  §§push(this.pageIndexes[_loc2_]);
                  if(_loc4_ || this)
                  {
                     _loc3_ = §§pop();
                     if(!_loc5_)
                     {
                        addr39:
                        if(param1.indexOf(_loc3_ + "-") != 0)
                        {
                           continue;
                        }
                        if(!(_loc4_ || _loc3_))
                        {
                           addr108:
                           break;
                        }
                     }
                     §§push(_loc2_);
                     if(_loc4_ || param1)
                     {
                        return §§pop();
                     }
                     break;
                  }
                  §§goto(addr39);
               }
               §§goto(addr108);
            }
            break;
         }
         return §§pop();
      }
      
      public function §4E§(param1:String) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = 0;
         §§push(param1);
         if(!(_loc6_ && param1))
         {
            §§push(§§pop().substring(0,param1.indexOf("-")));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = parseInt(param1.substring(param1.indexOf("-") + 1));
         if(!(_loc6_ && this))
         {
            §§push(_loc3_);
            if(_loc5_ || _loc2_)
            {
               if(§§pop() < this.levelsPerPage)
               {
                  if(!_loc6_)
                  {
                     §§push(_loc2_ + "-");
                     if(_loc5_ || param1)
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
               if(_loc5_ || this)
               {
                  §§push(_loc4_);
                  if(_loc5_ || _loc3_)
                  {
                     if(§§pop()[§§pop()] == _loc2_)
                     {
                        if(_loc5_)
                        {
                           §§push(_loc4_);
                           if(!_loc5_)
                           {
                              continue;
                           }
                           if(§§pop() + 1 < this.pageIndexes.length)
                           {
                              if(!_loc6_)
                              {
                                 §§goto(addr131);
                              }
                              continue loop0;
                           }
                        }
                        break;
                     }
                     _loc4_++;
                     if(_loc6_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  §§goto(addr131);
               }
               addr131:
               §§push(this.pageIndexes[_loc4_ + 1] + "-");
               if(_loc5_ || param1)
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.mName = param1;
         }
      }
      
      public function get menuImage() : String
      {
         return this.§2"§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§2"§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§8!3§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§8!3§ = param1;
         }
      }
      
      public function get §8!?§() : Array
      {
         return this.§@R§;
      }
      
      public function get § 9§() : Array
      {
         return this.§=!@§;
      }
      
      public function set § 9§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§=!@§ = param1;
         }
      }
      
      public function get §>!=§() : int
      {
         return this.§1x§;
      }
      
      public function set §>!=§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(!_loc2_)
            {
               §§push(§§pop() >= 0);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(!(_loc2_ && this))
                     {
                        §§goto(addr55);
                     }
                  }
                  §§goto(addr63);
               }
               addr55:
               §§pop();
               if(_loc3_)
               {
                  addr63:
                  if(param1 < this.pageIndexes.length)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        this.§1x§ = param1;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr63);
      }
      
      public function get pageIndexes() : Array
      {
         return this.§>!$§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§>!$§ = param1;
         }
      }
      
      public function §2!E§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§'d§[param1] = param2;
         }
      }
      
      public function §1w§(param1:String) : String
      {
         return this.§'d§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§-W§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-W§ = param1;
         }
      }
      
      public function get §-!'§() : String
      {
         return this.§-T§;
      }
      
      public function set §-!'§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§-T§ = param1;
         }
      }
      
      public function get §6!>§() : String
      {
         return this.§8!"§;
      }
      
      public function set §6!>§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§8!"§ = param1;
         }
      }
      
      public function get writtenName() : String
      {
         return this.§>H§;
      }
      
      public function set writtenName(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§>H§ = param1;
         }
      }
   }
}
