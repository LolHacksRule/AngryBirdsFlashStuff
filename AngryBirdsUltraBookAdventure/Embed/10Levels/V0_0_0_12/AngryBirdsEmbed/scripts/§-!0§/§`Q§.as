package §-!0§
{
   import flash.utils.Dictionary;
   
   public class §`Q§
   {
       
      
      private var § 7§:§'!3§;
      
      private var §8a§:Dictionary;
      
      public function §`Q§(param1:§'!3§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§8a§ = new Dictionary();
            if(!(_loc2_ && _loc2_))
            {
               super();
               if(!(_loc2_ && this))
               {
                  this.§ 7§ = param1;
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
         this.§1p§(param1);
         if(!(_loc7_ && this))
         {
            this.§'$§("PARTICLE_WOOD",["PARTICLE_WOOD_1"]);
         }
         this.§'$§("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT"]);
         this.§'$§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
         this.§'$§("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]);
         if(!(_loc7_ && _loc3_))
         {
            this.§'$§("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]);
            if(_loc6_)
            {
               this.§'$§("FOREGROUND_12_LAYER_1",["FOREGROUND_12_LAYER_1"]);
               if(_loc6_ || param1)
               {
                  this.§'$§("BACKGROUND_12_MOON_1",["BACKGROUND_12_MOON_1"]);
                  this.§'$§("BACKGROUND_12_VOLCANO",["BACKGROUND_12_VOLCANO"]);
                  this.§'$§("BACKGROUND_12_MOON_2",["BACKGROUND_12_MOON_2"]);
               }
               addr125:
               this.§'$§("BACKGROUND_12_LAYER_1",["BACKGROUND_12_LAYER_1"]);
               if(!_loc7_)
               {
                  this.§'$§("BIRD_SARDINE",["BIRD_SARDINE"]);
                  this.§'$§("BIRD_MIGHTY_EAGLE",["BIRD_ME_MOTION","BIRD_ME_RADIAL"]);
                  addr143:
                  this.§'$§("SCORE_BIRD_RED",["SCORE_BIRD_RED"]);
                  this.§'$§("SCORE_BIRD_BLUE",["SCORE_BIRD_BLUE"]);
                  if(_loc6_ || param1)
                  {
                     addr160:
                     this.§'$§("SCORE_BIRD_GREEN",["SCORE_BIRD_GREEN"]);
                     this.§'$§("SCORE_BIRD_BLACK",["SCORE_BIRD_BLACK"]);
                     if(!_loc7_)
                     {
                        addr182:
                        this.§'$§("SCORE_BIRD_WHITE",["SCORE_BIRD_WHITE"]);
                        if(!_loc7_)
                        {
                           addr189:
                           this.§'$§("SCORE_BIRD_YELLOW",["SCORE_BIRD_YELLOW"]);
                           if(_loc7_)
                           {
                           }
                           addr201:
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
                              if(_loc6_)
                              {
                                 §§push(1);
                                 if(_loc6_)
                                 {
                                    _loc3_ = §§pop();
                                    if(_loc7_)
                                    {
                                    }
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                    }
                                    addr309:
                                 }
                                 while(§§pop() <= _loc2_.count)
                                 {
                                    this.§'$§(_loc2_.name + _loc3_,[_loc2_.name + _loc3_]);
                                    if(_loc7_ && this)
                                    {
                                       break;
                                    }
                                    _loc3_++;
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    §§goto(addr309);
                                 }
                              }
                           }
                           if(!_loc7_)
                           {
                              this.§'$§("NUMBERS",["0","1","2","3","4","5","6","7","8","9"]);
                              if(!(_loc7_ && _loc3_))
                              {
                                 this.initializeBirdAnimations();
                                 if(_loc6_)
                                 {
                                    addr354:
                                    this.initializePigAnimations();
                                    if(_loc6_ || _loc3_)
                                    {
                                       addr363:
                                       this.§'$§("SPARKLES",["PARTICLE_ICE_1","PARTICLE_ICE_3"]);
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr363);
                           }
                           §§goto(addr354);
                        }
                        this.§'$§("SCORE_PIG",["SCORE_PIG"]);
                     }
                     §§goto(addr201);
                  }
                  §§goto(addr182);
               }
               §§goto(addr160);
            }
            this.§'$§("BACKGROUND_12_LAYER_4",["BACKGROUND_12_LAYER_4"]);
            this.§'$§("BACKGROUND_12_LAYER_3",["BACKGROUND_12_LAYER_3"]);
            if(!_loc7_)
            {
               this.§'$§("BACKGROUND_12_LAYER_2",["BACKGROUND_12_LAYER_2"]);
               if(!_loc7_)
               {
                  §§goto(addr125);
               }
               §§goto(addr189);
            }
            §§goto(addr143);
         }
         §§goto(addr125);
      }
      
      private function §1p§(param1:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:String = null;
         if(!_loc7_)
         {
            §§push(param1);
            if(!_loc7_)
            {
               if(§§pop() != null)
               {
                  addr52:
                  _loc2_ = this.§;!D§(param1);
                  addr49:
                  for each(_loc3_ in _loc2_)
                  {
                     if(_loc6_)
                     {
                        this.§]3§(_loc3_);
                     }
                  }
               }
               return;
            }
            §§goto(addr52);
         }
         §§goto(addr49);
      }
      
      private function §]3§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§'$§(param1,[param1 + "_1",param1 + "_2",param1 + "_3",param1 + "_4"]));
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && param1))
                  {
                     §§push(this.§'$§(param1,[param1 + "_1",param1 + "_2",param1 + "_3"]));
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!§§pop())
                        {
                           if(_loc3_ || param1)
                           {
                              addr93:
                              §§push(this.§'$§(param1,[param1 + "_1"]));
                              if(!(_loc2_ && _loc3_))
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc3_ || param1)
                                    {
                                    }
                                 }
                                 §§goto(addr121);
                              }
                              §§goto(addr120);
                           }
                           addr120:
                           if(§§pop())
                           {
                           }
                           addr121:
                           return;
                           §§push(this.§'$§(param1,[param1]));
                        }
                     }
                     §§goto(addr120);
                  }
               }
               §§goto(addr121);
            }
            §§goto(addr120);
         }
         §§goto(addr93);
      }
      
      private function §;!D§(param1:Array) : Array
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
            if(_loc6_)
            {
               _loc3_ = §§pop();
               if(!_loc7_)
               {
                  §§push(_loc3_);
                  if(!_loc7_)
                  {
                     addr41:
                     §§push("PIG");
                     if(_loc6_ || this)
                     {
                        §§push(§§pop().indexOf(§§pop()) == 0);
                        if(_loc6_)
                        {
                           §§push(!§§pop());
                           §§push(!§§pop());
                           if(!(_loc7_ && _loc2_))
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 if(_loc6_ || _loc2_)
                                 {
                                    §§push(_loc3_);
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§push("BIRD");
                                       if(_loc6_)
                                       {
                                          addr97:
                                          addr98:
                                          addr93:
                                          §§push(§§pop().indexOf(§§pop()) != 0);
                                          if(§§pop().indexOf(§§pop()) != 0)
                                          {
                                             if(!(_loc7_ && this))
                                             {
                                                §§pop();
                                                if(!(_loc6_ || _loc3_))
                                                {
                                                   continue;
                                                }
                                                addr126:
                                                §§push(_loc3_.indexOf("_") > 0);
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             if(!_loc7_)
                                             {
                                                _loc2_.push(_loc3_);
                                             }
                                          }
                                          continue;
                                       }
                                    }
                                 }
                                 §§goto(addr126);
                              }
                              §§goto(addr97);
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr93);
                  }
               }
               §§goto(addr126);
            }
            §§goto(addr41);
         }
         if(_loc6_)
         {
            _loc2_.sort();
         }
         return _loc2_;
      }
      
      protected function initializeBirdAnimations() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this);
            §§push("BIRD_BLACK");
            §§push(["normal",["BIRD_BLACK_1","BIRD_BLACK_2"]]);
            if(_loc1_)
            {
               §§push(null);
            }
            §§pop().§3H§(§§pop(),§§pop());
            if(!_loc2_)
            {
               addr58:
               §§push(this);
               §§push("BIRD_BLUE");
               §§push(["normal",["BIRD_BLUE_1","BIRD_BLUE_2"]]);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(null);
               }
               §§pop().§3H§(§§pop(),§§pop());
               if(!(_loc2_ && _loc2_))
               {
                  §§push(this);
                  §§push("BIRD_RED");
                  §§push(["normal",["BIRD_RED_1","BIRD_RED_2"]]);
                  if(_loc1_ || _loc2_)
                  {
                     §§push(null);
                  }
                  §§pop().§3H§(§§pop(),§§pop());
               }
               §§push(this);
               §§push("BIRD_WHITE");
               §§push(["normal",["BIRD_WHITE_1","BIRD_WHITE_2"]]);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(null);
               }
               §§pop().§3H§(§§pop(),§§pop());
               if(_loc1_ || _loc2_)
               {
                  §§push(this);
                  §§push("BIRD_YELLOW");
                  §§push(["normal",["BIRD_YELLOW_1","BIRD_YELLOW_2"]]);
                  if(!(_loc2_ && this))
                  {
                     §§push(null);
                  }
                  §§pop().§3H§(§§pop(),§§pop());
                  if(_loc1_ || _loc2_)
                  {
                  }
                  §§goto(addr302);
               }
               §§push(this);
               §§push("BIRD_GREEN");
               §§push(["normal",["BIRD_GREEN_1","BIRD_GREEN_2"]]);
               if(_loc1_ || _loc1_)
               {
                  §§push(null);
               }
               §§pop().§3H§(§§pop(),§§pop());
               §§push(this);
               §§push("BIRD_REDBIG");
               §§push(["normal",["BIRD_REDBIG_1"]]);
               if(_loc1_ || _loc2_)
               {
                  §§push(null);
               }
               §§pop().§3H§(§§pop(),§§pop());
            }
            addr302:
            return;
         }
         §§goto(addr58);
      }
      
      protected function initializePigAnimations() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this);
            §§push("PIG_BASIC_SMALL");
            §§push(["normal",["PIG_BASIC_SMALL_01","PIG_BASIC_SMALL_02","PIG_BASIC_SMALL_03"]]);
            if(!(_loc1_ && _loc2_))
            {
               §§push(null);
            }
            §§pop().§3H§(§§pop(),§§pop());
            §§push(this);
            §§push("PIG_BASIC_MEDIUM");
            §§push(["normal",["PIG_BASIC_MEDIUM_01","PIG_BASIC_MEDIUM_02","PIG_BASIC_MEDIUM_03"]]);
            if(!_loc1_)
            {
               §§push(null);
            }
            §§pop().§3H§(§§pop(),§§pop());
            if(_loc2_)
            {
               §§push(this);
               §§push("PIG_BASIC_BIG");
               §§push(["normal",["PIG_BASIC_BIG_01","PIG_BASIC_BIG_02","PIG_BASIC_BIG_03"]]);
               if(!_loc1_)
               {
                  §§push(null);
               }
               §§pop().§3H§(§§pop(),§§pop());
               if(!(_loc1_ && _loc2_))
               {
                  §§push(this);
                  §§push("PIG_HELMET");
                  §§push(["normal",["PIG_HELMET_01","PIG_HELMET_02","PIG_HELMET_03"]]);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(null);
                  }
                  §§pop().§3H§(§§pop(),§§pop());
                  if(_loc1_ && this)
                  {
                  }
                  §§goto(addr192);
               }
            }
            §§push(this);
            §§push("PIG_MUSTACHE");
            §§push(["normal",["PIG_MUSTACHE_01","PIG_MUSTACHE_02","PIG_MUSTACHE_03"]]);
            if(!_loc1_)
            {
               §§push(null);
            }
            §§pop().§3H§(§§pop(),§§pop());
            if(_loc2_ || _loc1_)
            {
            }
            §§goto(addr192);
         }
         addr192:
         §§push(this);
         §§push("PIG_KING");
         §§push(["normal",["PIG_KING_01","PIG_KING_02","PIG_KING_03"]]);
         if(_loc2_)
         {
            §§push(null);
         }
         §§pop().§3H§(§§pop(),§§pop());
      }
      
      protected function §'$§(param1:String, param2:Array) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[1] = param1;
            if(_loc6_)
            {
               §§push(§§newactivation());
               if(!(_loc5_ && this))
               {
                  §§pop().§§slot[2] = param2;
                  if(!(_loc5_ && param1))
                  {
                     if(this.§8a§[name])
                     {
                        if(!(_loc5_ && this))
                        {
                           §§goto(addr68);
                        }
                     }
                     §§goto(addr78);
                  }
                  addr68:
                  throw new Error("Trying to add a duplicate animation: " + name);
               }
               §§goto(addr78);
            }
            §§goto(addr80);
         }
         addr78:
         var result:Boolean = true;
         try
         {
            this.§8a§[name] = this.§<`§(frameNames);
            addr80:
         }
         catch(e:Error)
         {
            if(!(_loc5_ && this))
            {
               result = false;
            }
         }
         return result;
      }
      
      private function §<`§(param1:Array) : §4b§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:§9X§ = null;
         var _loc2_:§4b§ = new §4b§();
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§ 7§.§4K§(_loc3_);
            if(_loc7_)
            {
               _loc2_.addFrame(_loc4_);
            }
         }
         return _loc2_;
      }
      
      protected function §3H§(param1:String, param2:Array) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         if(_loc10_ || param2)
         {
            if(this.§8a§[param1])
            {
               if(!_loc9_)
               {
                  throw new Error("Trying to add a duplicate animation: " + param1);
                  addr40:
               }
            }
            var _loc3_:§'x§ = new §'x§();
            for each(_loc4_ in param2)
            {
               _loc5_ = _loc4_[0];
               _loc6_ = _loc4_[1];
               if(_loc10_ || param1)
               {
                  _loc3_.§'$§(_loc5_,this.§<`§(_loc6_));
               }
            }
            if(!_loc9_)
            {
               this.§8a§[param1] = _loc3_;
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function §,V§(param1:String) : §4b§
      {
         return this.§8a§[param1];
      }
   }
}
