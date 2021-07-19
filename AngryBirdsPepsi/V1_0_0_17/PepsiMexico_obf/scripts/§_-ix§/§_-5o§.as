package §_-ix§
{
   import §_-V7§.§_-rJ§;
   import §_-wT§.§_-c9§;
   import flash.geom.Point;
   
   public class §_-5o§ extends §_-rJ§
   {
      
      public static const §_-5n§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §_-5n§ = ["x","y"];
         }
      }
      
      protected var §_-zd§:Number;
      
      protected var §_-Ji§:Number;
      
      protected var _flags:uint = 0;
      
      protected var §_-9Z§:Point = null;
      
      protected var §_-Dd§:Boolean = false;
      
      protected var §_-lK§:Boolean = false;
      
      protected var §_-WJ§:Number;
      
      protected var §_-Jd§:Number;
      
      public function §_-5o§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §_-mO§(param1:§_-c9§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            param1.§_-tG§(§_-5o§,Point,§_-5n§);
         }
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param1);
            if(!_loc4_)
            {
               if(§§pop() == "x")
               {
                  this.§_-Dd§ = true;
                  this.§_-zd§ = param2;
                  addr27:
                  §§push(this);
                  §§push(this._flags);
                  if(_loc5_)
                  {
                     if(param3)
                     {
                        §§pop()._flags = 1 | (!(_loc4_ && param1) ? §§pop() : §§pop());
                        §§goto(addr34);
                     }
                     else
                     {
                        §§push(0);
                     }
                     §§goto(addr45);
                  }
                  addr34:
                  if(_loc5_ || param2)
                  {
                  }
                  §§goto(addr114);
               }
               else
               {
                  addr64:
                  if(param1 == "y")
                  {
                     if(_loc5_ || param1)
                     {
                        this.§_-lK§ = true;
                        this.§_-Ji§ = param2;
                        if(_loc5_ || param1)
                        {
                        }
                        §§goto(addr114);
                     }
                     §§push(this);
                     §§push(this._flags);
                     if(!(_loc4_ && param2))
                     {
                        if(param3)
                        {
                           §§pop()._flags = 4 | (!_loc4_ ? §§pop() : §§pop());
                           §§goto(addr105);
                        }
                        else
                        {
                           §§push(0);
                        }
                        §§goto(addr111);
                     }
                     addr105:
                     §§goto(addr114);
                  }
               }
               addr114:
               return;
            }
            §§goto(addr64);
         }
         §§goto(addr27);
      }
      
      override protected function newInstance() : §_-rJ§
      {
         return new §_-5o§();
      }
      
      override public function get target() : Object
      {
         return this.§_-9Z§;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_ || param2)
         {
            if(§§pop() == "x")
            {
               if(_loc4_)
               {
                  this.§_-Dd§ = true;
               }
               this.§_-WJ§ = param2;
               §§push(this);
               §§push(this._flags);
               if(!(_loc5_ && param3))
               {
                  if(param3)
                  {
                     §§pop()._flags = 2 | (!_loc5_ ? §§pop() : §§pop());
                     addr106:
                     return;
                     addr43:
                  }
                  else
                  {
                     §§push(0);
                  }
                  §§goto(addr56);
               }
               §§goto(addr43);
            }
            else
            {
               addr61:
               if(param1 == "y")
               {
                  if(_loc4_ || param2)
                  {
                     this.§_-lK§ = true;
                     this.§_-Jd§ = param2;
                     if(!(_loc5_ && this))
                     {
                        §§push(this);
                        §§push(this._flags);
                        if(_loc4_)
                        {
                           if(param3)
                           {
                              §§pop()._flags = 8 | (!_loc5_ ? §§pop() : §§pop());
                              addr97:
                              §§goto(addr106);
                           }
                           else
                           {
                              §§push(0);
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr97);
                     }
                  }
               }
            }
            §§goto(addr106);
         }
         §§goto(addr61);
      }
      
      override public function set target(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§_-9Z§ = param1 as Point;
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Point = this.§_-9Z§;
         §§push(this.§_-Dd§);
         if(_loc2_ || this)
         {
            if(§§pop())
            {
               if(!(_loc3_ && _loc1_))
               {
                  if(isNaN(this.§_-zd§))
                  {
                     if(!_loc3_)
                     {
                        this.§_-zd§ = _loc1_.x;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr84:
                           if(isNaN(this.§_-WJ§))
                           {
                              if(!_loc3_)
                              {
                                 this.§_-WJ§ = _loc1_.x;
                                 addr148:
                                 if(this.§_-lK§)
                                 {
                                    addr151:
                                    if(isNaN(this.§_-Ji§))
                                    {
                                       if(_loc2_)
                                       {
                                          this.§_-Ji§ = _loc1_.y;
                                          if(_loc2_)
                                          {
                                             §§goto(addr210);
                                          }
                                          else
                                          {
                                             addr196:
                                             this.§_-Ji§ += _loc1_.y;
                                             if(_loc2_ || this)
                                             {
                                                §§goto(addr210);
                                             }
                                             §§goto(addr247);
                                          }
                                       }
                                       §§goto(addr247);
                                    }
                                    else
                                    {
                                       §§push(this._flags);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          addr230:
                                          §§push(4);
                                          if(!(_loc3_ && this))
                                          {
                                             addr182:
                                             §§push(§§pop() & §§pop());
                                             if(_loc2_ || this)
                                             {
                                                addr190:
                                                §§push(0);
                                                if(_loc2_)
                                                {
                                                   addr193:
                                                   if(§§pop() != §§pop())
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         §§goto(addr196);
                                                      }
                                                      §§goto(addr247);
                                                   }
                                                   addr210:
                                                   if(isNaN(this.§_-Jd§))
                                                   {
                                                      addr215:
                                                      this.§_-Jd§ = _loc1_.y;
                                                      if(_loc3_ && _loc2_)
                                                      {
                                                         addr247:
                                                         this.§_-Jd§ += _loc1_.y;
                                                      }
                                                      §§goto(addr254);
                                                   }
                                                   else
                                                   {
                                                      §§push(this._flags);
                                                   }
                                                   §§goto(addr254);
                                                }
                                                §§goto(addr232);
                                             }
                                             addr231:
                                             addr232:
                                             if(§§pop() != §§pop())
                                             {
                                                if(_loc2_ || _loc1_)
                                                {
                                                   §§goto(addr247);
                                                }
                                                §§goto(addr254);
                                             }
                                             addr254:
                                             return;
                                             §§push(0);
                                          }
                                          §§goto(addr231);
                                          §§push(§§pop() & §§pop());
                                       }
                                    }
                                    §§goto(addr230);
                                    §§push(8);
                                 }
                                 §§goto(addr254);
                                 addr95:
                              }
                              §§goto(addr215);
                           }
                           else
                           {
                              §§push(this._flags);
                              if(_loc2_ || _loc1_)
                              {
                                 addr105:
                                 §§push(2);
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§push(§§pop() & §§pop());
                                    if(!_loc3_)
                                    {
                                       §§push(0);
                                       if(_loc2_ || _loc3_)
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                this.§_-WJ§ += _loc1_.x;
                                                if(_loc2_ || _loc2_)
                                                {
                                                   §§goto(addr148);
                                                }
                                                §§goto(addr210);
                                             }
                                          }
                                          §§goto(addr148);
                                       }
                                       §§goto(addr193);
                                    }
                                    §§goto(addr231);
                                 }
                                 §§goto(addr182);
                              }
                           }
                           §§goto(addr230);
                        }
                        §§goto(addr247);
                     }
                     §§goto(addr95);
                  }
                  else
                  {
                     §§push(this._flags);
                     if(!(_loc3_ && this))
                     {
                        §§push(1);
                        if(!_loc3_)
                        {
                           §§push(§§pop() & §§pop());
                           if(!_loc3_)
                           {
                              §§push(0);
                              if(_loc2_ || this)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    this.§_-zd§ += _loc1_.x;
                                 }
                                 §§goto(addr84);
                              }
                              §§goto(addr193);
                           }
                           §§goto(addr190);
                        }
                        §§goto(addr182);
                     }
                  }
                  §§goto(addr105);
               }
               §§goto(addr151);
            }
         }
         §§goto(addr148);
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Point = this.§_-9Z§;
         §§push(1 - param1);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || param1)
         {
            §§push(this.§_-Dd§);
            if(_loc5_ || param1)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     _loc2_.x = this.§_-zd§ * _loc3_ + this.§_-WJ§ * param1;
                     if(!_loc4_)
                     {
                        addr69:
                        if(this.§_-lK§)
                        {
                           if(!_loc4_)
                           {
                              _loc2_.y = this.§_-Ji§ * _loc3_ + this.§_-Jd§ * param1;
                              addr74:
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr74);
               }
            }
         }
         §§goto(addr69);
      }
      
      override protected function copyFrom(param1:§_-rJ§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            super.copyFrom(param1);
         }
         var _loc2_:§_-5o§ = param1 as §_-5o§;
         this.§_-9Z§ = _loc2_.§_-9Z§;
         if(_loc4_ || this)
         {
            this.§_-zd§ = _loc2_.§_-zd§;
            this.§_-Ji§ = _loc2_.§_-Ji§;
            this.§_-WJ§ = _loc2_.§_-WJ§;
            if(_loc4_ || param1)
            {
               this.§_-Jd§ = _loc2_.§_-Jd§;
               this.§_-Dd§ = _loc2_.§_-Dd§;
               addr70:
            }
            this.§_-lK§ = _loc2_.§_-lK§;
            this._flags = _loc2_._flags;
            return;
         }
         §§goto(addr70);
      }
   }
}
