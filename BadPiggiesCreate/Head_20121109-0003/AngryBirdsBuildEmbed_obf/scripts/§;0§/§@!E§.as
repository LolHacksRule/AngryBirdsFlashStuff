package §;0§
{
   import §3§.§8Y§;
   import §]s§.§&[§;
   import flash.geom.Point;
   
   public class §@!E§ extends §8Y§
   {
      
      public static const §03§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §03§ = ["x","y"];
         }
      }
      
      protected var §;k§:Number;
      
      protected var §<h§:Number;
      
      protected var _flags:uint = 0;
      
      protected var §?!p§:Point = null;
      
      protected var §^!p§:Boolean = false;
      
      protected var §@!<§:Boolean = false;
      
      protected var §'!u§:Number;
      
      protected var §-!%§:Number;
      
      public function §@!E§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §-V§(param1:§&[§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            param1.§6p§(§@!E§,Point,§03§);
         }
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!_loc4_)
         {
            §§push("x");
            if(_loc5_)
            {
               if(§§pop() == §§pop())
               {
                  if(!(_loc4_ && param1))
                  {
                     this.§^!p§ = true;
                     this.§;k§ = param2;
                     if(_loc5_ || param3)
                     {
                        §§push(this);
                        §§push(this._flags);
                        if(!_loc4_)
                        {
                           if(param3)
                           {
                              §§pop()._flags = 1 | (_loc5_ || param1 ? §§pop() : §§pop());
                              addr123:
                              return;
                              addr61:
                              addr75:
                           }
                           else
                           {
                              §§push(0);
                           }
                           §§goto(addr72);
                        }
                        §§goto(addr61);
                     }
                     else
                     {
                        addr102:
                        §§push(this);
                        §§push(this._flags);
                        if(_loc5_)
                        {
                           if(param3)
                           {
                              §§pop()._flags = 4 | (_loc5_ || this ? §§pop() : §§pop());
                              addr109:
                              §§goto(addr123);
                           }
                           else
                           {
                              §§push(0);
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr109);
                     }
                  }
                  §§goto(addr75);
               }
               else
               {
                  addr78:
                  if(param1 == "y")
                  {
                     this.§@!<§ = true;
                     this.§<h§ = param2;
                     if(_loc5_ || this)
                     {
                        §§goto(addr102);
                     }
                  }
               }
               §§goto(addr123);
            }
         }
         §§goto(addr78);
      }
      
      override protected function newInstance() : §8Y§
      {
         return new §@!E§();
      }
      
      override public function get target() : Object
      {
         return this.§?!p§;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push("x");
               if(_loc4_ || param2)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!_loc5_)
                     {
                        this.§^!p§ = true;
                        if(_loc4_ || param3)
                        {
                           this.§'!u§ = param2;
                           §§push(this);
                           §§push(this._flags);
                           if(_loc4_)
                           {
                              if(param3)
                              {
                                 §§pop()._flags = 2 | (!(_loc5_ && param2) ? §§pop() : §§pop());
                                 §§goto(addr67);
                              }
                              else
                              {
                                 §§push(0);
                              }
                              §§goto(addr78);
                           }
                           addr67:
                           if(_loc5_ && param1)
                           {
                              addr105:
                              this.§-!%§ = param2;
                              §§push(this);
                              §§push(this._flags);
                              if(!_loc5_)
                              {
                                 if(param3)
                                 {
                                    §§pop()._flags = 8 | (_loc4_ || param1 ? §§pop() : §§pop());
                                    §§goto(addr115);
                                 }
                                 else
                                 {
                                    §§push(0);
                                 }
                                 §§goto(addr126);
                              }
                              addr115:
                           }
                           §§goto(addr129);
                        }
                        §§goto(addr105);
                     }
                  }
                  else
                  {
                     addr101:
                     if(param1 == "y")
                     {
                        this.§@!<§ = true;
                        §§goto(addr105);
                     }
                  }
                  addr129:
                  return;
               }
            }
            §§goto(addr101);
         }
         §§goto(addr105);
      }
      
      override public function set target(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?!p§ = param1 as Point;
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Point = this.§?!p§;
         if(_loc2_)
         {
            §§push(this.§^!p§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     if(isNaN(this.§;k§))
                     {
                        if(!_loc3_)
                        {
                           this.§;k§ = _loc1_.x;
                           addr96:
                           if(isNaN(this.§'!u§))
                           {
                              if(!_loc3_)
                              {
                                 addr103:
                                 this.§'!u§ = _loc1_.x;
                                 addr156:
                                 if(this.§@!<§)
                                 {
                                    if(_loc2_ || _loc1_)
                                    {
                                       if(isNaN(this.§<h§))
                                       {
                                          this.§<h§ = _loc1_.y;
                                          if(_loc2_ || _loc2_)
                                          {
                                          }
                                          §§goto(addr236);
                                       }
                                       else
                                       {
                                          §§push(this._flags);
                                          if(_loc2_)
                                          {
                                             §§push(4);
                                             if(!_loc3_)
                                             {
                                                addr190:
                                                §§push(§§pop() & §§pop());
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   addr198:
                                                   §§push(0);
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      addr206:
                                                      if(§§pop() != §§pop())
                                                      {
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            this.§<h§ += _loc1_.y;
                                                            §§goto(addr231);
                                                         }
                                                         §§goto(addr249);
                                                      }
                                                      §§goto(addr231);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr248);
                                       }
                                    }
                                    addr182:
                                    addr231:
                                    if(isNaN(this.§-!%§))
                                    {
                                       addr236:
                                       this.§-!%§ = _loc1_.y;
                                       if(!_loc2_)
                                       {
                                          addr249:
                                          this.§-!%§ += _loc1_.y;
                                       }
                                    }
                                    else
                                    {
                                       addr248:
                                       if((this._flags & 8) != 0)
                                       {
                                       }
                                    }
                                    §§goto(addr256);
                                 }
                                 addr256:
                                 return;
                                 addr107:
                              }
                              §§goto(addr231);
                           }
                           else
                           {
                              §§push(this._flags);
                              if(_loc2_)
                              {
                                 addr112:
                                 §§push(2);
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() & §§pop());
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       §§push(0);
                                       if(_loc2_ || this)
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                addr149:
                                                this.§'!u§ += _loc1_.x;
                                                §§goto(addr156);
                                             }
                                             §§goto(addr182);
                                          }
                                          §§goto(addr156);
                                       }
                                       §§goto(addr206);
                                    }
                                    §§goto(addr198);
                                 }
                                 §§goto(addr248);
                              }
                           }
                           §§goto(addr248);
                        }
                        §§goto(addr103);
                     }
                     else
                     {
                        §§push(this._flags);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(1);
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(§§pop() & §§pop());
                              if(_loc2_ || _loc2_)
                              {
                                 §§push(0);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       if(_loc2_)
                                       {
                                          this.§;k§ += _loc1_.x;
                                          if(!(_loc3_ && this))
                                          {
                                             §§goto(addr96);
                                          }
                                          §§goto(addr149);
                                       }
                                       §§goto(addr107);
                                    }
                                    §§goto(addr96);
                                 }
                              }
                              §§goto(addr248);
                           }
                           §§goto(addr190);
                        }
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr149);
               }
            }
            §§goto(addr103);
         }
         §§goto(addr236);
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Point = this.§?!p§;
         §§push(1 - param1);
         if(!(_loc4_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            §§push(this.§^!p§);
            if(_loc5_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && param1))
                  {
                     _loc2_.x = this.§;k§ * _loc3_ + this.§'!u§ * param1;
                     if(_loc4_ && _loc2_)
                     {
                     }
                     §§goto(addr111);
                  }
               }
               §§push(this.§@!<§);
            }
            if(§§pop())
            {
               if(!(_loc4_ && param1))
               {
                  _loc2_.y = this.§<h§ * _loc3_ + this.§-!%§ * param1;
               }
            }
         }
         addr111:
      }
      
      override protected function copyFrom(param1:§8Y§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.copyFrom(param1);
         }
         var _loc2_:§@!E§ = param1 as §@!E§;
         this.§?!p§ = _loc2_.§?!p§;
         this.§;k§ = _loc2_.§;k§;
         this.§<h§ = _loc2_.§<h§;
         if(!_loc3_)
         {
            this.§'!u§ = _loc2_.§'!u§;
            if(_loc4_)
            {
               this.§-!%§ = _loc2_.§-!%§;
               this.§^!p§ = _loc2_.§^!p§;
               this.§@!<§ = _loc2_.§@!<§;
            }
         }
         this._flags = _loc2_._flags;
      }
   }
}
