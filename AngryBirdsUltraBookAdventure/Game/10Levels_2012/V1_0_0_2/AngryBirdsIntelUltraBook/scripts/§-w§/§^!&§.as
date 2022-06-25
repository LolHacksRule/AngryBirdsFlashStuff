package §-w§
{
   import flash.utils.Dictionary;
   
   public class §^!&§
   {
       
      
      private var §;!t§:§,Q§;
      
      private var §[%§:Dictionary;
      
      public function §^!&§(param1:§,Q§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[%§ = new Dictionary();
            do
            {
               super();
               do
               {
                  this.§;!t§ = param1;
               }
               while(!_loc3_);
               
            }
            while(!_loc3_);
            
         }
      }
      
      public function initializeAnimations(param1:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:* = 0;
         if(!(_loc6_ && _loc3_))
         {
            this.§0m§(param1);
            loop0:
            while(true)
            {
               this.§1V§("PARTICLE_WOOD",["PARTICLE_WOOD_1"]);
               loop1:
               while(true)
               {
                  this.§1V§("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT"]);
                  loop2:
                  while(true)
                  {
                     this.§1V§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
                     loop3:
                     while(_loc7_)
                     {
                        this.§1V§("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]);
                        loop4:
                        while(true)
                        {
                           this.§1V§("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]);
                           loop5:
                           while(true)
                           {
                              this.§1V§("FOREGROUND_12_LAYER_1",["FOREGROUND_12_LAYER_1"]);
                              loop6:
                              while(true)
                              {
                                 this.§1V§("BACKGROUND_12_MOON_1",["BACKGROUND_12_MOON_1"]);
                                 while(true)
                                 {
                                    this.§1V§("BACKGROUND_12_VOLCANO",["BACKGROUND_12_VOLCANO"]);
                                    continue loop4;
                                    addr126:
                                    if(!(_loc7_ || param1))
                                    {
                                       continue;
                                    }
                                    if(!_loc7_)
                                    {
                                       continue loop5;
                                    }
                                    while(true)
                                    {
                                       this.§1V§("SCORE_BIRD_BLACK",["SCORE_BIRD_BLACK"]);
                                       loop20:
                                       while(_loc7_)
                                       {
                                          this.§1V§("SCORE_BIRD_WHITE",["SCORE_BIRD_WHITE"]);
                                          addr87:
                                          while(true)
                                          {
                                             if(_loc7_)
                                             {
                                                addr89:
                                                if(_loc6_ && this)
                                                {
                                                   break;
                                                }
                                                continue loop2;
                                             }
                                             continue loop20;
                                          }
                                          loop17:
                                          while(true)
                                          {
                                             if(!_loc6_)
                                             {
                                                addr144:
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   this.§1V§("SCORE_BIRD_GREEN",["SCORE_BIRD_GREEN"]);
                                                   break loop20;
                                                }
                                                while(true)
                                                {
                                                   this.§1V§("BACKGROUND_12_LAYER_3",["BACKGROUND_12_LAYER_3"]);
                                                   addr205:
                                                   while(true)
                                                   {
                                                      this.§1V§("BACKGROUND_12_LAYER_2",["BACKGROUND_12_LAYER_2"]);
                                                      break loop17;
                                                   }
                                                   §§goto(addr144);
                                                }
                                                addr212:
                                             }
                                             break;
                                             §§goto(addr89);
                                          }
                                          while(true)
                                          {
                                             this.§1V§("BACKGROUND_12_LAYER_1",["BACKGROUND_12_LAYER_1"]);
                                             addr184:
                                             addr219:
                                             loop13:
                                             while(_loc7_ || param1)
                                             {
                                                this.§1V§("BIRD_SARDINE",["BIRD_SARDINE"]);
                                                while(_loc7_)
                                                {
                                                   this.§1V§("BIRD_MIGHTY_EAGLE",["BIRD_ME_MOTION","BIRD_ME_RADIAL"]);
                                                   loop15:
                                                   while(true)
                                                   {
                                                      this.§1V§("SCORE_BIRD_RED",["SCORE_BIRD_RED"]);
                                                      while(_loc7_)
                                                      {
                                                         this.§1V§("SCORE_BIRD_BLUE",["SCORE_BIRD_BLUE"]);
                                                         §§goto(addr142);
                                                         if(_loc7_ || _loc3_)
                                                         {
                                                            continue loop15;
                                                         }
                                                      }
                                                      continue loop4;
                                                   }
                                                   if(_loc6_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   if(true)
                                                   {
                                                      loop24:
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
                                                         if(!_loc6_)
                                                         {
                                                            §§push(1);
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               _loc3_ = §§pop();
                                                               addr437:
                                                               while(true)
                                                               {
                                                                  addr413:
                                                                  while(true)
                                                                  {
                                                                     addr438:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                     }
                                                                  }
                                                               }
                                                               addr437:
                                                            }
                                                            loop25:
                                                            while(true)
                                                            {
                                                               if(§§pop() <= _loc2_.count)
                                                               {
                                                                  this.§1V§(_loc2_.name + _loc3_,[_loc2_.name + _loc3_]);
                                                                  while(true)
                                                                  {
                                                                     _loc3_++;
                                                                     if(!_loc7_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!(_loc7_ || _loc3_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc7_ || _loc2_)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           continue loop25;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr437);
                                                                     }
                                                                     §§goto(addr413);
                                                                  }
                                                               }
                                                               continue loop24;
                                                            }
                                                         }
                                                         §§goto(addr437);
                                                      }
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         this.§1V§("NUMBERS",["0","1","2","3","4","5","6","7","8","9"]);
                                                         loop30:
                                                         do
                                                         {
                                                            this.initializeBirdAnimations();
                                                            while(true)
                                                            {
                                                               this.initializePigAnimations();
                                                               while(!_loc6_)
                                                               {
                                                                  this.§1V§("SPARKLES",["PARTICLE_ICE_1","PARTICLE_ICE_3"]);
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue loop30;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         while(!(_loc7_ || _loc3_));
                                                         
                                                      }
                                                      return;
                                                   }
                                                   while(true)
                                                   {
                                                      this.§1V§("SCORE_BIRD_YELLOW",["SCORE_BIRD_YELLOW"]);
                                                      while(_loc7_ || _loc3_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         if(!_loc7_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         this.§1V§("SCORE_PIG",["SCORE_PIG"]);
                                                         if(_loc6_)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc7_)
                                                         {
                                                            §§goto(addr40);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr87);
                                                         }
                                                      }
                                                      continue loop13;
                                                   }
                                                   §§goto(addr87);
                                                }
                                                continue loop0;
                                             }
                                             while(true)
                                             {
                                                this.§1V§("BACKGROUND_12_LAYER_4",["BACKGROUND_12_LAYER_4"]);
                                                §§goto(addr212);
                                                §§goto(addr184);
                                             }
                                          }
                                          addr142:
                                          addr87:
                                       }
                                       while(_loc7_ || _loc3_)
                                       {
                                          §§goto(addr126);
                                       }
                                       §§goto(addr205);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr135);
      }
      
      private function §0m§(param1:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:String = null;
         if(!(_loc7_ && param1))
         {
            §§push(param1);
            if(!_loc7_)
            {
               if(§§pop() != null)
               {
                  addr57:
                  _loc2_ = this.static(param1);
                  addr44:
                  for each(_loc3_ in _loc2_)
                  {
                     if(!(_loc7_ && _loc3_))
                     {
                        this.§ !E§(_loc3_);
                     }
                  }
               }
               return;
            }
            §§goto(addr57);
         }
         §§goto(addr44);
      }
      
      private function § !E§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§1V§(param1,[param1 + "_1",param1 + "_2",param1 + "_3",param1 + "_4"]));
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(this.§1V§(param1,[param1 + "_1",param1 + "_2",param1 + "_3"]));
                     if(_loc2_ || _loc2_)
                     {
                        if(!§§pop())
                        {
                           if(_loc2_ || param1)
                           {
                              addr92:
                              §§push(this.§1V§(param1,[param1 + "_1"]));
                              if(!_loc3_)
                              {
                                 addr101:
                                 if(§§pop())
                                 {
                                 }
                                 §§goto(addr115);
                              }
                              if(§§pop())
                              {
                              }
                              §§goto(addr115);
                           }
                           §§goto(addr109);
                        }
                     }
                     §§goto(addr101);
                  }
               }
               addr115:
               if(!(_loc3_ && param1))
               {
                  addr109:
                  §§push(this.§1V§(param1,[param1]));
               }
               return;
            }
            §§goto(addr101);
         }
         §§goto(addr92);
      }
      
      private function static(param1:Array) : Array
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
                     addr136:
                     while(true)
                     {
                        §§push(§§pop().indexOf(§§pop()) == 0);
                        if(!(_loc7_ && param1))
                        {
                           §§push(!§§pop());
                           while(true)
                           {
                              §§push(§§pop());
                              loop6:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop16:
                                    while(true)
                                    {
                                       §§pop();
                                       loop14:
                                       while(true)
                                       {
                                          loop15:
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             loop12:
                                             while(true)
                                             {
                                                §§push("BIRD");
                                                addr113:
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(§§pop().indexOf(§§pop()) == 0);
                                                   addr116:
                                                   while(true)
                                                   {
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         break loop10;
                                                      }
                                                      continue loop16;
                                                   }
                                                   continue loop12;
                                                }
                                                §§push(!§§pop());
                                                if(!_loc7_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         addr131:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                         }
                                                         continue;
                                                         addr131:
                                                      }
                                                      else
                                                      {
                                                         addr85:
                                                      }
                                                      while(§§pop())
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            if(!(_loc6_ || _loc3_))
                                                            {
                                                               continue loop14;
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            _loc2_.push(_loc3_);
                                                         }
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                            continue loop15;
                                                         }
                                                      }
                                                      continue loop0;
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc6_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         continue loop12;
                                                      }
                                                      continue loop12;
                                                   }
                                                   continue loop6;
                                                   addr126:
                                                }
                                                §§goto(addr131);
                                             }
                                          }
                                       }
                                    }
                                    addr159:
                                 }
                                 §§goto(addr126);
                              }
                              addr68:
                              if(_loc7_ && _loc2_)
                              {
                                 continue;
                              }
                              §§goto(addr85);
                           }
                        }
                        §§goto(addr159);
                     }
                  }
               }
               if(!(_loc6_ || this))
               {
                  continue;
               }
               §§push("_");
               if(_loc6_)
               {
                  if(!(_loc7_ && this))
                  {
                     §§push(§§pop().indexOf(§§pop()) > 0);
                     if(!_loc7_)
                     {
                        if(_loc6_ || _loc2_)
                        {
                           §§goto(addr68);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr136);
               }
               §§goto(addr113);
            }
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
         if(!(_loc2_ && _loc2_))
         {
            §§push(this);
            §§push("BIRD_BLACK");
            §§push(["normal",["BIRD_BLACK_1","BIRD_BLACK_2"]]);
            if(_loc1_ || _loc1_)
            {
               §§push(null);
            }
            §§pop().§;!%§(§§pop(),§§pop());
            while(true)
            {
               §§push(this);
               §§push("BIRD_BLUE");
               §§push(["normal",["BIRD_BLUE_1","BIRD_BLUE_2"]]);
               if(_loc1_)
               {
                  §§push(null);
               }
               §§pop().§;!%§(§§pop(),§§pop());
               loop1:
               while(!(_loc2_ && _loc2_))
               {
                  §§push(this);
                  §§push("BIRD_RED");
                  §§push(["normal",["BIRD_RED_1","BIRD_RED_2"]]);
                  if(!_loc2_)
                  {
                     §§push(null);
                  }
                  §§pop().§;!%§(§§pop(),§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push("BIRD_WHITE");
                     §§push(["normal",["BIRD_WHITE_1","BIRD_WHITE_2"]]);
                     if(!(_loc2_ && this))
                     {
                        §§push(null);
                     }
                     §§pop().§;!%§(§§pop(),§§pop());
                     addr189:
                     loop3:
                     while(true)
                     {
                        §§push(this);
                        §§push("BIRD_YELLOW");
                        §§push(["normal",["BIRD_YELLOW_1","BIRD_YELLOW_2"]]);
                        if(_loc1_)
                        {
                           §§push(null);
                        }
                        §§pop().§;!%§(§§pop(),§§pop());
                        loop4:
                        do
                        {
                           if(_loc1_)
                           {
                              if(_loc1_)
                              {
                                 §§push(this);
                                 §§push("BIRD_GREEN");
                                 §§push(["normal",["BIRD_GREEN_1","BIRD_GREEN_2"]]);
                                 if(_loc1_)
                                 {
                                    §§push(null);
                                 }
                                 §§pop().§;!%§(§§pop(),§§pop());
                                 while(_loc1_)
                                 {
                                    §§push(this);
                                    §§push("BIRD_REDBIG");
                                    §§push(["normal",["BIRD_REDBIG_1"]]);
                                    if(_loc1_ || _loc1_)
                                    {
                                       §§push(null);
                                    }
                                    §§pop().§;!%§(§§pop(),§§pop());
                                    if(_loc1_)
                                    {
                                       continue loop4;
                                    }
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                        while(!(_loc1_ || _loc2_));
                        
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr189);
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
            if(_loc1_ || this)
            {
               §§push(null);
            }
            §§pop().§;!%§(§§pop(),§§pop());
            while(true)
            {
               §§push(this);
               §§push("PIG_BASIC_MEDIUM");
               §§push(["normal",["PIG_BASIC_MEDIUM_01","PIG_BASIC_MEDIUM_02","PIG_BASIC_MEDIUM_03"]]);
               if(!_loc2_)
               {
                  §§push(null);
               }
               §§pop().§;!%§(§§pop(),§§pop());
            }
            addr247:
         }
         loop1:
         while(true)
         {
            §§push(this);
            §§push("PIG_BASIC_BIG");
            §§push(["normal",["PIG_BASIC_BIG_01","PIG_BASIC_BIG_02","PIG_BASIC_BIG_03"]]);
            if(!(_loc2_ && _loc2_))
            {
               §§push(null);
            }
            §§pop().§;!%§(§§pop(),§§pop());
            while(true)
            {
               §§push(this);
               §§push("PIG_HELMET");
               §§push(["normal",["PIG_HELMET_01","PIG_HELMET_02","PIG_HELMET_03"]]);
               if(_loc1_ || _loc2_)
               {
                  §§push(null);
               }
               §§pop().§;!%§(§§pop(),§§pop());
               continue loop1;
               addr62:
               if(!(_loc1_ || _loc1_))
               {
                  continue;
               }
               if(!_loc2_)
               {
                  break loop1;
               }
               §§goto(addr247);
            }
         }
      }
      
      protected function §1V§(param1:String, param2:Array) : Boolean
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
               while(true)
               {
                  §§pop().§§slot[2] = param2;
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        if(this.§[%§[name])
                        {
                           if(_loc5_ || this)
                           {
                              if(!(_loc6_ && this))
                              {
                                 throw new Error("Trying to add a duplicate animation: " + name);
                              }
                              continue loop1;
                           }
                           while(true)
                           {
                              addr32:
                              §§pop().§§slot[3] = true;
                              if(_loc5_ || param1)
                              {
                                 if(_loc6_ && param1)
                                 {
                                    break loop4;
                                 }
                                 if(true)
                                 {
                                    try
                                    {
                                       this.§[%§[name] = this.§@S§(frameNames);
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
                                 continue loop4;
                              }
                           }
                           addr88:
                        }
                        while(true)
                        {
                           §§push(§§newactivation());
                           if(!_loc5_)
                           {
                              break;
                           }
                           continue loop0;
                           §§goto(addr88);
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
      }
      
      private function §@S§(param1:Array) : §1!;§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:§+W§ = null;
         var _loc2_:§1!;§ = new §1!;§();
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§;!t§.§6u§(_loc3_);
            if(!_loc7_)
            {
               _loc2_.addFrame(_loc4_);
            }
         }
         return _loc2_;
      }
      
      protected function §;!%§(param1:String, param2:Array) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         if(!(_loc9_ && _loc3_))
         {
            if(this.§[%§[param1])
            {
               if(_loc10_ || param2)
               {
                  throw new Error("Trying to add a duplicate animation: " + param1);
                  addr45:
               }
            }
            var _loc3_:§>!s§ = new §>!s§();
            for each(_loc4_ in param2)
            {
               _loc5_ = _loc4_[0];
               _loc6_ = _loc4_[1];
               if(_loc10_ || this)
               {
                  _loc3_.§1V§(_loc5_,this.§@S§(_loc6_));
               }
            }
            if(!(_loc9_ && param2))
            {
               this.§[%§[param1] = _loc3_;
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function getAnimation(param1:String) : §1!;§
      {
         return this.§[%§[param1];
      }
   }
}
