package §0o§
{
   import § !k§.§%]§;
   import §!!§.§>4§;
   import §!!§.LevelManager;
   import §&!h§.§]V§;
   import §4!C§.§"!m§;
   import §4!C§.§]!X§;
   import §4!C§.§^!g§;
   import §5!t§.§+!g§;
   import §5i§.§4!]§;
   import §9!Q§.§2!S§;
   import §9!Q§.§7o§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class § L§ extends §%]§
   {
       
      
      protected var §13§:§"!m§;
      
      public function § L§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
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
            §`-§.movieClip.graphics.beginFill(0);
            while(true)
            {
               §`-§.movieClip.graphics.drawRect(0,0,4000,4000);
               while(_loc1_)
               {
                  §`-§.movieClip.graphics.endFill();
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
            while(LevelManager.§^!F§ != null)
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
               §`-§.setText(this.§#!S§(),"TextField_LevelLoading");
               §§goto(addr68);
            }
            return;
         }
         §§goto(addr63);
      }
      
      protected function §#!S§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(" - ");
         if(!_loc1_)
         {
            return §§pop() + §+!g§.§,!X§(LevelManager.§^!F§);
         }
      }
      
      override protected function initLevelMain(param1:§>4§) : void
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
            §§push(§4!]§.§7!G§);
            loop0:
            while(true)
            {
               §§push((§§pop() as §[!m§).§7!6§);
               addr248:
               while(true)
               {
                  §§push(false);
                  addr249:
                  while(true)
                  {
                     §§pop().§?0§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr207);
      }
      
      protected function §8!j§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(param1.type != §^!g§.§]P§)
            {
               §7o§.§ "§();
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
               §7o§.§-Y§(§2!S§.§2u§);
            }
         }
         §§goto(addr90);
      }
      
      protected function §]>§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §>Z§.§[!1§ = this.§13§.data;
         }
         do
         {
            this.§13§ = null;
         }
         while(_loc2_ && this);
         
      }
      
      override public function isReady() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§13§)
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
            §§push(§§pop() + LevelManager.§^!F§);
         }
         var _loc1_:String = §§pop();
         if(!_loc3_)
         {
            §]V§.§4!^§(_loc1_);
         }
         while(true)
         {
            §7o§.§ "§();
            while(!_loc3_)
            {
               (§4!]§.§7!G§ as §[!m§).§`!w§();
               if(_loc2_ || _loc3_)
               {
                  return;
               }
            }
         }
      }
   }
}
