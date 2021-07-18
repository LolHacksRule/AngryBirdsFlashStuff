package §3!,§
{
   import §7'§.§!y§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §7U§ extends Sprite
   {
       
      
      private var §'F§:Sprite;
      
      private var §%G§:Number;
      
      private var §!P§:Number;
      
      public function §7U§(param1:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         if(!_loc6_)
         {
            super();
         }
         var _loc2_:int = Math.random() * 7;
         §§push(_loc2_);
         if(_loc5_)
         {
            var _loc4_:* = §§pop();
            if(!_loc6_)
            {
               §§push(0);
               if(!_loc6_)
               {
                  §§push(_loc4_);
                  if(_loc5_ || _loc2_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_ || _loc3_)
                        {
                           addr107:
                           §§push(0);
                           if(!(_loc6_ && _loc2_))
                           {
                              addr280:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc3_ = "P_STAR_4";
                                    if(_loc5_ || param1)
                                    {
                                       break;
                                    }
                                    return;
                                    addr305:
                                 case 1:
                                    _loc3_ = "P_STAR_3";
                                    break;
                                 case 2:
                                    _loc3_ = "P_STAR_2";
                                    break;
                                 case 3:
                                    _loc3_ = "P_STAR_1";
                                    break;
                                 case 4:
                                    _loc3_ = "P_SMOKE_3";
                                    addr37:
                                    break;
                                 case 5:
                                    _loc3_ = "P_SMOKE_2";
                                    break;
                                 case 6:
                                    _loc3_ = "P_SMOKE_1";
                                    if(true)
                                    {
                                       break;
                                    }
                                    §§goto(addr37);
                              }
                              this.§'F§ = this.§<!M§(_loc3_);
                              addr279:
                              while(true)
                              {
                                 addChild(this.§'F§);
                                 while(!_loc6_)
                                 {
                                    this.§'F§.x = -this.§'F§.width / 2;
                                    do
                                    {
                                       this.§'F§.y = -this.§'F§.height / 2;
                                    }
                                    while(!(_loc5_ || _loc2_));
                                    
                                    if(_loc6_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr305);
                                 }
                              }
                              addr279:
                           }
                           else
                           {
                              addr236:
                              §§push(_loc4_);
                              if(!(_loc6_ && this))
                              {
                                 addr244:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr252:
                                       §§push(5);
                                       if(_loc6_ && _loc2_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr271:
                                       §§push(6);
                                       if(_loc5_)
                                       {
                                          addr274:
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(6);
                                    if(!(_loc6_ && this))
                                    {
                                       addr269:
                                       §§push(_loc4_);
                                    }
                                 }
                                 §§goto(addr279);
                              }
                              addr270:
                              if(§§pop() === §§pop())
                              {
                                 §§goto(addr271);
                              }
                              else
                              {
                                 §§goto(addr279);
                                 §§push(7);
                              }
                              §§goto(addr279);
                           }
                           §§goto(addr279);
                        }
                        §§goto(addr252);
                     }
                     else
                     {
                        §§push(1);
                        if(!_loc6_)
                        {
                           addr119:
                           §§push(_loc4_);
                           if(!_loc6_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§push(1);
                                    if(_loc5_ || this)
                                    {
                                       addr138:
                                    }
                                 }
                                 else
                                 {
                                    addr219:
                                    §§push(4);
                                    if(_loc6_ && _loc3_)
                                    {
                                       §§goto(addr269);
                                    }
                                 }
                                 §§goto(addr279);
                              }
                              else
                              {
                                 §§push(2);
                                 if(!(_loc6_ && this))
                                 {
                                    §§push(_loc4_);
                                    if(_loc5_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             §§push(2);
                                             if(!(_loc5_ || param1))
                                             {
                                                addr194:
                                             }
                                             §§goto(addr279);
                                          }
                                          else
                                          {
                                             §§goto(addr219);
                                          }
                                       }
                                       else
                                       {
                                          §§push(3);
                                          if(_loc5_ || this)
                                          {
                                             §§push(_loc4_);
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(3);
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr194);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr274);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr271);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(4);
                                                   if(_loc5_ || this)
                                                   {
                                                   }
                                                }
                                                §§goto(addr279);
                                             }
                                             §§goto(addr270);
                                          }
                                          §§push(_loc4_);
                                          if(_loc5_ || _loc3_)
                                          {
                                          }
                                          §§goto(addr270);
                                       }
                                       §§goto(addr270);
                                    }
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          §§goto(addr219);
                                       }
                                       else
                                       {
                                          §§goto(addr252);
                                       }
                                    }
                                    else
                                    {
                                       §§push(5);
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          §§goto(addr236);
                                       }
                                       §§goto(addr279);
                                    }
                                    §§goto(addr279);
                                 }
                              }
                              §§goto(addr279);
                           }
                           §§goto(addr236);
                        }
                        §§goto(addr138);
                     }
                  }
                  §§goto(addr244);
               }
               §§goto(addr119);
            }
            §§goto(addr107);
         }
         §§goto(addr280);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            removeChild(this.§'F§);
            do
            {
               this.§'F§ = null;
            }
            while(_loc1_);
            
         }
      }
      
      public function §<!M§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §!y§.§%!C§(param1);
         _loc2_ = new _loc3_();
         if(!(_loc5_ && this))
         {
            _loc2_.x = _loc2_.width / 2;
            do
            {
               _loc2_.y = _loc2_.height / 2;
            }
            while(!_loc4_);
            
         }
         return _loc2_;
      }
      
      public function get §2!G§() : Number
      {
         return this.§%G§;
      }
      
      public function set §2!G§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§%G§ = param1;
         }
      }
      
      public function get §!5§() : Number
      {
         return this.§!P§;
      }
      
      public function set §!5§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§!P§ = param1;
         }
      }
   }
}
