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
         if(_loc2_)
         {
            this.§3!I§ = new Dictionary();
            do
            {
               super();
               do
               {
                  this.§6! § = param1;
               }
               while(!(_loc2_ || _loc3_));
               
            }
            while(!(_loc2_ || _loc3_));
            
         }
      }
      
      public function initializeAnimations(param1:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         if(!_loc7_)
         {
            this.§ !&§(param1);
            while(true)
            {
               §§push(this.§+b§("PARTICLE_WOOD",["PARTICLE_WOOD_1"]));
               while(true)
               {
                  §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(this.§+b§("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT"]));
                     while(true)
                     {
                        §§pop();
                        while(_loc6_ || _loc3_)
                        {
                           §§push(this.§+b§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]));
                           while(true)
                           {
                              §§pop();
                              loop6:
                              while(true)
                              {
                                 §§push(this.§+b§("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]));
                                 loop7:
                                 while(true)
                                 {
                                    §§pop();
                                    while(true)
                                    {
                                       §§push(this.§+b§("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]));
                                       while(!_loc7_)
                                       {
                                          §§pop();
                                          loop10:
                                          while(true)
                                          {
                                             §§push(this.§+b§("FOREGROUND_12_LAYER_1",["FOREGROUND_12_LAYER_1"]));
                                             addr345:
                                             while(true)
                                             {
                                                §§pop();
                                                addr346:
                                                while(_loc6_)
                                                {
                                                   §§push(this.§+b§("BACKGROUND_12_MOON_1",["BACKGROUND_12_MOON_1"]));
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(this.§+b§("BACKGROUND_12_VOLCANO",["BACKGROUND_12_VOLCANO"]));
                                                         addr327:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr328:
                                                            while(!_loc7_)
                                                            {
                                                               §§push(this.§+b§("BACKGROUND_12_MOON_2",["BACKGROUND_12_MOON_2"]));
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  continue loop10;
                                                               }
                                                            }
                                                            continue loop14;
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop6;
                                             }
                                          }
                                       }
                                       continue loop7;
                                    }
                                 }
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
               if(!(_loc6_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr94);
               §§push(this.§+b§("SCORE_BIRD_WHITE",["SCORE_BIRD_WHITE"]));
            }
         }
         §§goto(addr127);
      }
      
      private function § !&§(param1:Array) : void
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
                  _loc2_ = this.§,+§(param1);
                  addr49:
                  for each(_loc3_ in _loc2_)
                  {
                     if(!_loc7_)
                     {
                        this.§ $§(_loc3_);
                     }
                  }
               }
               return;
            }
            §§goto(addr52);
         }
         §§goto(addr49);
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
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        addr57:
                        §§push(this.§+b§(param1,[param1 + "_1",param1 + "_2",param1 + "_3"]));
                        if(_loc2_)
                        {
                           addr72:
                           §§push(!§§pop());
                           if(_loc2_)
                           {
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    §§push(this.§+b§(param1,[param1 + "_1"]));
                                    if(!_loc2_)
                                    {
                                    }
                                    addr120:
                                    addr121:
                                    if(§§pop())
                                    {
                                    }
                                 }
                                 §§goto(addr122);
                              }
                              addr122:
                              return;
                           }
                           §§push(!§§pop());
                           if(_loc2_ || _loc2_)
                           {
                              addr105:
                              if(§§pop())
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§push(this.§+b§(param1,[param1]));
                                    if(_loc2_)
                                    {
                                       §§goto(addr120);
                                    }
                                    §§goto(addr121);
                                 }
                              }
                              §§goto(addr120);
                           }
                        }
                        §§goto(addr120);
                     }
                  }
                  §§goto(addr120);
               }
               §§goto(addr72);
            }
            §§goto(addr105);
         }
         §§goto(addr57);
      }
      
      private function §,+§(param1:Array) : Array
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
                     loop4:
                     while(true)
                     {
                        §§push(§§pop().indexOf(§§pop()) == 0);
                        if(_loc6_)
                        {
                           §§push(!§§pop());
                           loop5:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              addr134:
                              if(_loc7_ && _loc2_)
                              {
                                 continue;
                              }
                              loop17:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    if(_loc6_ || _loc3_)
                                    {
                                       if(_loc6_ || this)
                                       {
                                          addr165:
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   continue loop0;
                                                }
                                                addr71:
                                                if(!_loc7_)
                                                {
                                                   _loc2_.push(_loc3_);
                                                }
                                                if(_loc6_)
                                                {
                                                   if(_loc6_ || param1)
                                                   {
                                                      if(false)
                                                      {
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push("BIRD");
                                                               addr91:
                                                               while(!(_loc7_ && param1))
                                                               {
                                                                  §§push(§§pop().indexOf(§§pop()) == 0);
                                                                  while(true)
                                                                  {
                                                                     if(_loc6_ || _loc2_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        if(!(_loc7_ && _loc3_))
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(!(_loc6_ || this))
                                                                           {
                                                                              addr166:
                                                                              while(!(_loc7_ && _loc3_))
                                                                              {
                                                                                 §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       if(_loc6_ || _loc2_)
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       continue loop12;
                                                                                    }
                                                                                    addr201:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    §§goto(addr71);
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 addr198:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    break loop17;
                                                                                 }
                                                                              }
                                                                              addr166:
                                                                              addr197:
                                                                           }
                                                                        }
                                                                        §§goto(addr134);
                                                                     }
                                                                     addr200:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        §§goto(addr201);
                                                                     }
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               continue loop4;
                                                            }
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop2;
                                                }
                                                §§goto(addr174);
                                             }
                                             addr69:
                                          }
                                          §§goto(addr166);
                                       }
                                       §§goto(addr198);
                                    }
                                    break;
                                 }
                                 §§goto(addr165);
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    §§goto(addr200);
                                 }
                                 §§goto(addr141);
                              }
                              addr141:
                           }
                        }
                        §§goto(addr197);
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
                  §§push(§§pop().indexOf(§§pop()) > 0);
                  if(_loc6_ || this)
                  {
                     if(_loc6_)
                     {
                        addr67:
                        §§push(Boolean(§§pop()));
                        if(_loc6_)
                        {
                           §§goto(addr69);
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr67);
               }
               §§goto(addr91);
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this);
            §§push("BIRD_BLACK");
            §§push(["normal",["BIRD_BLACK_1","BIRD_BLACK_2"]]);
            if(!(_loc1_ && _loc2_))
            {
               §§push(null);
            }
            §§pop().§=!E§(§§pop(),§§pop());
            while(true)
            {
               §§push(this);
               §§push("BIRD_BLUE");
               §§push(["normal",["BIRD_BLUE_1","BIRD_BLUE_2"]]);
               if(!_loc1_)
               {
                  §§push(null);
               }
               §§pop().§=!E§(§§pop(),§§pop());
               addr271:
               while(true)
               {
                  §§push(this);
                  §§push("BIRD_RED");
                  §§push(["normal",["BIRD_RED_1","BIRD_RED_2"]]);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(null);
                  }
                  §§pop().§=!E§(§§pop(),§§pop());
               }
            }
            addr321:
         }
         while(true)
         {
            §§push(this);
            §§push("BIRD_WHITE");
            §§push(["normal",["BIRD_WHITE_1","BIRD_WHITE_2"]]);
            if(!(_loc1_ && this))
            {
               §§push(null);
            }
            §§pop().§=!E§(§§pop(),§§pop());
            while(true)
            {
               §§push(this);
               §§push("BIRD_YELLOW");
               §§push(["normal",["BIRD_YELLOW_1","BIRD_YELLOW_2"]]);
               if(!(_loc1_ && _loc1_))
               {
                  §§push(null);
               }
               §§pop().§=!E§(§§pop(),§§pop());
               while(true)
               {
                  if(_loc2_)
                  {
                     §§push(this);
                     §§push("BIRD_GREEN");
                     §§push(["normal",["BIRD_GREEN_1","BIRD_GREEN_2"]]);
                     if(_loc2_ || this)
                     {
                        §§push(null);
                     }
                     §§pop().§=!E§(§§pop(),§§pop());
                     continue;
                  }
                  §§goto(addr321);
               }
               §§goto(addr271);
            }
         }
      }
      
      protected function initializePigAnimations() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this);
            §§push("PIG_BASIC_SMALL");
            §§push(["normal",["PIG_BASIC_SMALL_01","PIG_BASIC_SMALL_02","PIG_BASIC_SMALL_03"]]);
            if(_loc2_ || _loc2_)
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
               if(_loc2_ || _loc1_)
               {
                  §§push(null);
               }
               §§pop().§=!E§(§§pop(),§§pop());
               loop1:
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
                  while(!_loc1_)
                  {
                     §§push(this);
                     §§push("PIG_HELMET");
                     §§push(["normal",["PIG_HELMET_01","PIG_HELMET_02","PIG_HELMET_03"]]);
                     if(_loc2_ || this)
                     {
                        §§push(null);
                     }
                     §§pop().§=!E§(§§pop(),§§pop());
                     loop4:
                     while(_loc2_ || this)
                     {
                        §§push(this);
                        §§push("PIG_KING");
                        §§push(["normal",["PIG_KING_01","PIG_KING_02","PIG_KING_03"]]);
                        continue loop1;
                        if(!(_loc1_ && _loc1_))
                        {
                           §§push(null);
                        }
                        §§pop().§=!E§(§§pop(),§§pop());
                        if(!_loc1_)
                        {
                           addr62:
                           if(!_loc2_)
                           {
                              while(true)
                              {
                                 §§push(this);
                                 §§push("PIG_MUSTACHE");
                                 §§push(["normal",["PIG_MUSTACHE_01","PIG_MUSTACHE_02","PIG_MUSTACHE_03"]]);
                                 if(_loc2_ || _loc1_)
                                 {
                                    §§push(null);
                                 }
                                 §§pop().§=!E§(§§pop(),§§pop());
                                 continue loop4;
                                 §§goto(addr62);
                              }
                              addr152:
                           }
                           return;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr152);
      }
      
      protected function §+b§(param1:String, param2:Array) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
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
                  while(!_loc6_)
                  {
                     loop4:
                     while(true)
                     {
                        if(!this.§3!I§[name])
                        {
                           continue loop2;
                        }
                        if(!(_loc6_ && param2))
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(true);
                           addr32:
                           continue loop2;
                           if(!(_loc6_ && this))
                           {
                              §§push(Boolean(§§pop()));
                           }
                           §§pop().§§slot[3] = §§pop();
                           if(_loc5_ || _loc3_)
                           {
                              if(true)
                              {
                                 try
                                 {
                                    this.§3!I§[name] = this.§9!4§(frameNames);
                                 }
                                 catch(e:Error)
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(_loc3_);
                                       §§push(false);
                                       if(!(_loc6_ && param2))
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       §§pop().§§slot[3] = §§pop();
                                    }
                                 }
                                 return result;
                              }
                              continue loop4;
                           }
                        }
                     }
                     if(!(_loc6_ && param2))
                     {
                        throw new Error("Trying to add a duplicate animation: " + name);
                     }
                  }
                  continue loop1;
               }
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
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         if(!_loc10_)
         {
            if(this.§3!I§[param1])
            {
               if(_loc9_)
               {
                  §§goto(addr35);
               }
            }
            var _loc3_:AnimationContainer = new AnimationContainer();
            for each(_loc4_ in param2)
            {
               if(_loc9_ || param1)
               {
                  _loc5_ = _loc4_[0];
               }
               _loc6_ = _loc4_[1];
               if(!_loc10_)
               {
                  _loc3_.§+b§(_loc5_,this.§9!4§(_loc6_));
               }
            }
            if(!_loc10_)
            {
               this.§3!I§[param1] = _loc3_;
            }
            return;
         }
         addr35:
         throw new Error("Trying to add a duplicate animation: " + param1);
      }
      
      public function getAnimation(param1:String) : Animation
      {
         return this.§3!I§[param1];
      }
   }
}
