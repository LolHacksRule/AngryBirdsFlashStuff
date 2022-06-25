package §=`§
{
   import flash.utils.Dictionary;
   
   public class §7!V§
   {
       
      
      private var §&!k§:§6!I§;
      
      private var § !O§:Dictionary;
      
      public function §7!V§(param1:§6!I§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ !O§ = new Dictionary();
         }
         while(true)
         {
            super();
            while(_loc2_ || param1)
            {
               this.§&!k§ = param1;
               if(_loc2_ || this)
               {
                  return;
               }
            }
         }
      }
      
      public function initializeAnimations(param1:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:* = 0;
         if(!_loc7_)
         {
            this.§1y§(param1);
            loop0:
            while(true)
            {
               this.§0+§("PARTICLE_WOOD",["PARTICLE_WOOD_1"]);
               loop1:
               while(true)
               {
                  this.§0+§("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT"]);
                  loop2:
                  while(true)
                  {
                     this.§0+§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
                     loop3:
                     while(true)
                     {
                        this.§0+§("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]);
                        while(true)
                        {
                           this.§0+§("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]);
                           loop5:
                           while(!(_loc7_ && _loc3_))
                           {
                              this.§0+§("FOREGROUND_12_LAYER_1",["FOREGROUND_12_LAYER_1"]);
                              while(_loc6_)
                              {
                                 this.§0+§("BACKGROUND_12_MOON_1",["BACKGROUND_12_MOON_1"]);
                                 loop7:
                                 for(; !_loc7_; if(_loc7_ && this)
                                 {
                                    continue;
                                 },this.§0+§("SCORE_BIRD_WHITE",["SCORE_BIRD_WHITE"]),§§goto(addr65))
                                 {
                                    this.§0+§("BACKGROUND_12_VOLCANO",["BACKGROUND_12_VOLCANO"]);
                                    while(true)
                                    {
                                       this.§0+§("BACKGROUND_12_MOON_2",["BACKGROUND_12_MOON_2"]);
                                       loop9:
                                       while(!_loc7_)
                                       {
                                          this.§0+§("BACKGROUND_12_LAYER_4",["BACKGROUND_12_LAYER_4"]);
                                          loop10:
                                          while(true)
                                          {
                                             this.§0+§("BACKGROUND_12_LAYER_3",["BACKGROUND_12_LAYER_3"]);
                                             while(true)
                                             {
                                                this.§0+§("BACKGROUND_12_LAYER_2",["BACKGROUND_12_LAYER_2"]);
                                                continue loop2;
                                                addr151:
                                                if(_loc7_ && _loc2_)
                                                {
                                                   continue;
                                                }
                                                this.§0+§("SCORE_BIRD_RED",["SCORE_BIRD_RED"]);
                                                loop16:
                                                while(true)
                                                {
                                                   this.§0+§("SCORE_BIRD_BLUE",["SCORE_BIRD_BLUE"]);
                                                   loop17:
                                                   while(true)
                                                   {
                                                      this.§0+§("SCORE_BIRD_GREEN",["SCORE_BIRD_GREEN"]);
                                                      while(true)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            this.§0+§("SCORE_BIRD_BLACK",["SCORE_BIRD_BLACK"]);
                                                            continue;
                                                         }
                                                         continue loop16;
                                                      }
                                                      while(!_loc7_)
                                                      {
                                                         §§goto(addr151);
                                                      }
                                                      continue loop2;
                                                      addr65:
                                                      loop20:
                                                      while(true)
                                                      {
                                                         if(_loc7_ && _loc2_)
                                                         {
                                                            continue loop17;
                                                         }
                                                         if(_loc7_ && param1)
                                                         {
                                                            break;
                                                         }
                                                         if(!_loc6_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         while(true)
                                                         {
                                                            this.§0+§("SCORE_BIRD_YELLOW",["SCORE_BIRD_YELLOW"]);
                                                            while(!_loc7_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  this.§0+§("SCORE_PIG",["SCORE_PIG"]);
                                                                  if(_loc6_ || _loc2_)
                                                                  {
                                                                     continue loop20;
                                                                  }
                                                                  continue;
                                                               }
                                                               continue loop1;
                                                            }
                                                            continue loop9;
                                                            addr44:
                                                            if(_loc7_)
                                                            {
                                                               break;
                                                            }
                                                            if(false)
                                                            {
                                                               continue;
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
                                                            addr446:
                                                            for each(_loc2_ in _loc5_)
                                                            {
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  §§push(1);
                                                                  if(_loc6_)
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     addr442:
                                                                     §§push(_loc3_);
                                                                     addr422:
                                                                     addr441:
                                                                  }
                                                                  if(§§pop() > _loc2_.count)
                                                                  {
                                                                     §§goto(addr446);
                                                                  }
                                                                  this.§0+§(_loc2_.name + _loc3_,[_loc2_.name + _loc3_]);
                                                               }
                                                               _loc3_++;
                                                               addr436:
                                                               if(_loc6_ || param1)
                                                               {
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr422);
                                                                        }
                                                                        §§goto(addr442);
                                                                     }
                                                                     §§goto(addr441);
                                                                  }
                                                                  §§goto(addr436);
                                                               }
                                                               §§goto(addr446);
                                                            }
                                                            if(!_loc7_)
                                                            {
                                                               this.§0+§("NUMBERS",["0","1","2","3","4","5","6","7","8","9"]);
                                                               this.initializeBirdAnimations();
                                                               addr513:
                                                            }
                                                            this.initializePigAnimations();
                                                            addr498:
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               this.§0+§("SPARKLES",["PARTICLE_ICE_1","PARTICLE_ICE_3"]);
                                                               if(!_loc7_)
                                                               {
                                                                  if(_loc7_ && param1)
                                                                  {
                                                                     §§goto(addr498);
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr498);
                                                            }
                                                            §§goto(addr513);
                                                         }
                                                         §§goto(addr88);
                                                      }
                                                      continue loop10;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       continue loop5;
                                       if(_loc6_ || _loc2_)
                                       {
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr141);
      }
      
      private function §1y§(param1:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:String = null;
         if(_loc6_)
         {
            §§push(param1);
            if(!(_loc7_ && _loc3_))
            {
               if(§§pop() != null)
               {
                  addr57:
                  _loc2_ = this.§-!e§(param1);
                  addr54:
                  for each(_loc3_ in _loc2_)
                  {
                     if(!_loc7_)
                     {
                        this.§`!y§(_loc3_);
                     }
                  }
               }
               return;
            }
            §§goto(addr57);
         }
         §§goto(addr54);
      }
      
      private function §`!y§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§0+§(param1,[param1 + "_1",param1 + "_2",param1 + "_3",param1 + "_4"]));
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     addr39:
                     §§push(this.§0+§(param1,[param1 + "_1",param1 + "_2",param1 + "_3"]));
                     if(_loc2_ || this)
                     {
                        if(!§§pop())
                        {
                           if(_loc2_ || this)
                           {
                              §§push(this.§0+§(param1,[param1 + "_1"]));
                              if(_loc2_ || _loc2_)
                              {
                                 addr101:
                                 if(!§§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                    }
                                 }
                                 §§goto(addr110);
                              }
                              §§goto(addr109);
                           }
                           addr109:
                           if(§§pop())
                           {
                           }
                           addr110:
                           return;
                           §§push(this.§0+§(param1,[param1]));
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr101);
                  }
               }
               §§goto(addr110);
            }
            §§goto(addr109);
         }
         §§goto(addr39);
      }
      
      private function §-!e§(param1:Array) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:Array = [];
         var _loc4_:int = 0;
         var _loc5_:* = param1;
         loop0:
         while(§§hasnext(_loc5_,_loc4_))
         {
            §§push(§§nextvalue(_loc4_,_loc5_));
            loop1:
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
                        loop5:
                        while(true)
                        {
                           §§push(!§§pop());
                           loop6:
                           while(true)
                           {
                              §§push(§§pop());
                              loop7:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§pop();
                                       loop9:
                                       while(true)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             loop11:
                                             while(true)
                                             {
                                                §§push("BIRD");
                                                loop12:
                                                while(!(_loc6_ && _loc3_))
                                                {
                                                   §§push(§§pop().indexOf(§§pop()) == 0);
                                                   while(!_loc6_)
                                                   {
                                                      §§push(!§§pop());
                                                      if(_loc7_)
                                                      {
                                                         if(_loc7_ || _loc3_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr113:
                                                                        while(true)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push("_");
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          continue loop14;
                                                                                       }
                                                                                       continue loop12;
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     addr112:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     if(_loc7_)
                                                                     {
                                                                        _loc2_.push(_loc3_);
                                                                     }
                                                                     if(_loc7_)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(false)
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     §§goto(addr113);
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               continue loop7;
                                                               addr107:
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop8;
                                                      }
                                                      §§goto(addr112);
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr107);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         if(!_loc6_)
         {
            _loc2_.sort();
         }
         return _loc2_;
      }
      
      protected function initializeBirdAnimations() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this);
            §§push("BIRD_BLACK");
            §§push(["normal",["BIRD_BLACK_1","BIRD_BLACK_2"]]);
            if(_loc2_ || _loc1_)
            {
               §§push(null);
            }
            §§pop().§%!2§(§§pop(),§§pop());
            while(true)
            {
               §§push(this);
               §§push("BIRD_BLUE");
               §§push(["normal",["BIRD_BLUE_1","BIRD_BLUE_2"]]);
               if(!(_loc1_ && this))
               {
                  §§push(null);
               }
               §§pop().§%!2§(§§pop(),§§pop());
               addr84:
               if(!(_loc2_ || this))
               {
                  continue;
               }
               return;
               addr91:
            }
         }
         while(true)
         {
            §§push(this);
            §§push("BIRD_RED");
            §§push(["normal",["BIRD_RED_1","BIRD_RED_2"]]);
            if(!_loc1_)
            {
               §§push(null);
            }
            §§pop().§%!2§(§§pop(),§§pop());
            loop2:
            do
            {
               §§push(this);
               §§push("BIRD_WHITE");
               §§push(["normal",["BIRD_WHITE_1","BIRD_WHITE_2"]]);
               if(_loc2_)
               {
                  §§push(null);
               }
               §§pop().§%!2§(§§pop(),§§pop());
               loop3:
               while(true)
               {
                  §§push(this);
                  §§push("BIRD_YELLOW");
                  §§push(["normal",["BIRD_YELLOW_1","BIRD_YELLOW_2"]]);
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(null);
                  }
                  §§pop().§%!2§(§§pop(),§§pop());
                  loop4:
                  do
                  {
                     §§push(this);
                     §§push("BIRD_GREEN");
                     §§push(["normal",["BIRD_GREEN_1","BIRD_GREEN_2"]]);
                     if(_loc2_)
                     {
                        §§push(null);
                     }
                     §§pop().§%!2§(§§pop(),§§pop());
                     while(!_loc1_)
                     {
                        §§push(this);
                        §§push("BIRD_REDBIG");
                        §§push(["normal",["BIRD_REDBIG_1"]]);
                        if(_loc2_ || this)
                        {
                           §§push(null);
                        }
                        §§pop().§%!2§(§§pop(),§§pop());
                        if(!(_loc1_ && this))
                        {
                           continue loop4;
                        }
                     }
                     continue loop3;
                  }
                  while(!_loc2_);
                  
                  continue loop2;
               }
            }
            while(!(_loc2_ || this));
            
            if(!(_loc2_ || _loc2_))
            {
               continue;
            }
            §§goto(addr84);
         }
         §§goto(addr91);
      }
      
      protected function initializePigAnimations() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this);
            §§push("PIG_BASIC_SMALL");
            §§push(["normal",["PIG_BASIC_SMALL_01","PIG_BASIC_SMALL_02","PIG_BASIC_SMALL_03"]]);
            if(_loc2_)
            {
               §§push(null);
            }
            §§pop().§%!2§(§§pop(),§§pop());
            while(true)
            {
               §§push(this);
               §§push("PIG_BASIC_MEDIUM");
               §§push(["normal",["PIG_BASIC_MEDIUM_01","PIG_BASIC_MEDIUM_02","PIG_BASIC_MEDIUM_03"]]);
               if(!(_loc1_ && this))
               {
                  §§push(null);
               }
               §§pop().§%!2§(§§pop(),§§pop());
               while(_loc2_ || _loc1_)
               {
                  §§push(this);
                  §§push("PIG_BASIC_BIG");
                  §§push(["normal",["PIG_BASIC_BIG_01","PIG_BASIC_BIG_02","PIG_BASIC_BIG_03"]]);
                  if(!_loc1_)
                  {
                     §§push(null);
                  }
                  §§pop().§%!2§(§§pop(),§§pop());
                  while(true)
                  {
                     §§push(this);
                     §§push("PIG_HELMET");
                     §§push(["normal",["PIG_HELMET_01","PIG_HELMET_02","PIG_HELMET_03"]]);
                     if(_loc2_)
                     {
                        §§push(null);
                     }
                     §§pop().§%!2§(§§pop(),§§pop());
                     §§goto(addr139);
                  }
                  if(_loc1_ && this)
                  {
                     continue;
                  }
                  §§goto(addr103);
               }
            }
         }
         addr139:
         do
         {
            §§push(this);
            §§push("PIG_MUSTACHE");
            §§push(["normal",["PIG_MUSTACHE_01","PIG_MUSTACHE_02","PIG_MUSTACHE_03"]]);
            if(!_loc1_)
            {
               §§push(null);
            }
            §§pop().§%!2§(§§pop(),§§pop());
            continue loop2;
         }
         while(_loc1_);
         
      }
      
      protected function §0+§(param1:String, param2:Array) : Boolean
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
                  do
                  {
                     loop4:
                     while(!this.§ !O§[name])
                     {
                        while(true)
                        {
                           §§push(§§newactivation());
                           if(!_loc5_)
                           {
                              break;
                           }
                           if(_loc5_)
                           {
                              §§pop().§§slot[3] = true;
                              if(!(_loc6_ && _loc3_))
                              {
                                 if(_loc6_ && _loc3_)
                                 {
                                    break loop4;
                                 }
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    if(true)
                                    {
                                       try
                                       {
                                          this.§ !O§[name] = this.§1o§(frameNames);
                                       }
                                       catch(e:Error)
                                       {
                                          if(_loc5_)
                                          {
                                             var result:Boolean = false;
                                          }
                                       }
                                       return result;
                                    }
                                    continue loop4;
                                 }
                                 continue loop1;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                  }
                  while(_loc6_);
                  
                  throw new Error("Trying to add a duplicate animation: " + name);
               }
            }
         }
      }
      
      private function §1o§(param1:Array) : §%!L§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:§#`§ = null;
         var _loc2_:§%!L§ = new §%!L§();
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§&!k§.§&u§(_loc3_);
            if(_loc7_)
            {
               _loc2_.addFrame(_loc4_);
            }
         }
         return _loc2_;
      }
      
      protected function §%!2§(param1:String, param2:Array) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         if(!_loc10_)
         {
            if(this.§ !O§[param1])
            {
               if(!_loc10_)
               {
                  throw new Error("Trying to add a duplicate animation: " + param1);
                  addr34:
               }
            }
            var _loc3_:§;a§ = new §;a§();
            for each(_loc4_ in param2)
            {
               _loc5_ = _loc4_[0];
               _loc6_ = _loc4_[1];
               if(!_loc10_)
               {
                  _loc3_.§0+§(_loc5_,this.§1o§(_loc6_));
               }
            }
            if(!_loc10_)
            {
               this.§ !O§[param1] = _loc3_;
            }
            return;
         }
         §§goto(addr34);
      }
      
      public function getAnimation(param1:String) : §%!L§
      {
         return this.§ !O§[param1];
      }
   }
}
