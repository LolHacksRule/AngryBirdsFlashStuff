package §=U§
{
   import flash.utils.Dictionary;
   
   public class §&!U§
   {
       
      
      private var §>!S§:§3p§;
      
      private var §9H§:Dictionary;
      
      public function §&!U§(param1:§3p§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§9H§ = new Dictionary();
            if(_loc3_ || param1)
            {
               §§goto(addr45);
            }
            §§goto(addr49);
         }
         addr45:
         super();
         if(_loc3_)
         {
            addr49:
            this.§>!S§ = param1;
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
            this.§%"§(param1);
            if(_loc6_ || _loc2_)
            {
               this.§'r§("PARTICLE_WOOD",["PARTICLE_WOOD_1"]);
               if(_loc6_ || _loc2_)
               {
                  this.§'r§("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT"]);
                  this.§'r§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
                  if(_loc6_ || _loc3_)
                  {
                     this.§'r§("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]);
                     this.§'r§("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]);
                     addr86:
                     this.§'r§("FOREGROUND_12_LAYER_1",["FOREGROUND_12_LAYER_1"]);
                     addr91:
                     this.§'r§("BACKGROUND_12_MOON_1",["BACKGROUND_12_MOON_1"]);
                     this.§'r§("BACKGROUND_12_VOLCANO",["BACKGROUND_12_VOLCANO"]);
                     this.§'r§("BACKGROUND_12_MOON_2",["BACKGROUND_12_MOON_2"]);
                  }
                  this.§'r§("BACKGROUND_12_LAYER_4",["BACKGROUND_12_LAYER_4"]);
                  this.§'r§("BACKGROUND_12_LAYER_3",["BACKGROUND_12_LAYER_3"]);
                  if(_loc6_)
                  {
                     this.§'r§("BACKGROUND_12_LAYER_2",["BACKGROUND_12_LAYER_2"]);
                     if(!(_loc7_ && this))
                     {
                        this.§'r§("BACKGROUND_12_LAYER_1",["BACKGROUND_12_LAYER_1"]);
                        this.§'r§("BIRD_SARDINE",["BIRD_SARDINE"]);
                        if(_loc6_ || this)
                        {
                           this.§'r§("BIRD_MIGHTY_EAGLE",["BIRD_ME_MOTION","BIRD_ME_RADIAL"]);
                           this.§'r§("SCORE_BIRD_RED",["SCORE_BIRD_RED"]);
                           if(_loc6_ || _loc3_)
                           {
                              addr165:
                              this.§'r§("SCORE_BIRD_BLUE",["SCORE_BIRD_BLUE"]);
                              if(_loc6_ || param1)
                              {
                                 this.§'r§("SCORE_BIRD_GREEN",["SCORE_BIRD_GREEN"]);
                                 addr192:
                                 this.§'r§("SCORE_BIRD_BLACK",["SCORE_BIRD_BLACK"]);
                                 addr197:
                                 this.§'r§("SCORE_BIRD_WHITE",["SCORE_BIRD_WHITE"]);
                              }
                              this.§'r§("SCORE_BIRD_YELLOW",["SCORE_BIRD_YELLOW"]);
                              addr207:
                              this.§'r§("SCORE_PIG",["SCORE_PIG"]);
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
                           }])
                           {
                              if(!_loc7_)
                              {
                                 §§push(1);
                                 if(_loc6_)
                                 {
                                    _loc3_ = §§pop();
                                    if(_loc6_)
                                    {
                                       addr315:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                       }
                                       addr315:
                                    }
                                    §§goto(addr315);
                                 }
                                 while(§§pop() <= _loc2_.count)
                                 {
                                    this.§'r§(_loc2_.name + _loc3_,[_loc2_.name + _loc3_]);
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    _loc3_++;
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    §§goto(addr315);
                                 }
                                 continue;
                              }
                              §§goto(addr315);
                           }
                           if(_loc6_ || param1)
                           {
                              this.§'r§("NUMBERS",["0","1","2","3","4","5","6","7","8","9"]);
                              if(!_loc7_)
                              {
                                 this.initializeBirdAnimations();
                                 if(!(_loc7_ && param1))
                                 {
                                    addr365:
                                    this.§[! §();
                                    if(!_loc7_)
                                    {
                                       addr369:
                                       this.§'r§("SPARKLES",["PARTICLE_ICE_1","PARTICLE_ICE_3"]);
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr365);
                           }
                           §§goto(addr369);
                        }
                        §§goto(addr197);
                     }
                     §§goto(addr192);
                  }
                  §§goto(addr207);
               }
               §§goto(addr165);
            }
            §§goto(addr91);
         }
         §§goto(addr86);
      }
      
      private function §%"§(param1:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:String = null;
         if(_loc7_)
         {
            §§push(param1);
            if(!_loc6_)
            {
               if(§§pop() != null)
               {
                  addr53:
                  _loc2_ = this.§^E§(param1);
                  addr40:
                  for each(_loc3_ in _loc2_)
                  {
                     if(_loc7_ || param1)
                     {
                        this.§]!V§(_loc3_);
                     }
                  }
               }
               return;
            }
            §§goto(addr53);
         }
         §§goto(addr40);
      }
      
      private function §]!V§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§'r§(param1,[param1 + "_1",param1 + "_2",param1 + "_3",param1 + "_4"]));
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr59:
                     §§push(this.§'r§(param1,[param1 + "_1",param1 + "_2",param1 + "_3"]));
                     if(!(_loc3_ && this))
                     {
                        addr79:
                        if(!§§pop())
                        {
                           if(_loc2_ || _loc2_)
                           {
                              §§push(this.§'r§(param1,[param1 + "_1"]));
                              if(!_loc3_)
                              {
                                 addr106:
                                 if(§§pop())
                                 {
                                 }
                                 §§goto(addr120);
                              }
                              if(§§pop())
                              {
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr114);
               }
               addr120:
               if(!(_loc3_ && _loc2_))
               {
                  addr114:
                  §§push(this.§'r§(param1,[param1]));
               }
               return;
            }
            §§goto(addr79);
         }
         §§goto(addr59);
      }
      
      private function §^E§(param1:Array) : Array
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
            if(_loc6_ || this)
            {
               _loc3_ = §§pop();
               if(!(_loc7_ && param1))
               {
                  §§push(_loc3_);
                  if(!(_loc7_ && _loc2_))
                  {
                     §§push("PIG");
                     if(_loc6_ || _loc2_)
                     {
                        §§push(§§pop().indexOf(§§pop()) != 0);
                        if(!(_loc7_ && _loc2_))
                        {
                           §§push(§§pop());
                           if(!(_loc7_ && this))
                           {
                              if(§§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    §§pop();
                                    if(!(_loc7_ && param1))
                                    {
                                       addr104:
                                       §§push(_loc3_);
                                       if(!(_loc7_ && this))
                                       {
                                          addr112:
                                          §§push("BIRD");
                                          if(!_loc7_)
                                          {
                                             addr118:
                                             §§push(§§pop().indexOf(§§pop()) != 0);
                                             if(§§pop().indexOf(§§pop()) != 0)
                                             {
                                                if(!(_loc7_ && param1))
                                                {
                                                   §§pop();
                                                   if(_loc6_)
                                                   {
                                                      addr146:
                                                      if(_loc3_.indexOf("_") <= 0)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   _loc2_.push(_loc3_);
                                                   continue;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr146);
                                 }
                              }
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr146);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr146);
               }
               §§goto(addr104);
            }
            §§goto(addr112);
         }
         if(!_loc7_)
         {
            _loc2_.sort();
         }
         return _loc2_;
      }
      
      protected function initializeBirdAnimations() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this);
         §§push("BIRD_BLACK");
         §§push(["normal",["BIRD_BLACK_1","BIRD_BLACK_2"]]);
         if(!(_loc2_ && _loc1_))
         {
            §§push(null);
         }
         §§pop().§%B§(§§pop(),§§pop());
         §§push(this);
         §§push("BIRD_BLUE");
         §§push(["normal",["BIRD_BLUE_1","BIRD_BLUE_2"]]);
         if(_loc1_)
         {
            §§push(null);
         }
         §§pop().§%B§(§§pop(),§§pop());
         §§push(this);
         §§push("BIRD_RED");
         §§push(["normal",["BIRD_RED_1","BIRD_RED_2"]]);
         if(_loc1_)
         {
            §§push(null);
         }
         §§pop().§%B§(§§pop(),§§pop());
         §§push(this);
         §§push("BIRD_WHITE");
         §§push(["normal",["BIRD_WHITE_1","BIRD_WHITE_2"]]);
         if(_loc1_ || _loc2_)
         {
            §§push(null);
         }
         §§pop().§%B§(§§pop(),§§pop());
         if(!(_loc2_ && _loc1_))
         {
            §§push(this);
            §§push("BIRD_YELLOW");
            §§push(["normal",["BIRD_YELLOW_1","BIRD_YELLOW_2"]]);
            if(!(_loc2_ && _loc1_))
            {
               §§push(null);
            }
            §§pop().§%B§(§§pop(),§§pop());
            if(_loc1_ || _loc1_)
            {
               addr204:
               §§push(this);
               §§push("BIRD_GREEN");
               §§push(["normal",["BIRD_GREEN_1","BIRD_GREEN_2"]]);
               if(_loc1_)
               {
                  §§push(null);
               }
               §§pop().§%B§(§§pop(),§§pop());
               §§push(this);
               §§push("BIRD_REDBIG");
               §§push(["normal",["BIRD_REDBIG_1"]]);
               if(_loc1_ || _loc1_)
               {
                  §§push(null);
               }
               §§pop().§%B§(§§pop(),§§pop());
            }
            return;
         }
         §§goto(addr204);
      }
      
      private function §[! §() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this);
         §§push("PIG_BASIC_SMALL");
         §§push(["normal",["PIG_BASIC_SMALL_01","PIG_BASIC_SMALL_02","PIG_BASIC_SMALL_03"]]);
         if(_loc2_ || _loc1_)
         {
            §§push(null);
         }
         §§pop().§%B§(§§pop(),§§pop());
         if(_loc2_)
         {
            §§push(this);
            §§push("PIG_BASIC_MEDIUM");
            §§push(["normal",["PIG_BASIC_MEDIUM_01","PIG_BASIC_MEDIUM_02","PIG_BASIC_MEDIUM_03"]]);
            if(!_loc1_)
            {
               §§push(null);
            }
            §§pop().§%B§(§§pop(),§§pop());
         }
         §§push(this);
         §§push("PIG_BASIC_BIG");
         §§push(["normal",["PIG_BASIC_BIG_01","PIG_BASIC_BIG_02","PIG_BASIC_BIG_03"]]);
         if(!_loc1_)
         {
            §§push(null);
         }
         §§pop().§%B§(§§pop(),§§pop());
         §§push(this);
         §§push("PIG_HELMET");
         §§push(["normal",["PIG_HELMET_01","PIG_HELMET_02","PIG_HELMET_03"]]);
         if(!(_loc1_ && _loc1_))
         {
            §§push(null);
         }
         §§pop().§%B§(§§pop(),§§pop());
         §§push(this);
         §§push("PIG_MUSTACHE");
         §§push(["normal",["PIG_MUSTACHE_01","PIG_MUSTACHE_02","PIG_MUSTACHE_03"]]);
         if(_loc2_)
         {
            §§push(null);
         }
         §§pop().§%B§(§§pop(),§§pop());
         if(_loc2_ || _loc1_)
         {
            §§push(this);
            §§push("PIG_KING");
            §§push(["normal",["PIG_KING_01","PIG_KING_02","PIG_KING_03"]]);
            if(!_loc1_)
            {
               §§push(null);
            }
            §§pop().§%B§(§§pop(),§§pop());
         }
      }
      
      protected function §'r§(param1:String, param2:Array) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc5_ && _loc3_))
         {
            §§pop().§§slot[1] = param1;
            if(_loc6_ || param2)
            {
               §§push(§§newactivation());
               if(_loc6_)
               {
                  addr41:
                  §§pop().§§slot[2] = param2;
                  if(_loc6_)
                  {
                     if(this.§9H§[name])
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           §§goto(addr68);
                        }
                     }
                     else
                     {
                        addr83:
                        var result:Boolean = true;
                        addr82:
                     }
                     try
                     {
                        this.§9H§[name] = this.§ !!§(frameNames);
                     }
                     catch(e:Error)
                     {
                        if(!(_loc5_ && param2))
                        {
                           result = false;
                        }
                     }
                     return result;
                  }
                  §§goto(addr82);
               }
               §§goto(addr83);
            }
            addr68:
            throw new Error("Trying to add a duplicate animation: " + name);
         }
         §§goto(addr41);
      }
      
      private function § !!§(param1:Array) : §;P§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:§>?§ = null;
         var _loc2_:§;P§ = new §;P§();
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§>!S§.§8!@§(_loc3_);
            if(!(_loc7_ && param1))
            {
               _loc2_.addFrame(_loc4_);
            }
         }
         return _loc2_;
      }
      
      protected function §%B§(param1:String, param2:Array) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         if(!(_loc10_ && param1))
         {
            if(this.§9H§[param1])
            {
               if(!(_loc10_ && this))
               {
                  throw new Error("Trying to add a duplicate animation: " + param1);
               }
            }
         }
         var _loc3_:§^k§ = new §^k§();
         for each(_loc4_ in param2)
         {
            _loc5_ = _loc4_[0];
            _loc6_ = _loc4_[1];
            if(_loc9_ || _loc3_)
            {
               _loc3_.§'r§(_loc5_,this.§ !!§(_loc6_));
            }
         }
         if(_loc9_)
         {
            this.§9H§[param1] = _loc3_;
         }
      }
      
      public function §`!!§(param1:String) : §;P§
      {
         return this.§9H§[param1];
      }
   }
}
