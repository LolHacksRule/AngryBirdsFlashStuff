package §[!w§
{
   import §&"'§.§3^§;
   import com.rovio.assets.§>!]§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §;!<§ extends Sprite
   {
       
      
      private var §1"'§:Sprite;
      
      private var §1!6§:Number;
      
      private var §[!]§:Number;
      
      private var §8!g§:§3^§;
      
      public function §;!<§(param1:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         if(_loc5_)
         {
            super();
         }
         var _loc2_:int = Math.random() * 7;
         §§push(_loc2_);
         if(!_loc6_)
         {
            var _loc4_:* = §§pop();
            if(!(_loc6_ && _loc3_))
            {
               §§push(0);
               if(_loc5_ || _loc2_)
               {
                  §§push(_loc4_);
                  if(_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_)
                        {
                           §§push(0);
                           if(!_loc5_)
                           {
                              addr208:
                              §§push(_loc4_);
                              if(_loc5_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       addr214:
                                       §§push(4);
                                       if(_loc5_)
                                       {
                                          addr217:
                                       }
                                       else
                                       {
                                          addr244:
                                       }
                                    }
                                    else
                                    {
                                       addr236:
                                       §§push(6);
                                       if(_loc5_ || _loc3_)
                                       {
                                          §§goto(addr244);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(5);
                                    if(_loc5_)
                                    {
                                       §§push(_loc4_);
                                       if(_loc5_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                §§push(5);
                                                if(_loc5_)
                                                {
                                                   addr250:
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         _loc3_ = "P_STAR_4";
                                                         if(_loc5_ || param1)
                                                         {
                                                            break;
                                                         }
                                                         loop0:
                                                         while(true)
                                                         {
                                                            this.§1"'§.x = -this.§1"'§.width / 2;
                                                            loop1:
                                                            while(_loc5_)
                                                            {
                                                               this.§1"'§.y = -this.§1"'§.height / 2;
                                                               if(!(_loc5_ || param1))
                                                               {
                                                                  continue;
                                                               }
                                                               if(!_loc6_)
                                                               {
                                                                  break loop0;
                                                               }
                                                               loop2:
                                                               for(; _loc6_; break loop1)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     addChild(this.§1"'§);
                                                                     continue loop2;
                                                                  }
                                                               }
                                                               continue loop0;
                                                               addr293:
                                                            }
                                                            while(true)
                                                            {
                                                               this.mouseEnabled = false;
                                                               §§goto(addr293);
                                                            }
                                                         }
                                                         return;
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
                                                   this.§1"'§ = this.§8"'§(_loc3_);
                                                   addr249:
                                                   §§goto(addr317);
                                                   addr249:
                                                }
                                                else
                                                {
                                                   addr234:
                                                   if(§§pop() !== _loc4_)
                                                   {
                                                      §§goto(addr249);
                                                      §§push(7);
                                                   }
                                                   §§goto(addr249);
                                                }
                                                §§goto(addr249);
                                             }
                                             §§goto(addr236);
                                          }
                                          else
                                          {
                                             §§push(6);
                                             if(_loc5_)
                                             {
                                                §§goto(addr234);
                                             }
                                          }
                                       }
                                       §§goto(addr234);
                                    }
                                 }
                              }
                              §§goto(addr234);
                           }
                        }
                        else
                        {
                           addr130:
                           §§push(1);
                           if(!(_loc5_ || param1))
                           {
                              addr142:
                              §§push(_loc4_);
                              if(!(_loc6_ && this))
                              {
                                 addr160:
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc6_ && this))
                                    {
                                       addr168:
                                       §§push(2);
                                       if(!_loc6_)
                                       {
                                          §§goto(addr249);
                                       }
                                       else
                                       {
                                          addr180:
                                          §§push(_loc4_);
                                          if(_loc5_ || _loc2_)
                                          {
                                             addr188:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   addr196:
                                                   §§push(3);
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                   }
                                                   §§goto(addr249);
                                                }
                                                else
                                                {
                                                   §§goto(addr214);
                                                }
                                             }
                                             else
                                             {
                                                §§push(4);
                                                if(_loc5_)
                                                {
                                                   §§goto(addr208);
                                                }
                                                §§goto(addr217);
                                             }
                                             §§goto(addr217);
                                          }
                                          §§goto(addr234);
                                       }
                                    }
                                    §§goto(addr196);
                                 }
                                 else
                                 {
                                    §§push(3);
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       §§goto(addr180);
                                    }
                                    §§goto(addr217);
                                 }
                              }
                              §§goto(addr188);
                           }
                        }
                        §§goto(addr249);
                     }
                     else
                     {
                        §§push(1);
                        if(!_loc6_)
                        {
                           §§push(_loc4_);
                           if(!(_loc6_ && _loc3_))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    §§goto(addr130);
                                 }
                                 §§goto(addr196);
                              }
                              else
                              {
                                 §§push(2);
                                 if(_loc5_)
                                 {
                                    §§goto(addr142);
                                 }
                                 §§goto(addr180);
                              }
                           }
                           §§goto(addr160);
                        }
                     }
                     §§goto(addr217);
                  }
                  §§goto(addr234);
               }
               §§goto(addr180);
            }
            §§goto(addr168);
         }
         §§goto(addr250);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§8!g§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§8!g§);
                     addr85:
                     while(true)
                     {
                        §§pop().stop();
                        loop5:
                        while(true)
                        {
                           this.§8!g§ = null;
                           addr60:
                           addr62:
                           while(!_loc2_)
                           {
                              continue loop5;
                           }
                        }
                     }
                  }
                  addr83:
               }
               while(true)
               {
                  removeChild(this.§1"'§);
                  for(; !(_loc1_ && _loc1_); this.§1"'§ = null,if(!_loc1_)
                  {
                     return;
                     addr30:
                  })
                  {
                     if(!_loc1_)
                     {
                        continue;
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr60);
                  §§goto(addr62);
               }
            }
            §§goto(addr85);
         }
         §§goto(addr30);
      }
      
      public function §8"'§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §>!]§.§1!8§(param1);
         _loc2_ = new _loc3_();
         if(_loc5_ || this)
         {
            _loc2_.x = _loc2_.width / 2;
            do
            {
               _loc2_.y = _loc2_.height / 2;
            }
            while(_loc4_ && param1);
            
         }
         return _loc2_;
      }
      
      public function set §#!T§(param1:§3^§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§8!g§ = param1;
         }
      }
      
      public function get §#!T§() : §3^§
      {
         return this.§8!g§;
      }
      
      public function get §6U§() : Number
      {
         return this.§1!6§;
      }
      
      public function set §6U§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§1!6§ = param1;
         }
      }
      
      public function get §0!0§() : Number
      {
         return this.§[!]§;
      }
      
      public function set §0!0§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§[!]§ = param1;
         }
      }
   }
}
