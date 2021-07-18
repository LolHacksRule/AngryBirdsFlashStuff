package §5!V§
{
   import §"v§.§9"§;
   import §"v§.§]!B§;
   import §&"5§.§0g§;
   import §&"5§.§1!A§;
   import §&"5§.§7!P§;
   import §+!o§.§?"-§;
   import §+!o§.§^!Q§;
   import §=!#§.§2"-§;
   import §=!#§.§`"=§;
   import §default§.Sprite;
   import flash.display.Stage;
   
   public class §1!L§ extends §!w§
   {
       
      
      private var §'";§:§9"§;
      
      public function §1!L§(param1:Stage)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super(param1);
         }
      }
      
      override protected function initLevelCamera(param1:§9"§) : §`"=§
      {
         return new §2"-§(this,param1);
      }
      
      override protected function initAnimationManager(param1:§7!P§) : §1!A§
      {
         return new §0g§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§9"§) : §?"-§
      {
         return new §^!Q§(this,param1,new Sprite());
      }
      
      public function §6!P§() : §]!B§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§]!B§ = new §]!B§();
         if(!_loc3_)
         {
            _loc1_.mScoreGold = §"!J§.mScoreGold;
            loop0:
            while(true)
            {
               _loc1_.mScoreSilver = §"!J§.mScoreSilver;
               loop1:
               while(true)
               {
                  § Y§.writeCameraInformation(_loc1_);
                  while(true)
                  {
                     §&!^§.writeObjectInformation(_loc1_);
                     while(_loc2_)
                     {
                        if(_loc3_)
                        {
                           continue loop1;
                        }
                        while(_loc2_ || this)
                        {
                           _loc1_.theme = §+!S§.getCurrentThemeName();
                           if(!_loc3_)
                           {
                              if(_loc2_)
                              {
                                 return _loc1_;
                                 addr37:
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §&!3§.writeSlingshotInformation(_loc1_);
            §§goto(addr52);
         }
         §§goto(addr37);
      }
   }
}
