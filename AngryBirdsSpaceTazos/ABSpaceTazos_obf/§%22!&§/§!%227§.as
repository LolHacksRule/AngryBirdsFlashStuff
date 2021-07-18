package §"!&§
{
   import §,"&§.§9q§;
   
   public class §!"7§ extends §8"F§
   {
      
      public static const §%"=§:String = "INGAME_TEXTURE_COMMON";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §!"7§)
         {
            §%"=§ = "INGAME_TEXTURE_COMMON";
         }
      }
      
      public function §!"7§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      override public function initAnimations() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§9q§.§>!L§.animationManager);
            §§push(§%"=§);
            §§push(["1"]);
            if(!_loc1_)
            {
               §§push(null);
            }
            §§pop().§["7§(§§pop(),§§pop());
         }
         do
         {
            super.initAnimations();
         }
         while(!_loc2_);
         
      }
      
      override public function getItem(param1:String) : §8X§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = param1;
         if(_loc5_)
         {
            if("BIRD_BLUE" === _loc3_)
            {
               if(_loc5_)
               {
                  §§push(0);
                  if(_loc4_ && param1)
                  {
                  }
               }
               else
               {
                  addr83:
                  §§push(1);
                  if(_loc4_ && _loc2_)
                  {
                  }
               }
            }
            else
            {
               if("BIRD_BLACK" === _loc3_)
               {
                  if(_loc5_ || _loc3_)
                  {
                     §§goto(addr83);
                  }
               }
               else if("BIRD_RED" === _loc3_)
               {
                  if(!_loc4_)
                  {
                     addr97:
                     §§push(2);
                     if(_loc4_ && this)
                     {
                     }
                  }
               }
               else if("BIRD_REDBIG" !== _loc3_)
               {
                  addr117:
                  switch(§§pop())
                  {
                     case 0:
                        param1 = "SmallBlueBird";
                        break;
                     case 1:
                        param1 = "BlackBird";
                        addr25:
                        break;
                     case 2:
                        param1 = "RedBird";
                        break;
                     case 3:
                        param1 = "RedBigBird";
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr25);
                  }
                  var _loc2_:§8X§ = §1"0§[param1.toLowerCase()];
                  if(!_loc4_)
                  {
                     if(_loc2_ == null)
                     {
                     }
                  }
                  return _loc2_;
                  §§push(4);
               }
               §§goto(addr117);
               if(_loc4_)
               {
               }
            }
            §§goto(addr117);
         }
         §§goto(addr97);
      }
      
      override protected function createLevelItemParticle(param1:Object) : §%F§
      {
         var _loc2_:§%F§ = null;
         return new §70§(param1,§8X§.§,"4§,!!param1.material ? §]X§.getMaterial(param1.material) : null,null,0);
      }
      
      override protected function createLevelItemBird(param1:Object) : §+W§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§+W§ = null;
         if(!_loc4_)
         {
            if(param1.definition == "TazosBird")
            {
               _loc2_ = new §+g§(param1,§8X§.§1!K§,!!param1.material ? §]X§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§][§),false,§9"3§);
               addr25:
            }
            else
            {
               _loc2_ = new §+W§(param1,§8X§.§1!K§,!!param1.material ? §]X§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§][§),false,§9"3§);
            }
            return _loc2_;
         }
         §§goto(addr25);
      }
      
      override protected function createLevelItem(param1:Object, param2:int) : §`D§
      {
         var _loc4_:§`D§ = null;
         var _loc3_:String = param1.material;
         return new §"!#§(param1,param2,!!_loc3_ ? §]X§.getMaterial(_loc3_) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§ -§),false,§9"3§);
      }
      
      override protected function createLevelItemPig(param1:Object) : §3",§
      {
         return new §3",§(param1,§8X§.§<g§,!!param1.material ? §]X§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§1!$§),false,§9"3§);
      }
   }
}
