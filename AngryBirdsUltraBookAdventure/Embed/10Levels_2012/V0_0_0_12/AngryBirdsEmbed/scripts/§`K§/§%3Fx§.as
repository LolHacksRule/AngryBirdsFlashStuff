package §`K§
{
   import §0!<§.§#y§;
   
   public class §?x§
   {
      
      public static var §#l§:Array;
       
      
      public function §?x§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §-§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:XML = null;
         if(!(_loc8_ && param1))
         {
            §#l§ = new Array();
         }
         var _loc5_:int = 0;
         var _loc6_:* = param1.Material;
         for(; §§hasnext(_loc6_,_loc5_); §;a§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors))
         {
            _loc4_ = §§nextvalue(_loc5_,_loc6_);
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               if(!_loc8_)
               {
                  §§push(§#y§);
                  §§push("WARNING, LevelItemMaterials constructor, bodyType is missing for material: ");
                  if(_loc7_ || param2)
                  {
                     §§push(§§pop() + _loc4_.@id);
                  }
                  §§pop().log(§§pop());
                  addr64:
                  if(_loc4_.attribute("density").length() <= 0)
                  {
                     §§push(§#y§);
                     §§push("WARNING, LevelItemMaterials constructor, density is missing for material: ");
                     if(_loc7_ || param3)
                     {
                        §§push(§§pop() + _loc4_.@id);
                     }
                     §§pop().log(§§pop());
                  }
                  if(_loc4_.attribute("friction").length() <= 0)
                  {
                     §§push(§#y§);
                     §§push("WARNING, LevelItemMaterials constructor, friction is missing for material: ");
                     if(_loc7_ || param2)
                     {
                        §§push(§§pop() + _loc4_.@id);
                     }
                     §§pop().log(§§pop());
                     if(!_loc7_)
                     {
                        continue;
                     }
                  }
                  if(_loc4_.attribute("restitution").length() <= 0)
                  {
                     §§push(§#y§);
                     §§push("WARNING, LevelItemMaterials constructor, restitution is missing for material: ");
                     if(!(_loc8_ && param2))
                     {
                        §§push(§§pop() + _loc4_.@id);
                     }
                     §§pop().log(§§pop());
                  }
                  if(_loc4_.attribute("strength").length() <= 0)
                  {
                     if(!_loc8_)
                     {
                        addr141:
                        §§push(§#y§);
                        §§push("WARNING, LevelItemMaterials constructor, strength is missing for material: ");
                        if(!(_loc8_ && param1))
                        {
                           §§push(§§pop() + _loc4_.@id);
                        }
                        §§pop().log(§§pop());
                        if(!(_loc8_ && param1))
                        {
                           addr161:
                           if(_loc4_.attribute("defence").length() <= 0)
                           {
                              if(!_loc8_)
                              {
                                 §§push(§#y§);
                                 §§push("WARNING, LevelItemMaterials constructor, defence is missing for material: ");
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop() + _loc4_.@id);
                                 }
                                 §§pop().log(§§pop());
                              }
                           }
                           if(_loc4_.attribute("colors").length() > 0)
                           {
                              continue;
                           }
                           if(!_loc7_)
                           {
                              continue;
                           }
                        }
                        §§push(§#y§);
                        §§push("WARNING, LevelItemMaterials constructor, colors is missing for material: ");
                        if(!(_loc8_ && param1))
                        {
                           §§push(§§pop() + _loc4_.@id);
                        }
                        §§pop().log(§§pop());
                        continue;
                     }
                  }
                  §§goto(addr161);
               }
               §§goto(addr141);
            }
            §§goto(addr64);
         }
         if(_loc7_)
         {
            §7!?§(param2,param3);
         }
      }
      
      public static function §7!?§(param1:XMLList, param2:XMLList) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:XML = null;
         var _loc4_:§7g§ = null;
         var _loc5_:int = 0;
         var _loc6_:* = param1.Material;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(_loc7_)
            {
               if(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc5_,_loc6_);
                  if(_loc4_ = §2E§(_loc3_.@id))
                  {
                     if(!_loc8_)
                     {
                        _loc4_.§=!1§(_loc3_);
                        if(_loc8_ && §?x§)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(§#y§);
                     §§push("WARNING! Damage material multiplier with unknown material!!");
                     if(!_loc8_)
                     {
                        §§push(§§pop() + _loc3_.@id);
                     }
                     §§pop().log(§§pop());
                  }
                  continue;
               }
               if(_loc7_ || _loc3_)
               {
                  if(_loc7_)
                  {
                     if(_loc7_ || §?x§)
                     {
                        _loc5_ = 0;
                        if(_loc7_)
                        {
                           _loc6_ = param2.Material;
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break loop0;
                           }
                           addr153:
                           addr152:
                           addr150:
                        }
                        §§goto(addr153);
                     }
                     return;
                  }
                  §§goto(addr153);
               }
               §§goto(addr152);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc4_ = §2E§(_loc3_.@id))
               {
                  if(!_loc8_)
                  {
                     _loc4_.§@g§(_loc3_);
                     if(!(_loc7_ || param1))
                     {
                        continue;
                     }
                  }
               }
               else
               {
                  §§push(§#y§);
                  §§push("WARNING! Velocity material multiplier with unknown material!!");
                  if(!_loc8_)
                  {
                     §§push(§§pop() + _loc3_.@id);
                  }
                  §§pop().log(§§pop());
               }
               continue;
            }
            §§goto(addr153);
         }
      }
      
      public static function §;a§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_)
         {
            §#l§[§#l§.length] = new §7g§(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public static function §2E§(param1:String) : §7g§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= §#l§.length)
            {
               if(!_loc4_)
               {
                  §§push(§#y§);
                  §§push("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: ");
                  if(_loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  break;
               }
               break;
            }
            if((§#l§[_loc2_] as §7g§).mName.toLowerCase() == param1.toLowerCase())
            {
               if(!_loc4_)
               {
                  return §7g§(§#l§[_loc2_]);
               }
            }
            _loc2_++;
         }
         while(_loc3_);
         
         return null;
      }
   }
}
