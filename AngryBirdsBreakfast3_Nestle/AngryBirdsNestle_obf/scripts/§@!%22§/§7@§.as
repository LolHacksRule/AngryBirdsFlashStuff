package §@!"§
{
   import §%8§.§@-§;
   import §0"!§.b2FilterData;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   
   public class §7@§ extends §4!X§
   {
       
      
      protected var §+"$§:int = 0;
      
      public function §7@§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number, param7:int)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6);
            do
            {
               this.§+"$§ = param7;
            }
            while(_loc8_);
            
         }
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2FilterData = super.createFilterData();
         if(_loc3_)
         {
            §§push(itemName.toUpperCase() == "MISC_WHITE_BIRD_EGG");
            if(_loc3_)
            {
               if(!§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§pop();
                     addr92:
                     while(true)
                     {
                        §§push(itemName.toUpperCase() == "MISC_FOOD_EGG");
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop3;
                     }
                  }
                  addr91:
               }
               while(§§pop())
               {
                  if(_loc3_)
                  {
                     _loc1_.§^!d§ = §"!]§;
                  }
                  do
                  {
                     §§push(_loc1_);
                     §§push(65535);
                     if(!_loc2_)
                     {
                        §§push(§§pop() & ~§[<§);
                     }
                     §§pop().§+!+§ = §§pop();
                  }
                  while(!(_loc3_ || _loc3_));
                  
                  if(_loc3_)
                  {
                     addr57:
                     break;
                  }
                  §§goto(addr92);
               }
               return _loc1_;
            }
            §§goto(addr91);
         }
         §§goto(addr57);
      }
      
      override public function updateBeforeRemoving(param1:§`!m§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super.updateBeforeRemoving(param1);
            while(param1)
            {
               if(_loc2_)
               {
                  if(_loc2_)
                  {
                     param1.§<!Q§(this.§+"$§,§!!I§().GetPosition().x,§!!I§().GetPosition().y);
                     addr67:
                     break;
                  }
                  continue;
               }
               §§goto(addr67);
            }
            return;
         }
         §§goto(addr67);
      }
   }
}
