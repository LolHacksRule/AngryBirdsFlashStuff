package § C§
{
   import §!Y§.§[o§;
   import §2]§.§set §;
   import §`W§.§-[§;
   
   public class §5V§ extends §+!"§
   {
       
      
      public function §5V§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
         }
      }
      
      override protected function getViewXML() : XML
      {
         return §set §.§&!1§.Views.View_LevelEndEmbedFailRio[0];
      }
      
      override protected function showButtons() : void
      {
      }
      
      override protected function hideButtons() : void
      {
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.activate();
            do
            {
               §[o§.§='§.background.§1!>§();
            }
            while(!_loc2_);
            
         }
      }
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || param1)
         {
            §§push("REPLAY");
            if(!(_loc5_ && this))
            {
               §§push(_loc4_);
               if(!(_loc5_ && param2))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc5_)
                     {
                        addr105:
                        §§push(0);
                        if(_loc6_ || param2)
                        {
                        }
                     }
                     else
                     {
                        addr117:
                        §§push(1);
                        if(_loc5_ && param1)
                        {
                        }
                     }
                     §§goto(addr130);
                  }
                  else
                  {
                     §§goto(addr116);
                  }
               }
               §§goto(addr116);
            }
            addr116:
            if("MENU" === _loc4_)
            {
               §§goto(addr117);
            }
            else
            {
               §§push(2);
            }
            addr130:
            switch(§§pop())
            {
               case 0:
                  §7!6§.§<!G§();
                  if(!_loc5_)
                  {
                     mNextState = §`^§();
                     addr32:
                     break;
                     addr47:
                  }
                  break;
               case 1:
                  mNextState = §>!9§.§?B§;
                  if(!_loc5_)
                  {
                     break;
                  }
                  break;
               default:
                  super.uiInteractionHandler(param1,param2,param3);
                  if(!_loc5_)
                  {
                     if(_loc6_)
                     {
                        if(true)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr47);
                     }
                     §§goto(addr32);
                  }
            }
            return;
         }
         §§goto(addr105);
      }
   }
}
