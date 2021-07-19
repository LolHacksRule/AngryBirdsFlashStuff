package §_-Qx§
{
   import flash.utils.Dictionary;
   
   public class §_-JO§
   {
       
      
      private var mName:String = "";
      
      private var §_-N1§:String = "";
      
      private var §_-Dp§:String = "";
      
      private var §_-GK§:String = "";
      
      private var §_-2e§:Array = null;
      
      private var §_-HE§:int = 0;
      
      private var §_-5x§:Array = null;
      
      private var §_-q-§:Array;
      
      private var §_-Ck§:Array;
      
      private var §_-uw§:int = 0;
      
      private var §_-X7§:Dictionary;
      
      public function §_-JO§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-X7§ = new Dictionary();
            if(!(_loc1_ && _loc1_))
            {
               addr34:
               super();
            }
            return;
         }
         §§goto(addr34);
      }
      
      public function §_-Ru§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §_-84§(param1:String) : Array
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
                  if(!_loc6_)
                  {
                     §§push(§§pop() + "-");
                     if(_loc5_ || param1)
                     {
                        §§push(_loc3_);
                        if(!(_loc6_ && _loc2_))
                        {
                           §§push(§§pop() + 1);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§push(§§pop());
                  }
                  _loc4_ = §§pop();
                  if(_loc6_ && param1)
                  {
                     break;
                  }
                  _loc2_.push(_loc4_);
                  if(_loc5_ || _loc2_)
                  {
                     §§push(_loc3_);
                     if(!_loc5_)
                     {
                        continue;
                     }
                     §§push(§§pop() + 1);
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc5_ || this))
                        {
                           continue;
                        }
                     }
                     _loc3_ = §§pop();
                     if(!(_loc6_ && param1))
                     {
                        break;
                     }
                  }
               }
               return _loc2_;
            }
         }
      }
      
      public function §_-4Q§(param1:int) : Object
      {
         return this.§_-q-§[param1];
      }
      
      public function §_-O4§(param1:int) : String
      {
         return this.§_-Ck§[param1];
      }
      
      public function §_-Sr§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§_-h0§().indexOf(param1) == -1);
         if(_loc3_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function §_-h0§() : Array
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(!_loc10_)
         {
            if(this.§_-5x§ == null)
            {
               addr31:
               _loc1_ = new Array();
               for each(_loc2_ in this.pageIndexes)
               {
                  _loc3_ = this.§_-84§(_loc2_);
                  if(_loc10_)
                  {
                     continue;
                  }
                  var _loc7_:int = 0;
                  if(!(_loc10_ && _loc2_))
                  {
                     var _loc8_:* = _loc3_;
                     if(!(_loc10_ && this))
                     {
                        for each(_loc4_ in _loc8_)
                        {
                           if(!(_loc9_ || this))
                           {
                              continue;
                           }
                        }
                        addr101:
                        continue;
                        addr98:
                     }
                     while(true)
                     {
                        _loc1_.push(_loc4_);
                        §§goto(addr98);
                     }
                  }
                  §§goto(addr101);
               }
               if(!(_loc10_ && _loc3_))
               {
                  this.§_-5x§ = _loc1_;
                  if(!_loc10_)
                  {
                     return _loc1_;
                  }
               }
            }
            return this.§_-5x§;
         }
         §§goto(addr31);
      }
      
      public function §_-ZP§(param1:String) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         §§push(param1);
         if(!(_loc6_ && _loc2_))
         {
            §§push(§§pop().substring(0,param1.indexOf("-")));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = parseInt(param1.substring(param1.indexOf("-") + 1));
         if(_loc5_)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               if(§§pop() < this.levelsPerPage)
               {
                  if(_loc5_ || _loc3_)
                  {
                     §§push(_loc2_ + "-");
                     if(!(_loc6_ && param1))
                     {
                        return §§pop() + (_loc3_ + 1);
                     }
                  }
               }
               else
               {
                  addr74:
                  _loc4_ = Number(0);
               }
               loop0:
               while(true)
               {
                  §§push(_loc4_);
                  loop1:
                  while(true)
                  {
                     §§push(this.pageIndexes);
                     while(§§pop() < §§pop().length)
                     {
                        §§push(this.pageIndexes);
                        if(_loc5_ || _loc2_)
                        {
                           §§push(_loc4_);
                           if(!_loc5_)
                           {
                              addr139:
                              §§push(§§pop()[§§pop() + 1] + "-");
                           }
                           if(§§pop()[§§pop()] == _loc2_)
                           {
                              if(_loc6_ && this)
                              {
                                 continue loop0;
                              }
                              §§push(_loc4_);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() + 1);
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    §§push(this.pageIndexes);
                                    if(!_loc5_)
                                    {
                                       continue;
                                    }
                                    if(§§pop() >= §§pop().length)
                                    {
                                       break;
                                    }
                                    if(_loc6_)
                                    {
                                       continue loop0;
                                    }
                                    addr129:
                                    §§push(this.pageIndexes);
                                    §§push(_loc4_);
                                    if(_loc5_ || param1)
                                    {
                                    }
                                    §§goto(addr139);
                                 }
                              }
                              else
                              {
                                 addr171:
                                 §§push(Number(§§pop()));
                                 if(!(_loc5_ || _loc3_))
                                 {
                                    continue loop1;
                                 }
                              }
                           }
                           else
                           {
                              §§push(_loc4_);
                              if(_loc6_ && param1)
                              {
                                 continue loop1;
                              }
                              §§push(§§pop() + 1);
                              if(_loc5_ || param1)
                              {
                                 §§goto(addr171);
                              }
                           }
                           _loc4_ = §§pop();
                           if(_loc6_ && _loc2_)
                           {
                              break;
                           }
                           continue loop0;
                           if(_loc5_)
                           {
                              return §§pop() + 1;
                           }
                        }
                        §§goto(addr129);
                     }
                     return null;
                  }
               }
            }
         }
         §§goto(addr74);
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
         return this.§_-N1§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-N1§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§_-HE§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-HE§ = param1;
         }
      }
      
      public function get §_-7M§() : Array
      {
         return this.§_-5x§;
      }
      
      public function get §_-OD§() : Array
      {
         return this.§_-q-§;
      }
      
      public function set §_-OD§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§_-q-§ = param1;
         }
      }
      
      public function get currentPage() : int
      {
         return this.§_-uw§;
      }
      
      public function set currentPage(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§_-uw§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§_-2e§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§_-2e§ = param1;
         }
      }
      
      public function §_-N6§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§_-X7§[param1] = param2;
         }
      }
      
      public function §_-4B§(param1:String) : String
      {
         return this.§_-X7§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§_-Ck§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-Ck§ = param1;
         }
      }
      
      public function get §_-ZS§() : String
      {
         return this.§_-Dp§;
      }
      
      public function set §_-ZS§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-Dp§ = param1;
         }
      }
      
      public function get §_-aZ§() : String
      {
         return this.§_-GK§;
      }
      
      public function set §_-aZ§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§_-GK§ = param1;
         }
      }
   }
}
