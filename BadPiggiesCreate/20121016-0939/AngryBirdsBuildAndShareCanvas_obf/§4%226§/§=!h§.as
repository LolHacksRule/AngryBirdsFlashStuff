package §4"6§
{
   import §8=§.§4"+§;
   import §<!3§.§"`§;
   import flash.geom.Point;
   
   public class §=!h§ extends §4"+§
   {
      
      public static const §0!V§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §0!V§ = ["x","y"];
         }
      }
      
      protected var §%§:Number;
      
      protected var §`!l§:Number;
      
      protected var _flags:uint = 0;
      
      protected var §"!c§:Point = null;
      
      protected var §8!H§:Boolean = false;
      
      protected var §@"=§:Boolean = false;
      
      protected var §=§:Number;
      
      protected var §&c§:Number;
      
      public function §=!h§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §>!X§(param1:§"`§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            param1.§5!j§(§=!h§,Point,§0!V§);
         }
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param1);
            loop0:
            while(§§pop() != "x")
            {
               §§push(param1);
               if(_loc4_ && param2)
               {
                  continue;
               }
               if(§§pop() == "y")
               {
                  if(!_loc4_)
                  {
                     this.§@"=§ = true;
                  }
                  loop1:
                  while(true)
                  {
                     if(!(_loc4_ && this))
                     {
                        while(true)
                        {
                           this.§`!l§ = param2;
                           loop4:
                           for(; _loc5_; §§pop()._flags = §§pop() | §§pop(),if(_loc5_ || param3)
                           {
                              continue loop1;
                           })
                           {
                              if(_loc5_)
                              {
                                 §§push(this);
                                 §§push(this._flags);
                                 if(!_loc4_)
                                 {
                                    if(param3)
                                    {
                                       addr32:
                                       §§push(4);
                                       if(!(_loc4_ && param3))
                                       {
                                          §§push(§§pop());
                                          continue;
                                       }
                                    }
                                    else
                                    {
                                       §§push(0);
                                    }
                                    §§push(§§pop());
                                    continue;
                                 }
                                 §§goto(addr32);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§%§ = param2;
                                    break loop4;
                                 }
                                 addr157:
                              }
                           }
                           addr138:
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 break loop0;
                              }
                              §§push(this);
                              §§push(this._flags);
                              if(_loc5_ || param2)
                              {
                                 if(param3)
                                 {
                                    §§pop()._flags = 1 | (_loc5_ || this ? §§pop() : §§pop());
                                    addr119:
                                    break loop1;
                                 }
                                 §§push(0);
                                 §§goto(addr130);
                              }
                              §§goto(addr119);
                           }
                        }
                        addr20:
                        return;
                        addr60:
                        addr105:
                     }
                     break;
                     if(_loc4_ && param3)
                     {
                        continue;
                     }
                     §§goto(addr60);
                  }
               }
               §§goto(addr20);
            }
            while(true)
            {
               this.§8!H§ = true;
               §§goto(addr157);
               §§goto(addr138);
            }
            §§goto(addr150);
         }
         §§goto(addr105);
      }
      
      override protected function newInstance() : §4"+§
      {
         return new §=!h§();
      }
      
      override public function get target() : Object
      {
         return this.§"!c§;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param1);
            loop0:
            while(§§pop() != "x")
            {
               §§push(param1);
               if(!(_loc4_ && this))
               {
                  if(§§pop() == "y")
                  {
                     loop1:
                     do
                     {
                        this.§@"=§ = true;
                        loop2:
                        while(!_loc4_)
                        {
                           if(!_loc4_)
                           {
                              if(_loc5_ || param3)
                              {
                                 this.§&c§ = param2;
                                 do
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop2;
                                    }
                                    §§push(this);
                                    §§push(this._flags);
                                    if(!_loc4_)
                                    {
                                       if(param3)
                                       {
                                          addr32:
                                          §§push(8);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop());
                                             continue;
                                          }
                                       }
                                       else
                                       {
                                          §§push(0);
                                       }
                                       §§push(§§pop());
                                       continue;
                                    }
                                    §§goto(addr32);
                                 }
                                 while(§§pop()._flags = §§pop() | §§pop(), !_loc5_);
                                 
                                 continue loop1;
                              }
                              addr142:
                              while(true)
                              {
                                 this.§=§ = param2;
                                 break loop0;
                              }
                           }
                           while(true)
                           {
                              §§push(this);
                              §§push(this._flags);
                              if(!_loc4_)
                              {
                                 if(param3)
                                 {
                                    §§pop()._flags = 2 | (!(_loc4_ && param1) ? §§pop() : §§pop());
                                    addr104:
                                    break loop2;
                                 }
                                 §§push(0);
                                 §§goto(addr115);
                              }
                              §§goto(addr104);
                           }
                        }
                        while(!_loc5_)
                        {
                           break loop0;
                        }
                     }
                     while(!(_loc5_ || param1));
                     
                  }
                  return;
               }
            }
            while(true)
            {
               this.§8!H§ = true;
               §§goto(addr142);
            }
         }
         §§goto(addr135);
      }
      
      override public function set target(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§"!c§ = param1 as Point;
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Point = this.§"!c§;
         if(_loc3_ || this)
         {
            §§push(this.§8!H§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  continue;
               }
               if(!(_loc2_ && this))
               {
                  while(true)
                  {
                     if(isNaN(this.§%§))
                     {
                        loop1:
                        while(true)
                        {
                           this.§%§ = _loc1_.x;
                           loop2:
                           while(true)
                           {
                              loop3:
                              while(true)
                              {
                                 if(isNaN(this.§=§))
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       this.§=§ = _loc1_.x;
                                    }
                                    while(!_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    addr260:
                                 }
                                 else
                                 {
                                    §§push(this._flags);
                                    loop5:
                                    while(true)
                                    {
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          §§push(2);
                                          loop6:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop() & §§pop());
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr223:
                                                   addr271:
                                                   while(!(_loc2_ && _loc3_))
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         continue loop0;
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         this.§=§ += _loc1_.x;
                                                      }
                                                      while(_loc3_)
                                                      {
                                                         continue loop0;
                                                         if(_loc3_ || _loc1_)
                                                         {
                                                            §§goto(addr29);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         this.§%§ += _loc1_.x;
                                                         addr279:
                                                         while(true)
                                                         {
                                                            continue loop3;
                                                         }
                                                      }
                                                   }
                                                   addr53:
                                                   while(true)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§goto(addr272);
                                                   }
                                                   if(_loc2_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc2_ && _loc3_)
                                                   {
                                                      break loop6;
                                                   }
                                                   §§push(0);
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         if(§§pop() != §§pop())
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  this.§&c§ += _loc1_.y;
                                                                  addr99:
                                                                  if(_loc3_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        if(!(_loc2_ && this))
                                                                        {
                                                                           §§goto(addr29);
                                                                        }
                                                                        else
                                                                        {
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              if(_loc3_)
                                                                              {
                                                                                 if(!(_loc3_ || this))
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 this.§`!l§ += _loc1_.y;
                                                                                 while(true)
                                                                                 {
                                                                                    addr111:
                                                                                    loop13:
                                                                                    while(!isNaN(this.§&c§))
                                                                                    {
                                                                                       §§push(this._flags);
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       §§push(8);
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                       addr144:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() & §§pop());
                                                                                          addr155:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0);
                                                                                             addr156:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() != §§pop())
                                                                                                {
                                                                                                   continue loop18;
                                                                                                }
                                                                                                continue loop13;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr117:
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(isNaN(this.§`!l§))
                                                                                          {
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                this.§`!l§ = _loc1_.y;
                                                                                             }
                                                                                             continue loop1;
                                                                                          }
                                                                                          §§push(this._flags);
                                                                                          continue loop5;
                                                                                       }
                                                                                       continue loop1;
                                                                                       addr187:
                                                                                    }
                                                                                    this.§&c§ = _loc1_.y;
                                                                                    §§goto(addr123);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr260);
                                                                              }
                                                                              §§goto(addr279);
                                                                           }
                                                                        }
                                                                        §§goto(addr29);
                                                                     }
                                                                     §§goto(addr175);
                                                                  }
                                                                  §§goto(addr117);
                                                               }
                                                               §§goto(addr123);
                                                            }
                                                            §§goto(addr99);
                                                         }
                                                         addr29:
                                                         return;
                                                      }
                                                      §§goto(addr223);
                                                      §§goto(addr272);
                                                   }
                                                   §§goto(addr156);
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr271);
                                          }
                                          addr270:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(1);
                                          }
                                          addr268:
                                       }
                                       while(true)
                                       {
                                          §§goto(addr270);
                                       }
                                    }
                                 }
                                 §§goto(addr279);
                              }
                           }
                        }
                        addr305:
                     }
                     else
                     {
                        §§push(this._flags);
                     }
                     §§goto(addr268);
                  }
                  addr290:
               }
               §§goto(addr305);
            }
         }
         §§goto(addr290);
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Point = this.§"!c§;
         §§push(1 - param1);
         if(!(_loc4_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || param1)
         {
            §§push(this.§8!H§);
            while(true)
            {
               if(!§§pop())
               {
                  continue;
               }
               while(true)
               {
                  _loc2_.x = this.§%§ * _loc3_ + this.§=§ * param1;
               }
            }
         }
         §§goto(addr113);
      }
      
      override protected function copyFrom(param1:§4"+§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.copyFrom(param1);
         }
         var _loc2_:§=!h§ = param1 as §=!h§;
         if(!_loc4_)
         {
            this.§"!c§ = _loc2_.§"!c§;
            loop0:
            while(true)
            {
               this.§%§ = _loc2_.§%§;
               loop1:
               while(true)
               {
                  this.§`!l§ = _loc2_.§`!l§;
                  while(true)
                  {
                     this.§=§ = _loc2_.§=§;
                     while(!(_loc4_ && this))
                     {
                        this.§&c§ = _loc2_.§&c§;
                        continue loop1;
                        if(!(_loc4_ && _loc3_))
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
      }
   }
}
