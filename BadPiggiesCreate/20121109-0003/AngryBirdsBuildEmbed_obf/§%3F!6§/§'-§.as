package §?!6§
{
   import § !r§.§`![§;
   
   public class §'-§
   {
      
      public static var §1"§:Array;
       
      
      public function §'-§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §-q§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:XML = null;
         if(!(_loc7_ && param1))
         {
            §1"§ = new Array();
         }
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               if(_loc8_ || param2)
               {
                  §§push(§`![§);
                  §§push("WARNING, LevelItemMaterials constructor, bodyType is missing for material: ");
                  if(!_loc7_)
                  {
                     §§push(§§pop() + _loc4_.@id);
                  }
                  §§pop().log(§§pop());
                  addr65:
                  if(_loc4_.attribute("density").length() <= 0)
                  {
                     §§push(§`![§);
                     §§push("WARNING, LevelItemMaterials constructor, density is missing for material: ");
                     if(!(_loc7_ && param3))
                     {
                        §§push(§§pop() + _loc4_.@id);
                     }
                     §§pop().log(§§pop());
                  }
                  if(_loc4_.attribute("friction").length() <= 0)
                  {
                     §§push(§`![§);
                     §§push("WARNING, LevelItemMaterials constructor, friction is missing for material: ");
                     if(!(_loc7_ && param1))
                     {
                        §§push(§§pop() + _loc4_.@id);
                     }
                     §§pop().log(§§pop());
                  }
                  if(_loc4_.attribute("restitution").length() <= 0)
                  {
                     if(_loc8_ || §'-§)
                     {
                        §§push(§`![§);
                        §§push("WARNING, LevelItemMaterials constructor, restitution is missing for material: ");
                        if(!_loc7_)
                        {
                           §§push(§§pop() + _loc4_.@id);
                        }
                        §§pop().log(§§pop());
                     }
                  }
                  if(_loc4_.attribute("strength").length() <= 0)
                  {
                     §§push(§`![§);
                     §§push("WARNING, LevelItemMaterials constructor, strength is missing for material: ");
                     if(_loc8_)
                     {
                        §§push(§§pop() + _loc4_.@id);
                     }
                     §§pop().log(§§pop());
                  }
                  if(_loc4_.attribute("defence").length() <= 0)
                  {
                     addr154:
                     §§push(§`![§);
                     §§push("WARNING, LevelItemMaterials constructor, defence is missing for material: ");
                     if(_loc8_)
                     {
                        §§push(§§pop() + _loc4_.@id);
                     }
                     §§pop().log(§§pop());
                  }
                  if(_loc4_.attribute("colors").length() <= 0)
                  {
                     §§push(§`![§);
                     §§push("WARNING, LevelItemMaterials constructor, colors is missing for material: ");
                     if(!(_loc7_ && param2))
                     {
                        §§push(§§pop() + _loc4_.@id);
                     }
                     §§pop().log(§§pop());
                     if(!(_loc8_ || §'-§))
                     {
                        continue;
                     }
                  }
                  §`!`§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
                  continue;
               }
               §§goto(addr154);
            }
            §§goto(addr65);
         }
         if(!(_loc7_ && §'-§))
         {
            §#3§(param2,param3);
         }
      }
      
      public static function §#3§(param1:XMLList, param2:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:XML = null;
         var _loc4_:§`4§ = null;
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
                  if(_loc4_ = include(_loc3_.@id))
                  {
                     if(_loc8_ || param2)
                     {
                        _loc4_.§<!i§(_loc3_);
                        if(_loc8_ || param2)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(§`![§);
                     §§push("WARNING! Damage material multiplier with unknown material!!");
                     if(!_loc7_)
                     {
                        §§push(§§pop() + _loc3_.@id);
                     }
                     §§pop().log(§§pop());
                  }
                  continue;
               }
               if(_loc8_)
               {
                  if(_loc8_)
                  {
                     if(!(_loc7_ && param1))
                     {
                        _loc5_ = 0;
                        if(!(_loc7_ && §'-§))
                        {
                           addr106:
                           _loc6_ = param2.Material;
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break loop0;
                           }
                           addr161:
                        }
                     }
                     return;
                  }
               }
               §§goto(addr106);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc4_ = include(_loc3_.@id))
               {
                  if(!_loc7_)
                  {
                     _loc4_.§33§(_loc3_);
                     if(_loc7_ && _loc3_)
                     {
                        continue;
                     }
                  }
               }
               else
               {
                  §§push(§`![§);
                  §§push("WARNING! Velocity material multiplier with unknown material!!");
                  if(!(_loc7_ && param2))
                  {
                     §§push(§§pop() + _loc3_.@id);
                  }
                  §§pop().log(§§pop());
               }
               continue;
            }
            §§goto(addr106);
         }
      }
      
      public static function §`!`§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!(_loc9_ && param2))
         {
            §1"§[§1"§.length] = new §`4§(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public static function include(param1:String) : §`4§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= §1"§.length)
            {
               if(_loc4_)
               {
                  addr80:
                  §§push(§`![§);
                  §§push("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: ");
                  if(!_loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  break;
               }
               break;
            }
            if((§1"§[_loc2_] as §`4§).mName.toLowerCase() != param1.toLowerCase())
            {
               continue;
            }
            if(_loc4_ || _loc3_)
            {
               return §`4§(§1"§[_loc2_]);
            }
            §§goto(addr80);
         }
         while(_loc2_++, _loc4_);
         
         return null;
      }
   }
}
