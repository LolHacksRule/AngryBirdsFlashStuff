package §@0§
{
   import §@R§.§4,§;
   
   public class §7!^§
   {
      
      public static var §]B§:Array;
       
      
      public function §7!^§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §%`§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:XML = null;
         if(!(_loc7_ && param2))
         {
            §]B§ = new Array();
         }
         loop0:
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               if(!_loc7_)
               {
                  §4,§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
                  if(!_loc7_)
                  {
                     addr221:
                     if(_loc4_.attribute("density").length() <= 0)
                     {
                        addr227:
                        loop16:
                        while(true)
                        {
                           §4,§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
                           addr233:
                           while(true)
                           {
                              continue loop16;
                           }
                        }
                        addr227:
                     }
                     while(true)
                     {
                        if(_loc4_.attribute("friction").length() <= 0)
                        {
                           while(true)
                           {
                              §4,§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
                              addr220:
                              while(true)
                              {
                              }
                           }
                           addr214:
                        }
                        loop7:
                        while(true)
                        {
                           if(_loc4_.attribute("restitution").length() <= 0)
                           {
                              while(!(_loc7_ && §7!^§))
                              {
                                 §4,§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
                                 loop9:
                                 while(_loc8_)
                                 {
                                    if(!_loc8_)
                                    {
                                       §§goto(addr214);
                                    }
                                    loop12:
                                    while(true)
                                    {
                                       if(_loc7_ && param1)
                                       {
                                          continue loop9;
                                       }
                                       while(true)
                                       {
                                          §4,§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
                                          loop2:
                                          while(true)
                                          {
                                             if(!(_loc8_ || param1))
                                             {
                                                addr181:
                                                while(true)
                                                {
                                                   addr131:
                                                   while(true)
                                                   {
                                                      if(_loc4_.attribute("defence").length() <= 0)
                                                      {
                                                         continue loop12;
                                                      }
                                                   }
                                                }
                                                addr181:
                                             }
                                             addr89:
                                             do
                                             {
                                                if(_loc4_.attribute("colors").length() <= 0)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         §4,§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr233);
                                                      }
                                                   }
                                                   while(_loc8_ || §7!^§)
                                                   {
                                                      if(!(_loc7_ && §7!^§))
                                                      {
                                                         continue;
                                                      }
                                                      continue loop12;
                                                   }
                                                   continue loop2;
                                                   addr106:
                                                }
                                                while(true)
                                                {
                                                   §6J§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
                                                   if(_loc8_ || param1)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr106);
                                                }
                                             }
                                             while(false);
                                             
                                             continue loop0;
                                          }
                                          continue loop12;
                                       }
                                    }
                                 }
                                 continue loop7;
                                 if(!(_loc8_ || §7!^§))
                                 {
                                    continue;
                                 }
                                 §4,§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
                                 §§goto(addr181);
                              }
                              §§goto(addr227);
                           }
                           while(true)
                           {
                              if(_loc4_.attribute("strength").length() <= 0)
                              {
                                 if(!_loc7_)
                                 {
                                    §§goto(addr168);
                                 }
                                 §§goto(addr181);
                              }
                              §§goto(addr131);
                           }
                           §§goto(addr89);
                        }
                     }
                  }
                  §§goto(addr145);
               }
               §§goto(addr227);
            }
            §§goto(addr221);
         }
         if(_loc8_)
         {
            §5!P§(param2,param3);
         }
      }
      
      public static function §5!P§(param1:XMLList, param2:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:XML = null;
         var _loc4_:§56§ = null;
         var _loc5_:int = 0;
         var _loc6_:* = param1.Material;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(!_loc7_)
            {
               if(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc5_,_loc6_);
                  if(_loc4_ = §9E§(_loc3_.@id))
                  {
                     if(_loc8_)
                     {
                        _loc4_.§9!8§(_loc3_);
                        if(!_loc8_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §4,§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
                  }
                  continue;
               }
               if(_loc8_)
               {
                  if(!_loc7_)
                  {
                     if(_loc8_)
                     {
                        _loc5_ = 0;
                        if(_loc8_)
                        {
                           _loc6_ = param2.Material;
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break loop0;
                           }
                           addr140:
                           addr139:
                           addr137:
                        }
                        §§goto(addr140);
                     }
                     return;
                  }
                  §§goto(addr140);
               }
               §§goto(addr139);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc4_ = §9E§(_loc3_.@id))
               {
                  if(!(_loc7_ && _loc3_))
                  {
                     _loc4_.§#!X§(_loc3_);
                     if(_loc7_ && _loc3_)
                     {
                        continue;
                     }
                  }
               }
               else
               {
                  §4,§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
               }
               continue;
            }
            §§goto(addr140);
         }
      }
      
      public static function §6J§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!(_loc10_ && param2))
         {
            §]B§[§]B§.length] = new §56§(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public static function §9E§(param1:String) : §56§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= §]B§.length)
            {
               if(!(_loc3_ && §7!^§))
               {
                  §4,§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
               }
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               if(_loc4_)
               {
                  return null;
               }
            }
            else if((§]B§[_loc2_] as §56§).mName.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            _loc2_++;
         }
         while(!(_loc3_ && _loc3_));
         
         return §56§(§]B§[_loc2_]);
      }
   }
}
