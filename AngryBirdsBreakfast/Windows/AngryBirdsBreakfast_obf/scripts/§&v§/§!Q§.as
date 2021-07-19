package §&v§
{
   import §"n§.§<!Z§;
   import each.§!!'§;
   
   public class §!Q§
   {
       
      
      protected var §[x§:§<!Z§;
      
      public function §!Q§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public function §^!C§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:XML = null;
         if(!(_loc8_ && param2))
         {
            this.§[x§ = new §<!Z§();
         }
         loop0:
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               if(!(_loc8_ && param1))
               {
                  §!!'§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
                  if(_loc7_)
                  {
                     addr207:
                     if(_loc4_.attribute("density").length() <= 0)
                     {
                        while(true)
                        {
                           §!!'§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
                           addr219:
                           while(true)
                           {
                           }
                           addr127:
                           if(!(_loc7_ || param2))
                           {
                              continue;
                           }
                           §!!'§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
                           loop16:
                           while(true)
                           {
                              if(_loc7_)
                              {
                                 if(_loc7_)
                                 {
                                    loop17:
                                    while(true)
                                    {
                                       this.§9[§(_loc4_.@id,§#c§.§8c§(_loc4_.@bodyType),_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
                                       if(!_loc7_)
                                       {
                                          continue loop16;
                                       }
                                       if(_loc7_ || param1)
                                       {
                                          if(_loc7_)
                                          {
                                             if(!_loc8_)
                                             {
                                                if(_loc7_)
                                                {
                                                   addr101:
                                                   if(false)
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(_loc4_.attribute("colors").length() > 0)
                                                         {
                                                            continue loop17;
                                                         }
                                                         while(_loc7_ || this)
                                                         {
                                                            §§goto(addr127);
                                                         }
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               while(true)
                                                               {
                                                                  continue loop14;
                                                               }
                                                               addr160:
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §!!'§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
                                                                  break loop13;
                                                               }
                                                               addr186:
                                                            }
                                                         }
                                                      }
                                                      addr103:
                                                   }
                                                   continue loop0;
                                                }
                                                loop7:
                                                while(true)
                                                {
                                                   addr161:
                                                   while(true)
                                                   {
                                                      if(_loc4_.attribute("strength").length() <= 0)
                                                      {
                                                         while(_loc7_)
                                                         {
                                                            §!!'§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
                                                            break loop16;
                                                         }
                                                         §§goto(addr219);
                                                         addr168:
                                                      }
                                                      addr145:
                                                      while(true)
                                                      {
                                                         if(_loc4_.attribute("defence").length() <= 0)
                                                         {
                                                            while(true)
                                                            {
                                                               §!!'§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
                                                               §§goto(addr158);
                                                            }
                                                            addr152:
                                                         }
                                                         §§goto(addr103);
                                                      }
                                                      continue loop7;
                                                   }
                                                }
                                             }
                                             break loop16;
                                          }
                                          §§goto(addr152);
                                       }
                                       §§goto(addr110);
                                    }
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    addr179:
                                    while(true)
                                    {
                                       if(_loc4_.attribute("restitution").length() <= 0)
                                       {
                                          §§goto(addr186);
                                       }
                                       §§goto(addr161);
                                       continue loop4;
                                    }
                                 }
                                 addr206:
                              }
                              §§goto(addr168);
                           }
                           loop10:
                           while(true)
                           {
                              if(_loc7_)
                              {
                                 §§goto(addr145);
                              }
                              addr200:
                              while(true)
                              {
                                 §!!'§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
                                 break loop10;
                              }
                           }
                           §§goto(addr206);
                        }
                        addr213:
                     }
                     while(true)
                     {
                        if(_loc4_.attribute("friction").length() <= 0)
                        {
                           §§goto(addr200);
                        }
                        §§goto(addr179);
                     }
                  }
                  §§goto(addr213);
               }
               §§goto(addr160);
            }
            §§goto(addr207);
         }
         if(!(_loc8_ && param2))
         {
            this.§2!o§(param2,param3);
         }
      }
      
      private function §2!o§(param1:XMLList, param2:XMLList) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:XML = null;
         var _loc4_:§#c§ = null;
         var _loc5_:int = 0;
         var _loc6_:* = param1.Material;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(!(_loc8_ && param1))
            {
               if(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc5_,_loc6_);
                  if(_loc4_ = this.§>!1§(_loc3_.@id))
                  {
                     if(!_loc8_)
                     {
                        _loc4_.§?!k§(_loc3_);
                        if(_loc7_ || this)
                        {
                        }
                     }
                  }
                  else
                  {
                     §!!'§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
                  }
                  continue;
               }
               if(!(_loc8_ && this))
               {
                  if(_loc7_)
                  {
                     if(!_loc8_)
                     {
                        _loc5_ = 0;
                        if(!(_loc8_ && this))
                        {
                           _loc6_ = param2.Material;
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break loop0;
                           }
                           addr154:
                           addr153:
                           addr151:
                        }
                        §§goto(addr154);
                     }
                     return;
                  }
                  §§goto(addr154);
               }
               §§goto(addr153);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc4_ = this.§>!1§(_loc3_.@id))
               {
                  if(!(_loc8_ && _loc3_))
                  {
                     _loc4_.§5!m§(_loc3_);
                     if(!_loc7_)
                     {
                        continue;
                     }
                  }
               }
               else
               {
                  §!!'§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
               }
               continue;
            }
            §§goto(addr154);
         }
      }
      
      public function §9[§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : §#c§
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc9_:§#c§ = new §#c§(param1,param2,param3,param4,param5,param6,param7,param8);
         if(!(_loc10_ && param3))
         {
            this.§[x§[param1] = _loc9_;
         }
         return _loc9_;
      }
      
      public function §>!1§(param1:String) : §#c§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§#c§ = this.§[x§[param1] as §#c§;
         if(!(_loc3_ && param1))
         {
            if(!_loc2_)
            {
               do
               {
                  §!!'§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
               }
               while(_loc3_);
               
               if(_loc4_ || _loc3_)
               {
                  return null;
                  addr73:
               }
            }
            return _loc2_;
         }
         §§goto(addr73);
      }
   }
}
