package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§9B§;
   import §3!`§.b2FilterData;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §?s§.§8K§;
   
   public class §2!-§ extends §>!9§
   {
       
      
      public function §2!-§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number, param7:int)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2FilterData = super.createFilterData();
         if(_loc3_)
         {
            _loc1_.§9!W§ = §,O§;
            do
            {
               §§push(_loc1_);
               §§push(65535);
               if(_loc3_)
               {
                  §§push(§§pop() & ~§8"!§);
               }
               §§pop().§`"%§ = §§pop();
            }
            while(_loc2_ && this);
            
         }
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§3!#§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.updateBeforeRemoving(param1);
            while(param1)
            {
               if(_loc2_ && _loc2_)
               {
                  break;
               }
               addr73:
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               param1.§ !%§(§@q§.§5!]§,§^`§().GetPosition().x,§^`§().GetPosition().y);
               addr51:
               §§goto(addr73);
            }
            return;
         }
         §§goto(addr51);
      }
      
      override public function collidedWith(param1:§<!r§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            health = 0;
         }
      }
   }
}
