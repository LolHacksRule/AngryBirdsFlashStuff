package §<!F§
{
   import §?@§.§0]§;
   import com.rovio.assets.§<V§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §+!D§ extends Sprite
   {
      
      public static const §6K§:String = "star";
      
      public static const §!!N§:String = "smoke";
      
      public static const §2"+§:String = "coin";
      
      public static const §>!8§:String = "all";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §+!D§)
         {
            §6K§ = "star";
            loop0:
            do
            {
               §!!N§ = "smoke";
               while(true)
               {
                  §2"+§ = "coin";
                  while(_loc1_)
                  {
                     §>!8§ = "all";
                     if(_loc1_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      private var §&!i§:Sprite;
      
      private var §2D§:Number;
      
      private var §0!I§:Number;
      
      private var §#f§:§0]§;
      
      public function §+!D§(param1:Number, param2:String = "all")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:String = null;
         if(!_loc7_)
         {
            super();
         }
         var _loc5_:* = param2;
         if(_loc6_ || this)
         {
            §§push(§6K§);
            if(!_loc7_)
            {
               §§push(_loc5_);
               if(!_loc7_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc7_ && this))
                     {
                        addr146:
                        §§push(0);
                        if(_loc7_)
                        {
                           addr177:
                        }
                     }
                     else
                     {
                        addr209:
                        §§push(3);
                        if(!(_loc7_ && _loc3_))
                        {
                           addr217:
                        }
                     }
                     addr222:
                     if(_loc6_)
                     {
                        loop0:
                        while(true)
                        {
                           loop5:
                           switch(§§pop())
                           {
                              case 0:
                                 addr115:
                                 _loc3_ = int(this.§5!i§(0,3));
                                 break loop0;
                                 addr114:
                                 addr116:
                              case 1:
                                 addr86:
                                 §§push(this.§5!i§(4,6));
                                 if(_loc6_)
                                 {
                                    §§push(int(§§pop()));
                                    if(_loc6_ || param2)
                                    {
                                       _loc3_ = §§pop();
                                       if(_loc7_ && param1)
                                       {
                                          break loop0;
                                       }
                                       if(!_loc7_)
                                       {
                                          addr67:
                                          break loop0;
                                       }
                                    }
                                    addr300:
                                    _loc5_ = §§pop();
                                    if(_loc6_)
                                    {
                                       §§push(0);
                                       if(!_loc7_)
                                       {
                                          §§push(_loc5_);
                                          if(!_loc7_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc7_)
                                                {
                                                   §§push(0);
                                                   if(!_loc6_)
                                                   {
                                                      addr412:
                                                   }
                                                }
                                                else
                                                {
                                                   addr491:
                                                   §§push(8);
                                                   if(!_loc7_)
                                                   {
                                                      addr494:
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(1);
                                                if(!(_loc7_ && param1))
                                                {
                                                   §§push(_loc5_);
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§push(1);
                                                            if(!(_loc6_ || param1))
                                                            {
                                                               addr508:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr491);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(2);
                                                         if(_loc6_ || param2)
                                                         {
                                                            §§push(_loc5_);
                                                            if(_loc6_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     §§push(2);
                                                                     if(_loc6_ || param2)
                                                                     {
                                                                        addr514:
                                                                        switch(§§pop())
                                                                        {
                                                                           case 0:
                                                                              _loc4_ = "P_STAR_4";
                                                                              if(!_loc7_)
                                                                              {
                                                                                 break loop5;
                                                                              }
                                                                              return;
                                                                              addr544:
                                                                           case 1:
                                                                              _loc4_ = "P_STAR_3";
                                                                              break loop5;
                                                                           case 2:
                                                                              _loc4_ = "P_STAR_2";
                                                                              break loop5;
                                                                           case 3:
                                                                              _loc4_ = "P_STAR_1";
                                                                              break loop5;
                                                                           case 4:
                                                                              _loc4_ = "P_SMOKE_3";
                                                                              break loop5;
                                                                           case 5:
                                                                              _loc4_ = "P_SMOKE_2";
                                                                              break;
                                                                           case 6:
                                                                              _loc4_ = "P_SMOKE_1";
                                                                              break loop5;
                                                                           case 7:
                                                                           case 8:
                                                                           case 9:
                                                                              _loc4_ = "P_COIN_1";
                                                                              if(false)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              break loop5;
                                                                        }
                                                                        addr513:
                                                                        break;
                                                                        addr513:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr471:
                                                                        §§goto(addr513);
                                                                     }
                                                                  }
                                                                  §§goto(addr513);
                                                               }
                                                               else
                                                               {
                                                                  §§push(3);
                                                                  if(!(_loc7_ && _loc3_))
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(_loc6_)
                                                                     {
                                                                        addr383:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!(_loc7_ && this))
                                                                           {
                                                                              §§push(3);
                                                                              if(!_loc6_)
                                                                              {
                                                                              }
                                                                              §§goto(addr513);
                                                                           }
                                                                           addr468:
                                                                           §§push(7);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§goto(addr471);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr498:
                                                                              if(§§pop() === _loc5_)
                                                                              {
                                                                                 addr500:
                                                                                 §§push(9);
                                                                                 if(_loc6_ || _loc3_)
                                                                                 {
                                                                                    §§goto(addr508);
                                                                                 }
                                                                                 §§goto(addr513);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr513);
                                                                                 §§push(10);
                                                                              }
                                                                              §§goto(addr513);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(4);
                                                                           if(_loc6_ || param1)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(4);
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§goto(addr412);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr416:
                                                                                          §§push(_loc5_);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§push(5);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§goto(addr513);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr508);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr468);
                                                                                                }
                                                                                                §§goto(addr513);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(6);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   addr429:
                                                                                                   §§push(_loc5_);
                                                                                                   if(!(_loc7_ && _loc3_))
                                                                                                   {
                                                                                                      addr437:
                                                                                                      if(§§pop() === §§pop())
                                                                                                      {
                                                                                                         if(!(_loc7_ && param1))
                                                                                                         {
                                                                                                            §§push(6);
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               §§goto(addr513);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr480:
                                                                                                               §§push(_loc5_);
                                                                                                               if(_loc6_ || this)
                                                                                                               {
                                                                                                                  if(§§pop() === §§pop())
                                                                                                                  {
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        §§goto(addr500);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(9);
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        §§goto(addr498);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr513);
                                                                                                               }
                                                                                                               §§goto(addr498);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr491);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(7);
                                                                                                         if(_loc6_ || _loc3_)
                                                                                                         {
                                                                                                            addr457:
                                                                                                            §§push(_loc5_);
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               addr460:
                                                                                                               if(§§pop() === §§pop())
                                                                                                               {
                                                                                                                  if(!(_loc7_ && this))
                                                                                                                  {
                                                                                                                     §§goto(addr468);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr491);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(8);
                                                                                                                  if(!(_loc7_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§goto(addr480);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr494);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr498);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr498);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr498);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr513);
                                                                                    }
                                                                                    §§goto(addr500);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(5);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§goto(addr416);
                                                                                    }
                                                                                    §§goto(addr457);
                                                                                 }
                                                                              }
                                                                              §§goto(addr460);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr437);
                                                                  }
                                                                  §§goto(addr457);
                                                               }
                                                            }
                                                            §§goto(addr437);
                                                         }
                                                         §§goto(addr471);
                                                      }
                                                   }
                                                   §§goto(addr383);
                                                }
                                                §§goto(addr429);
                                             }
                                             §§goto(addr513);
                                          }
                                          §§goto(addr383);
                                       }
                                       §§goto(addr429);
                                    }
                                    §§goto(addr468);
                                 }
                                 else
                                 {
                                    §§goto(addr114);
                                 }
                              case 2:
                                 addr75:
                                 _loc3_ = int(this.§5!i§(7,9));
                                 addr74:
                                 if(!_loc7_)
                                 {
                                    break loop0;
                                 }
                                 addr515:
                                 break;
                              case 3:
                                 §§push(this.§5!i§(0,6));
                                 if(!_loc7_)
                                 {
                                    if(_loc6_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr86);
                                 }
                                 else
                                 {
                                    §§goto(addr74);
                                 }
                           }
                           this.§&!i§ = this.§7E§(_loc4_);
                           loop1:
                           while(true)
                           {
                              addChild(this.§&!i§);
                              do
                              {
                                 this.mouseEnabled = false;
                                 continue loop1;
                              }
                              while(_loc7_ && param2);
                              
                              §§goto(addr544);
                           }
                        }
                        §§push(_loc3_);
                        if(!(_loc7_ && param2))
                        {
                           §§goto(addr300);
                        }
                        §§goto(addr514);
                     }
                     §§goto(addr300);
                  }
                  else
                  {
                     §§push(§!!N§);
                     if(_loc6_ || this)
                     {
                        addr158:
                        §§push(_loc5_);
                        if(_loc6_ || _loc3_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc7_ && param2))
                              {
                                 §§push(1);
                                 if(_loc6_)
                                 {
                                    §§goto(addr177);
                                 }
                              }
                              else
                              {
                                 §§goto(addr209);
                              }
                              §§goto(addr222);
                           }
                           else
                           {
                              §§push(§2"+§);
                              if(_loc6_ || param1)
                              {
                                 addr186:
                                 §§push(_loc5_);
                                 if(!(_loc7_ && this))
                                 {
                                    addr194:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc7_ && this))
                                       {
                                          §§push(2);
                                          if(_loc7_)
                                          {
                                             §§goto(addr217);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr209);
                                       }
                                       §§goto(addr222);
                                    }
                                    else
                                    {
                                       §§push(§>!8§);
                                    }
                                    §§goto(addr209);
                                 }
                                 addr208:
                                 if(§§pop() === §§pop())
                                 {
                                    §§goto(addr209);
                                 }
                                 else
                                 {
                                    §§push(4);
                                 }
                                 §§goto(addr222);
                              }
                              §§goto(addr208);
                              §§push(_loc5_);
                           }
                           §§goto(addr209);
                        }
                        §§goto(addr194);
                     }
                     §§goto(addr186);
                  }
               }
               §§goto(addr186);
            }
            §§goto(addr158);
         }
         §§goto(addr146);
      }
      
      private function §5!i§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function §9O§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§#f§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§#f§);
                     addr90:
                     while(true)
                     {
                        §§pop().stop();
                        addr91:
                        while(true)
                        {
                           this.§#f§ = null;
                           addr67:
                           while(true)
                           {
                           }
                        }
                     }
                     addr47:
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                     return;
                     addr54:
                  }
               }
               loop1:
               while(true)
               {
                  removeChild(this.§&!i§);
                  loop2:
                  while(!_loc1_)
                  {
                     while(true)
                     {
                        this.§&!i§ = null;
                        if(!(_loc2_ || _loc2_))
                        {
                           continue loop2;
                        }
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                        §§goto(addr47);
                     }
                     §§goto(addr54);
                  }
                  §§goto(addr91);
               }
            }
            §§goto(addr90);
         }
         §§goto(addr62);
      }
      
      public function §7E§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §<V§.§"!,§(param1);
         _loc2_ = new _loc3_();
         if(!_loc5_)
         {
            _loc2_.x = _loc2_.width / 2;
            do
            {
               _loc2_.y = _loc2_.height / 2;
            }
            while(_loc5_);
            
         }
         return _loc2_;
      }
      
      public function set §0o§(param1:§0]§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§#f§ = param1;
         }
      }
      
      public function get §0o§() : §0]§
      {
         return this.§#f§;
      }
      
      public function get §!!v§() : Number
      {
         return this.§2D§;
      }
      
      public function set §!!v§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§2D§ = param1;
         }
      }
      
      public function get §-4§() : Number
      {
         return this.§0!I§;
      }
      
      public function set §-4§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§0!I§ = param1;
         }
      }
   }
}
