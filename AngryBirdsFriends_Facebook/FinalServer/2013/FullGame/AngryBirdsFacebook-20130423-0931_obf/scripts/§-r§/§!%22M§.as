package §-r§
{
   import §-p§.§4!`§;
   import §4!<§.§'!S§;
   import §<"F§.§"^§;
   import §>!G§.§20§;
   
   public class §!"M§ extends §4!`§
   {
      
      public static const §@!H§:Number = 10000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §@!H§ = 10000;
         }
      }
      
      public var §3!W§:Function = null;
      
      public var §0!$§:Boolean = false;
      
      private var §>!§:Array;
      
      public function §!"M§(param1:§'!S§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super(param1);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.init();
            do
            {
               this.§>!§ = [];
            }
            while(_loc1_);
            
         }
      }
      
      override protected function setGameOverState(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(!§1!v§)
            {
               while(true)
               {
                  §1!v§ = true;
                  addr150:
                  while(true)
                  {
                  }
               }
               addr147:
            }
            loop2:
            while(true)
            {
               if(new Date().time - mLevelMain.slingshot.timeOfLastBirdShot >= 6000)
               {
                  while(true)
                  {
                     if(!mLevelMain.slingshot.mDragging)
                     {
                        while(true)
                        {
                           if(mLevelMain.objects.isWorldAtSleep())
                           {
                              while(true)
                              {
                                 §[!t§ = Math.min(§[!t§,3500);
                                 addr123:
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       §§goto(addr147);
                                    }
                                    §§goto(addr60);
                                 }
                                 continue loop2;
                              }
                              addr107:
                           }
                           while(§[!t§ <= 0)
                           {
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    if(param1 == §4!`§.LEVEL_STATE_FAIL)
                                    {
                                       §§goto(addr60);
                                    }
                                    §§goto(addr24);
                                 }
                                 else
                                 {
                                    §§goto(addr107);
                                 }
                              }
                              addr60:
                              §§goto(addr143);
                           }
                           §§goto(addr20);
                        }
                     }
                     §§goto(addr131);
                  }
               }
               addr143:
               loop9:
               while(true)
               {
                  if(_loc3_)
                  {
                     continue loop6;
                  }
                  if(_loc3_)
                  {
                     break;
                  }
                  if(this.§3!W§ != null)
                  {
                     loop10:
                     while(true)
                     {
                        if(this.§0!$§)
                        {
                           addr24:
                           while(true)
                           {
                              this.changeGameState(param1,param2);
                              if(_loc4_ || this)
                              {
                                 if(!_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       addr20:
                                       return;
                                    }
                                    continue loop9;
                                 }
                                 addr94:
                                 if(_loc4_ || param2)
                                 {
                                    return;
                                 }
                                 continue loop3;
                              }
                              if(_loc4_)
                              {
                                 if(!_loc4_)
                                 {
                                    return;
                                 }
                                 addr131:
                                 continue;
                              }
                              continue loop10;
                           }
                           addr24:
                        }
                        if(_loc4_)
                        {
                           if(_loc3_ && _loc3_)
                           {
                              continue loop4;
                           }
                           if(!_loc4_)
                           {
                              break loop6;
                           }
                           this.§3!W§();
                        }
                        §§goto(addr94);
                     }
                  }
                  §§goto(addr24);
               }
               return;
            }
         }
         §§goto(addr144);
      }
      
      public function §`"H§() : Array
      {
         return this.§>!§;
      }
      
      public function §3!_§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>!§.push(param1);
            do
            {
               dispatchEvent(new §"^§(§"^§.§65§,param1));
            }
            while(!_loc3_);
            
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.update(param1);
         }
      }
      
      override public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super.changeGameState(param1,param2);
            do
            {
               dispatchEvent(new §20§(§20§.STATE_CHANGED,param1));
            }
            while(_loc3_);
            
         }
      }
      
      public function §88§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §1!v§ = true;
            while(true)
            {
               §[!t§ = 0;
               §§goto(addr68);
            }
         }
         addr68:
         while(true)
         {
            this.setGameOverState(LEVEL_STATE_FAIL,true);
            if(!_loc1_)
            {
               if(_loc2_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
   }
}
