package §'!J§
{
   import §'!Q§.§ §;
   import §3!G§.§ y§;
   import §3!G§.LevelManager;
   import §7X§.§!!5§;
   import §7X§.§+!p§;
   import §7X§.§7^§;
   import §;H§.§;W§;
   import §>! §.§^!c§;
   import §?N§.§!!m§;
   import §?N§.§]!e§;
   import §]+§.§@!J§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §=4§ extends §;W§
   {
       
      
      protected var §>1§:§7^§;
      
      public function §=4§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
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
         if(!_loc2_)
         {
            super.init();
         }
         loop0:
         do
         {
            §&!m§.movieClip.graphics.beginFill(0);
            while(true)
            {
               §&!m§.movieClip.graphics.drawRect(0,0,4000,4000);
               while(_loc1_)
               {
                  §&!m§.movieClip.graphics.endFill();
                  if(!(_loc2_ && _loc1_))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc2_);
         
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            while(LevelManager.§%n§ != null)
            {
               if(!(_loc2_ || _loc2_))
               {
                  break;
               }
               addr68:
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               addr63:
               §&!m§.setText(this.§const§(),"TextField_LevelLoading");
               §§goto(addr68);
            }
            return;
         }
         §§goto(addr63);
      }
      
      protected function §const§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(" - ");
         if(!_loc1_)
         {
            return §§pop() + § §.§'!X§(LevelManager.§%n§);
         }
      }
      
      override protected function initLevelMain(param1:§ y§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.initLevelMain(param1);
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§^!c§.§2!w§);
            loop0:
            while(true)
            {
               §§push((§§pop() as §[!P§).§99§);
               addr248:
               while(true)
               {
                  §§push(false);
                  addr249:
                  while(true)
                  {
                     §§pop().§&§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr207);
      }
      
      protected function §&h§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(param1.type != §!!5§.§[!§)
            {
               §]!e§.§-!1§();
               while(true)
               {
                  if(_loc3_ || param1)
                  {
                     continue;
                  }
               }
            }
            while(true)
            {
               §]!e§.§>k§(§!!m§.§[!x§);
            }
         }
         §§goto(addr90);
      }
      
      protected function §=!r§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §-!d§.§6![§ = this.§>1§.data;
         }
         do
         {
            this.§>1§ = null;
         }
         while(_loc2_ && this);
         
      }
      
      override public function isReady() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§>1§)
            {
               if(!(_loc1_ && _loc1_))
               {
                  addr44:
                  §§push(false);
                  if(_loc2_ || _loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr53:
                  return super.isReady();
               }
               return §§pop();
            }
            §§goto(addr53);
         }
         §§goto(addr44);
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super.onLevelLoadError();
         }
         §§push("level-");
         if(!(_loc3_ && _loc3_))
         {
            §§push(§§pop() + LevelManager.§%n§);
         }
         var _loc1_:String = §§pop();
         if(!_loc3_)
         {
            §@!J§.§4t§(_loc1_);
         }
         while(true)
         {
            §]!e§.§-!1§();
            while(!_loc3_)
            {
               (§^!c§.§2!w§ as §[!P§).§=!g§();
               if(_loc2_ || _loc3_)
               {
                  return;
               }
            }
         }
      }
   }
}
