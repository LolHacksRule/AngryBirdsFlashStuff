package §-u§
{
   import §3§.§8Y§;
   import §]s§.§&[§;
   import flash.display.MovieClip;
   
   public class MovieClipUpdater extends §8Y§
   {
      
      public static const §03§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §03§ = ["_frame"];
         }
      }
      
      protected var _flags:uint = 0;
      
      protected var §;u§:MovieClipParameter;
      
      protected var §?!p§:MovieClip = null;
      
      protected var §%f§:MovieClipParameter;
      
      public function MovieClipUpdater()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§%f§ = new MovieClipParameter();
            if(!(_loc2_ && this))
            {
               this.§;u§ = new MovieClipParameter();
               if(!_loc2_)
               {
                  super();
               }
            }
         }
      }
      
      public static function §-V§(param1:§&[§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1.§6p§(MovieClipUpdater,MovieClip,§03§);
         }
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(param1 == "_frame")
            {
               if(!(_loc4_ && this))
               {
                  this._flags |= 1;
                  addr39:
                  if(!_loc4_)
                  {
                     §§push(this.§;u§);
                     if(!_loc4_)
                     {
                        §§push(this.§;u§.relativeFlags);
                        if(!_loc4_)
                        {
                           if(param3)
                           {
                              §§pop().relativeFlags = 1 | (!!_loc5_ ? §§pop() : §§pop());
                              §§goto(addr68);
                           }
                           else
                           {
                              §§push(0);
                           }
                           §§goto(addr74);
                        }
                        addr68:
                        if(_loc5_)
                        {
                           addr81:
                           this.§;u§.frame = param2;
                           §§goto(addr83);
                        }
                        addr83:
                        return;
                     }
                     §§goto(addr81);
                  }
               }
            }
            §§goto(addr81);
         }
         §§goto(addr39);
      }
      
      override public function set target(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§?!p§ = param1 as MovieClip;
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:MovieClip = this.§?!p§;
         var _loc3_:MovieClipParameter = this.§;u§;
         var _loc4_:MovieClipParameter = this.§%f§;
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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:MovieClip = this.§?!p§;
         var _loc2_:MovieClipParameter = this.§;u§;
         var _loc3_:MovieClipParameter = this.§%f§;
         §§push(this._flags);
         if(!_loc5_)
         {
            §§push(uint(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(!(_loc5_ && _loc3_))
         {
            §§push(1);
            if(_loc6_)
            {
               §§push(§§pop() & §§pop());
               if(_loc6_)
               {
                  §§push(0);
                  if(!_loc5_)
                  {
                     if(§§pop() != §§pop())
                     {
                        if(!(_loc5_ && this))
                        {
                           if(isNaN(_loc3_.frame))
                           {
                              if(_loc6_ || this)
                              {
                                 _loc3_.frame = _loc1_.currentFrame;
                              }
                              addr137:
                              if(isNaN(_loc2_.frame))
                              {
                                 addr142:
                                 _loc2_.frame = _loc1_.currentFrame;
                                 if(_loc5_)
                                 {
                                    addr157:
                                    _loc2_.frame += _loc1_.currentFrame;
                                 }
                              }
                              else
                              {
                                 addr154:
                                 if((_loc2_.relativeFlags & 1) != 0)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§goto(addr157);
                                    }
                                 }
                              }
                           }
                           else
                           {
                              §§push(_loc3_.relativeFlags);
                              if(!_loc5_)
                              {
                                 §§push(1);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() & §§pop());
                                    if(!(_loc5_ && this))
                                    {
                                       addr102:
                                       §§push(0);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          addr110:
                                          if(§§pop() != §§pop())
                                          {
                                             if(_loc6_ || this)
                                             {
                                                _loc3_.frame += _loc1_.currentFrame;
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr137);
                                                }
                                                §§goto(addr157);
                                             }
                                             §§goto(addr142);
                                          }
                                          §§goto(addr137);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr154);
                           }
                           §§goto(addr154);
                        }
                     }
                     return;
                  }
                  §§goto(addr110);
               }
               §§goto(addr102);
            }
         }
         §§goto(addr154);
      }
      
      override public function get target() : Object
      {
         return this.§?!p§;
      }
      
      override protected function newInstance() : §8Y§
      {
         return new MovieClipUpdater();
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(param1 == "_frame")
            {
               if(!_loc4_)
               {
                  this._flags |= 1;
                  if(_loc4_)
                  {
                  }
                  §§goto(addr83);
               }
               §§push(this.§%f§);
               if(!_loc4_)
               {
                  §§push(this.§%f§.relativeFlags);
                  if(!_loc4_)
                  {
                     if(param3)
                     {
                        §§pop().relativeFlags = 1 | (!_loc4_ ? §§pop() : §§pop());
                        §§goto(addr63);
                     }
                     else
                     {
                        §§push(0);
                     }
                     §§goto(addr69);
                  }
                  addr63:
                  if(!(_loc4_ && this))
                  {
                     addr81:
                     this.§%f§.frame = param2;
                  }
                  §§goto(addr83);
               }
               §§goto(addr81);
            }
            addr83:
            return;
         }
         §§goto(addr81);
      }
      
      override protected function copyFrom(param1:§8Y§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            super.copyFrom(param1);
         }
         var _loc2_:MovieClipUpdater = param1 as MovieClipUpdater;
         if(!(_loc4_ && param1))
         {
            this.§?!p§ = _loc2_.§?!p§;
            if(_loc3_)
            {
               this.§%f§.copyFrom(_loc2_.§%f§);
               if(!_loc4_)
               {
                  this.§;u§.copyFrom(_loc2_.§;u§);
                  if(_loc3_ || _loc2_)
                  {
                     addr83:
                     this._flags = _loc2_._flags;
                  }
               }
               §§goto(addr83);
            }
            return;
         }
         §§goto(addr83);
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
