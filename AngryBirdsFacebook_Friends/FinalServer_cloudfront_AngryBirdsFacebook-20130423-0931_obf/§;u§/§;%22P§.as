package §;u§
{
   import §,l§.§+I§;
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §5!Y§.§9"6§;
   import §5!Y§.§]!I§;
   import §9!n§.§!J§;
   import §9!n§.§0"T§;
   import §9!n§.LevelManager;
   import §9@§.§@q§;
   import §@!"§.§?l§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §;"P§ extends §-!v§
   {
       
      
      protected var §!"=§:§3d§;
      
      public function §;"P§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
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
            super.init();
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.activate();
            while(true)
            {
               §2"@§.movieClip.graphics.beginFill(0);
               addr107:
               while(true)
               {
                  §2"@§.movieClip.graphics.drawRect(0,0,4000,4000);
               }
               addr55:
               if(_loc2_ || _loc1_)
               {
                  §2"@§.setText(this.getLoadingText(),"TextField_LevelLoading");
                  addr67:
                  if(!(_loc2_ || this))
                  {
                     loop3:
                     for(; LevelManager.§ T§ != null; §§goto(addr67))
                     {
                        if(_loc1_ && _loc1_)
                        {
                           continue;
                        }
                        addr36:
                        if(_loc2_ || _loc2_)
                        {
                           if(_loc2_)
                           {
                              §§goto(addr55);
                           }
                           else
                           {
                              §§goto(addr107);
                           }
                        }
                        while(true)
                        {
                           §2"@§.movieClip.graphics.endFill();
                           continue loop3;
                           §§goto(addr36);
                        }
                     }
                     §§goto(addr20);
                  }
                  addr20:
                  return;
               }
            }
         }
         §§goto(addr100);
      }
      
      protected function getLoadingText() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("Loading ");
         if(_loc2_)
         {
            §§push(LevelManager.§`"Q§().writtenName);
            if(!_loc1_)
            {
               §§push(§§pop() + §§pop());
               if(_loc2_)
               {
                  §§push(§§pop() + " - ");
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr47);
               }
               §§push(§!J§.§;6§(LevelManager.§ T§));
            }
            §§push(§§pop() + §§pop());
         }
         addr47:
         return §§pop();
      }
      
      override protected function initLevelMain(param1:§0"T§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.initLevelMain(param1);
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§?l§.§ "G§);
            loop0:
            while(true)
            {
               §§push((§§pop() as §%"S§).§96§);
               addr268:
               while(true)
               {
                  §§push(false);
                  addr269:
                  while(true)
                  {
                     §§pop().§<!J§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr225);
      }
      
      private function §+S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§9"%§);
            if(_loc2_ || _loc1_)
            {
               §§push(§§pop().§7"T§);
               if(!(_loc1_ && _loc1_))
               {
                  if(§§pop().§+!!§())
                  {
                     if(_loc2_ || this)
                     {
                        addr73:
                        this.§9"%§.§7"T§.§&!§(LevelManager.§ T§,true);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr73);
      }
      
      protected function §;H§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.type != §9G§.§33§)
            {
               §9"6§.§#!o§();
               while(true)
               {
                  if(_loc2_)
                  {
                     loop1:
                     while(true)
                     {
                        this.§!"=§ = null;
                        if(!_loc2_)
                        {
                           break;
                        }
                        if(!_loc3_)
                        {
                           return;
                        }
                        addr59:
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  §§goto(addr59);
               }
            }
            while(true)
            {
               §9"6§.§>_§(§]!I§.§`'§);
            }
         }
         §§goto(addr59);
      }
      
      protected function §@t§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §+"9§.§%?§ = this.§!"=§.data;
         }
         do
         {
            this.§!"=§ = null;
         }
         while(!_loc3_);
         
      }
      
      override public function isReady() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§!"=§)
            {
               if(_loc2_)
               {
                  §§push(false);
                  if(!(_loc1_ && _loc1_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr43:
                  return super.isReady();
               }
               return §§pop();
            }
         }
         §§goto(addr43);
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.onLevelLoadReady();
         }
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.onLevelLoadError();
         }
         §§push("level-");
         if(!(_loc3_ && _loc1_))
         {
            §§push(§§pop() + LevelManager.§ T§);
         }
         var _loc1_:String = §§pop();
         if(!(_loc3_ && _loc1_))
         {
            §@q§.§<d§(_loc1_);
         }
         while(true)
         {
            §9"6§.§#!o§();
            while(!(_loc3_ && _loc3_))
            {
               (§?l§.§ "G§ as §%"S§).§%A§();
               if(!_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function get §9"%§() : §+I§
      {
         return §%"S§.§!C§.§9"%§;
      }
   }
}
