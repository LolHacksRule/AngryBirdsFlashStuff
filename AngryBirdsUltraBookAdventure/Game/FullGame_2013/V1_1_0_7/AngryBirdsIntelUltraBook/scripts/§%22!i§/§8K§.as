package §"!i§
{
   import flash.utils.Dictionary;
   
   public class §8K§
   {
       
      
      private var §#!=§:String = "";
      
      private var mName:String = "";
      
      private var §?F§:String = "";
      
      private var §1&§:String = "";
      
      private var §>!k§:String = "";
      
      private var §"!D§:Array = null;
      
      private var §&g§:int = 0;
      
      private var §#!X§:Array = null;
      
      private var § !&§:Array;
      
      private var §8!d§:Array;
      
      private var §<#§:int = 0;
      
      private var §[C§:Dictionary;
      
      public function §8K§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§[C§ = new Dictionary();
            do
            {
               super();
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function §&" §() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §#E§(param1:String) : Array
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
            if(!(_loc6_ && param1))
            {
               if(§§pop() >= this.levelsPerPage)
               {
                  if(_loc5_)
                  {
                     if(_loc5_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc5_ || _loc2_)
                        {
                           addr75:
                           §§push(§§pop() + 1);
                           if(_loc5_ || _loc2_)
                           {
                           }
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr76:
                              while(_loc6_)
                              {
                                 continue loop1;
                              }
                              continue loop0;
                           }
                           addr75:
                        }
                        §§goto(addr75);
                     }
                  }
                  §§goto(addr76);
               }
               else
               {
                  §§push(param1);
                  if(_loc5_)
                  {
                     §§push(§§pop() + "-");
                     if(!_loc6_)
                     {
                        §§push(_loc3_);
                        if(_loc5_ || _loc2_)
                        {
                           §§push(§§pop() + 1);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§push(§§pop());
                  }
                  _loc4_ = §§pop();
               }
               §§goto(addr116);
            }
            §§goto(addr75);
         }
         return _loc2_;
      }
      
      public function §;y§(param1:int) : Object
      {
         return this.§ !&§[param1];
      }
      
      public function §,G§(param1:int) : String
      {
         return this.§8!d§[param1];
      }
      
      public function §9w§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§9!P§().indexOf(param1) == -1);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function §9!P§() : Array
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(_loc10_ || _loc2_)
         {
            if(this.§#!X§ == null)
            {
               §§goto(addr40);
            }
            §§goto(addr142);
         }
         addr40:
         _loc1_ = new Array();
         for each(_loc2_ in this.pageIndexes)
         {
            _loc3_ = this.§#E§(_loc2_);
            if(_loc10_)
            {
               var _loc7_:int = 0;
               if(!(_loc9_ && _loc3_))
               {
                  var _loc8_:* = _loc3_;
                  if(_loc10_ || _loc3_)
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
         if(_loc10_ || _loc3_)
         {
            this.§#!X§ = _loc1_;
            if(!(_loc10_ || this))
            {
               addr142:
               return this.§#!X§;
            }
         }
         return _loc1_;
      }
      
      public function §%-§(param1:String) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && this))
            {
               if(!_loc4_)
               {
                  if(§§pop() >= this.pageIndexes.length)
                  {
                     if(_loc5_)
                     {
                        if(_loc5_ || this)
                        {
                           break;
                        }
                        while(true)
                        {
                           _loc2_++;
                        }
                        addr61:
                     }
                     while(!(_loc4_ && _loc3_))
                     {
                        if(!_loc4_)
                        {
                           continue loop0;
                        }
                        loop3:
                        while(true)
                        {
                           §§push(param1);
                           if(_loc5_)
                           {
                              break;
                           }
                           addr103:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              continue loop3;
                           }
                        }
                        if(§§pop().indexOf(_loc3_ + "-") == 0)
                        {
                           break;
                        }
                        §§goto(addr61);
                     }
                     §§goto(addr94);
                  }
                  §§push(this.pageIndexes[_loc2_]);
                  §§goto(addr103);
               }
               addr94:
               return _loc2_;
            }
            break;
         }
         return §§pop();
      }
      
      public function §8`§(param1:String) : String
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
                  if(_loc5_)
                  {
                     break;
                  }
                  _loc4_ = §§pop();
                  if(_loc5_ && param1)
                  {
                     continue;
                  }
                  if(_loc5_ && this)
                  {
                     break loop0;
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                     if(_loc6_)
                     {
                        if(§§pop() >= this.pageIndexes.length)
                        {
                           if(!(_loc5_ && _loc3_))
                           {
                              if(_loc6_)
                              {
                                 if(!_loc6_)
                                 {
                                    §§goto(addr112);
                                 }
                              }
                              else
                              {
                                 addr122:
                              }
                              return null;
                           }
                           continue;
                        }
                        §§push(this.pageIndexes);
                        if(!_loc5_)
                        {
                           §§push(_loc4_);
                           if(!_loc5_)
                           {
                              if(§§pop()[§§pop()] != _loc2_)
                              {
                                 _loc4_++;
                                 continue;
                              }
                              if(_loc6_ || this)
                              {
                                 §§push(_loc4_);
                                 break;
                              }
                              §§goto(addr122);
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
                     if(!_loc5_)
                     {
                        return §§pop() + 1;
                     }
                  }
                  §§goto(addr122);
               }
            }
            §§push(_loc2_ + "-");
            if(_loc6_)
            {
               return §§pop() + (_loc3_ + 1);
            }
         }
         §§goto(addr152);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.mName = param1;
         }
      }
      
      public function get menuImage() : String
      {
         return this.§?F§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?F§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§&g§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§&g§ = param1;
         }
      }
      
      public function get §,t§() : Array
      {
         return this.§#!X§;
      }
      
      public function get §83§() : Array
      {
         return this.§ !&§;
      }
      
      public function set §83§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§ !&§ = param1;
         }
      }
      
      public function get §9J§() : int
      {
         return this.§<#§;
      }
      
      public function set §9J§(param1:int) : void
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
               addr89:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop4:
                     while(§§pop())
                     {
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              this.§<#§ = param1;
                           }
                           addr80:
                        }
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              break loop4;
                           }
                           continue loop0;
                        }
                     }
                     return;
                     addr76:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      public function get pageIndexes() : Array
      {
         return this.§"!D§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§"!D§ = param1;
         }
      }
      
      public function §]!'§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§[C§[param1] = param2;
         }
      }
      
      public function §8!O§(param1:String) : String
      {
         return this.§[C§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§8!d§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§8!d§ = param1;
         }
      }
      
      public function get §?E§() : String
      {
         return this.§1&§;
      }
      
      public function set §?E§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§1&§ = param1;
         }
      }
      
      public function get §2?§() : String
      {
         return this.§>!k§;
      }
      
      public function set §2?§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§>!k§ = param1;
         }
      }
      
      public function get writtenName() : String
      {
         return this.§#!=§;
      }
      
      public function set writtenName(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§#!=§ = param1;
         }
      }
   }
}
