package §5!M§
{
   import §!X§.§#K§;
   import §!X§.§86§;
   import §!X§.§9k§;
   import §#!V§.§&!!§;
   import §#![§.§5<§;
   import §0! §.§7o§;
   import §0! §.§<2§;
   import §]!F§.§&!]§;
   import §]@§.Sprite;
   import §`!K§.§!!>§;
   
   public class §7!0§ extends §#K§
   {
       
      
      private var §#O§:Boolean = false;
      
      private var §@v§:§%!T§;
      
      public function §7!0§(param1:§86§, param2:§&!]§, param3:Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §9k§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§%!T§ = new §%!T§(this,new Sprite(),param1,param2,param3);
         if(_loc7_)
         {
            if(param4 >= 0)
            {
               §8k§.splice(param4,0,_loc5_);
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     §3,§.addChild(_loc5_.sprite);
                     if(_loc6_)
                     {
                        break;
                     }
                     if(!(_loc6_ && param3))
                     {
                        if(!_loc6_)
                        {
                           return _loc5_;
                        }
                     }
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
            }
            while(true)
            {
               §8k§.push(_loc5_);
            }
         }
         §§goto(addr87);
      }
      
      public function §<!<§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§#O§ = true;
         }
         var _loc1_:§9k§ = §>l§("BIRD_CHEETOS_BAG",§<!Y§ + 0.7,§ l§ + 0.1);
         if(_loc2_ || _loc2_)
         {
            this.§>!E§(_loc1_);
         }
         do
         {
            §!!>§.playSound("Bird_Cheetos_Bag_Damage_1","ChannelBird");
         }
         while(!_loc2_);
         
      }
      
      public function §]!&§() : §&!!§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§&!!§ = null;
         if(_loc3_)
         {
            if(this.§#O§)
            {
               if(!(_loc4_ && _loc2_))
               {
                  return _loc1_;
               }
            }
            else
            {
               this.§<!<§();
            }
         }
         var _loc2_:§%!T§ = §8k§[§'J§] as §%!T§;
         if(!(_loc4_ && _loc1_))
         {
            §§push(§8k§.length <= 1);
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc4_ && this))
                  {
                     addr81:
                     §§pop();
                     addr129:
                     addr139:
                     addr131:
                     if(!_loc4_)
                     {
                        §§push(Boolean(_loc2_));
                     }
                     _loc2_.§!!Q§();
                     _loc1_ = (_loc2_ as §%!T§).§0+§(_loc2_.§9a§,_loc2_.§1!2§);
                     if(_loc3_)
                     {
                        this.§@v§ = _loc2_;
                     }
                     §§goto(addr156);
                  }
               }
               if(§§pop())
               {
                  if(!(_loc4_ && this))
                  {
                     §§push((_loc2_ as §%!T§).§0+§(_loc2_.§9a§,_loc2_.§1!2§,false));
                     if(!(_loc4_ && _loc1_))
                     {
                        _loc1_ = §§pop();
                        if(_loc3_ || this)
                        {
                        }
                        §§goto(addr156);
                     }
                     addr156:
                     setSlingShotState(§8! §);
                     return _loc1_;
                  }
                  §§goto(addr129);
                  §§goto(addr139);
               }
               else if(_loc2_)
               {
                  if(!(_loc4_ && this))
                  {
                     §§goto(addr129);
                  }
                  §§goto(addr131);
               }
               §§goto(addr129);
            }
         }
         §§goto(addr81);
      }
      
      public function §1e§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§@v§.§]A§();
         }
      }
      
      public function §2Q§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§9k§ = null;
         if(_loc5_ || _loc1_)
         {
            if(§8k§.length > 0)
            {
               for each(_loc1_ in §8k§)
               {
                  if(_loc5_ || this)
                  {
                     if(_loc1_.name == "BIRD_CHEETOS_BAG")
                     {
                        if(!_loc4_)
                        {
                           this.§>!E§(_loc1_);
                           if(!_loc4_)
                           {
                              §'2§(§8k§.indexOf(_loc1_),false);
                           }
                        }
                     }
                  }
               }
               addr31:
            }
            return;
         }
         §§goto(addr31);
      }
      
      public function §>!E§(param1:§9k§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 20;
         var _loc3_:* = 1;
         var _loc4_:* = Number(90);
         if(!(_loc9_ && this))
         {
            §§push(_loc3_);
            if(_loc10_)
            {
               §§push(int(§§pop() * 1));
               if(_loc10_)
               {
                  _loc3_ = §§pop();
                  addr47:
                  §§push(0);
               }
            }
            var _loc5_:* = §§pop();
            loop0:
            while(true)
            {
               if(_loc5_ >= _loc3_)
               {
                  if(!_loc9_)
                  {
                     if(!(_loc9_ && param1))
                     {
                        if(!(_loc9_ && _loc3_))
                        {
                           break;
                        }
                        while(true)
                        {
                           if(!(_loc9_ && _loc3_))
                           {
                              §>`§.particles.addParticle(§5<§.CHEETOS_EXPLOSION,§<2§.§]!X§,§7o§.§%u§,param1.x,param1.y,500,"",0,0,0,0,0,2,12,false);
                              while(true)
                              {
                                 _loc5_++;
                                 addr75:
                                 while(!_loc10_)
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       addr180:
                                       while(true)
                                       {
                                          §§push(§§pop() * Math.cos(_loc6_));
                                          addr184:
                                          addr197:
                                          while(true)
                                          {
                                             §§push(§§pop() * Math.random());
                                             if(!(_loc9_ && param1))
                                             {
                                                if(!_loc9_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   addr246:
                                                   while(true)
                                                   {
                                                      _loc6_ = §§pop();
                                                      continue loop9;
                                                   }
                                                }
                                                addr245:
                                             }
                                             break;
                                          }
                                          _loc7_ = §§pop();
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                              addr102:
                           }
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!_loc9_)
                              {
                                 if(_loc9_)
                                 {
                                    continue;
                                 }
                                 if(_loc10_ || _loc2_)
                                 {
                                    §§push(-§§pop());
                                    if(_loc10_ || this)
                                    {
                                       if(!_loc9_)
                                       {
                                          §§push(§§pop() * Math.sin(_loc6_));
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             addr147:
                                             if(_loc10_ || param1)
                                             {
                                                if(_loc10_)
                                                {
                                                   §§push(§§pop() * Math.random());
                                                   if(!_loc9_)
                                                   {
                                                      addr162:
                                                      §§push(Number(§§pop()));
                                                      if(_loc10_ || this)
                                                      {
                                                         break;
                                                      }
                                                      addr202:
                                                      while(true)
                                                      {
                                                         §§push(Math.random() * (720 / _loc3_));
                                                         if(_loc10_ || this)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc9_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!(_loc9_ && _loc3_))
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc10_)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        §§push(180 / Math.PI);
                                                                        addr244:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     addr240:
                                                                  }
                                                                  §§goto(addr244);
                                                               }
                                                               §§goto(addr246);
                                                            }
                                                            §§goto(addr245);
                                                         }
                                                         §§goto(addr244);
                                                      }
                                                   }
                                                   §§goto(addr162);
                                                }
                                                §§goto(addr246);
                                             }
                                             §§goto(addr180);
                                          }
                                          §§goto(addr162);
                                       }
                                       §§goto(addr240);
                                    }
                                    §§goto(addr147);
                                 }
                                 §§goto(addr184);
                              }
                              §§goto(addr162);
                           }
                           _loc8_ = §§pop();
                        }
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr75);
               }
               else
               {
                  §§push(_loc4_);
               }
               §§goto(addr202);
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function get § $§() : Boolean
      {
         return this.§#O§;
      }
   }
}
