package §`!#§
{
   import §"!i§.§"!'§;
   import §"!i§.LevelManager;
   import §+!f§.§@!c§;
   import §-^§.§4-§;
   import §-^§.§45§;
   import §-^§.§7!6§;
   import §2!U§.§3!;§;
   import §;!y§.§,!s§;
   import §<-§.§!!K§;
   import §^!m§.§4!i§;
   import §^!m§.§;0§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §+9§ extends §3!;§
   {
       
      
      protected var §'[§:§45§;
      
      public function §+9§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
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
         if(!_loc1_)
         {
            super.init();
         }
         while(true)
         {
            §'!Q§.movieClip.graphics.beginFill(0);
            while(!_loc1_)
            {
               §'!Q§.movieClip.graphics.drawRect(0,0,4000,4000);
               while(!_loc1_)
               {
                  §'!Q§.movieClip.graphics.endFill();
                  if(!(_loc1_ && this))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.activate();
            loop0:
            while(LevelManager.§"L§ != null)
            {
               if(_loc1_)
               {
                  while(true)
                  {
                     §'!Q§.setText(this.§3!0§(),"TextField_LevelLoading");
                  }
                  addr45:
               }
               while(true)
               {
                  if(!_loc2_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      protected function §3!0§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(" - ");
         if(_loc1_ || _loc2_)
         {
            return §§pop() + §@!c§.§<!N§(LevelManager.§"L§);
         }
      }
      
      override protected function initLevelMain(param1:§"!'§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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
            §§push(§,!s§.§]!J§);
            loop0:
            while(true)
            {
               §§push((§§pop() as §<t§).§`X§);
               addr268:
               while(true)
               {
                  §§push(false);
                  addr269:
                  while(true)
                  {
                     §§pop().§!r§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr210);
      }
      
      protected function §6!S§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.type != §4-§.§4!m§)
            {
               §4!i§.§^!P§();
               loop0:
               while(true)
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
                  addr79:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               §4!i§.§>t§(§;0§.§-!W§);
            }
         }
         §§goto(addr79);
      }
      
      protected function §0j§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §>!4§.§`!e§ = this.§'[§.data;
            do
            {
               this.§'[§ = null;
            }
            while(!(_loc2_ || _loc3_));
            
         }
      }
      
      override public function isReady() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§'[§)
            {
               if(_loc2_)
               {
                  addr39:
                  §§push(false);
                  if(!(_loc1_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr48:
                  return super.isReady();
               }
               return §§pop();
            }
            §§goto(addr48);
         }
         §§goto(addr39);
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super.onLevelLoadError();
         }
         §§push("level-");
         if(!_loc2_)
         {
            §§push(§§pop() + LevelManager.§"L§);
         }
         var _loc1_:String = §§pop();
         if(!_loc2_)
         {
            §!!K§.§<J§(_loc1_);
            while(true)
            {
               §4!i§.§^!P§();
               while(_loc3_ || _loc1_)
               {
                  (§,!s§.§]!J§ as §<t§).§6"!§();
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr69:
               }
            }
         }
         §§goto(addr69);
      }
   }
}
