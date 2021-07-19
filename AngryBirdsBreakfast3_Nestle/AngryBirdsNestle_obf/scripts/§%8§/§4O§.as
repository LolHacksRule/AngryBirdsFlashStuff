package §%8§
{
   import §0!m§.§@!S§;
   import §24§.;
   import §3!J§.DisplayObject;
   import §@V§.§#=§;
   import §[!Z§.§>D§;
   import flash.utils.Dictionary;
   
   public class §4O§
   {
       
      
      protected var §-"4§:XML;
      
      protected var §%!d§:XML;
      
      protected var §,_§:Dictionary;
      
      protected var §%""§:§6=§;
      
      protected var §@i§:§;!k§;
      
      protected var §-+§:§"2§;
      
      public function §4O§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§,_§ = new Dictionary();
         }
         do
         {
            super();
            loop1:
            do
            {
               this.§<!D§();
               while(true)
               {
                  this.§%!V§();
                  while(!(_loc1_ && _loc2_))
                  {
                     this.§"!s§();
                     if(!_loc1_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
            while(!_loc2_);
            
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      protected function §<!D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§%""§ = new §6=§();
         }
      }
      
      protected function §%!V§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§@i§ = new §;!k§();
         }
      }
      
      protected function §"!s§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§-+§ = new §"2§();
         }
      }
      
      public function loadItems(param1:XML) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc2_:XML = null;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = NaN;
         var _loc9_:* = null;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Boolean = false;
         var _loc13_:* = null;
         var _loc14_:* = 0;
         var _loc15_:Boolean = false;
         if(_loc18_)
         {
            this.§-"4§ = param1;
         }
         while(true)
         {
            this.§%""§.§0!4§(this.§-"4§.Item_Materials,this.§-"4§.Material_Damage_Multipliers,this.§-"4§.Material_Velocity_Multipliers);
            while(_loc18_ || _loc2_)
            {
               this.§-+§.§[!3§(this.§-"4§.Item_Resources_Sounds);
               loop2:
               while(!(_loc19_ && param1))
               {
                  loop3:
                  do
                  {
                     this.§@i§.§3!5§(this.§-"4§.Item_Shapes);
                     while(!_loc19_)
                     {
                        this.§,_§ = new Dictionary();
                        if(_loc18_ || _loc3_)
                        {
                           continue loop3;
                        }
                     }
                     continue loop2;
                  }
                  while(false);
                  
                  for each(_loc2_ in this.§-"4§.Items.Item)
                  {
                     if(!_loc19_)
                     {
                        §§push(_loc2_.@id);
                        loop6:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           while(true)
                           {
                              §§push(int(_loc2_.@type));
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc2_.@material);
                                    loop10:
                                    while(true)
                                    {
                                       _loc5_ = §§pop();
                                       while(true)
                                       {
                                          §§push(_loc2_.@sounds);
                                          loop12:
                                          for(; _loc18_; loop14:
                                          while(!(_loc19_ && this))
                                          {
                                             _loc7_ = §§pop();
                                             while(true)
                                             {
                                                §§push(Number(_loc2_.@score));
                                                while(true)
                                                {
                                                   _loc8_ = §§pop();
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.@category);
                                                      loop18:
                                                      while(_loc18_)
                                                      {
                                                         _loc9_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(Number(_loc2_.@health));
                                                            loop20:
                                                            while(true)
                                                            {
                                                               _loc10_ = §§pop();
                                                               addr291:
                                                               while(_loc18_)
                                                               {
                                                                  continue loop20;
                                                               }
                                                               §§goto(addr328);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.@particleJSONId);
                                                            if(_loc18_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            continue loop18;
                                                         }
                                                      }
                                                      continue loop14;
                                                   }
                                                   if(_loc19_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   _loc11_ = §§pop();
                                                   §§goto(addr283);
                                                }
                                             }
                                          })
                                          {
                                             _loc6_ = §§pop();
                                             while(true)
                                             {
                                                §§push(_loc2_.@shape);
                                                continue loop12;
                                             }
                                          }
                                          continue loop6;
                                       }
                                       if(!(_loc18_ || param1))
                                       {
                                          continue;
                                       }
                                       _loc13_ = §§pop();
                                       §§goto(addr241);
                                    }
                                 }
                                 if(!(_loc18_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 _loc14_ = §§pop();
                                 §§goto(addr224);
                              }
                           }
                        }
                     }
                     §§goto(addr264);
                  }
                  if(_loc18_ || this)
                  {
                     this.§3U§(this.§-"4§.SoundChannels);
                  }
                  return;
               }
            }
         }
      }
      
      public function §-"3§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Boolean, param11:String = "", param12:int = 1, param13:Boolean = false) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc15_:DisplayObject = null;
         if(!_loc16_)
         {
            var _loc14_:§[_§;
            if(!(_loc14_ = !!param5 ? this.§@i§.§!E§(param5) : null))
            {
               if(!(_loc16_ && param2))
               {
                  _loc15_ = §@!S§.§2A§.§13§.§6"%§(param1).getFrame(0);
                  §§push(§§findproperty(§]!o§));
                  §§push(_loc15_.width);
                  if(!(_loc16_ && param3))
                  {
                     §§push(§#=§.§^!2§);
                     if(!(_loc16_ && param3))
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc16_)
                        {
                           addr84:
                           §§push(§§pop() / 2);
                        }
                        §§push(_loc15_.height);
                        if(!_loc16_)
                        {
                           §§push(§§pop() * §#=§.§^!2§);
                           if(!_loc17_)
                           {
                           }
                           addr97:
                           _loc14_ = new §§pop().§]!o§(§§pop(),§§pop(),param1);
                           if(_loc17_ || param2)
                           {
                              _loc15_.dispose();
                              this.§,_§[param1.toLowerCase()] = new §@-§(param1,param2,this.§%""§.§&!T§(param3),this.§-+§.§=y§(param4),_loc14_,param6,param7,param8,param9,param10,param11,param12,param13);
                              addr146:
                              return;
                              addr110:
                           }
                           §§goto(addr110);
                        }
                        §§push(§§pop() / 2);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr84);
               }
            }
            §§goto(addr146);
         }
         §§goto(addr24);
      }
      
      public function §1!e§(param1:String) : §@-§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§@-§ = this.§,_§[param1.toLowerCase()];
         if(_loc3_)
         {
            if(_loc2_ == null)
            {
            }
         }
         return _loc2_;
      }
      
      public function §!E§(param1:String) : §[_§
      {
         return this.§@i§.§!E§(param1);
      }
      
      public function §;"#§(param1:String) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§@-§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§,_§)
         {
            if(_loc7_ || this)
            {
               if(_loc3_.category.toUpperCase() == param1.toUpperCase())
               {
                  if(!_loc6_)
                  {
                     _loc2_[_loc2_.length] = _loc3_.itemName;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function §!7§() : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         §§push(_loc2_);
         if(_loc6_ || _loc2_)
         {
            §§push(§§pop() * _loc1_.length);
         }
         var _loc3_:int = §§pop() as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public function §3U§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         loop0:
         for each(_loc2_ in param1.Channel)
         {
            if(_loc6_)
            {
               if(_loc2_.attribute("name").length() <= 0)
               {
                  loop1:
                  while(true)
                  {
                     §#7§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
                     addr136:
                     addr109:
                     while(true)
                     {
                     }
                     loop4:
                     while(true)
                     {
                        if(_loc6_ || _loc2_)
                        {
                           do
                           {
                              if(_loc2_.attribute("volume").length() <= 0)
                              {
                                 while(true)
                                 {
                                    §#7§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
                                    addr88:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr82:
                              }
                              while(true)
                              {
                                 §>D§.§0"6§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
                                 if(_loc6_ || param1)
                                 {
                                    if(_loc6_ || param1)
                                    {
                                       break;
                                    }
                                    §§goto(addr82);
                                 }
                                 §§goto(addr88);
                              }
                              if(_loc6_)
                              {
                                 if(_loc5_)
                                 {
                                    break loop4;
                                 }
                                 continue;
                              }
                              continue loop4;
                           }
                           while(false);
                           
                           continue loop0;
                           addr75:
                        }
                        continue loop1;
                     }
                     §§goto(addr136);
                  }
               }
               while(true)
               {
                  if(_loc2_.attribute("maxSound").length() <= 0)
                  {
                     if(!(_loc5_ && this))
                     {
                        §#7§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr75);
                  §§goto(addr136);
               }
            }
            §§goto(addr88);
         }
      }
      
      public function §&4§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§@-§ = this.§1!e§(param1);
         if(!_loc4_)
         {
            if(_loc2_)
            {
               if(_loc3_)
               {
                  §§push(_loc2_.§'!p§);
                  if(!(_loc4_ && _loc3_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr57:
                  return true;
               }
               return §§pop();
            }
         }
         §§goto(addr57);
      }
      
      public function §<]§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_ || _loc1_)
         {
            §§push(null);
            if(_loc6_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc5_ && _loc1_))
               {
                  addr43:
                  var animationDefinitions:Array = null;
               }
               var _loc2_:int = 0;
               var _loc3_:* = this.§,_§;
               while(§§hasnext(_loc3_,_loc2_))
               {
                  §§push(§§newactivation());
                  if(_loc6_)
                  {
                     §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                     if(!(_loc5_ && this))
                     {
                        try
                        {
                           addr79:
                           animationDefinitions = levelItem.§7"!§();
                           if(_loc6_ || _loc1_)
                           {
                              §@!S§.§2A§.§13§.§for§(levelItem.itemName,animationDefinitions);
                           }
                        }
                        catch(e:Error)
                        {
                           continue;
                        }
                     }
                     continue;
                  }
                  §§goto(addr79);
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function §3"0§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         for(_loc2_ in this.§,_§)
         {
            if(!(_loc5_ && this))
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}
