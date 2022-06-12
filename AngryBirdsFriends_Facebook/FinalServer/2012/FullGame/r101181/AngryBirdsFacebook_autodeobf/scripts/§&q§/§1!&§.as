package §&q§
{
   import §8!v§.§"m§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §1!&§ extends Sprite
   {
       
      
      private var §,!I§:Sprite;
      
      private var §1L§:Number;
      
      private var §=N§:Number;
      
      private var §0!v§:§"m§;
      
      public function §1!&§(param1:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = null;
         if(_loc5_ || this)
         {
            super();
         }
         var _loc2_:int = Math.random() * 7;
         §§push(_loc2_);
         if(_loc5_ || param1)
         {
            var _loc4_:* = §§pop();
            if(!_loc6_)
            {
               §§push(0);
               if(_loc5_)
               {
                  §§push(_loc4_);
                  if(!(_loc6_ && _loc2_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_)
                        {
                           addr156:
                           §§push(0);
                           if(_loc5_ || this)
                           {
                              addr308:
                              loop5:
                              switch(§§pop())
                              {
                                 case 0:
                                    addr126:
                                    _loc3_ = "P_STAR_4";
                                    addr378:
                                    this.§,!I§ = this.§,!^§(_loc3_);
                                    while(true)
                                    {
                                       addChild(this.§,!I§);
                                       addr377:
                                       loop1:
                                       while(true)
                                       {
                                          this.mouseEnabled = false;
                                          while(true)
                                          {
                                             this.§,!I§.x = -this.§,!I§.width / 2;
                                             while(!_loc6_)
                                             {
                                                continue loop1;
                                             }
                                          }
                                       }
                                       if(_loc5_ || param1)
                                       {
                                          break loop5;
                                       }
                                    }
                                    break;
                                    addr127:
                                 case 1:
                                    addr114:
                                    _loc3_ = "P_STAR_3";
                                    if(_loc5_ || this)
                                    {
                                       §§goto(addr378);
                                    }
                                    break;
                                 case 2:
                                    addr104:
                                    §§push("P_STAR_2");
                                    if(_loc5_)
                                    {
                                       if(_loc5_)
                                       {
                                          _loc3_ = §§pop();
                                          addr109:
                                       }
                                       else
                                       {
                                          §§goto(addr126);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr114);
                                    }
                                    §§goto(addr126);
                                 case 3:
                                    addr91:
                                    _loc3_ = "P_STAR_1";
                                    if(!(_loc5_ || param1))
                                    {
                                       §§goto(addr109);
                                    }
                                    §§goto(addr126);
                                 case 4:
                                    addr83:
                                    §§push("P_SMOKE_3");
                                    if(!_loc6_)
                                    {
                                       _loc3_ = §§pop();
                                       addr86:
                                    }
                                    else
                                    {
                                       §§goto(addr91);
                                    }
                                    §§goto(addr126);
                                 case 5:
                                    addr68:
                                    _loc3_ = "P_SMOKE_2";
                                    addr69:
                                    if(!_loc6_)
                                    {
                                       if(_loc6_ && _loc2_)
                                       {
                                          §§goto(addr127);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr86);
                                    }
                                    §§goto(addr126);
                                 case 6:
                                    §§push("P_SMOKE_1");
                                    if(_loc5_ || _loc3_)
                                    {
                                       if(_loc5_)
                                       {
                                          if(!_loc6_)
                                          {
                                             _loc3_ = §§pop();
                                             if(_loc5_ || _loc3_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(true)
                                                      {
                                                      }
                                                      §§goto(addr126);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr91);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr69);
                                                }
                                                §§goto(addr86);
                                             }
                                             §§goto(addr377);
                                          }
                                          else
                                          {
                                             §§goto(addr104);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr83);
                                       }
                                       §§goto(addr91);
                                    }
                                    else
                                    {
                                       §§goto(addr68);
                                    }
                                 default:
                                    §§goto(addr126);
                              }
                              continue loop4;
                              addr308:
                              addr164:
                           }
                           else
                           {
                              addr237:
                              §§push(_loc4_);
                              if(!(_loc6_ && _loc3_))
                              {
                                 addr245:
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc6_ && this))
                                    {
                                       addr253:
                                       §§push(4);
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          addr261:
                                          §§goto(addr308);
                                       }
                                       else
                                       {
                                          addr270:
                                          §§push(_loc4_);
                                          if(!_loc6_)
                                          {
                                             addr273:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc5_ || _loc2_))
                                                {
                                                   addr295:
                                                   §§push(6);
                                                   if(!(_loc6_ && this))
                                                   {
                                                      addr303:
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(6);
                                                if(_loc5_)
                                                {
                                                   addr294:
                                                   if(§§pop() === _loc4_)
                                                   {
                                                      §§goto(addr295);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr308);
                                                      §§push(7);
                                                   }
                                                }
                                             }
                                             §§goto(addr308);
                                          }
                                          §§goto(addr294);
                                       }
                                    }
                                    addr281:
                                    §§push(5);
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       addr289:
                                    }
                                    §§goto(addr308);
                                 }
                                 else
                                 {
                                    §§push(5);
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§goto(addr270);
                                    }
                                 }
                                 §§goto(addr303);
                              }
                              §§goto(addr294);
                           }
                           §§goto(addr308);
                        }
                        §§goto(addr295);
                     }
                     else
                     {
                        §§push(1);
                        if(!_loc6_)
                        {
                           §§push(_loc4_);
                           if(_loc5_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_)
                                 {
                                    §§push(1);
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       §§goto(addr308);
                                    }
                                    else
                                    {
                                       §§goto(addr303);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr253);
                                 }
                                 §§goto(addr308);
                              }
                              else
                              {
                                 §§push(2);
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    §§push(_loc4_);
                                    if(_loc5_ || this)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(2);
                                             if(_loc6_ && param1)
                                             {
                                             }
                                             §§goto(addr308);
                                          }
                                          else
                                          {
                                             §§goto(addr281);
                                          }
                                       }
                                       else
                                       {
                                          §§push(3);
                                          if(_loc5_)
                                          {
                                             addr224:
                                             §§push(_loc4_);
                                             if(_loc5_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§push(3);
                                                      if(_loc6_)
                                                      {
                                                      }
                                                      §§goto(addr308);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr281);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(4);
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr237);
                                                   }
                                                }
                                                §§goto(addr289);
                                             }
                                             §§goto(addr273);
                                          }
                                          §§goto(addr261);
                                       }
                                       §§goto(addr308);
                                    }
                                    §§goto(addr294);
                                 }
                                 §§goto(addr224);
                              }
                           }
                           §§goto(addr245);
                        }
                     }
                     §§goto(addr308);
                  }
                  §§goto(addr245);
               }
               §§goto(addr164);
            }
            §§goto(addr156);
         }
         §§goto(addr308);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§0!v§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr94:
                     this.§0!v§.stop();
                  }
                  loop0:
                  while(true)
                  {
                     this.§0!v§ = null;
                     addr84:
                     while(true)
                     {
                        addr72:
                        while(_loc1_ || _loc2_)
                        {
                           this.§,!I§ = null;
                           if(_loc1_ || this)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  removeChild(this.§,!I§);
                  §§goto(addr72);
                  §§goto(addr84);
               }
               §§goto(addr66);
            }
         }
         §§goto(addr94);
      }
      
      public function §,!^§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §8B§.§6"C§(param1);
         _loc2_ = new _loc3_();
         if(!_loc4_)
         {
            _loc2_.x = _loc2_.width / 2;
            do
            {
               _loc2_.y = _loc2_.height / 2;
            }
            while(_loc4_ && _loc3_);
            
         }
         return _loc2_;
      }
      
      public function set §5X§(param1:§"m§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§0!v§ = param1;
         }
      }
      
      public function get §5X§() : §"m§
      {
         return this.§0!v§;
      }
      
      public function get §#Z§() : Number
      {
         return this.§1L§;
      }
      
      public function set §#Z§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1L§ = param1;
         }
      }
      
      public function get §1!y§() : Number
      {
         return this.§=N§;
      }
      
      public function set §1!y§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=N§ = param1;
         }
      }
   }
}
