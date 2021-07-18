package § "@§
{
   import §'!A§.§-!S§;
   import §-!n§.§5!U§;
   import §0![§.§7!Y§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   
   public class §;q§ extends §7!Y§
   {
      
      public static const §'=§:String = "LevelEndEditorFailState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §'=§ = "LevelEndEditorFailState";
         }
      }
      
      public function §;q§(param1:Boolean = false, param2:String = "LevelEndEditorFailState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
         }
         do
         {
            §?E§ = new §'s§(this);
            do
            {
               §?E§.init(§`7§.§>"?§.Views.View_LevelEndFailEditor[0]);
            }
            while(_loc1_);
            
         }
         while(_loc1_);
         
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_ || this)
         {
            if("REPLAY" !== _loc4_)
            {
               if("MENU" === _loc4_)
               {
                  §§goto(addr132);
               }
               else
               {
                  §§push(2);
               }
               addr155:
               switch(§§pop())
               {
                  case 0:
                     §%!3§.§4[§(StateLevelEditorTestPlay.§'=§);
                     mNextState = §%!3§.§'=§;
                     if(!(_loc6_ && param3))
                     {
                        break;
                     }
                     break;
                     addr104:
                  case 1:
                     §5!U§.§9&§();
                     if(!(_loc6_ && this))
                     {
                        §%!3§.§4[§(StateLevelEditor.§'=§);
                        addr41:
                        mNextState = §%!3§.§'=§;
                        if(!_loc6_)
                        {
                           if(_loc5_ || param2)
                           {
                              break;
                           }
                           §§goto(addr104);
                        }
                        break;
                        addr61:
                     }
                     break;
                  default:
                     super.uiInteractionHandler(param1,param2,param3);
                     if(_loc5_ || param3)
                     {
                        if(_loc5_ || param1)
                        {
                           if(true)
                           {
                              break;
                           }
                        }
                        else
                        {
                           §§goto(addr61);
                        }
                        §§goto(addr41);
                     }
               }
               return;
            }
            if(_loc5_)
            {
               addr120:
               §§push(0);
               if(_loc6_ && this)
               {
               }
            }
            else
            {
               addr132:
               §§push(1);
               if(_loc6_ && param1)
               {
               }
            }
            §§goto(addr155);
            §§goto(addr132);
         }
         §§goto(addr120);
      }
   }
}
