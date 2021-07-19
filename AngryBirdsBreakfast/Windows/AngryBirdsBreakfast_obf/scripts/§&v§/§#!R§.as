package §&v§
{
   import §1T§.§'!c§;
   import §6![§.DisplayObject;
   import §@L§.§?!'§;
   import com.angrybirds.§&!"§;
   import each.§!!'§;
   import flash.utils.Dictionary;
   
   public class §#!R§
   {
       
      
      protected var §,J§:XML;
      
      protected var §?!7§:XML;
      
      protected var §<C§:Dictionary;
      
      protected var §,!,§:§!Q§;
      
      protected var §9H§:§^!z§;
      
      protected var §!m§:§"Q§;
      
      public function §#!R§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§<C§ = new Dictionary();
            while(true)
            {
               super();
               while(_loc2_ || this)
               {
                  this.§5V§();
                  loop2:
                  while(!(_loc1_ && _loc1_))
                  {
                     while(true)
                     {
                        this.§#!I§();
                        do
                        {
                           this.§`!7§();
                        }
                        while(!(_loc2_ || _loc2_));
                        
                        if(!(_loc1_ && this))
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      protected function §5V§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§,!,§ = new §!Q§();
         }
      }
      
      protected function §#!I§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§9H§ = new §^!z§();
         }
      }
      
      protected function §`!7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§!m§ = new §"Q§();
         }
      }
      
      public function loadItems(param1:XML) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:Number = NaN;
         var _loc9_:* = null;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = false;
         var _loc13_:* = null;
         var _loc14_:* = 0;
         if(_loc18_ || _loc2_)
         {
            this.§,J§ = param1;
            while(true)
            {
               this.§,!,§.§^!C§(this.§,J§.Item_Materials,this.§,J§.Material_Damage_Multipliers,this.§,J§.Material_Velocity_Multipliers);
            }
            addr116:
         }
         while(true)
         {
            this.§!m§.§]!2§(this.§,J§.Item_Resources_Sounds);
            for(; !(_loc17_ && _loc3_); while(true)
            {
               this.§9H§.§"[§(this.§,J§.Item_Shapes);
               do
               {
                  this.§<C§ = new Dictionary();
               }
               while(!(_loc18_ || param1));
               
               if(_loc18_)
               {
                  if(true)
                  {
                     loop5:
                     for each(_loc2_ in this.§,J§.Items.Item)
                     {
                        if(!(_loc17_ && param1))
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
                                    addr339:
                                    while(true)
                                    {
                                       §§push(_loc2_.@material);
                                       loop10:
                                       while(true)
                                       {
                                          _loc5_ = §§pop();
                                          addr333:
                                          while(true)
                                          {
                                             §§push(_loc2_.@sounds);
                                             continue loop10;
                                          }
                                       }
                                    }
                                    loop23:
                                    for(; _loc18_ || _loc2_; while(true)
                                    {
                                       §§push(int(int(_loc2_.@particleVariationCount)));
                                       if(!(_loc18_ || _loc2_))
                                       {
                                          continue loop23;
                                       }
                                       §§goto(addr207);
                                       §§goto(addr192);
                                    },continue loop5)
                                    {
                                       addr252:
                                       §§push(Number(§§pop()));
                                       if(_loc18_ || _loc3_)
                                       {
                                          if(!_loc17_)
                                          {
                                             _loc11_ = §§pop();
                                             while(true)
                                             {
                                                _loc12_ = String(_loc2_.@front).toLowerCase() == "true";
                                                addr242:
                                                loop25:
                                                while(true)
                                                {
                                                   §§push(_loc2_.@particleJSONId);
                                                   if(!(_loc17_ && _loc3_))
                                                   {
                                                      addr220:
                                                      if(!(_loc18_ || _loc2_))
                                                      {
                                                         continue loop6;
                                                      }
                                                      if(_loc18_)
                                                      {
                                                         _loc13_ = §§pop();
                                                         while(!_loc17_)
                                                         {
                                                            continue loop23;
                                                            _loc14_ = §§pop();
                                                            do
                                                            {
                                                               this.§9V§(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_);
                                                            }
                                                            while(!(_loc18_ || _loc2_));
                                                            
                                                            if(_loc18_)
                                                            {
                                                               continue loop25;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.@category);
                                                            break loop25;
                                                         }
                                                         addr299:
                                                      }
                                                      §§goto(addr317);
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   _loc9_ = §§pop();
                                                   §§goto(addr286);
                                                   §§goto(addr242);
                                                }
                                             }
                                          }
                                          §§goto(addr298);
                                       }
                                       §§goto(addr268);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr293);
                     }
                     if(_loc18_ || this)
                     {
                        this.§8C§(this.§,J§.SoundChannels);
                     }
                  }
                  continue;
                  return;
               }
               break;
            })
            {
               if(_loc18_)
               {
                  continue;
               }
               §§goto(addr116);
            }
         }
      }
      
      public function §9V§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Boolean, param11:String = "", param12:int = 1) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc14_:DisplayObject = null;
         if(_loc15_)
         {
            var _loc13_:§each §;
            if(!(_loc13_ = !!param5 ? this.§9H§.§;",§(param5) : null))
            {
               if(!(_loc16_ && param3))
               {
                  _loc14_ = §&!"§.§1!D§.§5-§.§#w§(param1).getFrame(0);
                  §§push(§§findproperty(§4!a§));
                  §§push(_loc14_.width);
                  if(!(_loc16_ && param3))
                  {
                     §§push(§?!'§.§'!i§);
                     if(_loc15_ || this)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc16_ && param2))
                        {
                           addr90:
                           §§push(§§pop() / 2);
                           §§push(_loc14_.height);
                           if(!_loc16_)
                           {
                              §§push(§§pop() * §?!'§.§'!i§);
                              if(_loc15_ || param2)
                              {
                                 addr104:
                                 §§push(§§pop() / 2);
                              }
                              _loc13_ = new §§pop().§4!a§(§§pop(),§§pop());
                              if(!_loc16_)
                              {
                                 _loc14_.dispose();
                                 this.§<C§[param1.toLowerCase()] = new §9B§(param1,param2,this.§,!,§.§>!1§(param3),this.§!m§.§@!D§(param4),_loc13_,param6,param7,param8,param9,param10,param11,param12);
                                 addr148:
                                 return;
                                 addr113:
                              }
                              §§goto(addr113);
                           }
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr90);
               }
            }
            §§goto(addr148);
         }
         §§goto(addr23);
      }
      
      public function §"!?§(param1:String) : §9B§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§9B§ = this.§<C§[param1.toLowerCase()];
         if(_loc4_)
         {
            if(_loc2_ == null)
            {
            }
         }
         return _loc2_;
      }
      
      public function §`X§(param1:String) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§9B§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§<C§)
         {
            if(!_loc7_)
            {
               if(_loc3_.category.toUpperCase() == param1.toUpperCase())
               {
                  if(!(_loc7_ && _loc2_))
                  {
                     _loc2_[_loc2_.length] = _loc3_.itemName;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function §'!,§() : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         §§push(_loc2_);
         if(!(_loc6_ && _loc3_))
         {
            §§push(§§pop() * _loc1_.length);
         }
         var _loc3_:int = §§pop() as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public function §8C§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in param1.Channel)
         {
            if(_loc6_ || _loc2_)
            {
               if(_loc2_.attribute("name").length() <= 0)
               {
                  while(true)
                  {
                     §!!'§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
                     addr136:
                     while(true)
                     {
                     }
                     addr103:
                     if(!(_loc6_ || _loc3_))
                     {
                        continue;
                     }
                     §!!'§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
                     loop5:
                     while(true)
                     {
                        addr56:
                        loop6:
                        while(true)
                        {
                           if(_loc2_.attribute("volume").length() <= 0)
                           {
                              if(_loc6_)
                              {
                                 §!!'§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
                              }
                              loop7:
                              while(true)
                              {
                                 if(!(_loc6_ || _loc3_))
                                 {
                                    while(_loc6_ || param1)
                                    {
                                       §§goto(addr103);
                                       continue loop7;
                                    }
                                    §§goto(addr136);
                                    addr96:
                                 }
                              }
                              continue loop5;
                              addr81:
                           }
                           while(true)
                           {
                              §'!c§.§8G§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
                              if(!_loc5_)
                              {
                                 if(_loc6_)
                                 {
                                    while(false)
                                    {
                                       continue loop6;
                                    }
                                    continue loop0;
                                    addr54:
                                 }
                                 continue loop5;
                              }
                              §§goto(addr81);
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  if(_loc2_.attribute("maxSound").length() <= 0)
                  {
                     §§goto(addr96);
                  }
                  §§goto(addr56);
                  §§goto(addr136);
               }
            }
            §§goto(addr54);
         }
      }
      
      public function §-p§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§9B§ = this.§"!?§(param1);
         if(!_loc3_)
         {
            if(_loc2_)
            {
               if(_loc4_)
               {
                  addr48:
                  §§push(_loc2_.§%x§);
                  if(_loc4_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr53:
                  return true;
               }
               return §§pop();
            }
            §§goto(addr53);
         }
         §§goto(addr48);
      }
      
      public function §#j§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_ || _loc2_)
         {
            §§push(null);
            if(_loc5_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc5_ || _loc1_)
               {
                  addr42:
                  var animationDefinitions:Array = null;
               }
               var _loc2_:int = 0;
               var _loc3_:* = this.§<C§;
               while(§§hasnext(_loc3_,_loc2_))
               {
                  §§push(§§newactivation());
                  if(_loc5_ || this)
                  {
                     §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                     if(!_loc6_)
                     {
                        try
                        {
                           addr78:
                           animationDefinitions = levelItem.§;!^§();
                           if(!_loc5_)
                           {
                           }
                        }
                        catch(e:Error)
                        {
                           continue;
                        }
                        addr94:
                        continue;
                     }
                     §&!"§.§1!D§.§5-§.§2O§(levelItem.itemName,animationDefinitions);
                     §§goto(addr94);
                  }
                  §§goto(addr78);
               }
               return;
            }
         }
         §§goto(addr42);
      }
   }
}
