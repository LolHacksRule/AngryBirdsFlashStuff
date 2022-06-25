package §5`§
{
   import flash.utils.Dictionary;
   
   public class §+q§
   {
       
      
      private var §^S§:§?y§;
      
      private var §7g§:Dictionary;
      
      public function §+q§(param1:§?y§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§7g§ = new Dictionary();
            if(_loc3_ || _loc3_)
            {
               super();
               if(!_loc2_)
               {
                  this.§^S§ = param1;
               }
            }
         }
      }
      
      public function initializeAnimations(param1:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:* = 0;
         if(_loc7_ || _loc2_)
         {
            this.§;V§(param1);
            if(!_loc6_)
            {
               addr34:
               this.§+"§("PARTICLE_WOOD",["PARTICLE_WOOD_1"]);
               if(!_loc6_)
               {
                  this.§+"§("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT"]);
                  this.§+"§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
                  if(!_loc6_)
                  {
                     this.§+"§("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]);
                     if(_loc7_ || _loc2_)
                     {
                        this.§+"§("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]);
                        if(_loc7_)
                        {
                           addr86:
                           this.§+"§("FOREGROUND_12_LAYER_1",["FOREGROUND_12_LAYER_1"]);
                           this.§+"§("BACKGROUND_12_MOON_1",["BACKGROUND_12_MOON_1"]);
                           if(!_loc6_)
                           {
                              this.§+"§("BACKGROUND_12_VOLCANO",["BACKGROUND_12_VOLCANO"]);
                              if(_loc7_ || this)
                              {
                                 this.§+"§("BACKGROUND_12_MOON_2",["BACKGROUND_12_MOON_2"]);
                                 if(!_loc6_)
                                 {
                                    addr117:
                                    this.§+"§("BACKGROUND_12_LAYER_4",["BACKGROUND_12_LAYER_4"]);
                                    addr122:
                                    this.§+"§("BACKGROUND_12_LAYER_3",["BACKGROUND_12_LAYER_3"]);
                                    if(_loc7_ || param1)
                                    {
                                       addr134:
                                       this.§+"§("BACKGROUND_12_LAYER_2",["BACKGROUND_12_LAYER_2"]);
                                       if(!_loc6_)
                                       {
                                          addr141:
                                          this.§+"§("BACKGROUND_12_LAYER_1",["BACKGROUND_12_LAYER_1"]);
                                          this.§+"§("BIRD_SARDINE",["BIRD_SARDINE"]);
                                          this.§+"§("BIRD_MIGHTY_EAGLE",["BIRD_ME_MOTION","BIRD_ME_RADIAL"]);
                                          this.§+"§("SCORE_BIRD_RED",["SCORE_BIRD_RED"]);
                                          this.§+"§("SCORE_BIRD_BLUE",["SCORE_BIRD_BLUE"]);
                                       }
                                       this.§+"§("SCORE_BIRD_GREEN",["SCORE_BIRD_GREEN"]);
                                       this.§+"§("SCORE_BIRD_BLACK",["SCORE_BIRD_BLACK"]);
                                       if(_loc7_)
                                       {
                                          this.§+"§("SCORE_BIRD_WHITE",["SCORE_BIRD_WHITE"]);
                                       }
                                       this.§+"§("SCORE_BIRD_YELLOW",["SCORE_BIRD_YELLOW"]);
                                       if(_loc7_ || _loc3_)
                                       {
                                          addr206:
                                          this.§+"§("SCORE_PIG",["SCORE_PIG"]);
                                          addr211:
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
                                             if(_loc7_ || param1)
                                             {
                                                §§push(1);
                                                if(_loc7_ || _loc2_)
                                                {
                                                   _loc3_ = §§pop();
                                                   if(_loc7_)
                                                   {
                                                      addr306:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                   }
                                                   addr324:
                                                }
                                                while(§§pop() <= _loc2_.count)
                                                {
                                                   this.§+"§(_loc2_.name + _loc3_,[_loc2_.name + _loc3_]);
                                                   if(_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   _loc3_++;
                                                   if(!_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr324);
                                                }
                                                continue;
                                             }
                                             §§goto(addr306);
                                          }
                                          if(!_loc6_)
                                          {
                                             this.§+"§("NUMBERS",["0","1","2","3","4","5","6","7","8","9"]);
                                             if(_loc7_ || this)
                                             {
                                                this.initializeBirdAnimations();
                                                if(!_loc6_)
                                                {
                                                   addr369:
                                                   this.initializePigAnimations();
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      addr378:
                                                      this.§+"§("SPARKLES",["PARTICLE_ICE_1","PARTICLE_ICE_3"]);
                                                   }
                                                }
                                                return;
                                             }
                                             §§goto(addr378);
                                          }
                                          §§goto(addr369);
                                       }
                                       §§goto(addr211);
                                    }
                                 }
                                 §§goto(addr141);
                              }
                              §§goto(addr206);
                           }
                           §§goto(addr141);
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr86);
               }
               §§goto(addr206);
            }
            §§goto(addr117);
         }
         §§goto(addr34);
      }
      
      private function §;V§(param1:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:String = null;
         if(_loc6_ || _loc3_)
         {
            §§push(param1);
            if(!_loc7_)
            {
               if(§§pop() != null)
               {
                  addr57:
                  _loc2_ = this.§ o§(param1);
                  addr44:
                  for each(_loc3_ in _loc2_)
                  {
                     if(!(_loc7_ && _loc2_))
                     {
                        this.§-N§(_loc3_);
                     }
                  }
               }
               return;
            }
            §§goto(addr57);
         }
         §§goto(addr44);
      }
      
      private function §-N§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§+"§(param1,[param1 + "_1",param1 + "_2",param1 + "_3",param1 + "_4"]));
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     addr54:
                     §§push(this.§+"§(param1,[param1 + "_1",param1 + "_2",param1 + "_3"]));
                     if(!_loc3_)
                     {
                        if(!§§pop())
                        {
                           if(_loc2_ || param1)
                           {
                           }
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr109);
                  }
                  §§push(this.§+"§(param1,[param1 + "_1"]));
                  if(!(_loc3_ && this))
                  {
                     if(!§§pop())
                     {
                        if(!_loc3_)
                        {
                           addr109:
                           if(§§pop())
                           {
                           }
                           addr110:
                           return;
                           §§push(this.§+"§(param1,[param1]));
                        }
                     }
                  }
                  §§goto(addr109);
               }
               §§goto(addr110);
            }
            §§goto(addr109);
         }
         §§goto(addr54);
      }
      
      private function § o§(param1:Array) : Array
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
            if(!(_loc6_ && _loc2_))
            {
               _loc3_ = §§pop();
               if(!(_loc6_ && this))
               {
                  §§push(_loc3_);
                  if(!(_loc6_ && _loc3_))
                  {
                     addr57:
                     §§push("PIG");
                     if(_loc7_)
                     {
                        §§push(§§pop().indexOf(§§pop()) != 0);
                        if(_loc7_)
                        {
                           §§push(§§pop());
                           if(!_loc6_)
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 if(!(_loc6_ && param1))
                                 {
                                    addr88:
                                    §§push(_loc3_);
                                    if(!(_loc6_ && param1))
                                    {
                                       addr96:
                                       §§push("BIRD");
                                       if(_loc7_ || this)
                                       {
                                          addr104:
                                          §§push(§§pop().indexOf(§§pop()) == 0);
                                          if(_loc7_)
                                          {
                                             §§push(!§§pop());
                                             if(!(_loc6_ && param1))
                                             {
                                                addr117:
                                                addr118:
                                                if(§§pop())
                                                {
                                                   §§pop();
                                                   if(_loc6_ && param1)
                                                   {
                                                      continue;
                                                   }
                                                   addr138:
                                                   §§push(_loc3_);
                                                   §§push("_");
                                                }
                                                addr142:
                                                if(§§pop())
                                                {
                                                   if(_loc7_ || _loc2_)
                                                   {
                                                      addr150:
                                                      _loc2_.push(_loc3_);
                                                   }
                                                }
                                                continue;
                                             }
                                          }
                                       }
                                       §§goto(addr142);
                                       §§push(§§pop().indexOf(§§pop()) > 0);
                                    }
                                    §§goto(addr138);
                                 }
                                 §§goto(addr150);
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr96);
               }
               §§goto(addr88);
            }
            §§goto(addr57);
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
            if(!(_loc1_ && _loc2_))
            {
               §§push(null);
            }
            §§pop().§%Y§(§§pop(),§§pop());
            if(_loc2_ || this)
            {
               §§push(this);
               §§push("BIRD_BLUE");
               §§push(["normal",["BIRD_BLUE_1","BIRD_BLUE_2"]]);
               if(!(_loc1_ && _loc1_))
               {
                  §§push(null);
               }
               §§pop().§%Y§(§§pop(),§§pop());
               if(!(_loc1_ && _loc2_))
               {
                  addr103:
                  §§push(this);
                  §§push("BIRD_RED");
                  §§push(["normal",["BIRD_RED_1","BIRD_RED_2"]]);
                  if(!_loc1_)
                  {
                     §§push(null);
                  }
                  §§pop().§%Y§(§§pop(),§§pop());
                  if(!(_loc1_ && this))
                  {
                     §§push(this);
                     §§push("BIRD_WHITE");
                     §§push(["normal",["BIRD_WHITE_1","BIRD_WHITE_2"]]);
                     if(_loc2_)
                     {
                        §§push(null);
                     }
                     §§pop().§%Y§(§§pop(),§§pop());
                     if(_loc2_)
                     {
                        addr180:
                        §§push(this);
                        §§push("BIRD_YELLOW");
                        §§push(["normal",["BIRD_YELLOW_1","BIRD_YELLOW_2"]]);
                        if(!_loc1_)
                        {
                           §§push(null);
                        }
                        §§pop().§%Y§(§§pop(),§§pop());
                        if(_loc2_ || _loc1_)
                        {
                        }
                        §§goto(addr259);
                     }
                     §§push(this);
                     §§push("BIRD_GREEN");
                     §§push(["normal",["BIRD_GREEN_1","BIRD_GREEN_2"]]);
                     if(!_loc1_)
                     {
                        §§push(null);
                     }
                     §§pop().§%Y§(§§pop(),§§pop());
                  }
                  §§goto(addr259);
               }
               addr259:
               §§push(this);
               §§push("BIRD_REDBIG");
               §§push(["normal",["BIRD_REDBIG_1"]]);
               if(_loc2_)
               {
                  §§push(null);
               }
               §§pop().§%Y§(§§pop(),§§pop());
               return;
            }
            §§goto(addr103);
         }
         §§goto(addr180);
      }
      
      protected function initializePigAnimations() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this);
            §§push("PIG_BASIC_SMALL");
            §§push(["normal",["PIG_BASIC_SMALL_01","PIG_BASIC_SMALL_02","PIG_BASIC_SMALL_03"]]);
            if(_loc1_)
            {
               §§push(null);
            }
            §§pop().§%Y§(§§pop(),§§pop());
            if(!_loc2_)
            {
               §§push(this);
               §§push("PIG_BASIC_MEDIUM");
               §§push(["normal",["PIG_BASIC_MEDIUM_01","PIG_BASIC_MEDIUM_02","PIG_BASIC_MEDIUM_03"]]);
               if(_loc1_ || _loc1_)
               {
                  §§push(null);
               }
               §§pop().§%Y§(§§pop(),§§pop());
               §§push(this);
               §§push("PIG_BASIC_BIG");
               §§push(["normal",["PIG_BASIC_BIG_01","PIG_BASIC_BIG_02","PIG_BASIC_BIG_03"]]);
               if(!_loc2_)
               {
                  §§push(null);
               }
               §§pop().§%Y§(§§pop(),§§pop());
               §§push(this);
               §§push("PIG_HELMET");
               §§push(["normal",["PIG_HELMET_01","PIG_HELMET_02","PIG_HELMET_03"]]);
               if(!_loc2_)
               {
                  §§push(null);
               }
               §§pop().§%Y§(§§pop(),§§pop());
               §§push(this);
               §§push("PIG_MUSTACHE");
               §§push(["normal",["PIG_MUSTACHE_01","PIG_MUSTACHE_02","PIG_MUSTACHE_03"]]);
               if(_loc1_)
               {
                  §§push(null);
               }
               §§pop().§%Y§(§§pop(),§§pop());
               if(_loc1_ || this)
               {
                  §§push(this);
                  §§push("PIG_KING");
                  §§push(["normal",["PIG_KING_01","PIG_KING_02","PIG_KING_03"]]);
                  if(!_loc2_)
                  {
                     §§push(null);
                  }
                  §§pop().§%Y§(§§pop(),§§pop());
               }
            }
         }
      }
      
      protected function §+"§(param1:String, param2:Array) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_)
         {
            §§pop().§§slot[1] = param1;
            if(_loc5_)
            {
               §§push(§§newactivation());
               if(!_loc6_)
               {
                  §§pop().§§slot[2] = param2;
                  if(!_loc6_)
                  {
                     if(this.§7g§[name])
                     {
                        if(!(_loc6_ && _loc3_))
                        {
                           throw new Error("Trying to add a duplicate animation: " + name);
                        }
                     }
                  }
                  addr67:
                  var result:Boolean = true;
               }
               §§goto(addr67);
            }
            try
            {
               this.§7g§[name] = this.§7!A§(frameNames);
            }
            catch(e:Error)
            {
               if(_loc5_ || _loc3_)
               {
                  result = false;
               }
            }
            return result;
         }
         §§goto(addr67);
      }
      
      private function §7!A§(param1:Array) : §+R§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:§%F§ = null;
         var _loc2_:§+R§ = new §+R§();
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§^S§.§9,§(_loc3_);
            if(!_loc8_)
            {
               _loc2_.addFrame(_loc4_);
            }
         }
         return _loc2_;
      }
      
      protected function §%Y§(param1:String, param2:Array) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         if(_loc9_ || this)
         {
            if(this.§7g§[param1])
            {
               if(!_loc10_)
               {
                  throw new Error("Trying to add a duplicate animation: " + param1);
                  addr39:
               }
            }
            var _loc3_:§'g§ = new §'g§();
            for each(_loc4_ in param2)
            {
               _loc5_ = _loc4_[0];
               _loc6_ = _loc4_[1];
               if(!(_loc10_ && param2))
               {
                  _loc3_.§+"§(_loc5_,this.§7!A§(_loc6_));
               }
            }
            if(_loc9_)
            {
               this.§7g§[param1] = _loc3_;
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function §,!;§(param1:String) : §+R§
      {
         return this.§7g§[param1];
      }
   }
}
