package § C§
{
   import §!F§.§>J§;
   import §!Y§.§[o§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §;8§.§3f§;
   import §`W§.§-[§;
   
   public class §8c§ extends §%H§
   {
       
      
      public function §8c§(param1:Boolean = false, param2:String = "CreditsState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §,R§ = new §#H§(this);
            loop0:
            while(true)
            {
               §,R§.init(§set §.§&!1§.Views.View_Credits[0]);
               addr87:
               while(true)
               {
                  §6!6§ = new §>J§(§[o§.§='§,"BACKGROUND_LOTUS");
                  while(true)
                  {
                     §,R§.getItemByName("MovieClip_Loading").setVisibility(true);
                     addr64:
                     while(_loc2_)
                     {
                        if(!_loc1_)
                        {
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §@!9§ = true;
            if(!(_loc1_ && _loc2_))
            {
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr87);
            }
            §§goto(addr64);
         }
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.activate();
         }
         §§push(§3f§.§7f§);
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!_loc2_)
         {
            §,R§.setText(_loc1_,"TextField_Version_Number");
            do
            {
               §,R§.getItemByName("TextField_Version_Number").setVisibility(true);
               do
               {
                  §,R§.getItemByName("TextField_Version_Number_Server").setVisibility(false);
               }
               while(_loc2_ && _loc1_);
               
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      override protected function readyToShowCredits() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §,R§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            if("CREDITS_CLOSE_BUTTON" === _loc4_)
            {
               addr67:
               §§push(0);
               if(_loc5_)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  mNextState = §>!9§.§?B§;
                  if(_loc6_ || param1)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr67);
      }
   }
}
