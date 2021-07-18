package §9#@§
{
   import §!!U§.Sprite;
   import §2"Y§.§%"3§;
   import §69§.§""H§;
   import §69§.§'U§;
   import §69§.§>!b§;
   import §7!F§.§7§;
   
   public class §##D§ extends §1"6§
   {
       
      
      public function §##D§(param1:§""H§, param2:Number, param3:§7#5§, param4:§%"3§, param5:Number, param6:Boolean = true)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      override public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_)
         {
            super.setScreenOffset(param1,param2,param3,param4,param5,param6,param7);
            if(_loc9_ || this)
            {
               if(§@#+§ != null)
               {
                  var _loc8_:* = §?"I§.id;
                  if(!_loc10_)
                  {
                     if("theme_deathstar_hangar_1" === _loc8_)
                     {
                        addr68:
                        §§push(0);
                        if(!_loc9_)
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
                           §@#+§.y += 220;
                           if(!_loc10_)
                           {
                              break;
                           }
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr68);
                  addr47:
               }
               addr88:
               return;
            }
         }
         §§goto(addr47);
      }
      
      override protected function createLayer(param1:§>!b§, param2:Sprite, param3:§7#5§, param4:Number) : §2"A§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§'U§ = null;
         if(_loc6_ || this)
         {
            if(param1 is §'U§)
            {
               addr40:
               _loc5_ = param1 as §'U§;
               if(_loc6_ || param2)
               {
                  return new §>#0§(_loc5_,param2,param3,param4);
               }
            }
            return super.createLayer(param1,param2,param3,param4);
         }
         §§goto(addr40);
      }
   }
}
