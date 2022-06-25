package §^!Y§
{
   import flash.utils.Dictionary;
   
   public class §else §
   {
       
      
      private var §+]§:§'R§;
      
      private var § s§:Dictionary;
      
      public function §else §(param1:§'R§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§ s§ = new Dictionary();
            while(true)
            {
               super();
               §§goto(addr51);
            }
         }
         addr51:
         while(true)
         {
            this.§+]§ = param1;
            if(!_loc2_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function initializeAnimations(param1:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:* = 0;
         if(!(_loc6_ && _loc3_))
         {
            this.§ !g§(param1);
            loop0:
            while(true)
            {
               this.§,!m§("PARTICLE_WOOD",["PARTICLE_WOOD_1"]);
               loop1:
               while(true)
               {
                  this.§,!m§("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT"]);
                  while(_loc7_)
                  {
                     this.§,!m§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
                     while(true)
                     {
                        this.§,!m§("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]);
                        loop4:
                        while(true)
                        {
                           this.§,!m§("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]);
                           loop5:
                           while(true)
                           {
                              this.§,!m§("FOREGROUND_12_LAYER_1",["FOREGROUND_12_LAYER_1"]);
                              loop6:
                              while(true)
                              {
                                 this.§,!m§("BACKGROUND_12_MOON_1",["BACKGROUND_12_MOON_1"]);
                                 while(true)
                                 {
                                    this.§,!m§("BACKGROUND_12_VOLCANO",["BACKGROUND_12_VOLCANO"]);
                                    loop8:
                                    while(true)
                                    {
                                       this.§,!m§("BACKGROUND_12_MOON_2",["BACKGROUND_12_MOON_2"]);
                                       while(true)
                                       {
                                          this.§,!m§("BACKGROUND_12_LAYER_4",["BACKGROUND_12_LAYER_4"]);
                                          continue loop6;
                                          addr203:
                                          loop11:
                                          while(!(_loc6_ && _loc2_))
                                          {
                                             this.§,!m§("BACKGROUND_12_LAYER_2",["BACKGROUND_12_LAYER_2"]);
                                             while(true)
                                             {
                                                this.§,!m§("BACKGROUND_12_LAYER_1",["BACKGROUND_12_LAYER_1"]);
                                                continue loop8;
                                                addr138:
                                                if(!(_loc7_ || param1))
                                                {
                                                   continue;
                                                }
                                                if(!_loc7_)
                                                {
                                                   continue loop6;
                                                }
                                                this.§,!m§("SCORE_BIRD_BLUE",["SCORE_BIRD_BLUE"]);
                                                loop17:
                                                while(true)
                                                {
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      this.§,!m§("SCORE_BIRD_GREEN",["SCORE_BIRD_GREEN"]);
                                                      loop18:
                                                      while(true)
                                                      {
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop4;
                                                         }
                                                         addr162:
                                                         addr136:
                                                         while(!_loc6_)
                                                         {
                                                            §§goto(addr138);
                                                            continue loop18;
                                                         }
                                                         while(!_loc6_)
                                                         {
                                                            this.§,!m§("BIRD_MIGHTY_EAGLE",["BIRD_ME_MOTION","BIRD_ME_RADIAL"]);
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop11;
                                                   }
                                                   addr155:
                                                   while(true)
                                                   {
                                                      this.§,!m§("SCORE_BIRD_RED",["SCORE_BIRD_RED"]);
                                                      §§goto(addr136);
                                                      continue loop17;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    if(!(_loc7_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    if(false)
                                    {
                                       §§goto(addr54);
                                    }
                                    var _loc4_:int = 0;
                                    var _loc5_:* = [{
                                       "name":"TRAIL_",
                                       "count":3
                                    },{
                                       "name":"PARTICLE_WOOD_",
                                       "count":3
                                    },{
                                       "name":"PARTICLE_STONE_",
                                       "count":3
                                    },{
                                       "name":"PARTICLE_ICE_",
                                       "count":5
                                    },{
                                       "name":"PARTICLE_BIRDWHITE_",
                                       "count":3
                                    },{
                                       "name":"PARTICLE_BIRDBLUE_",
                                       "count":3
                                    },{
                                       "name":"PARTICLE_BIRDBLACK_",
                                       "count":3
                                    },{
                                       "name":"PARTICLE_BIRDRED_",
                                       "count":3
                                    },{
                                       "name":"PARTICLE_BIRDYELLOW_",
                                       "count":3
                                    },{
                                       "name":"PARTICLE_BIRDGREEN_",
                                       "count":3
                                    },{
                                       "name":"SMOKE_BIG_",
                                       "count":6
                                    },{
                                       "name":"SMOKE_SMALL_",
                                       "count":3
                                    },{
                                       "name":"EXPLOSION_",
                                       "count":7
                                    }];
                                    addr447:
                                    for each(_loc2_ in _loc5_)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(1);
                                          if(_loc7_)
                                          {
                                             _loc3_ = §§pop();
                                             addr443:
                                             §§push(_loc3_);
                                             addr423:
                                             addr442:
                                          }
                                          if(§§pop() > _loc2_.count)
                                          {
                                             §§goto(addr447);
                                          }
                                          this.§,!m§(_loc2_.name + _loc3_,[_loc2_.name + _loc3_]);
                                          _loc3_++;
                                          addr437:
                                          if(_loc7_ || _loc3_)
                                          {
                                             if(_loc7_ || _loc2_)
                                             {
                                                if(_loc7_ || _loc3_)
                                                {
                                                   if(false)
                                                   {
                                                      §§goto(addr423);
                                                   }
                                                   §§goto(addr443);
                                                }
                                                §§goto(addr442);
                                             }
                                             §§goto(addr437);
                                          }
                                          §§goto(addr447);
                                       }
                                       §§goto(addr443);
                                    }
                                    if(_loc7_)
                                    {
                                       this.§,!m§("NUMBERS",["0","1","2","3","4","5","6","7","8","9"]);
                                       this.initializeBirdAnimations();
                                       this.initializePigAnimations();
                                       addr481:
                                       addr509:
                                       if(_loc7_ || param1)
                                       {
                                          if(_loc7_)
                                          {
                                             this.§,!m§("SPARKLES",["PARTICLE_ICE_1","PARTICLE_ICE_3"]);
                                             if(_loc6_)
                                             {
                                                §§goto(addr481);
                                             }
                                             return;
                                             addr467:
                                          }
                                          §§goto(addr509);
                                       }
                                       addr494:
                                       §§goto(addr494);
                                    }
                                    §§goto(addr467);
                                 }
                              }
                           }
                        }
                     }
                     if(_loc6_ && this)
                     {
                        continue;
                     }
                     if(_loc6_)
                     {
                        continue loop1;
                     }
                     this.§,!m§("BIRD_SARDINE",["BIRD_SARDINE"]);
                     §§goto(addr162);
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr155);
      }
      
      private function § !g§(param1:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:String = null;
         if(!(_loc6_ && _loc3_))
         {
            §§push(param1);
            if(_loc7_ || param1)
            {
               if(§§pop() != null)
               {
                  addr63:
                  _loc2_ = this.§^m§(param1);
                  addr50:
                  for each(_loc3_ in _loc2_)
                  {
                     if(_loc7_ || this)
                     {
                        this.§^!Z§(_loc3_);
                     }
                  }
               }
               return;
            }
            §§goto(addr63);
         }
         §§goto(addr50);
      }
      
      private function §^!Z§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§,!m§(param1,[param1 + "_1",param1 + "_2",param1 + "_3",param1 + "_4"]));
            if(_loc3_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     §§push(this.§,!m§(param1,[param1 + "_1",param1 + "_2",param1 + "_3"]));
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!§§pop())
                        {
                           if(_loc3_ || _loc2_)
                           {
                           }
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr120);
                  }
                  §§push(this.§,!m§(param1,[param1 + "_1"]));
                  if(_loc3_ || _loc3_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc2_ && param1))
                        {
                           addr115:
                           addr120:
                           if(§§pop())
                           {
                           }
                           addr121:
                           return;
                           §§push(this.§,!m§(param1,[param1]));
                        }
                     }
                  }
                  §§goto(addr120);
               }
               §§goto(addr121);
            }
            §§goto(addr120);
         }
         §§goto(addr115);
      }
      
      private function §^m§(param1:Array) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:Array = [];
         var _loc4_:int = 0;
         var _loc5_:* = param1;
         loop0:
         while(§§hasnext(_loc5_,_loc4_))
         {
            §§push(§§nextvalue(_loc4_,_loc5_));
            while(true)
            {
               _loc3_ = §§pop();
               loop2:
               while(true)
               {
                  §§push(_loc3_);
                  loop3:
                  while(true)
                  {
                     §§push("PIG");
                     loop4:
                     while(true)
                     {
                        §§push(§§pop().indexOf(§§pop()) == 0);
                        if(_loc6_)
                        {
                           §§push(!§§pop());
                           loop5:
                           while(true)
                           {
                              §§push(§§pop());
                              loop6:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          if(!§§pop())
                                          {
                                             while(§§pop())
                                             {
                                                if(_loc6_)
                                                {
                                                   _loc2_.push(_loc3_);
                                                }
                                                if(_loc7_)
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      if(!(_loc6_ || this))
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§push(_loc3_);
                                                      if(_loc7_ && param1)
                                                      {
                                                         break;
                                                      }
                                                      §§push("_");
                                                      if(_loc6_)
                                                      {
                                                         if(_loc7_ && this)
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§push(§§pop().indexOf(§§pop()) > 0);
                                                         if(_loc6_)
                                                         {
                                                            if(!(_loc6_ || _loc2_))
                                                            {
                                                               continue loop8;
                                                            }
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               addr154:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  §§goto(addr155);
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop10;
                                                            }
                                                            addr124:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop().indexOf(§§pop()) == 0);
                                                         }
                                                         addr115:
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop7;
                                                      }
                                                   }
                                                   continue loop3;
                                                }
                                                if(_loc6_ || param1)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   addr155:
                                                   while(true)
                                                   {
                                                   }
                                                   addr155:
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   continue loop3;
                                                }
                                                §§goto(addr155);
                                             }
                                             continue loop0;
                                             addr85:
                                          }
                                          §§goto(addr124);
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr154);
                     }
                  }
               }
            }
         }
         if(_loc6_)
         {
            _loc2_.sort();
         }
         return _loc2_;
      }
      
      protected function initializeBirdAnimations() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this);
            §§push("BIRD_BLACK");
            §§push(["normal",["BIRD_BLACK_1","BIRD_BLACK_2"]]);
            if(_loc2_ || _loc2_)
            {
               §§push(null);
            }
            §§pop().§>_§(§§pop(),§§pop());
            while(true)
            {
               §§push(this);
               §§push("BIRD_BLUE");
               §§push(["normal",["BIRD_BLUE_1","BIRD_BLUE_2"]]);
               if(!_loc1_)
               {
                  §§push(null);
               }
               §§pop().§>_§(§§pop(),§§pop());
               addr155:
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §§push(this);
               §§push("BIRD_GREEN");
               §§push(["normal",["BIRD_GREEN_1","BIRD_GREEN_2"]]);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(null);
               }
               §§pop().§>_§(§§pop(),§§pop());
               loop5:
               while(_loc2_)
               {
                  §§push(this);
                  §§push("BIRD_REDBIG");
                  §§push(["normal",["BIRD_REDBIG_1"]]);
                  if(_loc2_)
                  {
                     §§push(null);
                  }
                  §§pop().§>_§(§§pop(),§§pop());
                  if(_loc1_ && this)
                  {
                     continue;
                  }
                  if(_loc2_)
                  {
                     return;
                  }
                  while(!_loc1_)
                  {
                     §§goto(addr155);
                  }
                  while(!(_loc1_ && _loc2_))
                  {
                     §§push(this);
                     §§push("BIRD_WHITE");
                     §§push(["normal",["BIRD_WHITE_1","BIRD_WHITE_2"]]);
                     if(!_loc1_)
                     {
                        §§push(null);
                     }
                     §§pop().§>_§(§§pop(),§§pop());
                     break loop5;
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push("BIRD_RED");
                     §§push(["normal",["BIRD_RED_1","BIRD_RED_2"]]);
                     if(_loc2_)
                     {
                        §§push(null);
                     }
                     §§pop().§>_§(§§pop(),§§pop());
                     §§goto(addr224);
                  }
                  addr224:
                  addr153:
                  addr260:
               }
               while(true)
               {
                  §§push(this);
                  §§push("BIRD_YELLOW");
                  §§push(["normal",["BIRD_YELLOW_1","BIRD_YELLOW_2"]]);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(null);
                  }
                  §§pop().§>_§(§§pop(),§§pop());
                  §§goto(addr153);
               }
            }
         }
         §§goto(addr260);
      }
      
      protected function initializePigAnimations() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this);
            §§push("PIG_BASIC_SMALL");
            §§push(["normal",["PIG_BASIC_SMALL_01","PIG_BASIC_SMALL_02","PIG_BASIC_SMALL_03"]]);
            if(_loc1_ || this)
            {
               §§push(null);
            }
            §§pop().§>_§(§§pop(),§§pop());
            loop0:
            do
            {
               §§push(this);
               §§push("PIG_BASIC_MEDIUM");
               §§push(["normal",["PIG_BASIC_MEDIUM_01","PIG_BASIC_MEDIUM_02","PIG_BASIC_MEDIUM_03"]]);
               if(_loc1_)
               {
                  §§push(null);
               }
               §§pop().§>_§(§§pop(),§§pop());
               while(true)
               {
                  §§push(this);
                  §§push("PIG_BASIC_BIG");
                  §§push(["normal",["PIG_BASIC_BIG_01","PIG_BASIC_BIG_02","PIG_BASIC_BIG_03"]]);
                  if(_loc1_)
                  {
                     §§push(null);
                  }
                  §§pop().§>_§(§§pop(),§§pop());
                  loop2:
                  while(_loc1_)
                  {
                     §§push(this);
                     §§push("PIG_HELMET");
                     §§push(["normal",["PIG_HELMET_01","PIG_HELMET_02","PIG_HELMET_03"]]);
                     if(_loc1_ || _loc2_)
                     {
                        §§push(null);
                     }
                     §§pop().§>_§(§§pop(),§§pop());
                     do
                     {
                        §§push(this);
                        §§push("PIG_MUSTACHE");
                        §§push(["normal",["PIG_MUSTACHE_01","PIG_MUSTACHE_02","PIG_MUSTACHE_03"]]);
                        if(!_loc2_)
                        {
                           §§push(null);
                        }
                        §§pop().§>_§(§§pop(),§§pop());
                        while(!(_loc2_ && _loc2_))
                        {
                           §§push(this);
                           §§push("PIG_KING");
                           §§push(["normal",["PIG_KING_01","PIG_KING_02","PIG_KING_03"]]);
                           if(_loc1_ || _loc1_)
                           {
                              §§push(null);
                           }
                           §§pop().§>_§(§§pop(),§§pop());
                           if(_loc2_ && this)
                           {
                              continue;
                           }
                           §§goto(addr60);
                        }
                        continue loop2;
                     }
                     while(_loc2_);
                     
                     continue loop0;
                  }
               }
            }
            while(!_loc1_);
            
         }
      }
      
      protected function §,!m§(param1:String, param2:Array) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[1] = param1;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§pop().§§slot[2] = param2;
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        if(this.§ s§[name])
                        {
                           if(_loc5_ || _loc3_)
                           {
                              if(!(_loc6_ && param1))
                              {
                                 throw new Error("Trying to add a duplicate animation: " + name);
                              }
                              continue loop3;
                           }
                           while(true)
                           {
                           }
                           addr78:
                        }
                        while(true)
                        {
                           §§push(§§newactivation());
                           if(!_loc5_)
                           {
                              break;
                           }
                           if(!_loc5_)
                           {
                              continue loop0;
                           }
                           §§pop().§§slot[3] = true;
                           if(!_loc6_)
                           {
                              if(_loc6_ && param2)
                              {
                                 break loop4;
                              }
                              if(true)
                              {
                                 try
                                 {
                                    this.§ s§[name] = this.§`8§(frameNames);
                                 }
                                 catch(e:Error)
                                 {
                                    if(!_loc6_)
                                    {
                                       var result:Boolean = false;
                                    }
                                 }
                                 return result;
                              }
                              continue loop4;
                           }
                           §§goto(addr78);
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private function §`8§(param1:Array) : §4!f§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:§1C§ = null;
         var _loc2_:§4!f§ = new §4!f§();
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§+]§.§2+§(_loc3_);
            if(_loc7_ || _loc3_)
            {
               _loc2_.addFrame(_loc4_);
            }
         }
         return _loc2_;
      }
      
      protected function §>_§(param1:String, param2:Array) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         if(!_loc9_)
         {
            if(this.§ s§[param1])
            {
               if(!(_loc9_ && this))
               {
                  throw new Error("Trying to add a duplicate animation: " + param1);
               }
            }
         }
         var _loc3_:§ 4§ = new § 4§();
         for each(_loc4_ in param2)
         {
            _loc5_ = _loc4_[0];
            _loc6_ = _loc4_[1];
            if(!_loc9_)
            {
               _loc3_.§,!m§(_loc5_,this.§`8§(_loc6_));
            }
         }
         if(!_loc9_)
         {
            this.§ s§[param1] = _loc3_;
         }
      }
      
      public function getAnimation(param1:String) : §4!f§
      {
         return this.§ s§[param1];
      }
   }
}
