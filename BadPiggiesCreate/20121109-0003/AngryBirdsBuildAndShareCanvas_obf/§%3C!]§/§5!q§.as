package §<!]§
{
   import §'V§.§=!r§;
   import com.rovio.assets.§69§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §5!q§ extends Sprite
   {
       
      
      private var §=!0§:Sprite;
      
      private var §8+§:Number;
      
      private var §&g§:Number;
      
      private var §,!c§:§=!r§;
      
      public function §5!q§(param1:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         if(!(_loc6_ && param1))
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
               if(!(_loc6_ && param1))
               {
                  §§push(_loc4_);
                  if(_loc5_ || _loc2_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc6_)
                        {
                           §§push(0);
                           if(_loc6_)
                           {
                              addr216:
                              §§push(_loc4_);
                              if(_loc5_)
                              {
                                 addr219:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(5);
                                       if(!(_loc6_ && this))
                                       {
                                          addr230:
                                       }
                                    }
                                    else
                                    {
                                       addr236:
                                       §§push(6);
                                       if(!_loc6_)
                                       {
                                          addr239:
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(6);
                                    if(_loc5_)
                                    {
                                       addr235:
                                       if(§§pop() === _loc4_)
                                       {
                                          §§goto(addr236);
                                       }
                                       else
                                       {
                                          §§push(7);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr235);
                           }
                           addr245:
                           switch(§§pop())
                           {
                              case 0:
                                 _loc3_ = "P_STAR_4";
                                 if(_loc5_ || _loc3_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    this.mouseEnabled = false;
                                    while(_loc5_)
                                    {
                                       this.§=!0§.x = -this.§=!0§.width / 2;
                                       do
                                       {
                                          this.§=!0§.y = -this.§=!0§.height / 2;
                                       }
                                       while(_loc6_);
                                       
                                       if(_loc5_)
                                       {
                                          return;
                                       }
                                    }
                                    loop3:
                                    while(_loc6_ && _loc2_)
                                    {
                                       while(true)
                                       {
                                          addChild(this.§=!0§);
                                          continue loop3;
                                       }
                                    }
                                 }
                                 break;
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
                                 addr42:
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
                                 §§goto(addr42);
                           }
                           this.§=!0§ = this.§,2§(_loc3_);
                           addr244:
                           §§goto(addr312);
                           addr244:
                        }
                        else
                        {
                           addr163:
                           §§push(2);
                           if(!(_loc5_ || param1))
                           {
                              addr193:
                              §§push(_loc4_);
                              if(!(_loc6_ && this))
                              {
                                 addr201:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       addr204:
                                       §§push(4);
                                       if(_loc5_)
                                       {
                                          addr207:
                                       }
                                       §§goto(addr244);
                                    }
                                    else
                                    {
                                       §§goto(addr236);
                                    }
                                 }
                                 else
                                 {
                                    §§push(5);
                                    if(!(_loc6_ && this))
                                    {
                                       §§goto(addr216);
                                    }
                                 }
                                 §§goto(addr239);
                              }
                              §§goto(addr235);
                           }
                           §§goto(addr244);
                        }
                        §§goto(addr235);
                     }
                     else
                     {
                        §§push(1);
                        if(!(_loc6_ && _loc2_))
                        {
                           §§push(_loc4_);
                           if(!_loc6_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_)
                                 {
                                    §§push(1);
                                    if(_loc6_ && _loc3_)
                                    {
                                       §§goto(addr207);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr236);
                                 }
                                 §§goto(addr244);
                              }
                              else
                              {
                                 §§push(2);
                                 if(!_loc6_)
                                 {
                                    addr142:
                                    §§push(_loc4_);
                                    if(_loc5_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc5_ || _loc2_)
                                          {
                                             §§goto(addr163);
                                          }
                                          §§goto(addr204);
                                       }
                                       else
                                       {
                                          §§push(3);
                                          if(!_loc6_)
                                          {
                                             §§push(_loc4_);
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§push(3);
                                                      if(!_loc5_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr236);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(4);
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr193);
                                                   }
                                                   §§goto(addr230);
                                                }
                                                §§goto(addr244);
                                             }
                                             §§goto(addr235);
                                          }
                                       }
                                    }
                                    §§goto(addr201);
                                 }
                                 §§goto(addr235);
                              }
                           }
                           §§goto(addr201);
                        }
                     }
                     §§goto(addr207);
                  }
                  §§goto(addr219);
               }
               §§goto(addr142);
            }
            §§goto(addr236);
         }
         §§goto(addr245);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§,!c§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§,!c§);
                     addr85:
                     while(true)
                     {
                        §§pop().stop();
                        addr86:
                        while(true)
                        {
                           this.§,!c§ = null;
                           addr67:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr83:
               }
               loop1:
               while(true)
               {
                  removeChild(this.§=!0§);
                  while(_loc2_)
                  {
                     if(!_loc1_)
                     {
                        this.§=!0§ = null;
                        if(!_loc1_)
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                        continue;
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr86);
               }
               return;
            }
            §§goto(addr85);
         }
         §§goto(addr67);
      }
      
      public function §,2§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §69§.§ 0§(param1);
         _loc2_ = new _loc3_();
         if(_loc5_ || this)
         {
            _loc2_.x = _loc2_.width / 2;
            do
            {
               _loc2_.y = _loc2_.height / 2;
            }
            while(!_loc5_);
            
         }
         return _loc2_;
      }
      
      public function set §1I§(param1:§=!r§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§,!c§ = param1;
         }
      }
      
      public function get §1I§() : §=!r§
      {
         return this.§,!c§;
      }
      
      public function get §?X§() : Number
      {
         return this.§8+§;
      }
      
      public function set §?X§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§8+§ = param1;
         }
      }
      
      public function get §"b§() : Number
      {
         return this.§&g§;
      }
      
      public function set §"b§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&g§ = param1;
         }
      }
   }
}
