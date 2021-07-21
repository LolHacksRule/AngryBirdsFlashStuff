package §"K§
{
   import §8=§.§4"+§;
   import §<!3§.§"`§;
   import flash.display.MovieClip;
   
   public class §8!T§ extends §4"+§
   {
      
      public static const §0!V§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §0!V§ = ["_frame"];
         }
      }
      
      protected var _flags:uint = 0;
      
      protected var §,_§:MovieClipParameter;
      
      protected var §"!c§:MovieClip = null;
      
      protected var §-!m§:MovieClipParameter;
      
      public function §8!T§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§-!m§ = new MovieClipParameter();
         }
         while(true)
         {
            this.§,_§ = new MovieClipParameter();
            while(!_loc2_)
            {
               super();
               if(_loc1_ || this)
               {
                  return;
               }
            }
         }
      }
      
      public static function §>!X§(param1:§"`§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1.§5!j§(§8!T§,MovieClip,§0!V§);
         }
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            if(param1 == "_frame")
            {
               if(!(_loc5_ && param1))
               {
                  this._flags |= 1;
                  addr111:
                  loop0:
                  while(true)
                  {
                     §§push(this.§,_§);
                     while(true)
                     {
                        §§push(this.§,_§.relativeFlags);
                        if(!_loc5_)
                        {
                           if(param3)
                           {
                              §§pop().relativeFlags = 1 | (_loc4_ || param3 ? §§pop() : §§pop());
                              addr63:
                              continue loop0;
                           }
                           §§push(0);
                           §§goto(addr74);
                        }
                        §§goto(addr63);
                        addr84:
                        §§push(this.§,_§);
                        if(!(_loc5_ && param2))
                        {
                           §§pop().frame = param2;
                           if(!_loc5_)
                           {
                              §§goto(addr24);
                           }
                           continue loop0;
                        }
                     }
                  }
                  addr111:
               }
               §§goto(addr111);
            }
            addr24:
            return;
         }
         §§goto(addr111);
      }
      
      override public function set target(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§"!c§ = param1 as MovieClip;
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:MovieClip = this.§"!c§;
         var _loc3_:MovieClipParameter = this.§,_§;
         var _loc4_:MovieClipParameter = this.§-!m§;
         §§push(this._flags);
         if(!(_loc7_ && param1))
         {
            §§push(uint(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(1 - param1);
         if(_loc8_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         if(_loc8_)
         {
            if((_loc5_ & 1) != 0)
            {
               if(!_loc7_)
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
         var _loc1_:MovieClip = this.§"!c§;
         var _loc2_:MovieClipParameter = this.§,_§;
         var _loc3_:MovieClipParameter = this.§-!m§;
         §§push(this._flags);
         if(!(_loc6_ && _loc1_))
         {
            §§push(uint(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(!(_loc6_ && _loc2_))
         {
            §§push(1);
            if(_loc5_ || _loc1_)
            {
               §§push(§§pop() & §§pop());
               if(_loc5_)
               {
                  §§push(0);
                  if(!_loc6_)
                  {
                     if(§§pop() != §§pop())
                     {
                        if(_loc5_)
                        {
                           if(isNaN(_loc3_.frame))
                           {
                              if(_loc5_ || _loc1_)
                              {
                                 _loc3_.frame = _loc1_.currentFrame;
                                 if(_loc5_ || _loc2_)
                                 {
                                    loop0:
                                    while(!isNaN(_loc2_.frame))
                                    {
                                       §§push(_loc2_.relativeFlags);
                                       if(_loc5_)
                                       {
                                          while(true)
                                          {
                                             §§push(1);
                                             if(_loc5_ || _loc1_)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop() & §§pop());
                                                   if(_loc5_ || this)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         if(!_loc6_)
                                                         {
                                                            if(§§pop() != §§pop())
                                                            {
                                                               if(_loc5_ || _loc1_)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     if(_loc6_ && _loc1_)
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc2_.frame += _loc1_.currentFrame;
                                                                        addr152:
                                                                        §§goto(addr98);
                                                                     }
                                                                  }
                                                                  addr98:
                                                                  while(!(_loc5_ || _loc3_))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                                  addr98:
                                                                  return;
                                                                  addr170:
                                                               }
                                                               §§goto(addr152);
                                                            }
                                                            §§goto(addr98);
                                                         }
                                                         else
                                                         {
                                                            addr177:
                                                            while(true)
                                                            {
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  continue loop0;
                                                               }
                                                               if(!_loc6_)
                                                               {
                                                                  _loc3_.frame += _loc1_.currentFrame;
                                                               }
                                                               §§goto(addr197);
                                                            }
                                                            addr177:
                                                         }
                                                         §§goto(addr197);
                                                      }
                                                      addr125:
                                                   }
                                                   §§goto(addr177);
                                                }
                                                addr117:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop() & §§pop());
                                                }
                                                addr175:
                                             }
                                             while(true)
                                             {
                                                §§goto(addr177);
                                             }
                                          }
                                          addr109:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                          }
                                          addr174:
                                       }
                                       §§goto(addr175);
                                    }
                                    _loc2_.frame = _loc1_.currentFrame;
                                    §§goto(addr170);
                                 }
                                 §§goto(addr159);
                              }
                              §§goto(addr197);
                           }
                           else
                           {
                              §§push(_loc3_.relativeFlags);
                           }
                           §§goto(addr174);
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr177);
               }
               §§goto(addr125);
            }
            §§goto(addr117);
         }
         §§goto(addr109);
      }
      
      override public function get target() : Object
      {
         return this.§"!c§;
      }
      
      override protected function newInstance() : §4"+§
      {
         return new §8!T§();
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(param1 == "_frame")
            {
               while(true)
               {
                  this._flags |= 1;
                  while(true)
                  {
                     §§push(this.§-!m§);
                     while(true)
                     {
                        §§push(this.§-!m§.relativeFlags);
                        if(_loc5_)
                        {
                           if(param3)
                           {
                              §§pop().relativeFlags = 1 | (!_loc4_ ? §§pop() : §§pop());
                              addr58:
                              continue;
                           }
                           §§push(0);
                           §§goto(addr64);
                        }
                        §§goto(addr58);
                     }
                  }
                  if(!_loc5_)
                  {
                     continue;
                  }
                  §§goto(addr47);
               }
            }
            return;
         }
         §§goto(addr67);
      }
      
      override protected function copyFrom(param1:§4"+§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super.copyFrom(param1);
         }
         var _loc2_:§8!T§ = param1 as §8!T§;
         if(!(_loc4_ && param1))
         {
            this.§"!c§ = _loc2_.§"!c§;
            while(true)
            {
               this.§-!m§.copyFrom(_loc2_.§-!m§);
               while(!(_loc4_ && this))
               {
                  this.§,_§.copyFrom(_loc2_.§,_§);
                  do
                  {
                     this._flags = _loc2_._flags;
                  }
                  while(!_loc3_);
                  
                  if(_loc4_)
                  {
                     continue;
                  }
                  return;
                  addr62:
               }
            }
         }
         §§goto(addr62);
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
