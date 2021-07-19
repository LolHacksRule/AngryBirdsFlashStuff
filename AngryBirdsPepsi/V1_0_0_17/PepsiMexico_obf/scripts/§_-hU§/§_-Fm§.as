package §_-HU§
{
   import §_-e3§.§_-54§;
   
   public class §_-Fm§
   {
      
      public static var §_-co§:Array;
       
      
      public function §_-Fm§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function § else§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:XML = null;
         if(!_loc8_)
         {
            §_-co§ = new Array();
         }
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               §_-54§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
               if(_loc7_ || param2)
               {
                  addr54:
                  if(_loc4_.attribute("density").length() <= 0)
                  {
                     if(_loc7_ || §_-Fm§)
                     {
                        §_-54§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
                        if(!_loc7_)
                        {
                           continue;
                        }
                        addr75:
                        if(_loc4_.attribute("friction").length() <= 0)
                        {
                           §_-54§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
                           if(_loc7_ || param2)
                           {
                              addr94:
                              if(_loc4_.attribute("restitution").length() <= 0)
                              {
                                 if(!(_loc7_ || param2))
                                 {
                                    continue;
                                 }
                                 addr114:
                                 §_-54§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
                                 if(!(_loc7_ || param2))
                                 {
                                    continue;
                                 }
                              }
                              if(_loc4_.attribute("strength").length() <= 0)
                              {
                                 §_-54§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
                                 if(_loc8_)
                                 {
                                    continue;
                                 }
                              }
                              if(_loc4_.attribute("defence").length() <= 0)
                              {
                                 §_-54§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
                              }
                              if(_loc4_.attribute("colors").length() <= 0)
                              {
                                 if(_loc7_ || param3)
                                 {
                                    §_-54§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
                                    if(!(_loc7_ || param3))
                                    {
                                       continue;
                                    }
                                 }
                              }
                              §_-G§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
                           }
                           continue;
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr75);
               }
               §§goto(addr94);
            }
            §§goto(addr54);
         }
         if(!_loc8_)
         {
            §_-4C§(param2,param3);
         }
      }
      
      public static function §_-4C§(param1:XMLList, param2:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:XML = null;
         var _loc4_:§_-gs§ = null;
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
                  if(_loc4_ = §_-6x§(_loc3_.@id))
                  {
                     if(_loc8_ || param2)
                     {
                        _loc4_.§_-IU§(_loc3_);
                        if(!_loc8_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §_-54§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
                  }
                  continue;
               }
               if(_loc8_ || §_-Fm§)
               {
                  if(_loc8_)
                  {
                     if(_loc8_)
                     {
                        _loc5_ = 0;
                        if(!_loc7_)
                        {
                           _loc6_ = param2.Material;
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break loop0;
                           }
                           addr131:
                           addr130:
                           addr128:
                        }
                        §§goto(addr131);
                     }
                     return;
                  }
                  §§goto(addr131);
               }
               §§goto(addr130);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc4_ = §_-6x§(_loc3_.@id))
               {
                  if(!_loc7_)
                  {
                     _loc4_.§_-CB§(_loc3_);
                     if(_loc7_)
                     {
                     }
                  }
               }
               else
               {
                  §_-54§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
               }
               continue;
            }
            §§goto(addr131);
         }
      }
      
      public static function §_-G§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!(_loc10_ && param1))
         {
            §_-co§[§_-co§.length] = new §_-gs§(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public static function §_-6x§(param1:String) : §_-gs§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= §_-co§.length)
            {
               if(_loc3_ || param1)
               {
                  addr75:
                  §_-54§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
                  break;
               }
               break;
            }
            if((§_-co§[_loc2_] as §_-gs§).mName.toLowerCase() != param1.toLowerCase())
            {
               continue;
            }
            if(!(_loc4_ && §_-Fm§))
            {
               return §_-gs§(§_-co§[_loc2_]);
            }
            §§goto(addr75);
         }
         while(_loc2_++, _loc3_ || _loc2_);
         
         return null;
      }
   }
}
