package §%8§
{
   import §24§.;
   import §4!i§.§0]§;
   
   public class §6=§
   {
       
      
      protected var §-!q§:§0]§;
      
      public function §6=§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function §0!4§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:XML = null;
         if(_loc8_)
         {
            this.§-!q§ = new §0]§();
         }
         loop0:
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               if(!_loc7_)
               {
                  §#7§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
                  if(_loc8_ || param3)
                  {
                     addr196:
                     if(_loc4_.attribute("density").length() <= 0)
                     {
                        if(_loc8_)
                        {
                           §#7§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
                        }
                        while(true)
                        {
                        }
                        addr210:
                     }
                     while(true)
                     {
                        if(_loc4_.attribute("friction").length() <= 0)
                        {
                           addr189:
                           while(true)
                           {
                              §#7§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
                              addr195:
                              while(true)
                              {
                              }
                           }
                           addr189:
                        }
                        while(true)
                        {
                           if(_loc4_.attribute("restitution").length() <= 0)
                           {
                              while(true)
                              {
                                 §#7§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
                                 addr177:
                                 while(true)
                                 {
                                    if(_loc8_)
                                    {
                                       if(_loc7_)
                                       {
                                          §§goto(addr210);
                                       }
                                    }
                                    §§goto(addr195);
                                 }
                                 §§goto(addr189);
                              }
                              addr171:
                           }
                           while(true)
                           {
                              if(_loc4_.attribute("strength").length() <= 0)
                              {
                                 loop6:
                                 while(!_loc7_)
                                 {
                                    if(!(_loc7_ && param2))
                                    {
                                       §#7§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
                                       while(true)
                                       {
                                          addr127:
                                          loop8:
                                          while(true)
                                          {
                                             if(_loc4_.attribute("defence").length() <= 0)
                                             {
                                                while(true)
                                                {
                                                   §#7§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
                                                   addr140:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                addr134:
                                             }
                                             loop11:
                                             while(true)
                                             {
                                                if(_loc4_.attribute("colors").length() <= 0)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         while(true)
                                                         {
                                                            §#7§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
                                                            addr122:
                                                            loop12:
                                                            while(_loc8_)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§#!;§(_loc4_.@id,§^f§.§6"1§(_loc4_.@bodyType),_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
                                                                     if(!_loc7_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break loop11;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  addr61:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr171);
                                                               }
                                                            }
                                                            continue loop8;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr134);
                                                      }
                                                      §§goto(addr140);
                                                   }
                                                   §§goto(addr122);
                                                }
                                                §§goto(addr61);
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr189);
                                    }
                                 }
                                 §§goto(addr177);
                              }
                              §§goto(addr127);
                           }
                        }
                     }
                  }
                  §§goto(addr195);
               }
               §§goto(addr106);
            }
            §§goto(addr196);
         }
         if(_loc8_ || param3)
         {
            this.§[!-§(param2,param3);
         }
      }
      
      private function §[!-§(param1:XMLList, param2:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:XML = null;
         var _loc4_:§^f§ = null;
         var _loc5_:int = 0;
         var _loc6_:* = param1.Material;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(!(_loc7_ && _loc3_))
            {
               if(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc5_,_loc6_);
                  if(_loc4_ = this.§&!T§(_loc3_.@id))
                  {
                     if(_loc8_ || this)
                     {
                        _loc4_.§7!F§(_loc3_);
                        if(!(_loc8_ || param2))
                        {
                           continue;
                        }
                     }
                  }
                  else
                  {
                     §#7§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
                  }
                  continue;
               }
               if(!_loc7_)
               {
                  if(_loc8_)
                  {
                     if(_loc8_)
                     {
                        _loc5_ = 0;
                        if(!_loc7_)
                        {
                           addr99:
                           _loc6_ = param2.Material;
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break loop0;
                           }
                           addr142:
                        }
                     }
                     return;
                  }
               }
               §§goto(addr99);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc4_ = this.§&!T§(_loc3_.@id))
               {
                  if(_loc8_)
                  {
                     _loc4_.§%i§(_loc3_);
                     if(_loc7_)
                     {
                     }
                  }
               }
               else
               {
                  §#7§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
               }
               continue;
            }
            §§goto(addr99);
         }
      }
      
      public function §#!;§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : §^f§
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc9_:§^f§ = new §^f§(param1,param2,param3,param4,param5,param6,param7,param8);
         if(!(_loc11_ && param2))
         {
            this.§-!q§[param1] = _loc9_;
         }
         return _loc9_;
      }
      
      public function §&!T§(param1:String) : §^f§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§^f§ = this.§-!q§[param1] as §^f§;
         if(_loc4_ || param1)
         {
            if(!_loc2_)
            {
               do
               {
                  §#7§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
               }
               while(_loc3_ && _loc3_);
               
               if(!(_loc3_ && param1))
               {
                  return null;
               }
            }
         }
         return _loc2_;
      }
   }
}
