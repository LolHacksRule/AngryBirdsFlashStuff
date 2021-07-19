package §"!&§
{
   import §,"&§.§9q§;
   import §0N§.§2!@§;
   import §3"#§.§<!O§;
   import flash.utils.Dictionary;
   
   public class §-!M§
   {
       
      
      protected var §[Z§:XML;
      
      protected var §7<§:XML;
      
      protected var §1"0§:Dictionary;
      
      protected var §]X§:§8!T§;
      
      protected var §0M§:§4]§;
      
      protected var §3%§:§%o§;
      
      public function §-!M§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§1"0§ = new Dictionary();
         }
         loop0:
         while(true)
         {
            super();
            loop1:
            do
            {
               this.initMaterialManager();
               while(!_loc2_)
               {
                  this.§ R§();
                  do
                  {
                     this.§>"#§();
                  }
                  while(!(_loc1_ || _loc2_));
                  
                  if(_loc1_ || this)
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(!_loc1_);
            
            return;
         }
      }
      
      protected function initMaterialManager() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§]X§ = new §8!T§();
         }
      }
      
      protected function § R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§0M§ = new §4]§();
         }
      }
      
      protected function §>"#§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§3%§ = new §%o§();
         }
      }
      
      public function loadItems(param1:XML) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:* = null;
         var _loc8_:Number = NaN;
         var _loc9_:* = null;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = false;
         if(!_loc15_)
         {
            this.§[Z§ = param1;
            while(true)
            {
               this.§]X§.§#K§(this.§[Z§.Item_Materials,this.§[Z§.Material_Damage_Multipliers,this.§[Z§.Material_Velocity_Multipliers);
            }
            addr106:
         }
         while(true)
         {
            this.§3%§.§?O§(this.§[Z§.Item_Resources_Sounds);
            while(true)
            {
               §§goto(addr57);
            }
            if(_loc15_ && this)
            {
               continue;
            }
            if(_loc16_)
            {
               this.§1"0§ = new Dictionary();
               if(_loc16_)
               {
                  if(false)
                  {
                     addr57:
                     §§goto(addr107);
                  }
                  addr107:
                  while(true)
                  {
                     this.§0M§.§7-§(this.§[Z§.Item_Shapes);
                     continue loop2;
                  }
                  var _loc13_:int = 0;
                  var _loc14_:* = this.§[Z§.Items.Item;
                  addr291:
                  for each(_loc2_ in _loc14_)
                  {
                     if(!(_loc15_ && this))
                     {
                        addr289:
                        _loc3_ = _loc2_.@id;
                        addr284:
                        _loc4_ = _loc2_.@type;
                        addr278:
                        _loc5_ = _loc2_.@material;
                        addr272:
                        _loc6_ = _loc2_.@sounds;
                        addr290:
                        addr279:
                        addr273:
                        addr285:
                        §§push(_loc2_.@shape);
                        if(_loc16_)
                        {
                           _loc7_ = §§pop();
                           addr260:
                           if(!(_loc15_ && param1))
                           {
                              addr251:
                              _loc8_ = _loc2_.@score;
                              addr252:
                              §§push(_loc2_.@category);
                              if(_loc16_ || param1)
                              {
                                 if(_loc16_ || _loc3_)
                                 {
                                    if(!(_loc15_ && this))
                                    {
                                       _loc9_ = §§pop();
                                       addr244:
                                       if(_loc16_)
                                       {
                                          addr212:
                                          _loc10_ = _loc2_.@health;
                                          addr213:
                                          if(!_loc15_)
                                          {
                                             if(_loc16_)
                                             {
                                                §§push(1);
                                                if(!(_loc15_ && _loc3_))
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc15_)
                                                   {
                                                      if(!(_loc15_ && _loc2_))
                                                      {
                                                         _loc11_ = §§pop();
                                                         addr201:
                                                         if(_loc16_)
                                                         {
                                                            if(_loc16_)
                                                            {
                                                               if(_loc16_)
                                                               {
                                                                  addr162:
                                                                  _loc12_ = String(_loc2_.@front).toLowerCase() == "true";
                                                                  if(_loc16_)
                                                                  {
                                                                     if(!(_loc15_ && _loc3_))
                                                                     {
                                                                        this.§=V§(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_);
                                                                        if(!(_loc15_ && this))
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr162);
                                                                           }
                                                                           §§goto(addr291);
                                                                        }
                                                                        §§goto(addr162);
                                                                     }
                                                                     §§goto(addr244);
                                                                  }
                                                                  §§goto(addr201);
                                                               }
                                                               §§goto(addr260);
                                                            }
                                                            §§goto(addr252);
                                                         }
                                                         §§goto(addr213);
                                                      }
                                                      §§goto(addr251);
                                                   }
                                                   §§goto(addr212);
                                                }
                                                §§goto(addr284);
                                             }
                                             §§goto(addr290);
                                          }
                                          §§goto(addr279);
                                       }
                                       §§goto(addr273);
                                    }
                                    §§goto(addr289);
                                 }
                                 §§goto(addr272);
                              }
                              §§goto(addr289);
                              addr267:
                           }
                           §§goto(addr285);
                        }
                        §§goto(addr278);
                     }
                     §§goto(addr267);
                  }
                  if(!(_loc15_ && param1))
                  {
                     this.§4k§(this.§[Z§.SoundChannels);
                  }
                  return;
               }
               §§goto(addr64);
            }
            §§goto(addr106);
         }
      }
      
      public function §=V§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Boolean) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(!_loc12_)
         {
            this.§1"0§[param1.toLowerCase()] = new §8X§(param1,param2,this.§]X§.getMaterial(param3),this.§3%§.§ V§(param4),!!param5 ? this.§0M§.§;!u§(param5) : null,param6,param7,param8,param9,param10);
         }
      }
      
      public function getItem(param1:String) : §8X§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§8X§ = this.§1"0§[param1.toLowerCase()];
         if(!(_loc4_ && this))
         {
            if(_loc2_ == null)
            {
            }
         }
         return _loc2_;
      }
      
      public function §"!W§(param1:String) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§8X§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§1"0§)
         {
            if(_loc6_)
            {
               if(_loc3_.category.toUpperCase() != param1.toUpperCase())
               {
                  continue;
               }
               if(!_loc6_)
               {
                  continue;
               }
            }
            _loc2_[_loc2_.length] = _loc3_.itemName;
         }
         return _loc2_;
      }
      
      public function §&!y§() : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         §§push(_loc2_);
         if(!_loc6_)
         {
            §§push(§§pop() * _loc1_.length);
         }
         var _loc3_:int = §§pop() as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public function §4k§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         loop0:
         for each(_loc2_ in param1.Channel)
         {
            if(_loc6_ || this)
            {
               if(_loc2_.attribute("name").length() <= 0)
               {
                  while(true)
                  {
                     §2!@§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
                     addr136:
                     while(true)
                     {
                     }
                  }
                  addr133:
               }
               loop3:
               while(true)
               {
                  if(_loc2_.attribute("maxSound").length() <= 0)
                  {
                     while(true)
                     {
                        §2!@§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
                        addr116:
                        while(true)
                        {
                        }
                        addr61:
                        if(_loc6_ || this)
                        {
                           if(false)
                           {
                              while(true)
                              {
                                 if(_loc2_.attribute("volume").length() <= 0)
                                 {
                                    addr87:
                                    while(true)
                                    {
                                       §2!@§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
                                       addr93:
                                       while(true)
                                       {
                                          if(!(_loc6_ || param1))
                                          {
                                             continue loop3;
                                          }
                                          if(_loc5_)
                                          {
                                             §§goto(addr133);
                                          }
                                       }
                                    }
                                    addr87:
                                 }
                                 while(true)
                                 {
                                    §<!O§.§;!D§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
                                    if(_loc6_)
                                    {
                                       if(_loc6_)
                                       {
                                          if(_loc6_ || this)
                                          {
                                             §§goto(addr61);
                                          }
                                          else
                                          {
                                             §§goto(addr116);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr87);
                                       }
                                    }
                                    §§goto(addr93);
                                 }
                                 continue loop3;
                              }
                              addr80:
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr80);
               }
            }
            §§goto(addr87);
         }
      }
      
      public function §@!#§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§8X§ = this.getItem(param1);
         if(!_loc3_)
         {
            if(_loc2_)
            {
               if(!(_loc3_ && this))
               {
                  addr43:
                  §§push(_loc2_.isMaterialStatic);
                  if(!(_loc3_ && param1))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr63:
                  return true;
               }
               return §§pop();
            }
            §§goto(addr63);
         }
         §§goto(addr43);
      }
      
      public function initAnimations() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§push(null);
            if(!_loc5_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc6_ || _loc2_)
               {
                  addr38:
                  var animationDefinitions:Array = null;
               }
               var _loc2_:int = 0;
               var _loc3_:* = this.§1"0§;
               while(§§hasnext(_loc3_,_loc2_))
               {
                  §§push(§§newactivation());
                  if(_loc6_ || _loc1_)
                  {
                     §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                     if(!(_loc5_ && _loc3_))
                     {
                        try
                        {
                           addr79:
                           animationDefinitions = levelItem.getAnimationDefinitions();
                           if(!_loc6_)
                           {
                           }
                        }
                        catch(e:Error)
                        {
                           continue;
                        }
                        addr95:
                        continue;
                     }
                     §9q§.§>!L§.animationManager.§'x§(levelItem.itemName,animationDefinitions);
                     §§goto(addr95);
                  }
                  §§goto(addr79);
               }
               return;
            }
         }
         §§goto(addr38);
      }
   }
}
