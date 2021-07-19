package §'!O§
{
   import §9b§.§"!S§;
   import §^!5§.§,4§;
   
   public class §<r§ extends §2!U§
   {
      
      public static const §@o§:String = "LevelLoadStateClassic";
      
      private static var §93§:Number;
      
      private static var §^!B§:String;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §@o§ = "LevelLoadStateClassic";
         }
         do
         {
            §^!B§ = StatePlay.§@o§;
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function §<r§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super(param1,param2);
         }
      }
      
      public static function §4=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §,4§.§&O§(§,4§.§;!4§());
         }
         do
         {
            §9q§ = §4f§;
         }
         while(!_loc2_);
         
      }
      
      public static function §5Y§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §3!6§ = param1;
            do
            {
               §9q§ = §4f§;
            }
            while(_loc3_ && _loc2_);
            
         }
      }
      
      public static function §0^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§"!S§.§-!7§.camera)
            {
               while(true)
               {
                  §93§ = §"!S§.§-!7§.camera.manualScale;
                  addr68:
                  while(true)
                  {
                  }
               }
               addr62:
            }
            while(true)
            {
               §9q§ = §4f§;
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr62);
            }
            return;
         }
         §§goto(addr68);
      }
      
      public static function get §>!D§() : String
      {
         return §^!B§;
      }
      
      public static function set §>!D§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §^!B§ = param1;
         }
      }
      
      override public function initLevelLoad() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §8!@§(§,4§.§6W§(§,4§.§0!$§));
            loop0:
            while(!isNaN(§93§))
            {
               if(!(_loc2_ && this))
               {
                  §"!S§.§-!7§.camera.§5s§(§93§);
               }
               while(true)
               {
                  §93§ = NaN;
                  if(!_loc2_)
                  {
                     if(_loc1_ || _loc2_)
                     {
                        break loop0;
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr74);
      }
      
      override protected function setInitialState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            sHighscoreSidebar.enableLogOutButton(false);
            loop0:
            while(true)
            {
               §§push(§^!B§);
               loop1:
               while(true)
               {
                  §§push(§#!_§.§@o§);
                  addr136:
                  while(true)
                  {
                     §§push(§§pop() == §§pop());
                     if(!_loc1_)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 §]!9§.getItemByName("Button_Tutorial").setVisibility(true);
                                 loop4:
                                 while(_loc2_)
                                 {
                                    §]!9§.getItemByName("Button_Credits").setVisibility(false);
                                    while(true)
                                    {
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          if(_loc2_ || _loc2_)
                                          {
                                             if(!(_loc2_ || _loc1_))
                                             {
                                                if(_loc1_)
                                                {
                                                   break loop3;
                                                }
                                                sHighscoreSidebar.enableCreditsButton(false);
                                             }
                                             else
                                             {
                                                addr98:
                                             }
                                             continue;
                                             break;
                                          }
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    §§goto(addr20);
                                 }
                                 addr129:
                                 if(_loc1_)
                                 {
                                    continue loop0;
                                 }
                                 §]!9§.getItemByName("Button_Credits").setVisibility(true);
                                 §§goto(addr98);
                              }
                              break;
                              addr114:
                              §§push(§§pop() == §§pop());
                              if(!(_loc1_ && _loc1_))
                              {
                                 continue;
                              }
                              addr151:
                              while(true)
                              {
                                 §§pop();
                                 continue loop1;
                                 §§goto(addr114);
                              }
                              addr151:
                           }
                           §]!9§.getItemByName("Button_Tutorial").setVisibility(false);
                           §§goto(addr129);
                           addr122:
                        }
                     }
                     §§goto(addr151);
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      override public function isReady() : Boolean
      {
         return §"!S§.§-!7§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            mNextState = §^!B§;
         }
      }
   }
}
