package §4L§
{
   import §57§.§4!Z§;
   import com.rovio.assets.§%!G§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §1,§ extends Sprite
   {
       
      
      private var §3!'§:Sprite;
      
      private var §->§:Number;
      
      private var §4@§:Number;
      
      private var §&!L§:§4!Z§;
      
      public function §1,§(param1:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = null;
         if(_loc5_ || param1)
         {
            super();
         }
         var _loc2_:int = Math.random() * 7;
         §§push(_loc2_);
         if(!_loc6_)
         {
            var _loc4_:* = §§pop();
            if(_loc5_)
            {
               §§push(0);
               if(_loc5_ || _loc2_)
               {
                  §§push(_loc4_);
                  if(!_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_)
                        {
                           §§push(0);
                           if(_loc6_)
                           {
                              addr237:
                              §§push(_loc4_);
                              if(!(_loc6_ && this))
                              {
                                 addr245:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       addr248:
                                       §§push(4);
                                       if(_loc5_)
                                       {
                                          addr283:
                                          loop5:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                addr124:
                                                _loc3_ = "P_STAR_4";
                                                if(_loc5_ || param1)
                                                {
                                                   addr353:
                                                   this.§3!'§ = this.§-!2§(_loc3_);
                                                   while(true)
                                                   {
                                                      addChild(this.§3!'§);
                                                      addr332:
                                                      while(true)
                                                      {
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            break loop5;
                                                         }
                                                         break;
                                                      }
                                                   }
                                                   addr358:
                                                }
                                                while(true)
                                                {
                                                   this.mouseEnabled = false;
                                                   while(!_loc6_)
                                                   {
                                                      this.§3!'§.x = -this.§3!'§.width / 2;
                                                      §§goto(addr332);
                                                      if(_loc5_ || this)
                                                      {
                                                         return;
                                                      }
                                                   }
                                                }
                                                break;
                                                addr352:
                                             case 1:
                                                addr119:
                                                _loc3_ = "P_STAR_3";
                                                §§goto(addr353);
                                                addr120:
                                             case 2:
                                                addr113:
                                                _loc3_ = "P_STAR_2";
                                                §§goto(addr353);
                                                addr114:
                                             case 3:
                                                addr98:
                                                _loc3_ = "P_STAR_1";
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§goto(addr120);
                                                   }
                                                   §§goto(addr353);
                                                }
                                                §§goto(addr358);
                                             case 4:
                                                addr79:
                                                §§push("P_SMOKE_3");
                                                if(_loc5_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         _loc3_ = §§pop();
                                                         if(!_loc6_)
                                                         {
                                                            addr56:
                                                            §§goto(addr353);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr124);
                                                      }
                                                      §§goto(addr352);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr119);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr113);
                                                }
                                                §§goto(addr353);
                                             case 5:
                                                addr60:
                                                §§push("P_SMOKE_2");
                                                if(_loc5_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      _loc3_ = §§pop();
                                                      if(!(_loc6_ && this))
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr114);
                                                         }
                                                         §§goto(addr353);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr98);
                                                   §§goto(addr353);
                                                }
                                                else
                                                {
                                                   §§goto(addr79);
                                                }
                                             case 6:
                                                §§push("P_SMOKE_1");
                                                if(_loc5_ || _loc3_)
                                                {
                                                   _loc3_ = §§pop();
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr56);
                                                      }
                                                   }
                                                   break;
                                                }
                                                §§goto(addr60);
                                                §§goto(addr353);
                                             default:
                                                §§goto(addr353);
                                          }
                                          continue loop4;
                                          addr283:
                                       }
                                       else
                                       {
                                          addr269:
                                          §§goto(addr283);
                                       }
                                    }
                                    §§goto(addr283);
                                 }
                                 else
                                 {
                                    §§push(5);
                                    if(_loc5_)
                                    {
                                       addr255:
                                       §§push(_loc4_);
                                       if(!_loc6_)
                                       {
                                          addr258:
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                §§push(5);
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   §§goto(addr269);
                                                }
                                                else
                                                {
                                                   addr273:
                                                   if(§§pop() === _loc4_)
                                                   {
                                                      addr275:
                                                      §§push(6);
                                                      if(_loc6_)
                                                      {
                                                      }
                                                      §§goto(addr283);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr283);
                                                      §§push(7);
                                                   }
                                                   §§goto(addr283);
                                                }
                                             }
                                             §§goto(addr275);
                                          }
                                          else
                                          {
                                             §§push(6);
                                             if(!_loc6_)
                                             {
                                                §§goto(addr273);
                                             }
                                          }
                                          §§goto(addr283);
                                       }
                                    }
                                    §§goto(addr273);
                                 }
                              }
                              §§goto(addr258);
                           }
                        }
                        else
                        {
                           addr212:
                           §§push(2);
                           if(_loc6_)
                           {
                              addr219:
                              §§push(_loc4_);
                              if(_loc5_)
                              {
                                 addr222:
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       addr225:
                                       §§push(3);
                                       if(!_loc6_)
                                       {
                                          §§goto(addr283);
                                       }
                                       else
                                       {
                                          §§goto(addr273);
                                       }
                                    }
                                    §§goto(addr275);
                                 }
                                 else
                                 {
                                    §§push(4);
                                    if(!(_loc6_ && param1))
                                    {
                                       §§goto(addr237);
                                    }
                                    §§goto(addr269);
                                 }
                              }
                              §§goto(addr245);
                           }
                        }
                        §§goto(addr283);
                     }
                     else
                     {
                        §§push(1);
                        if(!_loc6_)
                        {
                           addr163:
                           §§push(_loc4_);
                           if(_loc5_ || this)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_ || param1)
                                 {
                                    §§push(1);
                                    if(_loc6_ && param1)
                                    {
                                       §§goto(addr237);
                                    }
                                    §§goto(addr283);
                                 }
                                 §§goto(addr275);
                              }
                              else
                              {
                                 §§push(2);
                                 if(_loc5_)
                                 {
                                    §§push(_loc4_);
                                    if(_loc5_ || _loc3_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             §§goto(addr212);
                                          }
                                          §§goto(addr248);
                                       }
                                       else
                                       {
                                          §§push(3);
                                          if(_loc5_)
                                          {
                                             §§goto(addr219);
                                          }
                                       }
                                       §§goto(addr255);
                                    }
                                    §§goto(addr222);
                                 }
                              }
                           }
                           §§goto(addr273);
                        }
                     }
                     §§goto(addr237);
                  }
                  §§goto(addr273);
               }
               §§goto(addr163);
            }
            §§goto(addr225);
         }
         §§goto(addr283);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§&!L§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr100:
                     this.§&!L§.stop();
                     addr101:
                     while(true)
                     {
                        this.§&!L§ = null;
                        addr80:
                        while(true)
                        {
                        }
                     }
                     addr101:
                  }
                  §§goto(addr101);
               }
               while(true)
               {
                  removeChild(this.§3!'§);
                  while(!_loc1_)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        this.§3!'§ = null;
                        if(!(_loc1_ && this))
                        {
                           return;
                        }
                        continue;
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr80);
               }
            }
         }
         §§goto(addr100);
      }
      
      public function §-!2§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §%!G§.§^!B§(param1);
         _loc2_ = new _loc3_();
         if(_loc5_)
         {
            _loc2_.x = _loc2_.width / 2;
         }
         do
         {
            _loc2_.y = _loc2_.height / 2;
         }
         while(_loc4_ && _loc3_);
         
         return _loc2_;
      }
      
      public function set §3v§(param1:§4!Z§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§&!L§ = param1;
         }
      }
      
      public function get §3v§() : §4!Z§
      {
         return this.§&!L§;
      }
      
      public function get §8M§() : Number
      {
         return this.§->§;
      }
      
      public function set §8M§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§->§ = param1;
         }
      }
      
      public function get §>!^§() : Number
      {
         return this.§4@§;
      }
      
      public function set §>!^§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§4@§ = param1;
         }
      }
   }
}
