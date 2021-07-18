package §1n§
{
   import flash.utils.Dictionary;
   
   public class §,!0§
   {
       
      
      private var §1y§:§5#§;
      
      private var §6G§:Dictionary;
      
      public function §,!0§(param1:§5#§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§6G§ = new Dictionary();
            while(true)
            {
               super();
               §§goto(addr50);
            }
         }
         addr50:
         while(true)
         {
            this.§1y§ = param1;
            if(!(_loc3_ && _loc3_))
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
         this.§ a§(param1);
         this.§#!%§("PARTICLE_WOOD",["PARTICLE_WOOD_1"]);
         this.§#!%§("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT"]);
         loop0:
         while(true)
         {
            this.§#!%§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
            loop1:
            while(true)
            {
               this.§#!%§("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]);
               while(true)
               {
                  this.§#!%§("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]);
                  this.§#!%§("FOREGROUND_12_LAYER_1",["FOREGROUND_12_LAYER_1"]);
                  while(_loc7_)
                  {
                     this.§#!%§("BACKGROUND_12_MOON_1",["BACKGROUND_12_MOON_1"]);
                     loop4:
                     while(true)
                     {
                        this.§#!%§("BACKGROUND_12_VOLCANO",["BACKGROUND_12_VOLCANO"]);
                        loop5:
                        while(true)
                        {
                           this.§#!%§("BACKGROUND_12_MOON_2",["BACKGROUND_12_MOON_2"]);
                           while(true)
                           {
                              this.§#!%§("BACKGROUND_12_LAYER_4",["BACKGROUND_12_LAYER_4"]);
                              addr181:
                              while(_loc7_)
                              {
                                 this.§#!%§("BACKGROUND_12_LAYER_3",["BACKGROUND_12_LAYER_3"]);
                                 while(true)
                                 {
                                    this.§#!%§("BACKGROUND_12_LAYER_2",["BACKGROUND_12_LAYER_2"]);
                                    while(_loc7_)
                                    {
                                       this.§#!%§("BACKGROUND_12_LAYER_1",["BACKGROUND_12_LAYER_1"]);
                                       continue loop5;
                                       if(_loc7_ || _loc2_)
                                       {
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                              continue loop4;
                              addr46:
                              this.§#!%§("SCORE_PIG",["SCORE_PIG"]);
                              if(_loc6_)
                              {
                                 continue;
                              }
                              if(false)
                              {
                                 while(true)
                                 {
                                    this.§#!%§("SCORE_BIRD_YELLOW",["SCORE_BIRD_YELLOW"]);
                                    if(_loc7_ || this)
                                    {
                                       continue;
                                    }
                                    loop14:
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§goto(addr55);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§#!%§("SCORE_BIRD_WHITE",["SCORE_BIRD_WHITE"]);
                                             continue loop14;
                                          }
                                          addr76:
                                       }
                                    }
                                    continue loop1;
                                 }
                                 continue;
                                 addr33:
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
                              addr401:
                              for each(_loc2_ in _loc5_)
                              {
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§push(1);
                                    if(_loc7_)
                                    {
                                       _loc3_ = §§pop();
                                       addr397:
                                       §§push(_loc3_);
                                       addr375:
                                       addr396:
                                    }
                                    if(§§pop() > _loc2_.count)
                                    {
                                       §§goto(addr401);
                                    }
                                    this.§#!%§(_loc2_.name + _loc3_,[_loc2_.name + _loc3_]);
                                    addr389:
                                    if(!_loc6_)
                                    {
                                       _loc3_++;
                                       if(_loc7_ || this)
                                       {
                                          if(_loc7_)
                                          {
                                             addr373:
                                             if(false)
                                             {
                                                §§goto(addr375);
                                             }
                                             §§goto(addr397);
                                          }
                                          §§goto(addr389);
                                       }
                                       §§goto(addr401);
                                    }
                                    §§goto(addr396);
                                 }
                                 §§goto(addr373);
                              }
                              if(!_loc6_)
                              {
                                 this.§#!%§("NUMBERS",["0","1","2","3","4","5","6","7","8","9"]);
                                 this.initializeBirdAnimations();
                                 this.§,c§();
                                 addr468:
                                 if(_loc7_ || param1)
                                 {
                                    this.§#!%§("SPARKLES",["PARTICLE_ICE_1","PARTICLE_ICE_3"]);
                                    if(!_loc6_)
                                    {
                                       if(_loc6_ && _loc3_)
                                       {
                                          §§goto(addr468);
                                       }
                                       return;
                                       addr438:
                                    }
                                    §§goto(addr468);
                                 }
                                 addr453:
                                 §§goto(addr453);
                              }
                              §§goto(addr438);
                           }
                        }
                     }
                     if(_loc7_ || param1)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      private function § a§(param1:Array) : void
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
                  addr52:
                  _loc2_ = this.§-E§(param1);
                  addr49:
                  for each(_loc3_ in _loc2_)
                  {
                     if(!_loc7_)
                     {
                        this.§-!-§(_loc3_);
                     }
                  }
               }
               return;
            }
            §§goto(addr52);
         }
         §§goto(addr49);
      }
      
      private function §-!-§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§#!%§(param1,[param1 + "_1",param1 + "_2",param1 + "_3",param1 + "_4"]));
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || _loc3_)
                  {
                     addr54:
                     §§push(this.§#!%§(param1,[param1 + "_1",param1 + "_2",param1 + "_3"]));
                     if(!_loc3_)
                     {
                        addr79:
                        if(!§§pop())
                        {
                           if(!_loc3_)
                           {
                              addr82:
                              §§push(this.§#!%§(param1,[param1 + "_1"]));
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                    }
                                 }
                                 §§goto(addr105);
                              }
                              addr104:
                              if(§§pop())
                              {
                              }
                              §§goto(addr105);
                           }
                           §§push(this.§#!%§(param1,[param1]));
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr82);
               }
               addr105:
               return;
            }
            §§goto(addr79);
         }
         §§goto(addr54);
      }
      
      private function §-E§(param1:Array) : Array
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
                        §§push(§§pop().indexOf(§§pop()) != 0);
                        loop5:
                        while(true)
                        {
                           §§push(§§pop());
                           loop6:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 while(true)
                                 {
                                    addr95:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       addr97:
                                       while(true)
                                       {
                                          §§push("BIRD");
                                          addr98:
                                          while(true)
                                          {
                                             §§push(§§pop().indexOf(§§pop()) != 0);
                                          }
                                       }
                                    }
                                 }
                                 addr143:
                              }
                              loop11:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc7_ || this))
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          continue loop5;
                                       }
                                       §§pop();
                                       while(true)
                                       {
                                          if(_loc7_ || _loc3_)
                                          {
                                             §§push(_loc3_);
                                             if(!(_loc7_ || _loc2_))
                                             {
                                                break;
                                             }
                                             if(!_loc6_)
                                             {
                                                continue loop1;
                                             }
                                             continue loop3;
                                          }
                                          continue loop2;
                                       }
                                       addr115:
                                    }
                                    else
                                    {
                                       while(§§pop())
                                       {
                                          if(!(_loc6_ && this))
                                          {
                                             if(_loc7_)
                                             {
                                                if(_loc7_)
                                                {
                                                   _loc2_.push(_loc3_);
                                                   break;
                                                }
                                                §§goto(addr143);
                                             }
                                             else
                                             {
                                                §§goto(addr115);
                                             }
                                          }
                                          break;
                                       }
                                       break loop11;
                                       if(true)
                                       {
                                          break loop11;
                                       }
                                       §§goto(addr95);
                                       addr77:
                                    }
                                    §§goto(addr97);
                                    addr57:
                                    §§push(§§pop().indexOf(§§pop()) > 0);
                                    if(_loc6_ && param1)
                                    {
                                       continue;
                                    }
                                    §§goto(addr77);
                                 }
                                 continue loop6;
                              }
                              continue loop0;
                           }
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this);
         §§push("BIRD_BLACK");
         §§push(["normal",["BIRD_BLACK_1","BIRD_BLACK_2"]]);
         if(_loc1_ || _loc1_)
         {
            §§push(null);
         }
         §§pop().§&Q§(§§pop(),§§pop());
         loop0:
         while(true)
         {
            §§push(this);
            §§push("BIRD_BLUE");
            §§push(["normal",["BIRD_BLUE_1","BIRD_BLUE_2"]]);
            if(_loc1_ || _loc1_)
            {
               §§push(null);
            }
            §§pop().§&Q§(§§pop(),§§pop());
            loop1:
            while(true)
            {
               §§push(this);
               §§push("BIRD_RED");
               §§push(["normal",["BIRD_RED_1","BIRD_RED_2"]]);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(null);
               }
               §§pop().§&Q§(§§pop(),§§pop());
               while(true)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      private function §,c§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this);
            §§push("PIG_BASIC_SMALL");
            §§push(["normal",["PIG_BASIC_SMALL_01","PIG_BASIC_SMALL_02","PIG_BASIC_SMALL_03"]]);
            if(_loc2_)
            {
               §§push(null);
            }
            §§pop().§&Q§(§§pop(),§§pop());
            while(true)
            {
               §§push(this);
               §§push("PIG_BASIC_MEDIUM");
               §§push(["normal",["PIG_BASIC_MEDIUM_01","PIG_BASIC_MEDIUM_02","PIG_BASIC_MEDIUM_03"]]);
               if(_loc2_ || _loc2_)
               {
                  §§push(null);
               }
               §§pop().§&Q§(§§pop(),§§pop());
               §§goto(addr202);
            }
         }
         addr202:
         while(true)
         {
            §§push(this);
            §§push("PIG_BASIC_BIG");
            §§push(["normal",["PIG_BASIC_BIG_01","PIG_BASIC_BIG_02","PIG_BASIC_BIG_03"]]);
            if(_loc2_ || _loc2_)
            {
               §§push(null);
            }
            §§pop().§&Q§(§§pop(),§§pop());
            if(_loc2_ || _loc2_)
            {
               break;
            }
            continue loop0;
         }
         §§push(this);
         §§push("PIG_HELMET");
         §§push(["normal",["PIG_HELMET_01","PIG_HELMET_02","PIG_HELMET_03"]]);
         if(!_loc1_)
         {
            §§push(null);
         }
         §§pop().§&Q§(§§pop(),§§pop());
         §§push(this);
         §§push("PIG_MUSTACHE");
         §§push(["normal",["PIG_MUSTACHE_01","PIG_MUSTACHE_02","PIG_MUSTACHE_03"]]);
         if(_loc2_ || _loc2_)
         {
            §§push(null);
         }
         §§pop().§&Q§(§§pop(),§§pop());
         do
         {
            §§push(this);
            §§push("PIG_KING");
            §§push(["normal",["PIG_KING_01","PIG_KING_02","PIG_KING_03"]]);
            if(_loc2_)
            {
               §§push(null);
            }
            §§pop().§&Q§(§§pop(),§§pop());
         }
         while(_loc1_ && _loc2_);
         
      }
      
      protected function §#!%§(param1:String, param2:Array) : Boolean
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
                  if(_loc6_ && _loc3_)
                  {
                     break;
                  }
                  §§pop().§§slot[3] = true;
                  if(_loc5_ || this)
                  {
                     if(_loc5_ || _loc3_)
                     {
                        if(true)
                        {
                           try
                           {
                              this.§6G§[name] = this.§2-§(frameNames);
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
                        §§goto(addr48);
                     }
                     §§goto(addr65);
                  }
                  else
                  {
                     if(!_loc6_)
                     {
                        continue;
                     }
                     §§goto(addr83);
                  }
               })
               {
                  §§pop().§§slot[2] = param2;
                  while(true)
                  {
                     addr48:
                     addr65:
                     while(!this.§6G§[name])
                     {
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
      
      private function §2-§(param1:Array) : §?!C§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:§1D§ = null;
         var _loc2_:§?!C§ = new §?!C§();
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§1y§.§,Y§(_loc3_);
            if(_loc7_ || _loc3_)
            {
               _loc2_.addFrame(_loc4_);
            }
         }
         return _loc2_;
      }
      
      protected function §&Q§(param1:String, param2:Array) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         if(!(_loc9_ && param1))
         {
            if(this.§6G§[param1])
            {
               if(!(_loc9_ && this))
               {
                  throw new Error("Trying to add a duplicate animation: " + param1);
               }
            }
         }
         var _loc3_:§<!=§ = new §<!=§();
         for each(_loc4_ in param2)
         {
            _loc5_ = _loc4_[0];
            _loc6_ = _loc4_[1];
            if(_loc10_)
            {
               _loc3_.§#!%§(_loc5_,this.§2-§(_loc6_));
            }
         }
         if(!(_loc9_ && param1))
         {
            this.§6G§[param1] = _loc3_;
         }
      }
      
      public function §9$§(param1:String) : §?!C§
      {
         return this.§6G§[param1];
      }
   }
}
