package §%!0§
{
   import §&!P§.§^!!§;
   import §&!P§.§`>§;
   import §+!-§.Sprite;
   import §,!g§.§"!P§;
   import §,!g§.§>7§;
   import §;"7§.§"!m§;
   import §;"7§.§5!O§;
   import §;"7§.§="<§;
   import §<i§.§'!e§;
   import §<i§.§-"?§;
   import flash.display.Stage;
   
   public class §&@§ extends §,4§
   {
       
      
      private var §,w§:§'!e§;
      
      public function §&@§(param1:Stage)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super(param1);
         }
      }
      
      override protected function initLevelCamera(param1:§'!e§) : §"!P§
      {
         return new §>7§(this,param1);
      }
      
      override protected function initAnimationManager(param1:§="<§) : §5!O§
      {
         return new §"!m§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§'!e§) : §^!!§
      {
         return new §`>§(this,param1,new Sprite());
      }
      
      public function §1!l§() : §-"?§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§-"?§ = new §-"?§();
         if(_loc3_)
         {
            _loc1_.mScoreGold = §]"§.mScoreGold;
            loop0:
            while(true)
            {
               _loc1_.mScoreSilver = §]"§.mScoreSilver;
               addr90:
               while(true)
               {
                  §8!j§.writeCameraInformation(_loc1_);
                  while(true)
                  {
                     §#!8§.writeObjectInformation(_loc1_);
                     addr65:
                     while(!_loc2_)
                     {
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         loop4:
         while(true)
         {
            §7R§.writeSlingshotInformation(_loc1_);
            while(_loc3_)
            {
               _loc1_.theme = §]q§.getCurrentThemeName();
               if(!(_loc3_ || _loc1_))
               {
                  continue;
               }
               if(_loc3_)
               {
                  break loop4;
               }
               §§goto(addr65);
            }
            §§goto(addr90);
         }
         return _loc1_;
      }
   }
}
