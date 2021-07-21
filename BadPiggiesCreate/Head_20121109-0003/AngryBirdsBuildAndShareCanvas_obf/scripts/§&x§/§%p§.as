package §&x§
{
   import §"E§.§&!h§;
   import §0§.§#![§;
   import flash.geom.Point;
   
   public class §%p§ extends §#![§
   {
      
      public static const §66§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §66§ = ["x","y"];
         }
      }
      
      protected var §?@§:Number;
      
      protected var §=!G§:Number;
      
      protected var _flags:uint = 0;
      
      protected var §[l§:Point = null;
      
      protected var §'=§:Boolean = false;
      
      protected var §@!5§:Boolean = false;
      
      protected var §=L§:Number;
      
      protected var §4E§:Number;
      
      public function §%p§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §;-§(param1:§&!h§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && §%p§))
         {
            param1.§1"3§(§%p§,Point,§66§);
         }
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param1);
            loop0:
            while(§§pop() != "x")
            {
               §§push(param1);
               if(!(_loc5_ && param1))
               {
                  if(§§pop() == "y")
                  {
                     loop1:
                     while(true)
                     {
                        this.§@!5§ = true;
                        while(_loc4_)
                        {
                           if(_loc5_ && param2)
                           {
                              break loop0;
                           }
                           this.§=!G§ = param2;
                           do
                           {
                              §§push(this);
                              §§push(this._flags);
                              if(!_loc5_)
                              {
                                 if(param3)
                                 {
                                    addr31:
                                    §§push(4);
                                    if(!(_loc5_ && param3))
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
                              §§goto(addr31);
                           }
                           while(§§pop()._flags = §§pop() | §§pop(), !_loc4_);
                           
                           if(!_loc5_)
                           {
                              if(!_loc5_)
                              {
                                 §§goto(addr19);
                              }
                              continue loop1;
                           }
                        }
                        loop4:
                        while(true)
                        {
                           if(!(_loc5_ && param2))
                           {
                              if(!(_loc5_ && this))
                              {
                                 break;
                              }
                              addr151:
                              while(true)
                              {
                                 this.§?@§ = param2;
                              }
                           }
                           while(true)
                           {
                              §§push(this);
                              §§push(this._flags);
                              if(!_loc5_)
                              {
                                 if(param3)
                                 {
                                    addr101:
                                    §§push(1);
                                    if(!(_loc5_ && param3))
                                    {
                                       §§push(§§pop());
                                       continue loop4;
                                    }
                                 }
                                 else
                                 {
                                    §§push(0);
                                 }
                                 §§push(§§pop());
                                 continue loop4;
                              }
                              §§goto(addr101);
                           }
                        }
                     }
                  }
                  addr19:
                  return;
               }
            }
            this.§'=§ = true;
         }
         §§goto(addr151);
      }
      
      override protected function newInstance() : §#![§
      {
         return new §%p§();
      }
      
      override public function get target() : Object
      {
         return this.§[l§;
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
               if(!_loc5_)
               {
                  continue;
               }
               if(§§pop() == "y")
               {
                  if(_loc5_)
                  {
                     if(_loc5_ || param2)
                     {
                        this.§@!5§ = true;
                        loop2:
                        while(_loc5_ || param2)
                        {
                           this.§4E§ = param2;
                           do
                           {
                              if(!(_loc5_ || param2))
                              {
                                 continue loop2;
                              }
                              if(_loc4_)
                              {
                                 break loop0;
                              }
                              §§push(this);
                              §§push(this._flags);
                              if(!_loc4_)
                              {
                                 if(param3)
                                 {
                                    addr32:
                                    §§push(8);
                                    if(!(_loc4_ && this))
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
                           while(§§pop()._flags = §§pop() | §§pop(), !(_loc5_ || param3));
                           
                           return;
                        }
                        loop4:
                        while(true)
                        {
                           §§push(this);
                           §§push(this._flags);
                           if(!_loc4_)
                           {
                              if(param3)
                              {
                                 addr126:
                                 §§pop()._flags = 2 | (!(_loc4_ && this) ? §§pop() : §§pop());
                                 while(!(_loc5_ || this))
                                 {
                                    while(true)
                                    {
                                       this.§=L§ = param2;
                                       continue loop4;
                                    }
                                    §§goto(addr126);
                                 }
                                 §§goto(addr20);
                                 addr128:
                              }
                              else
                              {
                                 §§push(0);
                              }
                              §§goto(addr125);
                           }
                           §§goto(addr126);
                        }
                        addr98:
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr98);
               }
               §§goto(addr20);
            }
         }
         this.§'=§ = true;
         §§goto(addr157);
      }
      
      override public function set target(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§[l§ = param1 as Point;
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Point = this.§[l§;
         if(_loc2_)
         {
            §§push(this.§'=§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     if(!isNaN(this.§?@§))
                     {
                        §§push(this._flags);
                        loop2:
                        while(true)
                        {
                           §§push(1);
                           loop3:
                           while(true)
                           {
                              §§push(§§pop() & §§pop());
                              while(true)
                              {
                                 §§push(0);
                                 while(true)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       while(true)
                                       {
                                          this.§?@§ += _loc1_.x;
                                          addr270:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr263:
                                    }
                                    loop8:
                                    while(true)
                                    {
                                       if(!isNaN(this.§=L§))
                                       {
                                          §§push(this._flags);
                                          continue loop2;
                                       }
                                       while(true)
                                       {
                                          this.§=L§ = _loc1_.x;
                                          loop15:
                                          while(_loc2_ || _loc1_)
                                          {
                                             loop19:
                                             while(true)
                                             {
                                                §§push(this.§@!5§);
                                                if(!_loc2_)
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   while(_loc2_ || this)
                                                   {
                                                      if(!isNaN(this.§=!G§))
                                                      {
                                                         §§push(this._flags);
                                                         while(true)
                                                         {
                                                            §§push(4);
                                                            while(!_loc3_)
                                                            {
                                                               §§push(§§pop() & §§pop());
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  addr149:
                                                                  §§goto(addr23);
                                                               }
                                                            }
                                                            addr219:
                                                            while(true)
                                                            {
                                                               §§goto(addr220);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr192);
                                                   }
                                                   §§goto(addr270);
                                                }
                                                addr23:
                                                loop24:
                                                while(true)
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      loop25:
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ && this))
                                                         {
                                                            if(!(_loc3_ && _loc1_))
                                                            {
                                                               this.§=!G§ += _loc1_.y;
                                                               loop26:
                                                               for(; _loc2_; if(_loc3_ && _loc1_)
                                                               {
                                                                  continue;
                                                               },if(_loc2_ || this)
                                                               {
                                                                  this.§4E§ = _loc1_.y;
                                                                  §§goto(addr126);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr263);
                                                               })
                                                               {
                                                                  while(true)
                                                                  {
                                                                     addr95:
                                                                     while(true)
                                                                     {
                                                                        if(isNaN(this.§4E§))
                                                                        {
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              continue loop26;
                                                                           }
                                                                           addr126:
                                                                           addr126:
                                                                           if(_loc2_)
                                                                           {
                                                                              break loop24;
                                                                           }
                                                                           continue loop25;
                                                                        }
                                                                        §§push(this._flags);
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(8);
                                                                           if(!(_loc3_ && _loc1_))
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           continue loop22;
                                                                        }
                                                                        continue loop21;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                               }
                                                               continue loop20;
                                                            }
                                                            addr192:
                                                            while(true)
                                                            {
                                                               this.§=!G§ = _loc1_.y;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               break loop25;
                                                            }
                                                            if(_loc3_ && _loc2_)
                                                            {
                                                               continue loop15;
                                                            }
                                                            §§goto(addr95);
                                                            continue loop15;
                                                         }
                                                      }
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue loop19;
                                                         }
                                                         addr289:
                                                         while(true)
                                                         {
                                                            this.§?@§ = _loc1_.x;
                                                            break loop14;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop8;
                                                      }
                                                      addr293:
                                                      addr233:
                                                   }
                                                   §§goto(addr95);
                                                }
                                                addr23:
                                                return;
                                             }
                                             continue loop0;
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr289);
                  }
               }
               §§goto(addr174);
            }
         }
         §§goto(addr173);
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Point = this.§[l§;
         §§push(1 - param1);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            §§push(this.§'=§);
            while(true)
            {
               if(!§§pop())
               {
                  continue;
               }
            }
         }
         §§goto(addr81);
      }
      
      override protected function copyFrom(param1:§#![§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super.copyFrom(param1);
         }
         var _loc2_:§%p§ = param1 as §%p§;
         if(!(_loc4_ && this))
         {
            this.§[l§ = _loc2_.§[l§;
            loop0:
            while(true)
            {
               this.§?@§ = _loc2_.§?@§;
               while(true)
               {
                  this.§=!G§ = _loc2_.§=!G§;
                  loop2:
                  for(; _loc3_; while(!(_loc4_ && param1))
                  {
                     this.§@!5§ = _loc2_.§@!5§;
                     loop6:
                     while(!(_loc4_ && _loc2_))
                     {
                        while(true)
                        {
                           this._flags = _loc2_._flags;
                           if(!(_loc3_ || this))
                           {
                              continue loop6;
                           }
                           §§goto(addr55);
                        }
                        return;
                     }
                  })
                  {
                     this.§=L§ = _loc2_.§=L§;
                     loop3:
                     while(true)
                     {
                        this.§4E§ = _loc2_.§4E§;
                        while(true)
                        {
                           this.§'=§ = _loc2_.§'=§;
                           continue loop2;
                           addr55:
                           if(!(_loc4_ && _loc2_))
                           {
                              continue loop3;
                           }
                        }
                     }
                  }
                  continue loop0;
                  if(!(_loc3_ || this))
                  {
                     continue;
                  }
                  §§goto(addr86);
               }
            }
         }
         §§goto(addr99);
      }
   }
}
