package §_-wp§
{
   import §_-V7§.§_-rJ§;
   import §_-wT§.§_-c9§;
   import flash.display.MovieClip;
   
   public class §_-nL§ extends §_-rJ§
   {
      
      public static const §_-5n§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §_-5n§ = ["_frame"];
         }
      }
      
      protected var _flags:uint = 0;
      
      protected var §_-3D§:MovieClipParameter;
      
      protected var §_-9Z§:MovieClip = null;
      
      protected var §_-CQ§:MovieClipParameter;
      
      public function §_-nL§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§_-CQ§ = new MovieClipParameter();
            if(!(_loc2_ && _loc1_))
            {
               §§goto(addr40);
            }
            §§goto(addr46);
         }
         addr40:
         this.§_-3D§ = new MovieClipParameter();
         if(!_loc2_)
         {
            addr46:
            super();
         }
      }
      
      public static function §_-mO§(param1:§_-c9§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1.§_-tG§(§_-nL§,MovieClip,§_-5n§);
         }
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            if(param1 == "_frame")
            {
               if(_loc5_ || this)
               {
                  this._flags |= 1;
                  if(_loc5_ || param3)
                  {
                     §§push(this.§_-3D§);
                     if(_loc5_)
                     {
                        §§push(this.§_-3D§.relativeFlags);
                        if(_loc5_)
                        {
                           if(param3)
                           {
                              §§pop().relativeFlags = 1 | (!_loc4_ ? §§pop() : §§pop());
                              addr62:
                              if(_loc5_)
                              {
                                 addr82:
                                 this.§_-3D§.frame = param2;
                                 addr84:
                                 return;
                                 addr80:
                              }
                              §§goto(addr84);
                           }
                           else
                           {
                              §§push(0);
                           }
                           §§goto(addr75);
                        }
                        §§goto(addr62);
                     }
                  }
                  §§goto(addr82);
               }
               §§goto(addr80);
            }
         }
         §§goto(addr82);
      }
      
      override public function set target(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-9Z§ = param1 as MovieClip;
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:MovieClip = this.§_-9Z§;
         var _loc3_:MovieClipParameter = this.§_-3D§;
         var _loc4_:MovieClipParameter = this.§_-CQ§;
         §§push(this._flags);
         if(!_loc8_)
         {
            §§push(uint(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(1 - param1);
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         if(_loc7_)
         {
            if((_loc5_ & 1) != 0)
            {
               if(!(_loc8_ && param1))
               {
                  _loc2_.gotoAndStop(Math.round(_loc4_.frame * _loc6_ + _loc3_.frame * param1));
               }
            }
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:MovieClip = this.§_-9Z§;
         var _loc2_:MovieClipParameter = this.§_-3D§;
         var _loc3_:MovieClipParameter = this.§_-CQ§;
         §§push(this._flags);
         if(!(_loc6_ && _loc1_))
         {
            §§push(uint(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(!(_loc6_ && _loc1_))
         {
            §§push(1);
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§pop() & §§pop());
               if(!(_loc6_ && _loc2_))
               {
                  §§push(0);
                  if(_loc5_)
                  {
                     if(§§pop() != §§pop())
                     {
                        if(isNaN(_loc3_.frame))
                        {
                           if(!(_loc6_ && _loc3_))
                           {
                              _loc3_.frame = _loc1_.currentFrame;
                           }
                           addr123:
                           if(isNaN(_loc2_.frame))
                           {
                              if(_loc5_)
                              {
                                 _loc2_.frame = _loc1_.currentFrame;
                              }
                           }
                           else
                           {
                              addr147:
                              if((_loc2_.relativeFlags & 1) != 0)
                              {
                                 addr148:
                                 _loc2_.frame += _loc1_.currentFrame;
                              }
                           }
                        }
                        else
                        {
                           §§push(_loc3_.relativeFlags);
                           if(!_loc6_)
                           {
                              §§push(1);
                              if(_loc5_ || _loc3_)
                              {
                                 addr100:
                                 §§push(§§pop() & §§pop());
                                 if(_loc5_)
                                 {
                                    §§push(0);
                                    if(_loc5_ || _loc2_)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             _loc3_.frame += _loc1_.currentFrame;
                                             if(_loc5_)
                                             {
                                                §§goto(addr123);
                                             }
                                             §§goto(addr148);
                                          }
                                       }
                                       §§goto(addr123);
                                    }
                                 }
                              }
                           }
                           §§goto(addr147);
                        }
                        §§goto(addr147);
                     }
                     return;
                  }
               }
               §§goto(addr147);
            }
            §§goto(addr100);
         }
         §§goto(addr147);
      }
      
      override public function get target() : Object
      {
         return this.§_-9Z§;
      }
      
      override protected function newInstance() : §_-rJ§
      {
         return new §_-nL§();
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            if(param1 == "_frame")
            {
               if(!_loc4_)
               {
                  addr26:
                  this._flags |= 1;
                  if(_loc5_ || param1)
                  {
                     §§push(this.§_-CQ§);
                     if(!(_loc4_ && this))
                     {
                        §§push(this.§_-CQ§.relativeFlags);
                        if(!(_loc4_ && param1))
                        {
                           if(param3)
                           {
                              §§pop().relativeFlags = 1 | (!_loc4_ ? §§pop() : §§pop());
                              addr67:
                              if(_loc5_ || param2)
                              {
                                 addr92:
                                 this.§_-CQ§.frame = param2;
                                 addr94:
                                 return;
                                 addr90:
                              }
                              §§goto(addr94);
                           }
                           else
                           {
                              §§push(0);
                           }
                           §§goto(addr73);
                        }
                        §§goto(addr67);
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr90);
               }
            }
            §§goto(addr92);
         }
         §§goto(addr26);
      }
      
      override protected function copyFrom(param1:§_-rJ§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super.copyFrom(param1);
         }
         var _loc2_:§_-nL§ = param1 as §_-nL§;
         if(!_loc3_)
         {
            this.§_-9Z§ = _loc2_.§_-9Z§;
            if(!_loc3_)
            {
               this.§_-CQ§.copyFrom(_loc2_.§_-CQ§);
               if(!(_loc3_ && this))
               {
                  this.§_-3D§.copyFrom(_loc2_.§_-3D§);
                  if(!_loc3_)
                  {
                     addr70:
                     this._flags = _loc2_._flags;
                  }
                  return;
               }
            }
         }
         §§goto(addr70);
      }
   }
}

class MovieClipParameter
{
    
   
   public var relativeFlags:uint = 0;
   
   public var frame:Number;
   
   function MovieClipParameter()
   {
      super();
   }
   
   public function copyFrom(param1:MovieClipParameter) : void
   {
      this.relativeFlags = param1.relativeFlags;
      this.frame = param1.frame;
   }
}
