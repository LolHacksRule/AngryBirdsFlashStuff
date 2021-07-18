package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §#!4§.§+!S§;
   import §=!3§.§;!!§;
   
   public class §?! § extends §@!D§
   {
      
      public static const STATE_NAME:String = "StatePlay";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            STATE_NAME = "StatePlay";
         }
      }
      
      public function §?! §(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §?P§ = true;
            if(!_loc1_)
            {
               §§goto(addr39);
            }
            §§goto(addr46);
         }
         addr39:
         §+!$§ = new §2U§(this);
         if(!_loc1_)
         {
            addr46:
            §+!$§.init(§=!Z§.§;K§.Views.View_LevelEmbed[0]);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && param3))
         {
            §§push("RESTART_LEVEL");
            if(!_loc6_)
            {
               §§push(_loc4_);
               if(_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_ || param1)
                     {
                        addr90:
                        §§push(0);
                        if(!_loc5_)
                        {
                           addr131:
                        }
                     }
                     else
                     {
                        addr135:
                        §§push(2);
                        if(_loc5_ || param3)
                        {
                        }
                     }
                     §§goto(addr148);
                  }
                  else
                  {
                     §§push("ZOOM_IN");
                     if(_loc5_)
                     {
                        §§goto(addr97);
                     }
                     §§goto(addr133);
                  }
               }
               §§goto(addr105);
            }
            addr97:
            §§push(_loc4_);
            if(_loc5_ || this)
            {
               addr105:
               if(§§pop() === §§pop())
               {
                  if(_loc5_ || this)
                  {
                     §§push(1);
                     if(!(_loc6_ && param3))
                     {
                        §§goto(addr131);
                     }
                  }
                  else
                  {
                     §§goto(addr135);
                  }
                  §§goto(addr148);
               }
               else
               {
                  addr133:
                  §§push("ZOOM_OUT");
                  §§push(_loc4_);
               }
               §§goto(addr135);
            }
            if(§§pop() === §§pop())
            {
               §§goto(addr135);
            }
            else
            {
               §§push(3);
            }
            addr148:
            switch(§§pop())
            {
               case 0:
                  §26§.§!=§();
                  if(!_loc6_)
                  {
                     mNextState = §26§.STATE_NAME;
                     if(!(_loc6_ && param2))
                     {
                        break;
                     }
                     break;
                  }
                  addr56:
                  break;
               case 1:
                  §5!J§.doUserZoom(true);
                  if(!_loc6_)
                  {
                     break;
                  }
                  §§goto(addr56);
                  break;
               case 2:
                  §5!J§.doUserZoom(false);
                  if(!_loc6_)
                  {
                     break;
                  }
                  break;
               default:
                  super.uiInteractionHandler(param1,param2,param3);
                  if(!_loc6_)
                  {
                     §§goto(addr56);
                  }
            }
            return;
         }
         §§goto(addr90);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.run(param1);
            if(!(_loc3_ && param1))
            {
               if(mNextState.length > 0)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr47);
                  }
               }
               §§goto(addr47);
            }
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         addr47:
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      override public function getVictoryState() : String
      {
         return §"![§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §2!i§.STATE_NAME;
      }
   }
}
