package §_-Ra§
{
   import flash.utils.Dictionary;
   
   public class §_-M7§
   {
       
      
      private var §_-gS§:§_-2X§;
      
      private var §_-mM§:Dictionary;
      
      public function §_-M7§(param1:§_-2X§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-mM§ = new Dictionary();
            if(!(_loc3_ && _loc3_))
            {
               super();
               if(!(_loc3_ && _loc3_))
               {
                  addr49:
                  this.§_-gS§ = param1;
               }
               return;
            }
         }
         §§goto(addr49);
      }
      
      public function §_-K7§(param1:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:* = 0;
         if(_loc7_ || _loc3_)
         {
            this.§_-jP§(param1);
            if(_loc7_)
            {
               this.§_-i9§("PARTICLE_WOOD",["PARTICLE_WOOD_1"]);
               this.§_-i9§("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT"]);
            }
            this.§_-i9§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
            if(_loc7_)
            {
               this.§_-i9§("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]);
               if(_loc7_)
               {
                  this.§_-i9§("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]);
                  this.§_-i9§("FOREGROUND_12_LAYER_1",["FOREGROUND_12_LAYER_1"]);
                  this.§_-i9§("BACKGROUND_12_MOON_1",["BACKGROUND_12_MOON_1"]);
                  this.§_-i9§("BACKGROUND_12_VOLCANO",["BACKGROUND_12_VOLCANO"]);
                  addr89:
                  this.§_-i9§("BACKGROUND_12_MOON_2",["BACKGROUND_12_MOON_2"]);
                  if(!_loc6_)
                  {
                     this.§_-i9§("BACKGROUND_12_LAYER_4",["BACKGROUND_12_LAYER_4"]);
                     addr101:
                     this.§_-i9§("BACKGROUND_12_LAYER_3",["BACKGROUND_12_LAYER_3"]);
                     this.§_-i9§("BACKGROUND_12_LAYER_2",["BACKGROUND_12_LAYER_2"]);
                  }
                  this.§_-i9§("BACKGROUND_12_LAYER_1",["BACKGROUND_12_LAYER_1"]);
                  this.§_-i9§("BIRD_SARDINE",["BIRD_SARDINE"]);
                  if(!(_loc6_ && this))
                  {
                     §§goto(addr128);
                  }
                  §§goto(addr136);
               }
               §§goto(addr101);
            }
            §§goto(addr89);
         }
         addr128:
         this.§_-i9§("BIRD_MIGHTY_EAGLE",["BIRD_ME_MOTION","BIRD_ME_RADIAL"]);
         if(_loc7_)
         {
            addr136:
            this.§_-i9§("SCORE_BIRD_RED",["SCORE_BIRD_RED"]);
            if(_loc7_)
            {
               this.§_-i9§("SCORE_BIRD_BLUE",["SCORE_BIRD_BLUE"]);
               §§goto(addr148);
            }
            §§goto(addr177);
         }
         addr148:
         this.§_-i9§("SCORE_BIRD_GREEN",["SCORE_BIRD_GREEN"]);
         this.§_-i9§("SCORE_BIRD_BLACK",["SCORE_BIRD_BLACK"]);
         this.§_-i9§("SCORE_BIRD_WHITE",["SCORE_BIRD_WHITE"]);
         this.§_-i9§("SCORE_BIRD_YELLOW",["SCORE_BIRD_YELLOW"]);
         if(!_loc6_)
         {
            addr177:
            this.§_-i9§("SCORE_PIG",["SCORE_PIG"]);
         }
         for each(_loc2_ in [{
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
            "name":"SMOKE_BIG_",
            "count":6
         },{
            "name":"SMOKE_SMALL_",
            "count":3
         },{
            "name":"EXPLOSION_",
            "count":7
         }])
         {
            if(!_loc6_)
            {
               §§push(1);
               if(_loc7_)
               {
                  _loc3_ = §§pop();
                  if(_loc6_ && param1)
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(_loc3_);
                  }
                  addr290:
               }
               while(§§pop() <= _loc2_.count)
               {
                  this.§_-i9§(_loc2_.name + _loc3_,[_loc2_.name + _loc3_]);
                  if(!(_loc6_ && param1))
                  {
                     _loc3_++;
                     if(_loc6_)
                     {
                        break;
                     }
                  }
                  §§goto(addr290);
               }
            }
         }
         if(_loc7_)
         {
            this.§_-i9§("NUMBERS",["0","1","2","3","4","5","6","7","8","9"]);
            if(_loc7_ || _loc3_)
            {
               this.§_-Xo§();
               if(_loc7_ || _loc2_)
               {
                  this.§_-Ky§();
                  §§goto(addr330);
               }
            }
            §§goto(addr341);
         }
         addr330:
         if(_loc7_)
         {
            addr341:
            this.§_-i9§("SPARKLES",["PARTICLE_ICE_1","PARTICLE_ICE_3"]);
         }
      }
      
      private function §_-jP§(param1:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:String = null;
         if(!_loc7_)
         {
            §§push(param1);
            if(_loc6_)
            {
               if(§§pop() != null)
               {
                  addr36:
                  _loc2_ = this.§_-eU§(param1);
                  addr33:
                  for each(_loc3_ in _loc2_)
                  {
                     if(_loc6_)
                     {
                        this.§_-RW§(_loc3_);
                     }
                  }
               }
               return;
            }
            §§goto(addr36);
         }
         §§goto(addr33);
      }
      
      private function §_-RW§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§_-i9§(param1,[param1 + "_1",param1 + "_2",param1 + "_3",param1 + "_4"]));
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     addr49:
                     §§push(this.§_-i9§(param1,[param1 + "_1"]));
                     if(_loc3_)
                     {
                        if(!§§pop())
                        {
                           if(_loc3_ || _loc2_)
                           {
                           }
                        }
                        §§goto(addr79);
                     }
                     §§goto(addr78);
                  }
                  addr78:
                  if(§§pop())
                  {
                  }
                  addr79:
                  return;
                  §§push(this.§_-i9§(param1,[param1]));
               }
               §§goto(addr79);
            }
            §§goto(addr78);
         }
         §§goto(addr49);
      }
      
      private function §_-eU§(param1:Array) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:Array = [];
         var _loc4_:int = 0;
         var _loc5_:* = param1;
         while(§§hasnext(_loc5_,_loc4_))
         {
            §§push(§§nextvalue(_loc4_,_loc5_));
            if(!(_loc7_ && _loc2_))
            {
               _loc3_ = §§pop();
               if(_loc7_ && _loc2_)
               {
                  continue;
               }
               §§push(_loc3_);
               if(_loc6_ || _loc2_)
               {
                  §§push(§§pop().indexOf("PIG") != 0);
                  §§push(§§pop().indexOf("PIG") != 0);
                  if(!(_loc7_ && param1))
                  {
                     if(§§pop())
                     {
                        §§pop();
                        if(!(_loc7_ && param1))
                        {
                           §§push(_loc3_);
                           if(!_loc7_)
                           {
                              addr78:
                              §§push(§§pop().indexOf("BIRD") == 0);
                              if(!(_loc7_ && this))
                              {
                                 addr97:
                                 §§push(!§§pop());
                                 §§push(!§§pop());
                                 if(!(_loc7_ && param1))
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc7_ && param1))
                                       {
                                          addr113:
                                          §§pop();
                                          if(!(_loc7_ && this))
                                          {
                                             §§push(_loc3_);
                                             if(!_loc7_)
                                             {
                                                addr124:
                                                §§push(§§pop().indexOf("BLOCK") == 0);
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   addr135:
                                                   §§push(!§§pop());
                                                   if(!§§pop())
                                                   {
                                                      §§pop();
                                                      if(_loc7_ && _loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      addr147:
                                                      §§push(_loc3_.indexOf("_") > 0);
                                                   }
                                                }
                                                if(§§pop())
                                                {
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      addr159:
                                                      _loc2_.push(_loc3_);
                                                   }
                                                }
                                                continue;
                                             }
                                          }
                                          §§goto(addr147);
                                       }
                                    }
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr159);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr135);
               }
               §§goto(addr124);
            }
            §§goto(addr78);
         }
         if(!_loc7_)
         {
            _loc2_.sort();
         }
         return _loc2_;
      }
      
      protected function §_-Xo§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this);
         §§push("BIRD_BLACK");
         §§push(["normal",["BIRD_BLACK_1","BIRD_BLACK_2"]]);
         if(_loc2_ || _loc1_)
         {
            §§push(null);
         }
         §§pop().§_-DV§(§§pop(),§§pop());
         §§push(this);
         §§push("BIRD_BLUE");
         §§push(["normal",["BIRD_BLUE_1","BIRD_BLUE_2"]]);
         if(_loc2_)
         {
            §§push(null);
         }
         §§pop().§_-DV§(§§pop(),§§pop());
         if(!(_loc1_ && _loc2_))
         {
            §§push(this);
            §§push("BIRD_RED");
            §§push(["normal",["BIRD_RED_1","BIRD_RED_2"]]);
            if(!_loc1_)
            {
               §§push(null);
            }
            §§pop().§_-DV§(§§pop(),§§pop());
         }
         §§push(this);
         §§push("BIRD_WHITE");
         §§push(["normal",["BIRD_WHITE_1","BIRD_WHITE_2"]]);
         if(!(_loc1_ && this))
         {
            §§push(null);
         }
         §§pop().§_-DV§(§§pop(),§§pop());
         §§push(this);
         §§push("BIRD_YELLOW");
         §§push(["normal",["BIRD_YELLOW_1","BIRD_YELLOW_2"]]);
         if(_loc2_ || _loc2_)
         {
            §§push(null);
         }
         §§pop().§_-DV§(§§pop(),§§pop());
         if(!(_loc1_ && this))
         {
            §§push(this);
            §§push("BIRD_GREEN");
            §§push(["normal",["BIRD_GREEN_1","BIRD_GREEN_2"]]);
            if(!(_loc1_ && this))
            {
               §§push(null);
            }
            §§pop().§_-DV§(§§pop(),§§pop());
         }
         §§push(this);
         §§push("BIRD_REDBIG");
         §§push(["normal",["BIRD_REDBIG_1"]]);
         if(_loc2_ || _loc1_)
         {
            §§push(null);
         }
         §§pop().§_-DV§(§§pop(),§§pop());
      }
      
      private function §_-Ky§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this);
            §§push("PIG_BASIC_SMALL");
            §§push(["normal",["PIG_BASIC_SMALL_01","PIG_BASIC_SMALL_02","PIG_BASIC_SMALL_03"]]);
            if(_loc2_ || _loc2_)
            {
               §§push(null);
            }
            §§pop().§_-DV§(§§pop(),§§pop());
            if(_loc2_)
            {
               addr47:
               §§push(this);
               §§push("PIG_BASIC_MEDIUM");
               §§push(["normal",["PIG_BASIC_MEDIUM_01","PIG_BASIC_MEDIUM_02","PIG_BASIC_MEDIUM_03"]]);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(null);
               }
               §§pop().§_-DV§(§§pop(),§§pop());
               if(!_loc1_)
               {
                  §§push(this);
                  §§push("PIG_BASIC_BIG");
                  §§push(["normal",["PIG_BASIC_BIG_01","PIG_BASIC_BIG_02","PIG_BASIC_BIG_03"]]);
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(null);
                  }
                  §§pop().§_-DV§(§§pop(),§§pop());
               }
            }
            §§push(this);
            §§push("PIG_HELMET");
            §§push(["normal",["PIG_HELMET_01","PIG_HELMET_02","PIG_HELMET_03"]]);
            if(_loc2_)
            {
               §§push(null);
            }
            §§pop().§_-DV§(§§pop(),§§pop());
            §§push(this);
            §§push("PIG_MUSTACHE");
            §§push(["normal",["PIG_MUSTACHE_01","PIG_MUSTACHE_02","PIG_MUSTACHE_03"]]);
            if(_loc2_ || _loc1_)
            {
               §§push(null);
            }
            §§pop().§_-DV§(§§pop(),§§pop());
            §§push(this);
            §§push("PIG_KING");
            §§push(["normal",["PIG_KING_01","PIG_KING_02","PIG_KING_03"]]);
            if(_loc2_)
            {
               §§push(null);
            }
            §§pop().§_-DV§(§§pop(),§§pop());
            return;
         }
         §§goto(addr47);
      }
      
      protected function §_-i9§(param1:String, param2:Array) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_)
         {
            §§pop().§§slot[1] = param1;
            if(_loc6_)
            {
               §§push(§§newactivation());
               if(_loc6_ || param2)
               {
                  §§goto(addr33);
               }
               §§goto(addr67);
            }
            §§goto(addr57);
         }
         addr33:
         §§pop().§§slot[2] = param2;
         if(!(_loc5_ && param1))
         {
            if(this.§_-mM§[name])
            {
               if(_loc6_)
               {
                  addr57:
                  throw new Error("Trying to add a duplicate animation: " + name);
               }
            }
            else
            {
               addr67:
               var result:Boolean = true;
            }
         }
         try
         {
            this.§_-mM§[name] = this.§_-SO§(frameNames);
         }
         catch(e:Error)
         {
            if(_loc6_ || param2)
            {
               result = false;
            }
         }
         return result;
      }
      
      private function §_-SO§(param1:Array) : §_-RO§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:§_-Vr§ = null;
         var _loc2_:§_-RO§ = new §_-RO§();
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§_-gS§.§_-ln§(_loc3_);
            if(_loc8_)
            {
               _loc2_.addFrame(_loc4_);
            }
         }
         return _loc2_;
      }
      
      protected function §_-DV§(param1:String, param2:Array) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         if(_loc10_)
         {
            if(this.§_-mM§[param1])
            {
               if(!_loc9_)
               {
                  throw new Error("Trying to add a duplicate animation: " + param1);
               }
            }
         }
         var _loc3_:§_-pS§ = new §_-pS§();
         for each(_loc4_ in param2)
         {
            _loc5_ = _loc4_[0];
            _loc6_ = _loc4_[1];
            if(_loc10_ || _loc3_)
            {
               _loc3_.§_-i9§(_loc5_,this.§_-SO§(_loc6_));
            }
         }
         if(!(_loc9_ && param1))
         {
            this.§_-mM§[param1] = _loc3_;
         }
      }
      
      public function §_-S-§(param1:String) : §_-RO§
      {
         return this.§_-mM§[param1];
      }
   }
}
