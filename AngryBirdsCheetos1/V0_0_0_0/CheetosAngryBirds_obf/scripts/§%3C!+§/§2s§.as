package §<!+§
{
   import flash.utils.Dictionary;
   
   public class §2s§
   {
       
      
      private var §[!&§:String = "";
      
      private var mName:String = "";
      
      private var §]!+§:String = "";
      
      private var §1!5§:String = "";
      
      private var §-!L§:String = "";
      
      private var §0§:Array = null;
      
      private var §6!"§:int = 0;
      
      private var §@B§:Array = null;
      
      private var §&@§:Array;
      
      private var §;!Z§:Array;
      
      private var §7!3§:int = 0;
      
      private var §1!A§:Dictionary;
      
      public function §2s§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§1!A§ = new Dictionary();
            do
            {
               super();
            }
            while(!_loc2_);
            
         }
      }
      
      public function §",§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §54§(param1:String) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         var _loc2_:Array = new Array();
         var _loc3_:* = Number(0);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc6_ && this))
            {
               if(§§pop() >= this.levelsPerPage)
               {
                  if(_loc5_)
                  {
                     break;
                  }
                  loop1:
                  for(; !(_loc5_ || _loc2_); while(true)
                  {
                     _loc3_ = §§pop();
                     continue loop1;
                  })
                  {
                     loop2:
                     while(!(_loc5_ || this))
                     {
                        while(true)
                        {
                           _loc2_.push(_loc4_);
                           continue loop2;
                        }
                     }
                     §§push(_loc3_);
                     if(_loc5_ || _loc3_)
                     {
                        §§push(§§pop() + 1);
                        if(_loc6_ && param1)
                        {
                           continue;
                        }
                     }
                     §§push(Number(§§pop()));
                  }
                  continue;
               }
               §§push(param1);
               if(!_loc6_)
               {
                  §§push(§§pop() + "-");
                  if(!(_loc6_ && this))
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
               §§goto(addr126);
            }
            §§goto(addr73);
         }
         return _loc2_;
      }
      
      public function §,a§(param1:int) : Object
      {
         return this.§&@§[param1];
      }
      
      public function §&A§(param1:int) : String
      {
         return this.§;!Z§[param1];
      }
      
      public function §<!A§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§^!!§().indexOf(param1) == -1);
         if(!_loc3_)
         {
            return !§§pop();
         }
      }
      
      public function §^!!§() : Array
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(_loc10_ || _loc1_)
         {
            if(this.§@B§ == null)
            {
               §§goto(addr40);
            }
            §§goto(addr147);
         }
         addr40:
         _loc1_ = new Array();
         for each(_loc2_ in this.pageIndexes)
         {
            _loc3_ = this.§54§(_loc2_);
            if(!_loc9_)
            {
               var _loc7_:int = 0;
               if(!(_loc9_ && _loc2_))
               {
                  var _loc8_:* = _loc3_;
                  if(_loc9_ && this)
                  {
                  }
                  for each(_loc4_ in _loc8_)
                  {
                     if(_loc10_ || _loc3_)
                     {
                        _loc1_.push(_loc4_);
                     }
                  }
               }
            }
         }
         if(!(_loc9_ && _loc1_))
         {
            this.§@B§ = _loc1_;
            if(_loc9_ && _loc3_)
            {
               addr147:
               return this.§@B§;
            }
         }
         return _loc1_;
      }
      
      public function §,!E§(param1:String) : int
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
               if(!(_loc5_ && _loc3_))
               {
                  if(§§pop() >= this.pageIndexes.length)
                  {
                     if(_loc4_ || this)
                     {
                        if(!(_loc5_ && this))
                        {
                           if(!(_loc5_ && _loc3_))
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              §§push(param1);
                              if(_loc4_ || _loc2_)
                              {
                                 break;
                              }
                              addr117:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 continue loop1;
                              }
                           }
                           if(§§pop().indexOf(_loc3_ + "-") != 0)
                           {
                              addr72:
                              _loc2_++;
                              if(!(_loc5_ && param1))
                              {
                                 continue;
                              }
                           }
                           §§goto(addr98);
                        }
                     }
                     §§goto(addr72);
                  }
                  else
                  {
                     §§push(this.pageIndexes[_loc2_]);
                  }
                  §§goto(addr117);
               }
               addr98:
               return _loc2_;
            }
            break;
         }
         return §§pop();
      }
      
      public function §?I§(param1:String) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:int = 0;
         §§push(param1);
         if(!(_loc6_ && this))
         {
            §§push(§§pop().substring(0,param1.indexOf("-")));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = parseInt(param1.substring(param1.indexOf("-") + 1));
         if(_loc5_)
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               if(§§pop() >= this.levelsPerPage)
               {
                  continue;
               }
               if(_loc5_ || _loc3_)
               {
                  break;
               }
               addr191:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         §§push(_loc2_ + "-");
         if(!(_loc6_ && param1))
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
         return this.§]!+§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§]!+§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§6!"§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§6!"§ = param1;
         }
      }
      
      public function get §#!Y§() : Array
      {
         return this.§@B§;
      }
      
      public function get §2!J§() : Array
      {
         return this.§&@§;
      }
      
      public function set §2!J§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§&@§ = param1;
         }
      }
      
      public function get currentPage() : int
      {
         return this.§7!3§;
      }
      
      public function set currentPage(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               if(_loc3_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && param1))
                           {
                              while(true)
                              {
                                 this.§7!3§ = param1;
                              }
                              addr58:
                           }
                           while(true)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 break loop1;
                              }
                              continue loop0;
                           }
                        }
                        §§push(§§pop() < this.pageIndexes.length);
                        addr28:
                        break;
                        if(_loc3_ || _loc2_)
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
         §§goto(addr58);
      }
      
      public function get pageIndexes() : Array
      {
         return this.§0§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§0§ = param1;
         }
      }
      
      public function §2!+§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§1!A§[param1] = param2;
         }
      }
      
      public function §%F§(param1:String) : String
      {
         return this.§1!A§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§;!Z§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;!Z§ = param1;
         }
      }
      
      public function get §+y§() : String
      {
         return this.§1!5§;
      }
      
      public function set §+y§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§1!5§ = param1;
         }
      }
      
      public function get §9!-§() : String
      {
         return this.§-!L§;
      }
      
      public function set §9!-§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§-!L§ = param1;
         }
      }
      
      public function get writtenName() : String
      {
         return this.§[!&§;
      }
      
      public function set writtenName(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§[!&§ = param1;
         }
      }
   }
}
