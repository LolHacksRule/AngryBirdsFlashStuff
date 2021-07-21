package §`4§
{
   import §"E§.§&!h§;
   import §0§.§#![§;
   import flash.display.MovieClip;
   
   public class §#!]§ extends §#![§
   {
      
      public static const §66§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §66§ = ["_frame"];
         }
      }
      
      protected var _flags:uint = 0;
      
      protected var §8A§:MovieClipParameter;
      
      protected var §[l§:MovieClip = null;
      
      protected var §`v§:MovieClipParameter;
      
      public function §#!]§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§`v§ = new MovieClipParameter();
            while(true)
            {
               this.§8A§ = new MovieClipParameter();
               while(!_loc2_)
               {
                  super();
                  if(!_loc2_)
                  {
                     return;
                     addr43:
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      public static function §;-§(param1:§&!h§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.§1"3§(§#!]§,MovieClip,§66§);
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
               while(true)
               {
                  this._flags |= 1;
                  addr102:
                  loop1:
                  while(true)
                  {
                     §§push(this.§8A§);
                     loop2:
                     while(true)
                     {
                        §§push(this.§8A§.relativeFlags);
                        if(_loc5_)
                        {
                           if(param3)
                           {
                              §§pop().relativeFlags = 1 | (_loc5_ || param1 ? §§pop() : §§pop());
                              addr61:
                              while(_loc5_ || param1)
                              {
                                 continue loop2;
                              }
                              continue loop1;
                              addr75:
                           }
                           §§push(0);
                           §§goto(addr72);
                        }
                        §§goto(addr61);
                     }
                  }
                  addr40:
                  if(_loc4_ && this)
                  {
                     continue;
                  }
                  §§goto(addr40);
               }
            }
            return;
         }
         §§goto(addr102);
      }
      
      override public function set target(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[l§ = param1 as MovieClip;
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:MovieClip = this.§[l§;
         var _loc3_:MovieClipParameter = this.§8A§;
         var _loc4_:MovieClipParameter = this.§`v§;
         §§push(this._flags);
         if(_loc7_)
         {
            §§push(uint(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(1 - param1);
         if(!(_loc8_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         if(!_loc8_)
         {
            if((_loc5_ & 1) != 0)
            {
               if(_loc7_)
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
         var _loc1_:MovieClip = this.§[l§;
         var _loc2_:MovieClipParameter = this.§8A§;
         var _loc3_:MovieClipParameter = this.§`v§;
         §§push(this._flags);
         if(_loc5_)
         {
            §§push(uint(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(_loc5_ || _loc2_)
         {
            §§push(1);
            if(_loc5_)
            {
               §§push(§§pop() & §§pop());
               if(_loc5_)
               {
                  §§push(0);
                  if(_loc5_)
                  {
                     if(§§pop() != §§pop())
                     {
                        if(!(_loc6_ && this))
                        {
                           if(isNaN(_loc3_.frame))
                           {
                              if(_loc5_ || _loc1_)
                              {
                                 _loc3_.frame = _loc1_.currentFrame;
                                 if(!_loc6_)
                                 {
                                    loop0:
                                    while(true)
                                    {
                                       if(isNaN(_loc2_.frame))
                                       {
                                          if(!_loc6_)
                                          {
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                addr158:
                                                _loc2_.frame = _loc1_.currentFrame;
                                                break;
                                             }
                                             addr187:
                                             addr187:
                                             while(true)
                                             {
                                                continue loop0;
                                             }
                                             addr187:
                                          }
                                          break;
                                       }
                                       §§push(_loc2_.relativeFlags);
                                       if(_loc5_ || _loc1_)
                                       {
                                          while(true)
                                          {
                                             §§push(1);
                                             if(_loc5_ || _loc3_)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop() & §§pop());
                                                   if(!_loc6_)
                                                   {
                                                      §§push(0);
                                                      if(_loc5_ || this)
                                                      {
                                                         if(§§pop() != §§pop())
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               if(!(_loc5_ || _loc2_))
                                                               {
                                                                  break loop0;
                                                               }
                                                               _loc2_.frame += _loc1_.currentFrame;
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            addr180:
                                                            addr180:
                                                            while(true)
                                                            {
                                                               _loc3_.frame += _loc1_.currentFrame;
                                                               §§goto(addr187);
                                                            }
                                                            addr180:
                                                         }
                                                         break;
                                                      }
                                                      addr179:
                                                      addr179:
                                                      while(true)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§goto(addr180);
                                                      }
                                                      addr179:
                                                      §§goto(addr180);
                                                   }
                                                   else
                                                   {
                                                      addr168:
                                                      while(true)
                                                      {
                                                         §§goto(addr179);
                                                      }
                                                      addr168:
                                                   }
                                                   §§goto(addr179);
                                                }
                                                addr79:
                                                return;
                                                addr78:
                                                addr112:
                                             }
                                             §§goto(addr168);
                                          }
                                          addr104:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(1);
                                          }
                                          addr166:
                                       }
                                       while(true)
                                       {
                                          §§goto(addr168);
                                       }
                                       §§goto(addr187);
                                    }
                                    §§goto(addr78);
                                 }
                                 §§goto(addr180);
                              }
                              §§goto(addr187);
                           }
                           else
                           {
                              §§push(_loc3_.relativeFlags);
                           }
                           §§goto(addr166);
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr179);
               }
               §§goto(addr168);
            }
            §§goto(addr112);
         }
         §§goto(addr104);
      }
      
      override public function get target() : Object
      {
         return this.§[l§;
      }
      
      override protected function newInstance() : §#![§
      {
         return new §#!]§();
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param1 == "_frame")
            {
               loop0:
               while(true)
               {
                  this._flags |= 1;
                  addr96:
                  loop1:
                  while(true)
                  {
                     §§push(this.§`v§);
                     loop2:
                     while(true)
                     {
                        §§push(this.§`v§.relativeFlags);
                        if(!_loc5_)
                        {
                           if(param3)
                           {
                              §§pop().relativeFlags = 1 | (!(_loc5_ && param3) ? §§pop() : §§pop());
                              addr58:
                              while(!_loc5_)
                              {
                                 if(_loc4_)
                                 {
                                    continue loop2;
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                              addr72:
                           }
                           §§push(0);
                           §§goto(addr69);
                        }
                        §§goto(addr58);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr96);
      }
      
      override protected function copyFrom(param1:§#![§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super.copyFrom(param1);
         }
         var _loc2_:§#!]§ = param1 as §#!]§;
         if(!(_loc3_ && this))
         {
            this.§[l§ = _loc2_.§[l§;
         }
         loop0:
         do
         {
            this.§`v§.copyFrom(_loc2_.§`v§);
            while(true)
            {
               this.§8A§.copyFrom(_loc2_.§8A§);
               while(_loc4_)
               {
                  this._flags = _loc2_._flags;
                  if(!(_loc3_ && _loc3_))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc4_);
         
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
