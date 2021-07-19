package §@!"§
{
   import §%8§.§@-§;
   import §0"!§.b2FilterData;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   
   public class §#+§ extends §4!X§
   {
       
      
      public function §#+§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number, param7:int)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2FilterData = super.createFilterData();
         if(!_loc2_)
         {
            _loc1_.§^!d§ = §"!]§;
            do
            {
               §§push(_loc1_);
               §§push(65535);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(§§pop() & ~§[<§);
               }
               §§pop().§+!+§ = §§pop();
            }
            while(!_loc3_);
            
         }
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§`!m§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super.updateBeforeRemoving(param1);
            loop0:
            while(param1)
            {
               if(_loc2_)
               {
                  while(true)
                  {
                     param1.§<!Q§(§=q§.§'!`§,§!!I§().GetPosition().x,§!!I§().GetPosition().y);
                  }
                  addr43:
               }
               while(true)
               {
                  if(_loc2_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      override public function collidedWith(param1:§#!v§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            health = 0;
         }
      }
   }
}
