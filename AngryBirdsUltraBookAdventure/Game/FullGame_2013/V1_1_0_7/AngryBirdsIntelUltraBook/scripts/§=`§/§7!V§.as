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
            while(true)
            {
               super();
               §§goto(addr50);
            }
         }
         addr50:
         while(true)
         {
            this.§&!k§ = param1;
            if(_loc2_ || _loc2_)
            {
               if(_loc2_)
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
         if(_loc7_)
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
                  while(_loc7_)
                  {
                     this.§0+§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
                     while(true)
                     {
                        this.§0+§("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]);
                     }
                     loop17:
                     while(!(_loc6_ && _loc2_))
                     {
                        this.§0+§("SCORE_BIRD_GREEN",["SCORE_BIRD_GREEN"]);
                        loop18:
                        while(true)
                        {
                           if(_loc7_ || _loc2_)
                           {
                              if(!_loc6_)
                              {
                                 this.§0+§("SCORE_BIRD_BLACK",["SCORE_BIRD_BLACK"]);
                                 addr283:
                                 loop19:
                                 while(true)
                                 {
                                    if(_loc7_)
                                    {
                                       if(_loc7_)
                                       {
                                          this.§0+§("SCORE_BIRD_WHITE",["SCORE_BIRD_WHITE"]);
                                          loop20:
                                          while(_loc7_ || _loc3_)
                                          {
                                             while(true)
                                             {
                                                this.§0+§("SCORE_BIRD_YELLOW",["SCORE_BIRD_YELLOW"]);
                                                addr55:
                                                addr128:
                                                while(true)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      continue loop18;
                                                   }
                                                   continue loop20;
                                                }
                                                loop16:
                                                while(true)
                                                {
                                                   if(!(_loc6_ && _loc2_))
                                                   {
                                                      continue loop1;
                                                   }
                                                   addr150:
                                                   addr185:
                                                   while(!(_loc6_ && this))
                                                   {
                                                      this.§0+§("SCORE_BIRD_RED",["SCORE_BIRD_RED"]);
                                                      continue loop16;
                                                   }
                                                   while(true)
                                                   {
                                                      this.§0+§("BACKGROUND_12_LAYER_1",["BACKGROUND_12_LAYER_1"]);
                                                      break loop19;
                                                      §§goto(addr150);
                                                   }
                                                   addr150:
                                                }
                                                continue loop1;
                                                addr45:
                                                if(!_loc7_)
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
                                                addr442:
                                                for each(_loc2_ in _loc5_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§push(1);
                                                      if(!(_loc6_ && this))
                                                      {
                                                         _loc3_ = §§pop();
                                                         addr438:
                                                         §§push(_loc3_);
                                                         addr409:
                                                         addr437:
                                                      }
                                                      if(§§pop() > _loc2_.count)
                                                      {
                                                         §§goto(addr442);
                                                      }
                                                      this.§0+§(_loc2_.name + _loc3_,[_loc2_.name + _loc3_]);
                                                      if(_loc7_)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            _loc3_++;
                                                            if(_loc7_ || _loc2_)
                                                            {
                                                               addr407:
                                                               if(false)
                                                               {
                                                                  §§goto(addr409);
                                                               }
                                                               §§goto(addr438);
                                                            }
                                                            §§goto(addr442);
                                                         }
                                                         §§goto(addr437);
                                                      }
                                                      §§goto(addr442);
                                                   }
                                                   §§goto(addr407);
                                                }
                                                if(_loc7_)
                                                {
                                                   this.§0+§("NUMBERS",["0","1","2","3","4","5","6","7","8","9"]);
                                                   this.initializeBirdAnimations();
                                                   this.initializePigAnimations();
                                                   addr466:
                                                   addr509:
                                                   if(!(_loc6_ && this))
                                                   {
                                                      if(_loc7_ || param1)
                                                      {
                                                         this.§0+§("SPARKLES",["PARTICLE_ICE_1","PARTICLE_ICE_3"]);
                                                         if(_loc6_)
                                                         {
                                                            §§goto(addr466);
                                                         }
                                                         return;
                                                         addr462:
                                                      }
                                                      §§goto(addr509);
                                                   }
                                                   addr494:
                                                   §§goto(addr494);
                                                }
                                                §§goto(addr462);
                                             }
                                             while(_loc7_ || _loc2_)
                                             {
                                                this.§0+§("BACKGROUND_12_MOON_1",["BACKGROUND_12_MOON_1"]);
                                                while(true)
                                                {
                                                   this.§0+§("BACKGROUND_12_VOLCANO",["BACKGROUND_12_VOLCANO"]);
                                                   while(true)
                                                   {
                                                      this.§0+§("BACKGROUND_12_MOON_2",["BACKGROUND_12_MOON_2"]);
                                                      addr217:
                                                      while(!(_loc6_ && param1))
                                                      {
                                                         this.§0+§("BACKGROUND_12_LAYER_4",["BACKGROUND_12_LAYER_4"]);
                                                         break loop18;
                                                      }
                                                   }
                                                   addr192:
                                                   while(_loc7_ || param1)
                                                   {
                                                      this.§0+§("BACKGROUND_12_LAYER_2",["BACKGROUND_12_LAYER_2"]);
                                                      §§goto(addr185);
                                                      continue loop18;
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                this.§0+§("FOREGROUND_12_LAYER_1",["FOREGROUND_12_LAYER_1"]);
                                                §§goto(addr255);
                                             }
                                             addr255:
                                          }
                                          while(true)
                                          {
                                             this.§0+§("BIRD_MIGHTY_EAGLE",["BIRD_ME_MOTION","BIRD_ME_RADIAL"]);
                                             §§goto(addr150);
                                             §§goto(addr73);
                                          }
                                          addr73:
                                          addr164:
                                       }
                                       break;
                                    }
                                    continue loop17;
                                    addr38:
                                    if(_loc6_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr45);
                                 }
                                 while(!(_loc6_ && _loc3_))
                                 {
                                    this.§0+§("BIRD_SARDINE",["BIRD_SARDINE"]);
                                    §§goto(addr164);
                                 }
                                 while(true)
                                 {
                                    this.§0+§("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]);
                                    §§goto(addr271);
                                    §§goto(addr171);
                                 }
                                 addr171:
                                 addr283:
                              }
                              break;
                           }
                           §§goto(addr192);
                        }
                        while(!_loc6_)
                        {
                           if(_loc7_)
                           {
                              this.§0+§("BACKGROUND_12_LAYER_3",["BACKGROUND_12_LAYER_3"]);
                              §§goto(addr192);
                           }
                           else
                           {
                              §§goto(addr296);
                           }
                        }
                        §§goto(addr217);
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr283);
      }
      
      private function §1y§(param1:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:String = null;
         if(_loc7_ || this)
         {
            §§push(param1);
            if(!(_loc6_ && this))
            {
               if(§§pop() != null)
               {
                  addr63:
                  _loc2_ = this.§-!e§(param1);
                  addr50:
                  for each(_loc3_ in _loc2_)
                  {
                     if(!(_loc6_ && this))
                     {
                        this.§`!y§(_loc3_);
                     }
                  }
               }
               return;
            }
            §§goto(addr63);
         }
         §§goto(addr50);
      }
      
      private function §`!y§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§0+§(param1,[param1 + "_1",param1 + "_2",param1 + "_3",param1 + "_4"]));
            if(_loc3_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     §§push(this.§0+§(param1,[param1 + "_1",param1 + "_2",param1 + "_3"]));
                     if(_loc3_)
                     {
                        addr80:
                        if(!§§pop())
                        {
                           if(_loc3_)
                           {
                              addr83:
                              §§push(this.§0+§(param1,[param1 + "_1"]));
                              if(!(_loc2_ && _loc3_))
                              {
                                 if(§§pop())
                                 {
                                 }
                                 §§goto(addr106);
                              }
                           }
                        }
                        §§goto(addr106);
                     }
                     if(§§pop())
                     {
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr83);
               }
               addr106:
               if(_loc3_)
               {
                  addr100:
                  §§push(this.§0+§(param1,[param1]));
               }
               return;
            }
            §§goto(addr80);
         }
         §§goto(addr100);
      }
      
      private function §-!e§(param1:Array) : Array
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
               addr174:
               while(true)
               {
                  §§push(_loc3_);
                  continue loop1;
               }
            }
         }
         if(!(_loc6_ && _loc2_))
         {
            _loc2_.sort();
         }
         return _loc2_;
      }
      
      protected function initializeBirdAnimations() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this);
            §§push("BIRD_BLACK");
            §§push(["normal",["BIRD_BLACK_1","BIRD_BLACK_2"]]);
            if(_loc2_ || _loc2_)
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
               loop1:
               while(!(_loc1_ && _loc1_))
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
                  while(true)
                  {
                     §§push(this);
                     §§push("BIRD_WHITE");
                     §§push(["normal",["BIRD_WHITE_1","BIRD_WHITE_2"]]);
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(null);
                     }
                     §§pop().§%!2§(§§pop(),§§pop());
                     loop3:
                     for(; _loc2_; if(_loc2_ || _loc2_)
                     {
                        continue loop2;
                     })
                     {
                        §§push(this);
                        §§push("BIRD_YELLOW");
                        §§push(["normal",["BIRD_YELLOW_1","BIRD_YELLOW_2"]]);
                        if(!(_loc1_ && _loc2_))
                        {
                           §§push(null);
                        }
                        §§pop().§%!2§(§§pop(),§§pop());
                        while(true)
                        {
                           §§push(this);
                           §§push("BIRD_GREEN");
                           §§push(["normal",["BIRD_GREEN_1","BIRD_GREEN_2"]]);
                           if(!(_loc1_ && _loc2_))
                           {
                              §§push(null);
                           }
                           §§pop().§%!2§(§§pop(),§§pop());
                           loop5:
                           while(!(_loc1_ && this))
                           {
                              continue loop3;
                              while(true)
                              {
                                 §§push(this);
                                 §§push("BIRD_REDBIG");
                                 §§push(["normal",["BIRD_REDBIG_1"]]);
                                 if(_loc2_ || _loc1_)
                                 {
                                    §§push(null);
                                 }
                                 §§pop().§%!2§(§§pop(),§§pop());
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 continue loop5;
                              }
                              return;
                           }
                        }
                     }
                     continue loop1;
                     if(!(_loc2_ || this))
                     {
                        continue;
                     }
                     §§goto(addr122);
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      protected function initializePigAnimations() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this);
            §§push("PIG_BASIC_SMALL");
            §§push(["normal",["PIG_BASIC_SMALL_01","PIG_BASIC_SMALL_02","PIG_BASIC_SMALL_03"]]);
            if(_loc2_)
            {
               §§push(null);
            }
            §§pop().§%!2§(§§pop(),§§pop());
            loop0:
            while(true)
            {
               §§push(this);
               §§push("PIG_BASIC_MEDIUM");
               §§push(["normal",["PIG_BASIC_MEDIUM_01","PIG_BASIC_MEDIUM_02","PIG_BASIC_MEDIUM_03"]]);
               if(!(_loc1_ && _loc1_))
               {
                  §§push(null);
               }
               §§pop().§%!2§(§§pop(),§§pop());
               while(true)
               {
                  §§push(this);
                  §§push("PIG_BASIC_BIG");
                  §§push(["normal",["PIG_BASIC_BIG_01","PIG_BASIC_BIG_02","PIG_BASIC_BIG_03"]]);
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(null);
                  }
                  §§pop().§%!2§(§§pop(),§§pop());
                  while(_loc2_)
                  {
                     §§push(this);
                     §§push("PIG_HELMET");
                     §§push(["normal",["PIG_HELMET_01","PIG_HELMET_02","PIG_HELMET_03"]]);
                     if(!_loc1_)
                     {
                        §§push(null);
                     }
                     §§pop().§%!2§(§§pop(),§§pop());
                     while(!_loc1_)
                     {
                        §§push(this);
                        §§push("PIG_MUSTACHE");
                        §§push(["normal",["PIG_MUSTACHE_01","PIG_MUSTACHE_02","PIG_MUSTACHE_03"]]);
                        if(!_loc1_)
                        {
                           §§push(null);
                        }
                        §§pop().§%!2§(§§pop(),§§pop());
                        loop4:
                        while(_loc2_)
                        {
                           while(true)
                           {
                              §§push(this);
                              §§push("PIG_KING");
                              §§push(["normal",["PIG_KING_01","PIG_KING_02","PIG_KING_03"]]);
                              if(_loc2_)
                              {
                                 §§push(null);
                              }
                              §§pop().§%!2§(§§pop(),§§pop());
                              if(!_loc1_)
                              {
                                 continue loop0;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr86);
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
               while(!_loc6_)
               {
                  §§pop().§§slot[2] = param2;
                  while(!_loc6_)
                  {
                     loop4:
                     while(true)
                     {
                        if(this.§ !O§[name])
                        {
                           if(_loc5_ || _loc3_)
                           {
                              break;
                           }
                           while(true)
                           {
                           }
                           addr64:
                        }
                        while(true)
                        {
                           §§push(§§newactivation());
                           if(_loc6_)
                           {
                              break;
                           }
                           §§pop().§§slot[3] = true;
                           if(_loc5_)
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
                           §§goto(addr64);
                        }
                        continue loop2;
                     }
                     if(_loc5_)
                     {
                        throw new Error("Trying to add a duplicate animation: " + name);
                     }
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      private function §1o§(param1:Array) : §%!L§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:§#`§ = null;
         var _loc2_:§%!L§ = new §%!L§();
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§&!k§.§&u§(_loc3_);
            if(_loc8_)
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
         if(_loc9_ || _loc3_)
         {
            if(this.§ !O§[param1])
            {
               if(!(_loc10_ && param2))
               {
                  throw new Error("Trying to add a duplicate animation: " + param1);
               }
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
         if(_loc9_)
         {
            this.§ !O§[param1] = _loc3_;
         }
      }
      
      public function getAnimation(param1:String) : §%!L§
      {
         return this.§ !O§[param1];
      }
   }
}
