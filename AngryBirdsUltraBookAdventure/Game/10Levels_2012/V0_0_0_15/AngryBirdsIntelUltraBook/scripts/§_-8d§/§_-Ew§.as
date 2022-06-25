package §_-8d§
{
   import flash.utils.Dictionary;
   
   public class §_-Ew§
   {
       
      
      private var §_-00g§:§_-0FF§;
      
      private var §_-0L§:Dictionary;
      
      public function §_-Ew§(param1:§_-0FF§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-0L§ = new Dictionary();
            while(true)
            {
               super();
               §§goto(addr51);
            }
         }
         addr51:
         while(true)
         {
            this.§_-00g§ = param1;
            if(_loc3_)
            {
               if(_loc3_ || _loc3_)
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
         if(!(_loc6_ && _loc2_))
         {
            this.§_-9R§(param1);
            while(true)
            {
               this.§_-06j§("PARTICLE_WOOD",["PARTICLE_WOOD_1"]);
               loop1:
               while(true)
               {
                  this.§_-06j§("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT"]);
                  loop2:
                  while(true)
                  {
                     this.§_-06j§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
                     loop3:
                     while(true)
                     {
                        this.§_-06j§("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]);
                        loop4:
                        while(true)
                        {
                           this.§_-06j§("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]);
                           loop5:
                           while(true)
                           {
                              this.§_-06j§("FOREGROUND_12_LAYER_1",["FOREGROUND_12_LAYER_1"]);
                              while(true)
                              {
                                 this.§_-06j§("BACKGROUND_12_MOON_1",["BACKGROUND_12_MOON_1"]);
                                 loop7:
                                 while(_loc7_)
                                 {
                                    this.§_-06j§("BACKGROUND_12_VOLCANO",["BACKGROUND_12_VOLCANO"]);
                                    continue loop5;
                                    addr106:
                                    if(_loc7_ || this)
                                    {
                                       loop22:
                                       while(true)
                                       {
                                          this.§_-06j§("SCORE_BIRD_YELLOW",["SCORE_BIRD_YELLOW"]);
                                          addr69:
                                          loop23:
                                          while(_loc7_ || param1)
                                          {
                                             addr76:
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                this.§_-06j§("SCORE_PIG",["SCORE_PIG"]);
                                                if(!(_loc7_ || _loc3_))
                                                {
                                                   continue;
                                                }
                                                if(_loc7_)
                                                {
                                                   addr45:
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         break loop22;
                                                      }
                                                      if(_loc6_ && this)
                                                      {
                                                         continue loop5;
                                                      }
                                                      if(false)
                                                      {
                                                         continue loop22;
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
                                                      addr452:
                                                      for each(_loc2_ in _loc5_)
                                                      {
                                                         if(_loc7_ || _loc3_)
                                                         {
                                                            §§push(1);
                                                            if(!_loc6_)
                                                            {
                                                               _loc3_ = §§pop();
                                                               addr448:
                                                               §§push(_loc3_);
                                                               addr421:
                                                               addr447:
                                                            }
                                                            if(§§pop() > _loc2_.count)
                                                            {
                                                               §§goto(addr452);
                                                            }
                                                            this.§_-06j§(_loc2_.name + _loc3_,[_loc2_.name + _loc3_]);
                                                            addr435:
                                                            if(_loc7_ || this)
                                                            {
                                                               _loc3_++;
                                                               if(!_loc6_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr421);
                                                                     }
                                                                     §§goto(addr448);
                                                                  }
                                                                  §§goto(addr435);
                                                               }
                                                               §§goto(addr452);
                                                            }
                                                         }
                                                         §§goto(addr447);
                                                      }
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         this.§_-06j§("NUMBERS",["0","1","2","3","4","5","6","7","8","9"]);
                                                         this.initializeBirdAnimations();
                                                         addr502:
                                                         if(!_loc6_)
                                                         {
                                                            this.initializePigAnimations();
                                                            this.§_-06j§("SPARKLES",["PARTICLE_ICE_1","PARTICLE_ICE_3"]);
                                                            if(_loc7_)
                                                            {
                                                               if(_loc6_ && _loc3_)
                                                               {
                                                                  §§goto(addr502);
                                                               }
                                                               return;
                                                               addr494:
                                                            }
                                                            addr498:
                                                            §§goto(addr498);
                                                         }
                                                         addr519:
                                                         §§goto(addr519);
                                                      }
                                                      §§goto(addr494);
                                                   }
                                                   loop19:
                                                   while(true)
                                                   {
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         this.§_-06j§("SCORE_BIRD_BLACK",["SCORE_BIRD_BLACK"]);
                                                         loop20:
                                                         while(!(_loc6_ && param1))
                                                         {
                                                            this.§_-06j§("SCORE_BIRD_WHITE",["SCORE_BIRD_WHITE"]);
                                                            while(true)
                                                            {
                                                               if(_loc6_ && this)
                                                               {
                                                                  continue loop20;
                                                               }
                                                               if(!_loc6_)
                                                               {
                                                                  addr99:
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     §§goto(addr106);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§_-06j§("BACKGROUND_12_LAYER_2",["BACKGROUND_12_LAYER_2"]);
                                                                        break loop22;
                                                                        §§goto(addr99);
                                                                     }
                                                                     addr204:
                                                                  }
                                                               }
                                                               while(_loc7_ || this)
                                                               {
                                                                  this.§_-06j§("SCORE_BIRD_GREEN",["SCORE_BIRD_GREEN"]);
                                                                  continue loop19;
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§_-06j§("BIRD_MIGHTY_EAGLE",["BIRD_ME_MOTION","BIRD_ME_RADIAL"]);
                                                                  break loop23;
                                                                  §§goto(addr150);
                                                               }
                                                               addr150:
                                                            }
                                                            continue loop7;
                                                         }
                                                         while(true)
                                                         {
                                                            this.§_-06j§("BACKGROUND_12_LAYER_3",["BACKGROUND_12_LAYER_3"]);
                                                            §§goto(addr204);
                                                            §§goto(addr120);
                                                         }
                                                         addr120:
                                                      }
                                                      addr164:
                                                      while(true)
                                                      {
                                                         this.§_-06j§("SCORE_BIRD_BLUE",["SCORE_BIRD_BLUE"]);
                                                         §§goto(addr150);
                                                         continue loop19;
                                                      }
                                                   }
                                                   while(_loc7_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   continue loop3;
                                                   addr218:
                                                }
                                                §§goto(addr90);
                                             }
                                             while(true)
                                             {
                                                this.§_-06j§("BIRD_SARDINE",["BIRD_SARDINE"]);
                                                §§goto(addr181);
                                                §§goto(addr76);
                                             }
                                          }
                                          while(!_loc6_)
                                          {
                                             this.§_-06j§("SCORE_BIRD_RED",["SCORE_BIRD_RED"]);
                                             §§goto(addr164);
                                             §§goto(addr69);
                                          }
                                          continue loop2;
                                       }
                                       while(_loc7_)
                                       {
                                          this.§_-06j§("BACKGROUND_12_LAYER_1",["BACKGROUND_12_LAYER_1"]);
                                          §§goto(addr188);
                                       }
                                       continue loop4;
                                    }
                                 }
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
               this.§_-06j§("BACKGROUND_12_MOON_2",["BACKGROUND_12_MOON_2"]);
               §§goto(addr218);
            }
         }
         while(true)
         {
            this.§_-06j§("BACKGROUND_12_LAYER_4",["BACKGROUND_12_LAYER_4"]);
            §§goto(addr211);
         }
      }
      
      private function §_-9R§(param1:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:String = null;
         if(_loc6_ || param1)
         {
            §§push(param1);
            if(!(_loc7_ && _loc3_))
            {
               if(§§pop() != null)
               {
                  addr62:
                  _loc2_ = this.§_-0CI§(param1);
                  addr49:
                  for each(_loc3_ in _loc2_)
                  {
                     if(!(_loc7_ && this))
                     {
                        this.§_-8Q§(_loc3_);
                     }
                  }
               }
               return;
            }
            §§goto(addr62);
         }
         §§goto(addr49);
      }
      
      private function §_-8Q§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§_-06j§(param1,[param1 + "_1",param1 + "_2",param1 + "_3",param1 + "_4"]));
            if(_loc2_ || param1)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(this.§_-06j§(param1,[param1 + "_1",param1 + "_2",param1 + "_3"]));
                     if(!(_loc3_ && _loc2_))
                     {
                        addr84:
                        if(!§§pop())
                        {
                           if(!_loc3_)
                           {
                              §§push(this.§_-06j§(param1,[param1 + "_1"]));
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(§§pop())
                                 {
                                 }
                                 §§goto(addr110);
                              }
                           }
                        }
                        §§goto(addr110);
                     }
                     if(§§pop())
                     {
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr104);
               }
               §§goto(addr110);
            }
            §§goto(addr84);
         }
         addr110:
         if(_loc2_)
         {
            addr104:
            §§push(this.§_-06j§(param1,[param1]));
         }
      }
      
      private function §_-0CI§(param1:Array) : Array
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
                        loop5:
                        while(true)
                        {
                           §§push(!§§pop());
                           loop6:
                           while(true)
                           {
                              §§push(§§pop());
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop15:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          loop13:
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   break;
                                                }
                                                §§pop();
                                                loop14:
                                                while(true)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(_loc3_);
                                                   if(!_loc6_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   addr32:
                                                   §§push("_");
                                                   if(_loc7_ && _loc2_)
                                                   {
                                                      while(!(_loc7_ && _loc3_))
                                                      {
                                                         §§push(§§pop().indexOf(§§pop()) == 0);
                                                         if(_loc6_)
                                                         {
                                                            §§push(!§§pop());
                                                            if(!(_loc7_ && _loc2_))
                                                            {
                                                               continue loop15;
                                                            }
                                                         }
                                                         continue loop13;
                                                         §§goto(addr32);
                                                      }
                                                      continue loop4;
                                                      addr92:
                                                   }
                                                   §§push(§§pop().indexOf(§§pop()) > 0);
                                                   if(!_loc6_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   if(_loc7_ && _loc3_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         break loop14;
                                                      }
                                                      continue loop14;
                                                   }
                                                }
                                                continue loop0;
                                             }
                                             addr144:
                                             while(true)
                                             {
                                                §§pop();
                                             }
                                             §§goto(addr145);
                                          }
                                          continue loop5;
                                       }
                                       §§goto(addr52);
                                    }
                                    continue;
                                 }
                                 §§goto(addr144);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         if(_loc6_ || this)
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
            if(!(_loc1_ && _loc1_))
            {
               §§push(null);
            }
            §§pop().§_-x4§(§§pop(),§§pop());
            while(true)
            {
               §§push(this);
               §§push("BIRD_BLUE");
               §§push(["normal",["BIRD_BLUE_1","BIRD_BLUE_2"]]);
               if(_loc2_ || this)
               {
                  §§push(null);
               }
               §§pop().§_-x4§(§§pop(),§§pop());
               loop1:
               while(!(_loc1_ && this))
               {
                  §§push(this);
                  §§push("BIRD_RED");
                  §§push(["normal",["BIRD_RED_1","BIRD_RED_2"]]);
                  if(!_loc1_)
                  {
                     §§push(null);
                  }
                  §§pop().§_-x4§(§§pop(),§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push("BIRD_WHITE");
                     §§push(["normal",["BIRD_WHITE_1","BIRD_WHITE_2"]]);
                     if(_loc2_ || _loc1_)
                     {
                        §§push(null);
                     }
                     §§pop().§_-x4§(§§pop(),§§pop());
                     loop3:
                     while(!_loc1_)
                     {
                        §§push(this);
                        §§push("BIRD_YELLOW");
                        §§push(["normal",["BIRD_YELLOW_1","BIRD_YELLOW_2"]]);
                        if(_loc2_)
                        {
                           §§push(null);
                        }
                        §§pop().§_-x4§(§§pop(),§§pop());
                        loop4:
                        while(true)
                        {
                           §§push(this);
                           §§push("BIRD_GREEN");
                           §§push(["normal",["BIRD_GREEN_1","BIRD_GREEN_2"]]);
                           if(!_loc1_)
                           {
                              §§push(null);
                           }
                           §§pop().§_-x4§(§§pop(),§§pop());
                           do
                           {
                              if(!(_loc1_ && _loc1_))
                              {
                                 if(!_loc1_)
                                 {
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                              §§push(this);
                              §§push("BIRD_REDBIG");
                              §§push(["normal",["BIRD_REDBIG_1"]]);
                              continue loop4;
                              if(!_loc1_)
                              {
                                 §§push(null);
                              }
                              §§pop().§_-x4§(§§pop(),§§pop());
                           }
                           while(!_loc2_);
                           
                           §§goto(addr58);
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         addr58:
      }
      
      protected function initializePigAnimations() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this);
            §§push("PIG_BASIC_SMALL");
            §§push(["normal",["PIG_BASIC_SMALL_01","PIG_BASIC_SMALL_02","PIG_BASIC_SMALL_03"]]);
            if(_loc1_)
            {
               §§push(null);
            }
            §§pop().§_-x4§(§§pop(),§§pop());
            while(true)
            {
               §§push(this);
               §§push("PIG_BASIC_MEDIUM");
               §§push(["normal",["PIG_BASIC_MEDIUM_01","PIG_BASIC_MEDIUM_02","PIG_BASIC_MEDIUM_03"]]);
               if(!_loc2_)
               {
                  §§push(null);
               }
               §§pop().§_-x4§(§§pop(),§§pop());
               loop1:
               while(!_loc2_)
               {
                  §§push(this);
                  §§push("PIG_BASIC_BIG");
                  §§push(["normal",["PIG_BASIC_BIG_01","PIG_BASIC_BIG_02","PIG_BASIC_BIG_03"]]);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(null);
                  }
                  §§pop().§_-x4§(§§pop(),§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push("PIG_HELMET");
                     §§push(["normal",["PIG_HELMET_01","PIG_HELMET_02","PIG_HELMET_03"]]);
                     if(_loc1_)
                     {
                        §§push(null);
                     }
                     §§pop().§_-x4§(§§pop(),§§pop());
                     loop3:
                     do
                     {
                        if(_loc1_)
                        {
                           §§push(this);
                           §§push("PIG_MUSTACHE");
                           §§push(["normal",["PIG_MUSTACHE_01","PIG_MUSTACHE_02","PIG_MUSTACHE_03"]]);
                           if(_loc1_)
                           {
                              §§push(null);
                           }
                           §§pop().§_-x4§(§§pop(),§§pop());
                           while(!_loc2_)
                           {
                              §§push(this);
                              §§push("PIG_KING");
                              §§push(["normal",["PIG_KING_01","PIG_KING_02","PIG_KING_03"]]);
                              if(_loc1_)
                              {
                                 §§push(null);
                              }
                              §§pop().§_-x4§(§§pop(),§§pop());
                              if(_loc1_)
                              {
                                 continue loop3;
                              }
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                     while(_loc2_ && _loc2_);
                     
                  }
               }
            }
         }
      }
      
      protected function §_-06j§(param1:String, param2:Array) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[1] = param1;
            addr93:
            while(true)
            {
               §§push(§§newactivation());
               continue loop0;
            }
         }
      }
      
      private function §_-A0§(param1:Array) : §_-J§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:§_-vz§ = null;
         var _loc2_:§_-J§ = new §_-J§();
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§_-00g§.§_-70§(_loc3_);
            if(_loc7_)
            {
               _loc2_.addFrame(_loc4_);
            }
         }
         return _loc2_;
      }
      
      protected function §_-x4§(param1:String, param2:Array) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         if(!_loc9_)
         {
            if(this.§_-0L§[param1])
            {
               if(_loc10_)
               {
                  throw new Error("Trying to add a duplicate animation: " + param1);
                  addr35:
               }
            }
            var _loc3_:§_-0Ex§ = new §_-0Ex§();
            for each(_loc4_ in param2)
            {
               _loc5_ = _loc4_[0];
               _loc6_ = _loc4_[1];
               if(_loc10_)
               {
                  _loc3_.§_-06j§(_loc5_,this.§_-A0§(_loc6_));
               }
            }
            if(_loc10_)
            {
               this.§_-0L§[param1] = _loc3_;
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function getAnimation(param1:String) : §_-J§
      {
         return this.§_-0L§[param1];
      }
   }
}
