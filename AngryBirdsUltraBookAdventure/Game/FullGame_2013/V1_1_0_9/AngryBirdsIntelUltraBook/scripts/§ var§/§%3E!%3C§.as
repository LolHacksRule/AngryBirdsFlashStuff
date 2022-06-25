package § var§
{
   import §#I§.b2World;
   import §40§.§1!g§;
   import §40§.§5G§;
   import §`g§.Sprite;
   
   public class §>!<§ extends §3!5§
   {
       
      
      public function §>!<§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§ 4§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(super.activateSpecialPower(param1));
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  § !H§(§1!g§.BIRD_LAUNCH_FORCE);
                  if(!(_loc2_ && this))
                  {
                     break;
                  }
                  addr80:
                  while(true)
                  {
                     continue loop1;
                  }
               }
               if(!(_loc3_ || _loc3_))
               {
                  break;
               }
               §§push(true);
               if(_loc2_ && this)
               {
                  return §§pop();
               }
               addr79:
               if(_loc3_)
               {
                  return §§pop();
               }
            }
            §§goto(addr79);
            §§push(false);
         }
         §§goto(addr80);
      }
   }
}
