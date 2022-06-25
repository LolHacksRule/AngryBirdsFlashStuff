package §40§
{
   import §0!N§.§=+§;
   import §0!N§.LevelManager;
   import §0X§.§'N§;
   import §4e§.§=!p§;
   import §9!5§.§#!c§;
   import §9!y§.§2v§;
   import §9!y§.§@M§;
   import §;!5§.§ v§;
   import §;!5§.§!e§;
   import §;!5§.§3!^§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import §true§.§ _§;
   
   public class §?H§ extends §#!c§
   {
       
      
      protected var §[!N§:§!e§;
      
      public function §?H§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
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
         if(!(_loc2_ && _loc1_))
         {
            super.init();
            while(true)
            {
               §5!P§.movieClip.graphics.beginFill(0);
               addr45:
               if(_loc2_ && this)
               {
                  continue;
               }
               return;
               addr62:
            }
         }
         while(true)
         {
            §5!P§.movieClip.graphics.drawRect(0,0,4000,4000);
            while(!(_loc2_ && _loc2_))
            {
               §5!P§.movieClip.graphics.endFill();
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr45);
            }
         }
         §§goto(addr62);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            while(LevelManager.§4Y§ != null)
            {
               if(_loc2_)
               {
                  if(_loc1_)
                  {
                     continue;
                  }
                  §5!P§.setText(this.§-u§(),"TextField_LevelLoading");
               }
               break;
            }
            return;
         }
         §§goto(addr43);
      }
      
      protected function §-u§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(" - ");
         if(_loc2_ || _loc2_)
         {
            return §§pop() + §=!p§.§1!j§(LevelManager.§4Y§);
         }
      }
      
      override protected function initLevelMain(param1:§=+§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.initLevelMain(param1);
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§ _§.§1s§);
            loop0:
            while(true)
            {
               §§push((§§pop() as §@!9§).§6!H§);
               addr253:
               while(true)
               {
                  §§push(false);
                  addr254:
                  while(true)
                  {
                     §§pop().§default§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr157);
      }
      
      protected function §"b§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(param1.type != §3!^§.§2_§)
            {
               §@M§.§-5§();
               loop0:
               while(true)
               {
                  if(_loc3_ || _loc3_)
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                     addr81:
                     while(true)
                     {
                        §@M§.§!!g§(§2v§.§'1§);
                     }
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
               return;
               addr60:
            }
            §§goto(addr81);
         }
         §§goto(addr60);
      }
      
      protected function §3!R§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §-!,§.§[l§ = this.§[!N§.data;
         }
         do
         {
            this.§[!N§ = null;
         }
         while(_loc2_);
         
      }
      
      override public function isReady() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§[!N§)
            {
               if(_loc1_)
               {
                  §§push(false);
                  if(!(_loc2_ && _loc2_))
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
         if(_loc3_)
         {
            super.onLevelLoadError();
         }
         §§push("level-");
         if(!_loc2_)
         {
            §§push(§§pop() + LevelManager.§4Y§);
         }
         var _loc1_:String = §§pop();
         if(_loc3_)
         {
            §'N§.§`!]§(_loc1_);
            while(true)
            {
               §@M§.§-5§();
               loop1:
               while(_loc3_ || this)
               {
                  while(true)
                  {
                     (§ _§.§1s§ as §@!9§).§@5§();
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr75);
      }
   }
}
