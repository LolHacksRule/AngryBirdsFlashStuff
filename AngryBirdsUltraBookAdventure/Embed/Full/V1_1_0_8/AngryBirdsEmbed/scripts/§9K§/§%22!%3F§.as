package §9K§
{
   import flash.utils.Dictionary;
   
   public class §"!?§
   {
       
      
      private var §-M§:§5!H§;
      
      private var §"!#§:Dictionary;
      
      public function §"!?§(param1:§5!H§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§"!#§ = new Dictionary();
            if(!_loc3_)
            {
               §§goto(addr39);
            }
            §§goto(addr43);
         }
         addr39:
         super();
         if(!_loc3_)
         {
            addr43:
            this.§-M§ = param1;
         }
      }
      
      public function initializeAnimations(param1:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:* = 0;
         if(_loc7_ || param1)
         {
            this.§ 3§(param1);
            this.§]! §("PARTICLE_WOOD",["PARTICLE_WOOD_1"]);
            if(_loc7_)
            {
               this.§]! §("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT"]);
               if(!_loc6_)
               {
                  this.§]! §("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
                  this.§]! §("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]);
                  this.§]! §("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]);
                  this.§]! §("FOREGROUND_12_LAYER_1",["FOREGROUND_12_LAYER_1"]);
                  if(_loc7_)
                  {
                     this.§]! §("BACKGROUND_12_MOON_1",["BACKGROUND_12_MOON_1"]);
                     addr87:
                     this.§]! §("BACKGROUND_12_VOLCANO",["BACKGROUND_12_VOLCANO"]);
                     this.§]! §("BACKGROUND_12_MOON_2",["BACKGROUND_12_MOON_2"]);
                     this.§]! §("BACKGROUND_12_LAYER_4",["BACKGROUND_12_LAYER_4"]);
                     if(_loc7_ || _loc2_)
                     {
                        this.§]! §("BACKGROUND_12_LAYER_3",["BACKGROUND_12_LAYER_3"]);
                        this.§]! §("BACKGROUND_12_LAYER_2",["BACKGROUND_12_LAYER_2"]);
                        addr119:
                        this.§]! §("BACKGROUND_12_LAYER_1",["BACKGROUND_12_LAYER_1"]);
                        this.§]! §("BIRD_SARDINE",["BIRD_SARDINE"]);
                        if(!(_loc6_ && this))
                        {
                           this.§]! §("BIRD_MIGHTY_EAGLE",["BIRD_ME_MOTION","BIRD_ME_RADIAL"]);
                           addr142:
                           this.§]! §("SCORE_BIRD_RED",["SCORE_BIRD_RED"]);
                           if(!_loc6_)
                           {
                              this.§]! §("SCORE_BIRD_BLUE",["SCORE_BIRD_BLUE"]);
                              addr154:
                              this.§]! §("SCORE_BIRD_GREEN",["SCORE_BIRD_GREEN"]);
                              if(_loc7_ || this)
                              {
                                 this.§]! §("SCORE_BIRD_BLACK",["SCORE_BIRD_BLACK"]);
                                 if(_loc7_)
                                 {
                                    this.§]! §("SCORE_BIRD_WHITE",["SCORE_BIRD_WHITE"]);
                                 }
                              }
                              addr195:
                              this.§]! §("SCORE_PIG",["SCORE_PIG"]);
                              addr200:
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
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§push(1);
                                    if(_loc7_)
                                    {
                                       _loc3_ = §§pop();
                                       if(_loc7_ || param1)
                                       {
                                          addr318:
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                          }
                                          addr318:
                                       }
                                       §§goto(addr318);
                                    }
                                    while(§§pop() <= _loc2_.count)
                                    {
                                       this.§]! §(_loc2_.name + _loc3_,[_loc2_.name + _loc3_]);
                                       if(!(_loc7_ || _loc2_))
                                       {
                                          break;
                                       }
                                       _loc3_++;
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                       §§goto(addr318);
                                    }
                                    continue;
                                 }
                                 §§goto(addr318);
                              }
                              if(_loc7_)
                              {
                                 this.§]! §("NUMBERS",["0","1","2","3","4","5","6","7","8","9"]);
                                 if(!_loc6_)
                                 {
                                    addr354:
                                    this.initializeBirdAnimations();
                                    if(!_loc6_)
                                    {
                                       this.initializePigAnimations();
                                       if(_loc7_)
                                       {
                                          this.§]! §("SPARKLES",["PARTICLE_ICE_1","PARTICLE_ICE_3"]);
                                       }
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr354);
                           }
                           this.§]! §("SCORE_BIRD_YELLOW",["SCORE_BIRD_YELLOW"]);
                           if(!_loc7_)
                           {
                           }
                           §§goto(addr200);
                        }
                        §§goto(addr195);
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr119);
               }
            }
            §§goto(addr154);
         }
         §§goto(addr87);
      }
      
      private function § 3§(param1:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:String = null;
         if(_loc6_)
         {
            §§push(param1);
            if(_loc6_ || _loc3_)
            {
               if(§§pop() != null)
               {
                  addr57:
                  _loc2_ = this.§96§(param1);
                  addr44:
                  for each(_loc3_ in _loc2_)
                  {
                     if(_loc6_ || _loc2_)
                     {
                        this.§+9§(_loc3_);
                     }
                  }
               }
               return;
            }
            §§goto(addr57);
         }
         §§goto(addr44);
      }
      
      private function §+9§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§]! §(param1,[param1 + "_1",param1 + "_2",param1 + "_3",param1 + "_4"]));
            if(_loc3_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && param1))
                  {
                     §§push(this.§]! §(param1,[param1 + "_1",param1 + "_2",param1 + "_3"]));
                     if(!(_loc2_ && param1))
                     {
                        if(!§§pop())
                        {
                           if(!_loc2_)
                           {
                              §§push(this.§]! §(param1,[param1 + "_1"]));
                              if(!_loc3_)
                              {
                              }
                              §§goto(addr110);
                           }
                           addr105:
                           addr110:
                           if(§§pop())
                           {
                           }
                           return;
                           §§push(this.§]! §(param1,[param1]));
                        }
                        §§goto(addr110);
                     }
                     if(!§§pop())
                     {
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr105);
                        }
                     }
                  }
               }
            }
            §§goto(addr110);
         }
         §§goto(addr105);
      }
      
      private function §96§(param1:Array) : Array
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
            if(!_loc7_)
            {
               _loc3_ = §§pop();
               if(!(_loc7_ && _loc2_))
               {
                  §§push(_loc3_);
                  if(_loc6_)
                  {
                     addr46:
                     §§push("PIG");
                     if(!(_loc7_ && this))
                     {
                        §§push(§§pop().indexOf(§§pop()) != 0);
                        §§push(§§pop().indexOf(§§pop()) != 0);
                        if(_loc6_ || _loc3_)
                        {
                           if(§§pop())
                           {
                              if(_loc6_ || _loc3_)
                              {
                                 §§pop();
                                 if(!_loc6_)
                                 {
                                    continue;
                                 }
                                 addr87:
                                 §§push(_loc3_);
                                 if(_loc6_)
                                 {
                                    addr90:
                                    §§push("BIRD");
                                    if(_loc6_ || param1)
                                    {
                                       addr101:
                                       §§push(§§pop().indexOf(§§pop()) != 0);
                                       if(§§pop().indexOf(§§pop()) != 0)
                                       {
                                          if(!_loc7_)
                                          {
                                             §§pop();
                                             if(!(_loc7_ && param1))
                                             {
                                                addr129:
                                                if(_loc3_.indexOf("_") <= 0)
                                                {
                                                   continue;
                                                }
                                                if(_loc7_)
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
                                 §§goto(addr129);
                              }
                           }
                        }
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr90);
               }
               §§goto(addr87);
            }
            §§goto(addr46);
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
         §§push(this);
         §§push("BIRD_BLACK");
         §§push(["normal",["BIRD_BLACK_1","BIRD_BLACK_2"]]);
         if(_loc1_ || this)
         {
            §§push(null);
         }
         §§pop().§2]§(§§pop(),§§pop());
         if(_loc1_ || _loc2_)
         {
            §§push(this);
            §§push("BIRD_BLUE");
            §§push(["normal",["BIRD_BLUE_1","BIRD_BLUE_2"]]);
            if(!_loc2_)
            {
               §§push(null);
            }
            §§pop().§2]§(§§pop(),§§pop());
            §§push(this);
            §§push("BIRD_RED");
            §§push(["normal",["BIRD_RED_1","BIRD_RED_2"]]);
            if(!(_loc2_ && this))
            {
               §§push(null);
            }
            §§pop().§2]§(§§pop(),§§pop());
            if(_loc1_)
            {
               §§push(this);
               §§push("BIRD_WHITE");
               §§push(["normal",["BIRD_WHITE_1","BIRD_WHITE_2"]]);
               if(!(_loc2_ && this))
               {
                  §§push(null);
               }
               §§pop().§2]§(§§pop(),§§pop());
               §§goto(addr168);
            }
            §§goto(addr206);
         }
         addr168:
         §§push(this);
         §§push("BIRD_YELLOW");
         §§push(["normal",["BIRD_YELLOW_1","BIRD_YELLOW_2"]]);
         if(_loc1_)
         {
            §§push(null);
         }
         §§pop().§2]§(§§pop(),§§pop());
         if(_loc1_ || _loc2_)
         {
            addr206:
            §§push(this);
            §§push("BIRD_GREEN");
            §§push(["normal",["BIRD_GREEN_1","BIRD_GREEN_2"]]);
            if(!_loc2_)
            {
               §§push(null);
            }
            §§pop().§2]§(§§pop(),§§pop());
            if(_loc1_ || _loc2_)
            {
               §§push(this);
               §§push("BIRD_REDBIG");
               §§push(["normal",["BIRD_REDBIG_1"]]);
               if(!_loc2_)
               {
                  §§push(null);
               }
               §§pop().§2]§(§§pop(),§§pop());
            }
         }
      }
      
      protected function initializePigAnimations() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this);
         §§push("PIG_BASIC_SMALL");
         §§push(["normal",["PIG_BASIC_SMALL_01","PIG_BASIC_SMALL_02","PIG_BASIC_SMALL_03"]]);
         if(_loc1_ || _loc2_)
         {
            §§push(null);
         }
         §§pop().§2]§(§§pop(),§§pop());
         §§push(this);
         §§push("PIG_BASIC_MEDIUM");
         §§push(["normal",["PIG_BASIC_MEDIUM_01","PIG_BASIC_MEDIUM_02","PIG_BASIC_MEDIUM_03"]]);
         if(_loc1_ || this)
         {
            §§push(null);
         }
         §§pop().§2]§(§§pop(),§§pop());
         §§push(this);
         §§push("PIG_BASIC_BIG");
         §§push(["normal",["PIG_BASIC_BIG_01","PIG_BASIC_BIG_02","PIG_BASIC_BIG_03"]]);
         if(_loc1_ || this)
         {
            §§push(null);
         }
         §§pop().§2]§(§§pop(),§§pop());
         §§push(this);
         §§push("PIG_HELMET");
         §§push(["normal",["PIG_HELMET_01","PIG_HELMET_02","PIG_HELMET_03"]]);
         if(_loc1_)
         {
            §§push(null);
         }
         §§pop().§2]§(§§pop(),§§pop());
         if(!(_loc2_ && _loc2_))
         {
            §§push(this);
            §§push("PIG_MUSTACHE");
            §§push(["normal",["PIG_MUSTACHE_01","PIG_MUSTACHE_02","PIG_MUSTACHE_03"]]);
            if(_loc1_ || this)
            {
               §§push(null);
            }
            §§pop().§2]§(§§pop(),§§pop());
            if(_loc1_)
            {
               §§push(this);
               §§push("PIG_KING");
               §§push(["normal",["PIG_KING_01","PIG_KING_02","PIG_KING_03"]]);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(null);
               }
               §§pop().§2]§(§§pop(),§§pop());
            }
         }
      }
      
      protected function §]! §(param1:String, param2:Array) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_)
         {
            §§pop().§§slot[1] = param1;
            if(!(_loc6_ && param2))
            {
               §§push(§§newactivation());
               if(_loc5_)
               {
                  §§pop().§§slot[2] = param2;
                  if(_loc5_ || _loc3_)
                  {
                     if(this.§"!#§[name])
                     {
                        if(!(_loc5_ || param1))
                        {
                           addr82:
                           var result:Boolean = true;
                           try
                           {
                              this.§"!#§[name] = this.§+E§(frameNames);
                           }
                           catch(e:Error)
                           {
                              if(!(_loc6_ && param2))
                              {
                                 result = false;
                              }
                           }
                           return result;
                           addr81:
                        }
                     }
                     §§goto(addr81);
                  }
                  throw new Error("Trying to add a duplicate animation: " + name);
               }
            }
         }
         §§goto(addr82);
      }
      
      private function §+E§(param1:Array) : §!?§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:§,z§ = null;
         var _loc2_:§!?§ = new §!?§();
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§-M§.§3!'§(_loc3_);
            if(!(_loc7_ && _loc2_))
            {
               _loc2_.addFrame(_loc4_);
            }
         }
         return _loc2_;
      }
      
      protected function §2]§(param1:String, param2:Array) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         if(!(_loc9_ && _loc3_))
         {
            if(this.§"!#§[param1])
            {
               if(!(_loc9_ && _loc3_))
               {
                  throw new Error("Trying to add a duplicate animation: " + param1);
               }
            }
         }
         var _loc3_:§`!4§ = new §`!4§();
         for each(_loc4_ in param2)
         {
            _loc5_ = _loc4_[0];
            _loc6_ = _loc4_[1];
            if(!(_loc9_ && _loc3_))
            {
               _loc3_.§]! §(_loc5_,this.§+E§(_loc6_));
            }
         }
         if(_loc10_)
         {
            this.§"!#§[param1] = _loc3_;
         }
      }
      
      public function §8!0§(param1:String) : §!?§
      {
         return this.§"!#§[param1];
      }
   }
}
