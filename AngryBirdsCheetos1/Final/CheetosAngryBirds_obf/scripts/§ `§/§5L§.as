package § `§
{
   import flash.utils.Dictionary;
   
   public class §5L§
   {
       
      
      private var §8!M§:§2w§;
      
      private var §2!L§:Dictionary;
      
      public function §5L§(param1:§2w§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§2!L§ = new Dictionary();
         }
         while(true)
         {
            super();
            while(!(_loc3_ && param1))
            {
               this.§8!M§ = param1;
               if(!_loc3_)
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
         if(_loc6_)
         {
            this.§-;§(param1);
            loop0:
            while(true)
            {
               this.§3j§("PARTICLE_WOOD",["PARTICLE_WOOD_1"]);
               while(true)
               {
                  this.§3j§("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT"]);
                  loop2:
                  while(true)
                  {
                     this.§3j§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
                     loop3:
                     while(true)
                     {
                        this.§3j§("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]);
                        loop4:
                        while(true)
                        {
                           this.§3j§("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]);
                           loop5:
                           while(true)
                           {
                              this.§3j§("FOREGROUND_12_LAYER_1",["FOREGROUND_12_LAYER_1"]);
                              loop6:
                              while(true)
                              {
                                 this.§3j§("BACKGROUND_12_MOON_1",["BACKGROUND_12_MOON_1"]);
                                 while(true)
                                 {
                                    this.§3j§("BACKGROUND_12_VOLCANO",["BACKGROUND_12_VOLCANO"]);
                                    continue loop3;
                                    addr188:
                                    while(_loc6_ || this)
                                    {
                                       continue loop2;
                                       addr129:
                                       if(!(_loc6_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       this.§3j§("SCORE_BIRD_GREEN",["SCORE_BIRD_GREEN"]);
                                       loop18:
                                       while(true)
                                       {
                                          if(!(_loc7_ && param1))
                                          {
                                             if(_loc7_)
                                             {
                                                break;
                                             }
                                             this.§3j§("SCORE_BIRD_BLACK",["SCORE_BIRD_BLACK"]);
                                             continue loop5;
                                          }
                                          addr181:
                                          while(_loc6_ || param1)
                                          {
                                             §§goto(addr129);
                                             continue loop18;
                                          }
                                          loop12:
                                          while(true)
                                          {
                                             this.§3j§("BACKGROUND_12_LAYER_1",["BACKGROUND_12_LAYER_1"]);
                                             addr174:
                                             loop13:
                                             while(true)
                                             {
                                                this.§3j§("BIRD_SARDINE",["BIRD_SARDINE"]);
                                                addr167:
                                                while(true)
                                                {
                                                   this.§3j§("BIRD_MIGHTY_EAGLE",["BIRD_ME_MOTION","BIRD_ME_RADIAL"]);
                                                   continue loop0;
                                                }
                                                addr69:
                                                if(!(_loc6_ || _loc2_))
                                                {
                                                   continue;
                                                }
                                                this.§3j§("SCORE_PIG",["SCORE_PIG"]);
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   addr37:
                                                   if(_loc7_ && _loc3_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(_loc7_)
                                                   {
                                                      continue loop18;
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      addr48:
                                                      if(!(_loc6_ || _loc2_))
                                                      {
                                                         continue loop4;
                                                      }
                                                      if(false)
                                                      {
                                                         addr143:
                                                         loop21:
                                                         while(true)
                                                         {
                                                            this.§3j§("SCORE_BIRD_YELLOW",["SCORE_BIRD_YELLOW"]);
                                                            addr63:
                                                            while(true)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  while(_loc6_)
                                                                  {
                                                                     continue loop21;
                                                                  }
                                                                  continue loop3;
                                                                  addr83:
                                                               }
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               if(!_loc7_)
                                                               {
                                                                  §§goto(addr69);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr167);
                                                               }
                                                            }
                                                            continue loop13;
                                                         }
                                                         while(_loc6_)
                                                         {
                                                            this.§3j§("SCORE_BIRD_BLUE",["SCORE_BIRD_BLUE"]);
                                                            continue loop12;
                                                         }
                                                         continue loop6;
                                                         addr143:
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
                                                      addr451:
                                                      for each(_loc2_ in _loc5_)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            §§push(1);
                                                            if(_loc6_ || param1)
                                                            {
                                                               _loc3_ = §§pop();
                                                               addr447:
                                                               §§push(_loc3_);
                                                               addr422:
                                                               addr446:
                                                            }
                                                            if(§§pop() > _loc2_.count)
                                                            {
                                                               §§goto(addr451);
                                                            }
                                                            this.§3j§(_loc2_.name + _loc3_,[_loc2_.name + _loc3_]);
                                                            _loc3_++;
                                                            addr436:
                                                            if(_loc6_ || this)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr422);
                                                                     }
                                                                     §§goto(addr447);
                                                                  }
                                                                  §§goto(addr446);
                                                               }
                                                               §§goto(addr436);
                                                            }
                                                            §§goto(addr451);
                                                         }
                                                         §§goto(addr447);
                                                      }
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         this.§3j§("NUMBERS",["0","1","2","3","4","5","6","7","8","9"]);
                                                         this.initializeBirdAnimations();
                                                         this.§"K§();
                                                         addr528:
                                                         addr503:
                                                      }
                                                      this.§3j§("SPARKLES",["PARTICLE_ICE_1","PARTICLE_ICE_3"]);
                                                      if(!(_loc7_ && _loc2_))
                                                      {
                                                         if(_loc6_ || param1)
                                                         {
                                                            if(!(_loc6_ || _loc2_))
                                                            {
                                                               §§goto(addr528);
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr503);
                                                      }
                                                      addr499:
                                                      §§goto(addr499);
                                                   }
                                                   §§goto(addr143);
                                                }
                                                §§goto(addr63);
                                             }
                                          }
                                          addr122:
                                       }
                                       while(true)
                                       {
                                          this.§3j§("BACKGROUND_12_LAYER_4",["BACKGROUND_12_LAYER_4"]);
                                          continue loop4;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc6_ || param1))
                  {
                     continue;
                  }
                  this.§3j§("BACKGROUND_12_MOON_2",["BACKGROUND_12_MOON_2"]);
                  §§goto(addr223);
               }
            }
         }
         §§goto(addr174);
      }
      
      private function §-;§(param1:Array) : void
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
                  addr43:
                  _loc2_ = this.§<S§(param1);
                  addr40:
                  for each(_loc3_ in _loc2_)
                  {
                     if(!_loc6_)
                     {
                        this.§9!9§(_loc3_);
                     }
                  }
               }
               return;
            }
            §§goto(addr43);
         }
         §§goto(addr40);
      }
      
      private function §9!9§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§3j§(param1,[param1 + "_1",param1 + "_2",param1 + "_3",param1 + "_4"]));
            if(_loc3_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     §§push(this.§3j§(param1,[param1 + "_1",param1 + "_2",param1 + "_3"]));
                     if(!(_loc2_ && this))
                     {
                        addr75:
                        if(!§§pop())
                        {
                           if(!(_loc2_ && param1))
                           {
                              addr83:
                              §§push(this.§3j§(param1,[param1 + "_1"]));
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(§§pop())
                                 {
                                 }
                                 §§goto(addr121);
                              }
                           }
                        }
                        §§goto(addr121);
                     }
                     if(§§pop())
                     {
                     }
                  }
                  §§goto(addr83);
               }
               addr121:
               if(!(_loc2_ && _loc3_))
               {
                  §§push(this.§3j§(param1,[param1]));
               }
               return;
            }
            §§goto(addr75);
         }
         §§goto(addr83);
      }
      
      private function §<S§(param1:Array) : Array
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
            while(true)
            {
               _loc3_ = §§pop();
               while(true)
               {
                  §§push(_loc3_);
                  while(true)
                  {
                     §§push(§§pop().indexOf("PIG") == 0);
                     while(true)
                     {
                        §§push(!§§pop());
                        if(!_loc7_)
                        {
                           §§push(§§pop());
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 continue;
                              }
                           }
                        }
                        §§goto(addr118);
                     }
                  }
               }
            }
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
         if(!_loc2_)
         {
            §§push(this);
            §§push("BIRD_BLACK");
            §§push(["normal",["BIRD_BLACK_1","BIRD_BLACK_2"]]);
            if(!(_loc2_ && _loc1_))
            {
               §§push(null);
            }
            §§pop().§5U§(§§pop(),§§pop());
            loop0:
            while(true)
            {
               §§push(this);
               §§push("BIRD_BLUE");
               §§push(["normal",["BIRD_BLUE_1","BIRD_BLUE_2"]]);
               if(_loc1_)
               {
                  §§push(null);
               }
               §§pop().§5U§(§§pop(),§§pop());
               while(true)
               {
                  §§push(this);
                  §§push("BIRD_RED");
                  §§push(["normal",["BIRD_RED_1","BIRD_RED_2"]]);
                  if(_loc1_)
                  {
                     §§push(null);
                  }
                  §§pop().§5U§(§§pop(),§§pop());
                  addr211:
                  while(!_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr99);
      }
      
      protected function §"K§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this);
            §§push("PIG_BASIC_SMALL");
            §§push(["normal",["PIG_BASIC_SMALL_01","PIG_BASIC_SMALL_02","PIG_BASIC_SMALL_03"]]);
            if(!_loc2_)
            {
               §§push(null);
            }
            §§pop().§5U§(§§pop(),§§pop());
            while(true)
            {
               §§push(this);
               §§push("PIG_BASIC_MEDIUM");
               §§push(["normal",["PIG_BASIC_MEDIUM_01","PIG_BASIC_MEDIUM_02","PIG_BASIC_MEDIUM_03"]]);
               if(_loc1_)
               {
                  §§push(null);
               }
               §§pop().§5U§(§§pop(),§§pop());
               loop1:
               while(!(_loc2_ && _loc1_))
               {
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push("PIG_BASIC_BIG");
                     §§push(["normal",["PIG_BASIC_BIG_01","PIG_BASIC_BIG_02","PIG_BASIC_BIG_03"]]);
                     if(!_loc2_)
                     {
                        §§push(null);
                     }
                     §§pop().§5U§(§§pop(),§§pop());
                     while(true)
                     {
                        §§push(this);
                        §§push("PIG_HELMET");
                        §§push(["normal",["PIG_HELMET_01","PIG_HELMET_02","PIG_HELMET_03"]]);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push(null);
                        }
                        §§pop().§5U§(§§pop(),§§pop());
                        while(_loc1_)
                        {
                           §§push(this);
                           §§push("PIG_MUSTACHE");
                           §§push(["normal",["PIG_MUSTACHE_01","PIG_MUSTACHE_02","PIG_MUSTACHE_03"]]);
                           if(_loc1_)
                           {
                              §§push(null);
                           }
                           §§pop().§5U§(§§pop(),§§pop());
                           do
                           {
                              §§push(this);
                              §§push("PIG_KING");
                              §§push(["normal",["PIG_KING_01","PIG_KING_02","PIG_KING_03"]]);
                              if(!(_loc2_ && this))
                              {
                                 §§push(null);
                              }
                              §§pop().§5U§(§§pop(),§§pop());
                           }
                           while(!(_loc1_ || _loc2_));
                           
                           if(_loc1_ || _loc2_)
                           {
                              if(_loc1_)
                              {
                                 break loop2;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr197);
      }
      
      protected function §3j§(param1:String, param2:Array) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
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
               while(!_loc5_)
               {
                  §§pop().§§slot[2] = param2;
                  do
                  {
                     while(!this.§2!L§[name])
                     {
                        while(true)
                        {
                           §§push(§§newactivation());
                           if(_loc5_ && this)
                           {
                              break;
                           }
                           §§pop().§§slot[3] = true;
                           if(!_loc6_)
                           {
                              continue;
                           }
                           if(!(_loc5_ && param2))
                           {
                              if(!_loc6_)
                              {
                                 continue loop1;
                              }
                              if(true)
                              {
                                 try
                                 {
                                    this.§2!L§[name] = this.§>M§(frameNames);
                                 }
                                 catch(e:Error)
                                 {
                                    if(_loc6_)
                                    {
                                       var result:Boolean = false;
                                    }
                                 }
                                 return result;
                              }
                              §§goto(addr46);
                           }
                           §§goto(addr53);
                        }
                        continue loop2;
                     }
                  }
                  while(!(_loc6_ || param1));
                  
                  throw new Error("Trying to add a duplicate animation: " + name);
               }
               continue loop0;
            }
         }
      }
      
      private function §>M§(param1:Array) : §^1§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:§6!=§ = null;
         var _loc2_:§^1§ = new §^1§();
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§8!M§.§4!,§(_loc3_);
            if(!(_loc7_ && _loc3_))
            {
               _loc2_.addFrame(_loc4_);
            }
         }
         return _loc2_;
      }
      
      protected function §5U§(param1:String, param2:Array) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         if(!(_loc10_ && param2))
         {
            if(this.§2!L§[param1])
            {
               if(_loc9_ || _loc3_)
               {
                  §§goto(addr44);
               }
            }
            var _loc3_:§`n§ = new §`n§();
            for each(_loc4_ in param2)
            {
               _loc5_ = _loc4_[0];
               _loc6_ = _loc4_[1];
               if(_loc9_ || _loc3_)
               {
                  _loc3_.§3j§(_loc5_,this.§>M§(_loc6_));
               }
            }
            if(_loc9_ || this)
            {
               this.§2!L§[param1] = _loc3_;
            }
            return;
         }
         addr44:
         throw new Error("Trying to add a duplicate animation: " + param1);
      }
      
      public function §>f§(param1:String) : §^1§
      {
         return this.§2!L§[param1];
      }
   }
}
