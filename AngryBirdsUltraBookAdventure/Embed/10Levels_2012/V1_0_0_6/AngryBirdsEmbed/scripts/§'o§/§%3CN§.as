package §'o§
{
   import §?!+§.§3_§;
   import com.rovio.assets.§!Q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §<N§ extends Sprite
   {
       
      
      private var §7f§:Sprite;
      
      private var §^I§:Number;
      
      private var § !+§:Number;
      
      private var §]5§:§3_§;
      
      public function §<N§(param1:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = null;
         if(!(_loc5_ && _loc2_))
         {
            super();
         }
         var _loc2_:int = Math.random() * 7;
         §§push(_loc2_);
         if(!(_loc5_ && _loc3_))
         {
            var _loc4_:* = §§pop();
            if(_loc6_)
            {
               §§push(0);
               if(_loc6_)
               {
                  §§push(_loc4_);
                  if(!_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        §§push(0);
                     }
                     else
                     {
                        §§push(1);
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(_loc4_);
                           if(_loc6_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc6_ || param1)
                                 {
                                    addr154:
                                    §§push(1);
                                    if(!_loc5_)
                                    {
                                       addr240:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             §§push("P_STAR_4");
                                             if(!_loc5_)
                                             {
                                                _loc3_ = §§pop();
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   addr242:
                                                   this.§7f§ = this.§[o§(_loc3_);
                                                   if(_loc6_ || param1)
                                                   {
                                                      addChild(this.§7f§);
                                                      if(_loc6_ || param1)
                                                      {
                                                      }
                                                      break;
                                                   }
                                                }
                                                this.mouseEnabled = false;
                                                addr278:
                                                this.§7f§.x = -this.§7f§.width / 2;
                                                if(_loc6_)
                                                {
                                                   this.§7f§.y = -this.§7f§.height / 2;
                                                   break;
                                                }
                                                break;
                                             }
                                             addr51:
                                             _loc3_ = §§pop();
                                             §§goto(addr242);
                                          case 1:
                                             §§goto(addr51);
                                          case 2:
                                             §§push("P_STAR_3");
                                             §§push("P_STAR_2");
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                _loc3_ = §§pop();
                                             }
                                             else
                                             {
                                                addr101:
                                                _loc3_ = §§pop();
                                             }
                                             §§goto(addr242);
                                          case 3:
                                             _loc3_ = "P_STAR_1";
                                             if(!_loc6_)
                                             {
                                                addr87:
                                             }
                                             §§goto(addr242);
                                          case 4:
                                             §§push("P_SMOKE_3");
                                             if(!(_loc5_ && param1))
                                             {
                                                _loc3_ = §§pop();
                                                if(!(_loc5_ && this))
                                                {
                                                   §§goto(addr87);
                                                }
                                                §§goto(addr278);
                                             }
                                             else
                                             {
                                                addr97:
                                                _loc3_ = §§pop();
                                             }
                                             §§goto(addr242);
                                          case 5:
                                             §§push("P_SMOKE_2");
                                             if(_loc6_ || _loc2_)
                                             {
                                                §§goto(addr97);
                                             }
                                             else
                                             {
                                                §§goto(addr101);
                                             }
                                          case 6:
                                             §§goto(addr101);
                                          default:
                                             §§goto(addr242);
                                       }
                                       "P_SMOKE_1";
                                       return;
                                       addr240:
                                    }
                                    else
                                    {
                                       addr178:
                                       §§goto(addr240);
                                    }
                                    §§goto(addr240);
                                 }
                                 else
                                 {
                                    addr203:
                                    §§goto(addr240);
                                    §§push(4);
                                 }
                                 §§goto(addr240);
                              }
                              else
                              {
                                 §§push(2);
                                 §§push(_loc4_);
                                 if(!(_loc5_ && param1))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          §§goto(addr240);
                                          §§push(2);
                                       }
                                       else
                                       {
                                          addr222:
                                          §§goto(addr240);
                                          §§push(5);
                                       }
                                       §§goto(addr240);
                                    }
                                    else
                                    {
                                       §§push(3);
                                       §§push(_loc4_);
                                       if(_loc6_)
                                       {
                                          addr176:
                                          if(§§pop() === §§pop())
                                          {
                                             §§goto(addr178);
                                             §§push(3);
                                          }
                                          else
                                          {
                                             §§push(4);
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                addr187:
                                                §§push(_loc4_);
                                                if(_loc6_ || param1)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                         §§goto(addr203);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr222);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(5);
                                                      §§push(_loc4_);
                                                      if(_loc5_ && _loc2_)
                                                      {
                                                      }
                                                      addr226:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         addr227:
                                                         §§push(6);
                                                         if(_loc5_ && param1)
                                                         {
                                                         }
                                                         §§goto(addr240);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr240);
                                                         §§push(7);
                                                      }
                                                      §§goto(addr240);
                                                   }
                                                   §§goto(addr240);
                                                }
                                                §§goto(addr226);
                                             }
                                             §§goto(addr240);
                                          }
                                          §§goto(addr240);
                                       }
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             §§goto(addr222);
                                          }
                                          §§goto(addr240);
                                       }
                                       else
                                       {
                                          §§goto(addr226);
                                          §§push(6);
                                          §§push(_loc4_);
                                       }
                                       §§goto(addr227);
                                    }
                                 }
                                 §§goto(addr226);
                              }
                           }
                           §§goto(addr176);
                        }
                        §§goto(addr187);
                     }
                     §§goto(addr240);
                  }
                  §§goto(addr226);
               }
               §§goto(addr178);
            }
            §§goto(addr154);
         }
         §§goto(addr240);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§]5§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr53:
                     this.§]5§.stop();
                     if(_loc2_ || _loc1_)
                     {
                        this.§]5§ = null;
                        if(!(_loc1_ && this))
                        {
                           addr71:
                           removeChild(this.§7f§);
                           if(_loc2_)
                           {
                              addr77:
                              this.§7f§ = null;
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr77);
               }
               §§goto(addr71);
            }
         }
         §§goto(addr53);
      }
      
      public function §[o§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §!Q§.§^!H§(param1);
         _loc2_ = new _loc3_();
         if(!_loc5_)
         {
            _loc2_.x = _loc2_.width / 2;
            if(!_loc5_)
            {
               addr48:
               _loc2_.y = _loc2_.height / 2;
            }
            return _loc2_;
         }
         §§goto(addr48);
      }
      
      public function set §<p§(param1:§3_§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§]5§ = param1;
         }
      }
      
      public function get §<p§() : §3_§
      {
         return this.§]5§;
      }
      
      public function get §+!7§() : Number
      {
         return this.§^I§;
      }
      
      public function set §+!7§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^I§ = param1;
         }
      }
      
      public function get §'!3§() : Number
      {
         return this.§ !+§;
      }
      
      public function set §'!3§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§ !+§ = param1;
         }
      }
   }
}
