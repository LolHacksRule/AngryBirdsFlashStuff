package §2"Y§
{
   import §1!i§.§,#_§;
   import §5t§.Log;
   
   public class §]#]§
   {
       
      
      protected var §'#8§:§,#_§;
      
      public function §]#]§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function §9#?§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:XML = null;
         if(_loc8_)
         {
            this.§'#8§ = new §,#_§();
         }
         loop0:
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               if(!_loc7_)
               {
                  Log.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
                  if(_loc8_ || param3)
                  {
                     addr208:
                     if(_loc4_.attribute("density").length() <= 0)
                     {
                        while(true)
                        {
                           Log.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
                           addr220:
                           while(true)
                           {
                           }
                        }
                        addr214:
                     }
                     while(true)
                     {
                        if(_loc4_.attribute("friction").length() <= 0)
                        {
                           loop15:
                           while(true)
                           {
                              if(!_loc7_)
                              {
                                 while(true)
                                 {
                                    Log.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
                                    loop17:
                                    while(true)
                                    {
                                       addr178:
                                       loop10:
                                       while(true)
                                       {
                                          if(_loc4_.attribute("restitution").length() <= 0)
                                          {
                                             while(true)
                                             {
                                                Log.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
                                                addr191:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr185:
                                          }
                                          loop7:
                                          while(_loc4_.attribute("strength").length() <= 0)
                                          {
                                             if(!_loc7_)
                                             {
                                                if(_loc7_)
                                                {
                                                   continue loop17;
                                                }
                                                while(true)
                                                {
                                                   Log.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
                                                }
                                             }
                                             while(true)
                                             {
                                                if(_loc8_)
                                                {
                                                   break loop7;
                                                }
                                                continue loop15;
                                             }
                                          }
                                          while(true)
                                          {
                                             if(_loc4_.attribute("defence").length() <= 0)
                                             {
                                                loop4:
                                                while(true)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      Log.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
                                                      loop5:
                                                      for(; _loc8_ || this; while(_loc8_ || this)
                                                      {
                                                         Log.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
                                                         §§goto(addr130);
                                                      })
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            do
                                                            {
                                                               if(_loc4_.attribute("colors").length() <= 0)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  this.§!#E§(_loc4_.@id,§&!x§.§3"K§(_loc4_.@bodyType),_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
                                                                  if(_loc8_)
                                                                  {
                                                                     if(!(_loc7_ && param1))
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  addr130:
                                                                  while(!_loc7_)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               if(!(_loc7_ && param3))
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr175);
                                                            }
                                                            while(false);
                                                            
                                                            continue loop0;
                                                            addr100:
                                                         }
                                                         §§goto(addr185);
                                                      }
                                                      §§goto(addr191);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr214);
                                                   }
                                                }
                                                continue loop10;
                                             }
                                             §§goto(addr100);
                                          }
                                       }
                                    }
                                 }
                                 addr201:
                              }
                              §§goto(addr220);
                           }
                        }
                        §§goto(addr178);
                     }
                  }
                  §§goto(addr169);
               }
               §§goto(addr201);
            }
            §§goto(addr208);
         }
         if(_loc8_)
         {
            this.§3#L§(param2,param3);
         }
      }
      
      private function §3#L§(param1:XMLList, param2:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:XML = null;
         var _loc4_:§&!x§ = null;
         var _loc5_:int = 0;
         var _loc6_:* = param1.Material;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(_loc8_ || param1)
            {
               if(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc5_,_loc6_);
                  if(_loc4_ = this.getMaterial(_loc3_.@id))
                  {
                     if(_loc8_ || param2)
                     {
                        _loc4_.§'"Z§(_loc3_);
                        if(_loc7_)
                        {
                        }
                     }
                  }
                  else
                  {
                     Log.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
                  }
                  continue;
               }
               if(_loc8_)
               {
                  if(_loc8_)
                  {
                     if(!_loc7_)
                     {
                        _loc5_ = 0;
                        if(_loc8_)
                        {
                           addr94:
                           _loc6_ = param2.Material;
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break loop0;
                           }
                           addr137:
                        }
                     }
                     return;
                  }
               }
               §§goto(addr94);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc4_ = this.getMaterial(_loc3_.@id))
               {
                  if(_loc8_)
                  {
                     _loc4_.§&"!§(_loc3_);
                     if(!_loc8_)
                     {
                        continue;
                     }
                  }
               }
               else
               {
                  Log.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
               }
               continue;
            }
            §§goto(addr94);
         }
      }
      
      public function §!#E§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : §&!x§
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc9_:§&!x§ = new §&!x§(param1,param2,param3,param4,param5,param6,param7,param8);
         if(_loc11_)
         {
            this.§'#8§[param1] = _loc9_;
         }
         return _loc9_;
      }
      
      public function getMaterial(param1:String) : §&!x§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§&!x§ = this.§'#8§[param1] as §&!x§;
         if(_loc4_)
         {
            if(!_loc2_)
            {
               do
               {
                  Log.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
               }
               while(_loc3_ && _loc2_);
               
               if(!_loc3_)
               {
                  return null;
               }
            }
         }
         return _loc2_;
      }
   }
}
