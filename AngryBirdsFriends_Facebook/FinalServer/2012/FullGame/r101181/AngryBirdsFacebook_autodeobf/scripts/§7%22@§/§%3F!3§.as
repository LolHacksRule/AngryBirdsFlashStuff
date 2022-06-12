package §7"@§
{
   import § "C§.§+!D§;
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import §#!e§.§ <§;
   import §#!e§.§1"B§;
   import §#!e§.LevelManager;
   import §'!s§.§%?§;
   import §'!s§.§-d§;
   import §<a§.§+!B§;
   import §]!A§.;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §?!3§ extends §!!7§
   {
       
      
      protected var §'n§:§0]§;
      
      public function §?!3§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.init();
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            while(true)
            {
               §6w§.movieClip.graphics.beginFill(0);
            }
            addr105:
         }
         while(true)
         {
            §6w§.movieClip.graphics.drawRect(0,0,4000,4000);
            loop2:
            while(!(_loc1_ && _loc2_))
            {
               §6w§.movieClip.graphics.endFill();
               for(; LevelManager.§'!O§ != null; if(_loc1_ && this)
               {
                  continue;
               },if(!_loc2_)
               {
                  continue loop2;
               },§6w§.setText(this.getLoadingText(),"TextField_LevelLoading"),§§goto(addr60))
               {
                  if(_loc2_ || _loc1_)
                  {
                     continue;
                  }
                  addr60:
                  if(!_loc1_)
                  {
                     break;
                  }
                  §§goto(addr105);
               }
               return;
            }
         }
      }
      
      protected function getLoadingText() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("Loading ");
         if(!(_loc2_ && this))
         {
            §§push(LevelManager.§9"D§().writtenName);
            if(_loc1_)
            {
               §§push(§§pop() + §§pop());
               if(_loc2_)
               {
               }
               §§goto(addr56);
            }
            §§push(§§pop() + §§pop());
         }
         addr56:
         §§push(§§pop() + " - ");
         if(_loc1_ || _loc1_)
         {
            return § <§.§2!V§(LevelManager.§'!O§);
         }
      }
      
      override protected function initLevelMain(param1:§1"B§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super.initLevelMain(param1);
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(§#6§.§ q§);
            loop0:
            while(true)
            {
               §§push((§§pop() as §3T§).§9!Q§);
               addr262:
               while(true)
               {
                  §§push(false);
                  addr263:
                  while(true)
                  {
                     §§pop().§`W§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr184);
      }
      
      protected function §8_§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(param1.type != §+!D§.§25§)
            {
               §%?§.§4!>§();
               loop0:
               while(true)
               {
                  if(!_loc3_)
                  {
                     loop1:
                     while(true)
                     {
                        this.§'n§ = null;
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        if(!_loc3_)
                        {
                           break;
                        }
                        addr70:
                        while(true)
                        {
                           §%?§.§6!7§(§-d§.§]x§);
                           continue loop1;
                        }
                     }
                     return;
                     addr48:
                     addr56:
                  }
                  while(true)
                  {
                     §§goto(addr48);
                  }
               }
            }
            §§goto(addr70);
         }
         §§goto(addr56);
      }
      
      protected function §]"2§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §2!e§.§#!W§ = this.§'n§.data;
         }
         do
         {
            this.§'n§ = null;
         }
         while(_loc3_);
         
      }
      
      override public function isReady() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§'n§)
            {
               if(_loc1_ || this)
               {
                  §§push(false);
                  if(_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr42:
                  return super.isReady();
               }
               return §§pop();
            }
         }
         §§goto(addr42);
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.onLevelLoadError();
         }
         §§push("level-");
         if(_loc3_ || this)
         {
            §§push(§§pop() + LevelManager.§'!O§);
         }
         var _loc1_:String = §§pop();
         if(_loc3_ || _loc3_)
         {
            §+!B§.§ P§(_loc1_);
            while(true)
            {
               §%?§.§4!>§();
               while(!_loc2_)
               {
                  (§#6§.§ q§ as §3T§).§'w§();
                  if(!(_loc2_ && _loc1_))
                  {
                     return;
                     addr79:
                  }
               }
            }
         }
         §§goto(addr79);
      }
   }
}
