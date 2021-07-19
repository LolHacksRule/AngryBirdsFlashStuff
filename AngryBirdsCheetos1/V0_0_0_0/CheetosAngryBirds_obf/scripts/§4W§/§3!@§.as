package §4W§
{
   import flash.utils.Dictionary;
   
   public class §3!@§
   {
       
      
      private var §5<§:§!]§;
      
      private var §2p§:Dictionary;
      
      public function §3!@§(param1:§!]§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§2p§ = new Dictionary();
            do
            {
               super();
               do
               {
                  this.§5<§ = param1;
               }
               while(_loc2_);
               
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      public function initializeAnimations(param1:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:* = 0;
         if(_loc7_)
         {
            this.§&7§(param1);
            loop0:
            while(true)
            {
               this.§"=§("PARTICLE_WOOD",["PARTICLE_WOOD_1"]);
               loop1:
               while(true)
               {
                  this.§"=§("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT"]);
                  loop2:
                  while(true)
                  {
                     this.§"=§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
                     while(true)
                     {
                        this.§"=§("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]);
                        loop22:
                        while(!(_loc6_ && _loc2_))
                        {
                           this.§"=§("SCORE_PIG",["SCORE_PIG"]);
                           if(!(_loc7_ || param1))
                           {
                              continue;
                           }
                           if(_loc7_)
                           {
                              addr40:
                              if(!(_loc6_ && this))
                              {
                                 addr47:
                                 if(_loc7_ || this)
                                 {
                                    addr54:
                                    if(_loc7_ || _loc2_)
                                    {
                                       if(false)
                                       {
                                          addr220:
                                          while(true)
                                          {
                                             this.§"=§("SCORE_BIRD_YELLOW",["SCORE_BIRD_YELLOW"]);
                                             continue loop22;
                                             §§goto(addr54);
                                          }
                                          while(_loc7_)
                                          {
                                             §§goto(addr54);
                                          }
                                          continue loop1;
                                          addr220:
                                          addr63:
                                       }
                                       else
                                       {
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
                                          addr422:
                                          for each(_loc2_ in _loc5_)
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                §§push(1);
                                                if(!(_loc6_ && this))
                                                {
                                                   _loc3_ = §§pop();
                                                   if(_loc7_)
                                                   {
                                                      addr418:
                                                      addr419:
                                                      if(_loc3_ > _loc2_.count)
                                                      {
                                                         §§goto(addr422);
                                                      }
                                                      this.§"=§(_loc2_.name + _loc3_,[_loc2_.name + _loc3_]);
                                                      _loc3_++;
                                                      addr391:
                                                      addr405:
                                                      if(!(_loc6_ && this))
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr391);
                                                            }
                                                            §§goto(addr418);
                                                         }
                                                         §§goto(addr405);
                                                      }
                                                      addr417:
                                                   }
                                                   §§goto(addr422);
                                                }
                                                §§goto(addr419);
                                             }
                                             §§goto(addr417);
                                          }
                                          if(_loc7_ || _loc3_)
                                          {
                                             this.§"=§("NUMBERS",["0","1","2","3","4","5","6","7","8","9"]);
                                             this.initializeBirdAnimations();
                                             this.§9!O§();
                                             this.§"=§("SPARKLES",["PARTICLE_ICE_1","PARTICLE_ICE_3"]);
                                             addr489:
                                             addr464:
                                             if(!_loc6_)
                                             {
                                                if(_loc7_)
                                                {
                                                   if(!(_loc7_ || param1))
                                                   {
                                                      §§goto(addr489);
                                                   }
                                                   return;
                                                   addr456:
                                                }
                                                §§goto(addr464);
                                             }
                                             addr460:
                                             §§goto(addr460);
                                          }
                                          §§goto(addr456);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr220);
                                    }
                                    this.§"=§("BACKGROUND_12_VOLCANO",["BACKGROUND_12_VOLCANO"]);
                                    loop8:
                                    while(_loc7_)
                                    {
                                       if(!_loc6_)
                                       {
                                          this.§"=§("BACKGROUND_12_MOON_2",["BACKGROUND_12_MOON_2"]);
                                          loop9:
                                          while(true)
                                          {
                                             this.§"=§("BACKGROUND_12_LAYER_4",["BACKGROUND_12_LAYER_4"]);
                                             loop10:
                                             while(true)
                                             {
                                                this.§"=§("BACKGROUND_12_LAYER_3",["BACKGROUND_12_LAYER_3"]);
                                                addr181:
                                                addr260:
                                                loop11:
                                                while(!(_loc6_ && this))
                                                {
                                                   this.§"=§("BACKGROUND_12_LAYER_2",["BACKGROUND_12_LAYER_2"]);
                                                   loop12:
                                                   while(true)
                                                   {
                                                      this.§"=§("BACKGROUND_12_LAYER_1",["BACKGROUND_12_LAYER_1"]);
                                                      loop13:
                                                      while(_loc7_)
                                                      {
                                                         this.§"=§("BIRD_SARDINE",["BIRD_SARDINE"]);
                                                         while(true)
                                                         {
                                                            this.§"=§("BIRD_MIGHTY_EAGLE",["BIRD_ME_MOTION","BIRD_ME_RADIAL"]);
                                                            loop15:
                                                            while(_loc7_)
                                                            {
                                                               this.§"=§("SCORE_BIRD_RED",["SCORE_BIRD_RED"]);
                                                               while(true)
                                                               {
                                                                  this.§"=§("SCORE_BIRD_BLUE",["SCORE_BIRD_BLUE"]);
                                                                  addr123:
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     continue loop15;
                                                                     §§goto(addr47);
                                                                  }
                                                                  continue loop2;
                                                               }
                                                            }
                                                            continue loop8;
                                                            addr105:
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     this.§"=§("SCORE_BIRD_BLACK",["SCORE_BIRD_BLACK"]);
                                                                     while(true)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              break;
                                                                              addr83:
                                                                           }
                                                                           this.§"=§("SCORE_BIRD_WHITE",["SCORE_BIRD_WHITE"]);
                                                                           while(_loc7_)
                                                                           {
                                                                              §§goto(addr63);
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        addr103:
                                                                        while(true)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              §§goto(addr105);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr141);
                                                                           }
                                                                        }
                                                                        continue loop9;
                                                                        §§goto(addr40);
                                                                     }
                                                                     continue loop12;
                                                                     addr92:
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               continue loop9;
                                                            }
                                                         }
                                                      }
                                                      continue loop11;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   this.§"=§("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]);
                                                   §§goto(addr181);
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          this.§"=§("FOREGROUND_12_LAYER_1",["FOREGROUND_12_LAYER_1"]);
                                          break loop8;
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§"=§("BACKGROUND_12_MOON_1",["BACKGROUND_12_MOON_1"]);
                                       §§goto(addr220);
                                    }
                                 }
                                 §§goto(addr123);
                              }
                              else
                              {
                                 §§goto(addr92);
                              }
                           }
                           §§goto(addr83);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr260);
      }
      
      private function §&7§(param1:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:String = null;
         if(_loc6_)
         {
            §§push(param1);
            if(_loc6_)
            {
               if(§§pop() != null)
               {
                  addr42:
                  _loc2_ = this.§%$§(param1);
                  addr29:
                  for each(_loc3_ in _loc2_)
                  {
                     if(!(_loc7_ && param1))
                     {
                        this.§5D§(_loc3_);
                     }
                  }
               }
               return;
            }
            §§goto(addr42);
         }
         §§goto(addr29);
      }
      
      private function §5D§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§"=§(param1,[param1 + "_1",param1 + "_2",param1 + "_3",param1 + "_4"]));
            if(_loc3_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     §§push(this.§"=§(param1,[param1 + "_1",param1 + "_2",param1 + "_3"]));
                     if(!(_loc2_ && this))
                     {
                        if(!§§pop())
                        {
                           if(_loc3_)
                           {
                              addr88:
                              §§push(this.§"=§(param1,[param1 + "_1"]));
                              if(!_loc2_)
                              {
                                 addr97:
                                 if(!§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                    }
                                 }
                                 §§goto(addr116);
                              }
                              §§goto(addr115);
                           }
                           addr115:
                           if(§§pop())
                           {
                           }
                           addr116:
                           return;
                           §§push(this.§"=§(param1,[param1]));
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr88);
               }
               §§goto(addr116);
            }
         }
         §§goto(addr88);
      }
      
      private function §%$§(param1:Array) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:Array = [];
         var _loc4_:int = 0;
         var _loc5_:* = param1;
         while(§§hasnext(_loc5_,_loc4_))
         {
            §§push(§§nextvalue(_loc4_,_loc5_));
            loop1:
            while(true)
            {
               _loc3_ = §§pop();
               addr155:
               while(true)
               {
                  §§push(_loc3_);
                  continue loop1;
               }
            }
         }
         if(_loc7_)
         {
            _loc2_.sort();
         }
         return _loc2_;
      }
      
      protected function initializeBirdAnimations() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this);
            §§push("BIRD_BLACK");
            §§push(["normal",["BIRD_BLACK_1","BIRD_BLACK_2"]]);
            if(!(_loc1_ && this))
            {
               §§push(null);
            }
            §§pop().§3Z§(§§pop(),§§pop());
            loop0:
            while(true)
            {
               §§push(this);
               §§push("BIRD_BLUE");
               §§push(["normal",["BIRD_BLUE_1","BIRD_BLUE_2"]]);
               if(!_loc1_)
               {
                  §§push(null);
               }
               §§pop().§3Z§(§§pop(),§§pop());
               while(true)
               {
                  §§push(this);
                  §§push("BIRD_RED");
                  §§push(["normal",["BIRD_RED_1","BIRD_RED_2"]]);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(null);
                  }
                  §§pop().§3Z§(§§pop(),§§pop());
                  loop2:
                  for(; _loc2_; if(_loc2_ || this)
                  {
                     if(_loc2_)
                     {
                        return;
                        addr72:
                     }
                     continue loop0;
                  })
                  {
                     §§push(this);
                     §§push("BIRD_WHITE");
                     §§push(["normal",["BIRD_WHITE_1","BIRD_WHITE_2"]]);
                     if(!(_loc1_ && _loc1_))
                     {
                        §§push(null);
                     }
                     §§pop().§3Z§(§§pop(),§§pop());
                     while(true)
                     {
                        §§push(this);
                        §§push("BIRD_YELLOW");
                        §§push(["normal",["BIRD_YELLOW_1","BIRD_YELLOW_2"]]);
                        if(!(_loc1_ && _loc2_))
                        {
                           §§push(null);
                        }
                        §§pop().§3Z§(§§pop(),§§pop());
                        while(!_loc1_)
                        {
                           while(!(_loc1_ && _loc1_))
                           {
                              §§push(this);
                              §§push("BIRD_REDBIG");
                              §§push(["normal",["BIRD_REDBIG_1"]]);
                              if(_loc2_ || _loc2_)
                              {
                                 §§push(null);
                              }
                              §§pop().§3Z§(§§pop(),§§pop());
                              if(_loc2_ || _loc2_)
                              {
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this);
            §§push("BIRD_GREEN");
            §§push(["normal",["BIRD_GREEN_1","BIRD_GREEN_2"]]);
            if(!(_loc1_ && _loc1_))
            {
               §§push(null);
            }
            §§pop().§3Z§(§§pop(),§§pop());
            §§goto(addr110);
         }
         §§goto(addr72);
      }
      
      private function §9!O§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this);
            §§push("PIG_BASIC_SMALL");
            §§push(["normal",["PIG_BASIC_SMALL_01","PIG_BASIC_SMALL_02","PIG_BASIC_SMALL_03"]]);
            if(!_loc2_)
            {
               §§push(null);
            }
            §§pop().§3Z§(§§pop(),§§pop());
            while(true)
            {
               §§push(this);
               §§push("PIG_BASIC_MEDIUM");
               §§push(["normal",["PIG_BASIC_MEDIUM_01","PIG_BASIC_MEDIUM_02","PIG_BASIC_MEDIUM_03"]]);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(null);
               }
               §§pop().§3Z§(§§pop(),§§pop());
               while(_loc1_)
               {
                  §§push(this);
                  §§push("PIG_BASIC_BIG");
                  §§push(["normal",["PIG_BASIC_BIG_01","PIG_BASIC_BIG_02","PIG_BASIC_BIG_03"]]);
                  if(_loc1_)
                  {
                     §§push(null);
                  }
                  §§pop().§3Z§(§§pop(),§§pop());
                  while(!_loc2_)
                  {
                     §§push(this);
                     §§push("PIG_HELMET");
                     §§push(["normal",["PIG_HELMET_01","PIG_HELMET_02","PIG_HELMET_03"]]);
                     if(_loc1_ || _loc2_)
                     {
                        §§push(null);
                     }
                     §§pop().§3Z§(§§pop(),§§pop());
                     if(_loc1_ || this)
                     {
                        return;
                        addr62:
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this);
            §§push("PIG_MUSTACHE");
            §§push(["normal",["PIG_MUSTACHE_01","PIG_MUSTACHE_02","PIG_MUSTACHE_03"]]);
            if(_loc1_)
            {
               §§push(null);
            }
            §§pop().§3Z§(§§pop(),§§pop());
            while(!(_loc2_ && _loc1_))
            {
               §§push(this);
               §§push("PIG_KING");
               §§push(["normal",["PIG_KING_01","PIG_KING_02","PIG_KING_03"]]);
               if(_loc1_)
               {
                  §§push(null);
               }
               §§pop().§3Z§(§§pop(),§§pop());
               if(!_loc1_)
               {
                  continue;
               }
               §§goto(addr55);
            }
         }
         §§goto(addr62);
      }
      
      protected function §"=§(param1:String, param2:Array) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
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
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        if(!this.§2p§[name])
                        {
                           continue loop2;
                        }
                        if(_loc5_)
                        {
                           throw new Error("Trying to add a duplicate animation: " + name);
                        }
                        addr73:
                        while(true)
                        {
                           continue loop2;
                           addr32:
                           §§pop().§§slot[3] = true;
                           if(!(_loc6_ && param1))
                           {
                              if(_loc6_)
                              {
                                 break loop4;
                              }
                              if(!_loc6_)
                              {
                                 if(true)
                                 {
                                    try
                                    {
                                       this.§2p§[name] = this.§3A§(frameNames);
                                    }
                                    catch(e:Error)
                                    {
                                       if(!_loc6_)
                                       {
                                          var result:Boolean = false;
                                       }
                                    }
                                 }
                                 continue loop4;
                                 return result;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §3A§(param1:Array) : §2f§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:§>c§ = null;
         var _loc2_:§2f§ = new §2f§();
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§5<§.§]]§(_loc3_);
            if(!_loc7_)
            {
               _loc2_.addFrame(_loc4_);
            }
         }
         return _loc2_;
      }
      
      protected function §3Z§(param1:String, param2:Array) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         if(_loc9_ || this)
         {
            if(this.§2p§[param1])
            {
               if(!_loc10_)
               {
                  throw new Error("Trying to add a duplicate animation: " + param1);
               }
            }
         }
         var _loc3_:§5!6§ = new §5!6§();
         for each(_loc4_ in param2)
         {
            _loc5_ = _loc4_[0];
            _loc6_ = _loc4_[1];
            if(_loc9_ || this)
            {
               _loc3_.§"=§(_loc5_,this.§3A§(_loc6_));
            }
         }
         if(_loc9_)
         {
            this.§2p§[param1] = _loc3_;
         }
      }
      
      public function §2!'§(param1:String) : §2f§
      {
         return this.§2p§[param1];
      }
   }
}
