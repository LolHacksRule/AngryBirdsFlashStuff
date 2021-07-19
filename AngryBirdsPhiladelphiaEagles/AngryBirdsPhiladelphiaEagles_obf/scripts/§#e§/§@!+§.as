package §#e§
{
   import flash.utils.Dictionary;
   
   public class §@!+§
   {
       
      
      private var §2"§:§'?§;
      
      private var §<!6§:Dictionary;
      
      public function §@!+§(param1:§'?§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§<!6§ = new Dictionary();
            do
            {
               super();
               do
               {
                  this.§2"§ = param1;
               }
               while(_loc3_ && this);
               
            }
            while(_loc3_ && this);
            
         }
      }
      
      public function initializeAnimations(param1:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:* = 0;
         if(!(_loc7_ && param1))
         {
            this.§1v§(param1);
            this.§+Y§("PARTICLE_WOOD",["PARTICLE_WOOD_1"]);
            loop0:
            while(true)
            {
               this.§+Y§("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT"]);
               loop1:
               while(true)
               {
                  this.§+Y§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
                  addr107:
                  if(_loc7_ && _loc3_)
                  {
                     continue;
                  }
                  this.§+Y§("SCORE_BIRD_BLACK",["SCORE_BIRD_BLACK"]);
                  loop16:
                  while(!(_loc7_ && _loc2_))
                  {
                     this.§+Y§("SCORE_BIRD_WHITE",["SCORE_BIRD_WHITE"]);
                     loop17:
                     while(true)
                     {
                        if(_loc7_ && _loc3_)
                        {
                           continue loop16;
                        }
                        if(!_loc7_)
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                           continue;
                        }
                        while(true)
                        {
                           this.§+Y§("SCORE_BIRD_GREEN",["SCORE_BIRD_GREEN"]);
                           while(true)
                           {
                              if(!(_loc7_ && _loc3_))
                              {
                                 §§goto(addr107);
                              }
                              else
                              {
                                 loop6:
                                 while(true)
                                 {
                                    this.§+Y§("BACKGROUND_12_MOON_2",["BACKGROUND_12_MOON_2"]);
                                    addr196:
                                    addr217:
                                    while(!(_loc7_ && param1))
                                    {
                                       this.§+Y§("BACKGROUND_12_LAYER_4",["BACKGROUND_12_LAYER_4"]);
                                       break loop16;
                                    }
                                    addr226:
                                    while(!_loc7_)
                                    {
                                       this.§+Y§("BACKGROUND_12_VOLCANO",["BACKGROUND_12_VOLCANO"]);
                                       continue loop6;
                                       §§goto(addr196);
                                    }
                                    while(true)
                                    {
                                       this.§+Y§("BACKGROUND_12_MOON_1",["BACKGROUND_12_MOON_1"]);
                                       §§goto(addr217);
                                    }
                                 }
                              }
                              addr61:
                              this.§+Y§("SCORE_PIG",["SCORE_PIG"]);
                              if(!_loc6_)
                              {
                                 continue;
                              }
                              addr37:
                              if(!(_loc6_ || this))
                              {
                                 loop11:
                                 while(true)
                                 {
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       addr161:
                                       if(_loc7_ && _loc3_)
                                       {
                                          break;
                                       }
                                       this.§+Y§("BIRD_SARDINE",["BIRD_SARDINE"]);
                                       if(!_loc7_)
                                       {
                                          this.§+Y§("BIRD_MIGHTY_EAGLE",["BIRD_ME_MOTION","BIRD_ME_RADIAL"]);
                                          while(true)
                                          {
                                             this.§+Y§("SCORE_BIRD_RED",["SCORE_BIRD_RED"]);
                                             break loop17;
                                          }
                                          addr138:
                                       }
                                       while(true)
                                       {
                                          this.§+Y§("BACKGROUND_12_LAYER_1",["BACKGROUND_12_LAYER_1"]);
                                          continue loop11;
                                          §§goto(addr168);
                                       }
                                       addr168:
                                       addr175:
                                    }
                                    addr182:
                                    while(true)
                                    {
                                       this.§+Y§("BACKGROUND_12_LAYER_2",["BACKGROUND_12_LAYER_2"]);
                                       §§goto(addr175);
                                       continue loop11;
                                    }
                                 }
                                 continue loop0;
                                 addr154:
                              }
                              if(false)
                              {
                                 continue loop17;
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
                              addr426:
                              for each(_loc2_ in _loc5_)
                              {
                                 if(_loc6_)
                                 {
                                    §§push(1);
                                    if(!_loc7_)
                                    {
                                       _loc3_ = §§pop();
                                       if(_loc6_ || _loc3_)
                                       {
                                          addr422:
                                          addr423:
                                          if(_loc3_ > _loc2_.count)
                                          {
                                             §§goto(addr426);
                                          }
                                          this.§+Y§(_loc2_.name + _loc3_,[_loc2_.name + _loc3_]);
                                          _loc3_++;
                                          addr395:
                                          addr409:
                                          if(!(_loc7_ && _loc2_))
                                          {
                                             if(!(_loc7_ && this))
                                             {
                                                addr393:
                                                if(false)
                                                {
                                                   §§goto(addr395);
                                                }
                                                §§goto(addr422);
                                             }
                                             §§goto(addr409);
                                          }
                                       }
                                       §§goto(addr426);
                                    }
                                    §§goto(addr423);
                                 }
                                 §§goto(addr393);
                              }
                              if(!(_loc7_ && this))
                              {
                                 this.§+Y§("NUMBERS",["0","1","2","3","4","5","6","7","8","9"]);
                                 this.initializeBirdAnimations();
                                 this.§`v§();
                                 addr478:
                                 if(!(_loc7_ && param1))
                                 {
                                    this.§+Y§("SPARKLES",["PARTICLE_ICE_1","PARTICLE_ICE_3"]);
                                    if(!_loc7_)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§goto(addr478);
                                       }
                                       return;
                                       addr463:
                                    }
                                    §§goto(addr478);
                                 }
                                 addr493:
                                 §§goto(addr493);
                              }
                              §§goto(addr463);
                           }
                           continue loop1;
                        }
                     }
                     while(!_loc7_)
                     {
                        this.§+Y§("SCORE_BIRD_BLUE",["SCORE_BIRD_BLUE"]);
                        §§goto(addr121);
                     }
                     §§goto(addr196);
                  }
                  while(true)
                  {
                     this.§+Y§("BACKGROUND_12_LAYER_3",["BACKGROUND_12_LAYER_3"]);
                     §§goto(addr182);
                     §§goto(addr86);
                  }
                  addr86:
               }
            }
         }
         while(true)
         {
            this.§+Y§("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]);
            §§goto(addr264);
         }
      }
      
      private function §1v§(param1:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:String = null;
         if(!(_loc6_ && this))
         {
            §§push(param1);
            if(!(_loc6_ && _loc2_))
            {
               if(§§pop() != null)
               {
                  addr63:
                  _loc2_ = this.§5W§(param1);
                  addr60:
                  for each(_loc3_ in _loc2_)
                  {
                     if(_loc7_)
                     {
                        this.§+$§(_loc3_);
                     }
                  }
               }
               return;
            }
            §§goto(addr63);
         }
         §§goto(addr60);
      }
      
      private function §+$§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§+Y§(param1,[param1 + "_1",param1 + "_2",param1 + "_3",param1 + "_4"]));
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || param1)
                  {
                     §§push(this.§+Y§(param1,[param1 + "_1",param1 + "_2",param1 + "_3"]));
                     if(_loc2_)
                     {
                        if(!§§pop())
                        {
                           if(!_loc3_)
                           {
                              §§push(this.§+Y§(param1,[param1 + "_1"]));
                              if(_loc2_)
                              {
                                 §§goto(addr91);
                              }
                              if(§§pop())
                              {
                              }
                           }
                           §§goto(addr94);
                        }
                     }
                     addr91:
                     if(§§pop())
                     {
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr94);
               }
               addr100:
               if(_loc2_)
               {
                  addr94:
                  §§push(this.§+Y§(param1,[param1]));
               }
               return;
            }
            §§goto(addr91);
         }
         §§goto(addr94);
      }
      
      private function §5W§(param1:Array) : Array
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
                        §§push(§§pop().indexOf(§§pop()) != 0);
                        §§push(§§pop().indexOf(§§pop()) != 0);
                        loop5:
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§pop();
                              loop6:
                              while(true)
                              {
                                 addr84:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    loop8:
                                    while(!_loc6_)
                                    {
                                       if(_loc7_)
                                       {
                                          §§push("BIRD");
                                          while(!_loc6_)
                                          {
                                             §§push(§§pop().indexOf(§§pop()) != 0);
                                             addr38:
                                             §§push("_");
                                             if(_loc7_ || _loc3_)
                                             {
                                                §§push(§§pop().indexOf(§§pop()) > 0);
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc7_ || param1))
                                                      {
                                                         break;
                                                      }
                                                      if(_loc7_)
                                                      {
                                                         _loc2_.push(_loc3_);
                                                         break;
                                                      }
                                                      addr113:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!(_loc7_ || _loc2_))
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr38);
                                                      }
                                                      continue loop8;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop6;
                                                addr49:
                                             }
                                          }
                                          continue loop4;
                                       }
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc6_)
                              {
                                 continue loop5;
                              }
                              if(§§pop())
                              {
                                 §§pop();
                                 §§goto(addr113);
                              }
                              §§goto(addr49);
                           }
                           continue loop0;
                        }
                     }
                  }
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
         §§push(this);
         §§push("BIRD_BLACK");
         §§push(["normal",["BIRD_BLACK_1","BIRD_BLACK_2"]]);
         if(!(_loc1_ && _loc1_))
         {
            §§push(null);
         }
         §§pop().§1<§(§§pop(),§§pop());
         while(true)
         {
            §§push(this);
            §§push("BIRD_BLUE");
            §§push(["normal",["BIRD_BLUE_1","BIRD_BLUE_2"]]);
            if(!_loc1_)
            {
               §§push(null);
            }
            §§pop().§1<§(§§pop(),§§pop());
            §§push(this);
            §§push("BIRD_RED");
            §§push(["normal",["BIRD_RED_1","BIRD_RED_2"]]);
            if(!(_loc1_ && this))
            {
               §§push(null);
            }
            §§pop().§1<§(§§pop(),§§pop());
            while(true)
            {
               §§push(this);
               §§push("BIRD_WHITE");
               §§push(["normal",["BIRD_WHITE_1","BIRD_WHITE_2"]]);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(null);
               }
               §§pop().§1<§(§§pop(),§§pop());
               §§push(this);
               §§push("BIRD_YELLOW");
               §§push(["normal",["BIRD_YELLOW_1","BIRD_YELLOW_2"]]);
               if(!_loc1_)
               {
                  §§push(null);
               }
               §§pop().§1<§(§§pop(),§§pop());
               if(!_loc2_)
               {
                  break;
               }
               §§push(this);
               §§push("BIRD_GREEN");
               §§push(["normal",["BIRD_GREEN_1","BIRD_GREEN_2"]]);
               if(_loc2_)
               {
                  §§push(null);
               }
               §§pop().§1<§(§§pop(),§§pop());
               while(!(_loc1_ && this))
               {
                  §§push(this);
                  §§push("BIRD_REDBIG");
                  §§push(["normal",["BIRD_REDBIG_1"]]);
                  if(_loc2_)
                  {
                     §§push(null);
                  }
                  §§pop().§1<§(§§pop(),§§pop());
                  if(!(_loc1_ && _loc2_))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      protected function §`v§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this);
         §§push("PIG_BASIC_SMALL");
         §§push(["normal",["PIG_BASIC_SMALL_01","PIG_BASIC_SMALL_02","PIG_BASIC_SMALL_03"]]);
         if(!(_loc1_ && _loc1_))
         {
            §§push(null);
         }
         §§pop().§1<§(§§pop(),§§pop());
         §§push(this);
         §§push("PIG_BASIC_MEDIUM");
         §§push(["normal",["PIG_BASIC_MEDIUM_01","PIG_BASIC_MEDIUM_02","PIG_BASIC_MEDIUM_03"]]);
         if(_loc2_ || _loc2_)
         {
            §§push(null);
         }
         §§pop().§1<§(§§pop(),§§pop());
         loop0:
         do
         {
            §§push(this);
            §§push("PIG_BASIC_BIG");
            §§push(["normal",["PIG_BASIC_BIG_01","PIG_BASIC_BIG_02","PIG_BASIC_BIG_03"]]);
            if(_loc2_ || this)
            {
               §§push(null);
            }
            §§pop().§1<§(§§pop(),§§pop());
            while(true)
            {
               §§push(this);
               §§push("PIG_HELMET");
               §§push(["normal",["PIG_HELMET_01","PIG_HELMET_02","PIG_HELMET_03"]]);
               if(!_loc1_)
               {
                  §§push(null);
               }
               §§pop().§1<§(§§pop(),§§pop());
               while(_loc2_)
               {
                  §§push(this);
                  §§push("PIG_MUSTACHE");
                  §§push(["normal",["PIG_MUSTACHE_01","PIG_MUSTACHE_02","PIG_MUSTACHE_03"]]);
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(null);
                  }
                  §§pop().§1<§(§§pop(),§§pop());
                  if(_loc2_ || _loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(§§push(this), §§push("PIG_KING"), §§push(["normal",["PIG_KING_01","PIG_KING_02","PIG_KING_03"]]), if(_loc2_)
         {
            §§push(null);
         }, §§pop().§1<§(§§pop(),§§pop()), !_loc2_);
         
      }
      
      protected function §+Y§(param1:String, param2:Array) : Boolean
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
               for(; !_loc6_; while(true)
               {
                  §§push(§§newactivation());
                  if(!(_loc5_ || this))
                  {
                     break;
                  }
                  §§pop().§§slot[3] = true;
                  if(!_loc6_)
                  {
                     if(true)
                     {
                        try
                        {
                           this.§<!6§[name] = this.§?Y§(frameNames);
                        }
                        catch(e:Error)
                        {
                           if(!_loc6_)
                           {
                              var result:Boolean = false;
                           }
                        }
                        return result;
                     }
                     §§goto(addr36);
                  }
                  §§goto(addr64);
               })
               {
                  §§pop().§§slot[2] = param2;
                  loop3:
                  while(true)
                  {
                     addr36:
                     while(true)
                     {
                        if(this.§<!6§[name])
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                     if(!_loc6_)
                     {
                        throw new Error("Trying to add a duplicate animation: " + name);
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
         }
      }
      
      private function §?Y§(param1:Array) : §4^§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:§`!9§ = null;
         var _loc2_:§4^§ = new §4^§();
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§2"§.§&! §(_loc3_);
            if(_loc7_)
            {
               _loc2_.addFrame(_loc4_);
            }
         }
         return _loc2_;
      }
      
      protected function §1<§(param1:String, param2:Array) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         if(_loc9_ || param2)
         {
            if(this.§<!6§[param1])
            {
               if(!(_loc10_ && _loc3_))
               {
                  throw new Error("Trying to add a duplicate animation: " + param1);
               }
            }
         }
         var _loc3_:§8o§ = new §8o§();
         for each(_loc4_ in param2)
         {
            _loc5_ = _loc4_[0];
            _loc6_ = _loc4_[1];
            if(!_loc10_)
            {
               _loc3_.§+Y§(_loc5_,this.§?Y§(_loc6_));
            }
         }
         if(!_loc10_)
         {
            this.§<!6§[param1] = _loc3_;
         }
      }
      
      public function getAnimation(param1:String) : §4^§
      {
         return this.§<!6§[param1];
      }
   }
}
