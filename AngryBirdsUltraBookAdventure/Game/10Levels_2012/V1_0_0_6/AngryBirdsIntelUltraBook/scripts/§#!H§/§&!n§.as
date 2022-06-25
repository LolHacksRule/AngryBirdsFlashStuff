package §#!H§
{
   import §2!H§.§!q§;
   import com.rovio.assets.§`!t§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §&!n§ extends Sprite
   {
       
      
      private var §?[§:Sprite;
      
      private var §3!J§:Number;
      
      private var §6!=§:Number;
      
      private var §4T§:§!q§;
      
      public function §&!n§(param1:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = null;
         if(!(_loc6_ && param1))
         {
            super();
         }
         var _loc2_:int = Math.random() * 7;
         §§push(_loc2_);
         if(_loc5_)
         {
            var _loc4_:* = §§pop();
            if(_loc5_ || _loc3_)
            {
               §§push(0);
               if(_loc5_ || _loc2_)
               {
                  §§push(_loc4_);
                  if(!(_loc6_ && _loc3_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc6_)
                        {
                           §§push(0);
                           if(!(_loc5_ || param1))
                           {
                              addr293:
                              if(§§pop() === _loc4_)
                              {
                                 addr295:
                                 §§push(6);
                                 if(_loc5_)
                                 {
                                    addr298:
                                 }
                              }
                              else
                              {
                                 §§push(7);
                              }
                           }
                           addr304:
                           loop5:
                           switch(§§pop())
                           {
                              case 0:
                                 addr114:
                                 _loc3_ = "P_STAR_4";
                                 if(_loc5_)
                                 {
                                    addr373:
                                    this.§?[§ = this.§#!4§(_loc3_);
                                    while(true)
                                    {
                                       addChild(this.§?[§);
                                       loop1:
                                       while(!_loc6_)
                                       {
                                          while(true)
                                          {
                                             this.mouseEnabled = false;
                                             while(!_loc6_)
                                             {
                                                this.§?[§.x = -this.§?[§.width / 2;
                                                do
                                                {
                                                   this.§?[§.y = -this.§?[§.height / 2;
                                                }
                                                while(!(_loc5_ || this));
                                                
                                                if(!_loc6_)
                                                {
                                                   break loop5;
                                                }
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                                 break;
                              case 1:
                                 addr107:
                                 _loc3_ = "P_STAR_3";
                                 if(!_loc6_)
                                 {
                                    §§goto(addr373);
                                 }
                                 break;
                              case 2:
                                 addr101:
                                 _loc3_ = "P_STAR_2";
                                 §§goto(addr373);
                                 addr102:
                              case 3:
                                 addr93:
                                 _loc3_ = "P_STAR_1";
                                 if(!_loc6_)
                                 {
                                    §§goto(addr373);
                                 }
                                 §§goto(addr372);
                              case 4:
                                 addr78:
                                 §§push("P_SMOKE_3");
                                 if(_loc5_)
                                 {
                                    _loc3_ = §§pop();
                                    if(!(_loc6_ && param1))
                                    {
                                       addr53:
                                    }
                                    else
                                    {
                                       addr312:
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr114);
                                 }
                                 §§goto(addr373);
                              case 5:
                                 addr57:
                                 §§push("P_SMOKE_2");
                                 if(!_loc6_)
                                 {
                                    if(_loc5_ || _loc2_)
                                    {
                                       if(!_loc6_)
                                       {
                                          _loc3_ = §§pop();
                                          if(_loc5_)
                                          {
                                             if(_loc5_)
                                             {
                                                §§goto(addr373);
                                             }
                                             else
                                             {
                                                §§goto(addr102);
                                             }
                                          }
                                          §§goto(addr372);
                                       }
                                       else
                                       {
                                          §§goto(addr107);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr101);
                                    }
                                    §§goto(addr101);
                                 }
                                 else
                                 {
                                    §§goto(addr78);
                                 }
                              case 6:
                                 §§push("P_SMOKE_1");
                                 if(!(_loc6_ && param1))
                                 {
                                    if(!_loc6_)
                                    {
                                       _loc3_ = §§pop();
                                       if(_loc5_)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr53);
                                          }
                                          else
                                          {
                                             §§goto(addr373);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr312);
                                       }
                                       §§goto(addr373);
                                    }
                                    else
                                    {
                                       §§goto(addr93);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr57);
                                 }
                                 §§goto(addr373);
                              default:
                                 §§goto(addr373);
                           }
                           return;
                           addr303:
                        }
                        else
                        {
                           addr281:
                           §§push(5);
                           if(_loc6_ && _loc2_)
                           {
                              §§goto(addr293);
                           }
                           else
                           {
                              addr289:
                           }
                           §§goto(addr303);
                        }
                     }
                     else
                     {
                        §§push(1);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(_loc4_);
                           if(!(_loc6_ && param1))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    addr189:
                                    §§push(1);
                                    if(!_loc5_)
                                    {
                                       addr201:
                                       §§push(_loc4_);
                                       if(_loc5_ || _loc2_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                addr217:
                                                §§push(2);
                                                if(_loc5_ || param1)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr281);
                                             }
                                          }
                                          else
                                          {
                                             §§push(3);
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                §§push(_loc4_);
                                                if(!_loc6_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§push(3);
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            addr248:
                                                         }
                                                         §§goto(addr303);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr281);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(4);
                                                      if(_loc5_)
                                                      {
                                                         §§push(_loc4_);
                                                         if(!_loc6_)
                                                         {
                                                            addr255:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc6_ && _loc2_))
                                                               {
                                                                  §§push(4);
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     §§goto(addr303);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr293);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr281);
                                                               }
                                                               §§goto(addr293);
                                                            }
                                                            else
                                                            {
                                                               §§push(5);
                                                               if(!_loc5_)
                                                               {
                                                               }
                                                               §§goto(addr303);
                                                            }
                                                         }
                                                         §§goto(addr293);
                                                      }
                                                      §§push(_loc4_);
                                                      if(!_loc6_)
                                                      {
                                                         addr278:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr281);
                                                            }
                                                            §§goto(addr295);
                                                         }
                                                         else
                                                         {
                                                            §§push(6);
                                                            if(!_loc6_)
                                                            {
                                                               §§goto(addr293);
                                                            }
                                                            §§goto(addr303);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr293);
                                             }
                                             §§goto(addr248);
                                          }
                                       }
                                       §§goto(addr278);
                                    }
                                    §§goto(addr303);
                                 }
                                 §§goto(addr217);
                              }
                              else
                              {
                                 §§push(2);
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§goto(addr201);
                                 }
                              }
                              §§goto(addr298);
                           }
                           §§goto(addr278);
                        }
                     }
                     §§goto(addr293);
                  }
                  §§goto(addr255);
               }
               §§goto(addr248);
            }
            §§goto(addr189);
         }
         §§goto(addr304);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§4T§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§4T§);
                     addr90:
                     while(true)
                     {
                        §§pop().stop();
                        addr91:
                        while(true)
                        {
                           this.§4T§ = null;
                           continue loop0;
                        }
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  removeChild(this.§?[§);
                  addr70:
                  while(true)
                  {
                     this.§?[§ = null;
                     if(_loc1_ && this)
                     {
                        continue;
                     }
                     if(!_loc1_)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           break;
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr75);
                  }
                  return;
                  §§goto(addr82);
               }
            }
            §§goto(addr90);
         }
         §§goto(addr70);
      }
      
      public function §#!4§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §`!t§.§=J§(param1);
         _loc2_ = new _loc3_();
         if(_loc5_)
         {
            _loc2_.x = _loc2_.width / 2;
         }
         do
         {
            _loc2_.y = _loc2_.height / 2;
         }
         while(!(_loc5_ || param1));
         
         return _loc2_;
      }
      
      public function set §>P§(param1:§!q§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4T§ = param1;
         }
      }
      
      public function get §>P§() : §!q§
      {
         return this.§4T§;
      }
      
      public function get §8E§() : Number
      {
         return this.§3!J§;
      }
      
      public function set §8E§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§3!J§ = param1;
         }
      }
      
      public function get §3F§() : Number
      {
         return this.§6!=§;
      }
      
      public function set §3F§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§6!=§ = param1;
         }
      }
   }
}
