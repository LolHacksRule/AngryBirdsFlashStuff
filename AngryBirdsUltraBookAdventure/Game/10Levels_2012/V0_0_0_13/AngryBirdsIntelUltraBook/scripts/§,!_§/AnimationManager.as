package §,!_§
{
   import flash.utils.Dictionary;
   
   public class AnimationManager
   {
       
      
      private var §6! §:TextureManager;
      
      private var §3!I§:Dictionary;
      
      public function AnimationManager(param1:TextureManager)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§3!I§ = new Dictionary();
            while(true)
            {
               super();
               loop1:
               while(!(_loc3_ && _loc2_))
               {
                  while(true)
                  {
                     this.§6! § = param1;
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr55);
      }
      
      public function initializeAnimations(param1:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         if(!(_loc7_ && param1))
         {
            this.§ !&§(param1);
            while(true)
            {
               §§push(this.§+b§("PARTICLE_WOOD",["PARTICLE_WOOD_1"]));
               while(true)
               {
                  §§pop();
                  while(true)
                  {
                     §§push(this.§+b§("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT"]));
                     while(true)
                     {
                        §§pop();
                        while(true)
                        {
                           §§push(this.§+b§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]));
                           while(true)
                           {
                              §§pop();
                              while(true)
                              {
                                 §§push(this.§+b§("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]));
                                 loop7:
                                 while(true)
                                 {
                                    §§pop();
                                    addr390:
                                    while(true)
                                    {
                                       §§push(this.§+b§("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]));
                                       addr376:
                                       while(true)
                                       {
                                          §§pop();
                                          addr377:
                                          while(true)
                                          {
                                             §§push(this.§+b§("FOREGROUND_12_LAYER_1",["FOREGROUND_12_LAYER_1"]));
                                             continue loop7;
                                          }
                                       }
                                    }
                                 }
                              }
                              if(!(_loc6_ || this))
                              {
                                 continue;
                              }
                              §§pop();
                              §§goto(addr239);
                           }
                        }
                        while(_loc6_ || param1)
                        {
                           §§pop();
                           §§goto(addr146);
                           §§goto(addr119);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      private function § !&§(param1:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:String = null;
         if(!_loc6_)
         {
            §§push(param1);
            if(_loc7_ || _loc3_)
            {
               if(§§pop() != null)
               {
                  _loc2_ = this.§,+§(param1);
                  addr48:
                  addr45:
                  for each(_loc3_ in _loc2_)
                  {
                     if(!(_loc6_ && param1))
                     {
                        this.§ $§(_loc3_);
                     }
                  }
               }
               return;
            }
            §§goto(addr48);
         }
         §§goto(addr45);
      }
      
      private function § $§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§+b§(param1,[param1 + "_1",param1 + "_2",param1 + "_3",param1 + "_4"]));
            if(!_loc3_)
            {
               §§push(!§§pop());
               if(!(_loc3_ && param1))
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr67:
                        §§push(this.§+b§(param1,[param1 + "_1",param1 + "_2",param1 + "_3"]));
                        if(!_loc3_)
                        {
                           addr82:
                           §§push(!§§pop());
                           if(!_loc3_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    §§push(this.§+b§(param1,[param1 + "_1"]));
                                    if(!_loc3_)
                                    {
                                       addr107:
                                       §§push(!§§pop());
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(!§§pop())
                                          {
                                          }
                                          §§goto(addr132);
                                       }
                                       §§goto(addr130);
                                    }
                                    if(!§§pop())
                                    {
                                    }
                                    §§goto(addr132);
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr132);
                           }
                        }
                        §§goto(addr130);
                     }
                  }
                  addr132:
                  if(_loc2_ || this)
                  {
                     addr123:
                     §§push(this.§+b§(param1,[param1]));
                     if(_loc2_)
                     {
                        addr130:
                        §§push(!§§pop());
                     }
                  }
                  return;
               }
               §§goto(addr107);
            }
            §§goto(addr82);
         }
         §§goto(addr67);
      }
      
      private function §,+§(param1:Array) : Array
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
                     addr152:
                     while(true)
                     {
                        §§push(§§pop().indexOf(§§pop()) == 0);
                        if(!_loc6_)
                        {
                           §§push(!§§pop());
                        }
                        addr158:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           addr159:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc7_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              loop7:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                    }
                                    addr164:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       addr135:
                                       loop13:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc7_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(_loc6_ && _loc3_)
                                          {
                                             break;
                                          }
                                          if(!§§pop())
                                          {
                                             while(§§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                   _loc2_.push(_loc3_);
                                                }
                                                if(!_loc6_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      while(_loc7_ || this)
                                                      {
                                                      }
                                                      continue loop2;
                                                      addr165:
                                                   }
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      continue loop1;
                                                   }
                                                }
                                                continue loop13;
                                             }
                                             continue loop0;
                                             addr65:
                                          }
                                          while(true)
                                          {
                                             §§pop();
                                          }
                                          addr147:
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             if(!_loc6_)
                                             {
                                                continue loop3;
                                             }
                                             continue loop1;
                                             §§goto(addr147);
                                          }
                                          continue loop3;
                                       }
                                       continue loop7;
                                    }
                                    addr134:
                                 }
                                 §§goto(addr165);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         if(!(_loc6_ && this))
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
            if(_loc1_ || this)
            {
               §§push(null);
            }
            §§pop().§=!E§(§§pop(),§§pop());
         }
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
            §§pop().§=!E§(§§pop(),§§pop());
            addr265:
            while(true)
            {
               §§push(this);
               §§push("BIRD_RED");
               §§push(["normal",["BIRD_RED_1","BIRD_RED_2"]]);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(null);
               }
               §§pop().§=!E§(§§pop(),§§pop());
               while(true)
               {
                  §§push(this);
                  §§push("BIRD_WHITE");
                  §§push(["normal",["BIRD_WHITE_1","BIRD_WHITE_2"]]);
                  if(_loc1_ || _loc2_)
                  {
                     §§push(null);
                  }
                  §§pop().§=!E§(§§pop(),§§pop());
                  loop3:
                  while(_loc1_)
                  {
                     §§push(this);
                     §§push("BIRD_YELLOW");
                     §§push(["normal",["BIRD_YELLOW_1","BIRD_YELLOW_2"]]);
                     if(_loc1_ || _loc1_)
                     {
                        §§push(null);
                     }
                     §§pop().§=!E§(§§pop(),§§pop());
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        continue loop3;
                        addr58:
                        if(!(_loc2_ && _loc2_))
                        {
                           return;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
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
            if(!_loc1_)
            {
               §§push(null);
            }
            §§pop().§=!E§(§§pop(),§§pop());
            loop0:
            while(true)
            {
               §§push(this);
               §§push("PIG_BASIC_MEDIUM");
               §§push(["normal",["PIG_BASIC_MEDIUM_01","PIG_BASIC_MEDIUM_02","PIG_BASIC_MEDIUM_03"]]);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(null);
               }
               §§pop().§=!E§(§§pop(),§§pop());
               while(true)
               {
                  §§push(this);
                  §§push("PIG_BASIC_BIG");
                  §§push(["normal",["PIG_BASIC_BIG_01","PIG_BASIC_BIG_02","PIG_BASIC_BIG_03"]]);
                  if(_loc2_)
                  {
                     §§push(null);
                  }
                  §§pop().§=!E§(§§pop(),§§pop());
                  while(!(_loc1_ && _loc1_))
                  {
                     §§push(this);
                     §§push("PIG_HELMET");
                     §§push(["normal",["PIG_HELMET_01","PIG_HELMET_02","PIG_HELMET_03"]]);
                     if(!_loc1_)
                     {
                        §§push(null);
                     }
                     §§pop().§=!E§(§§pop(),§§pop());
                     while(_loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      protected function §+b§(param1:String, param2:Array) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[1] = param1;
            addr112:
            while(true)
            {
               §§push(§§newactivation());
               continue loop0;
            }
         }
      }
      
      private function §9!4§(param1:Array) : Animation
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:§;K§ = null;
         var _loc2_:Animation = new Animation();
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§6! §.§]&§(_loc3_);
            if(!_loc7_)
            {
               _loc2_.addFrame(_loc4_);
            }
         }
         return _loc2_;
      }
      
      protected function §=!E§(param1:String, param2:Array) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         if(!(_loc9_ && param2))
         {
            if(this.§3!I§[param1])
            {
               if(_loc10_)
               {
                  §§goto(addr41);
               }
            }
            var _loc3_:AnimationContainer = new AnimationContainer();
            for each(_loc4_ in param2)
            {
               if(_loc10_ || param2)
               {
                  _loc5_ = _loc4_[0];
               }
               _loc6_ = _loc4_[1];
               if(_loc10_ || _loc3_)
               {
                  _loc3_.§+b§(_loc5_,this.§9!4§(_loc6_));
               }
            }
            if(_loc10_)
            {
               this.§3!I§[param1] = _loc3_;
            }
            return;
         }
         addr41:
         throw new Error("Trying to add a duplicate animation: " + param1);
      }
      
      public function getAnimation(param1:String) : Animation
      {
         return this.§3!I§[param1];
      }
   }
}
