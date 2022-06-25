package §_-T-§
{
   import §_-0A-§.§_-08e§;
   import §_-7§.§_-42§;
   import §_-7§.§_-EJ§;
   import §_-Ga§.LevelManager;
   import §_-Ga§.§_-bm§;
   import §_-Hb§.§_-P-§;
   import §_-Hb§.§_-a5§;
   import §_-Hb§.§_-ur§;
   import §_-ad§.§_-MG§;
   import §_-eS§.§_-OY§;
   import §_-qO§.§ in§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §_-tD§ extends §_-MG§
   {
       
      
      protected var §_-22§:§_-ur§;
      
      public function §_-tD§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.init();
            loop0:
            while(true)
            {
               §_-s0§.movieClip.graphics.beginFill(0);
               while(true)
               {
                  §_-s0§.movieClip.graphics.drawRect(0,0,4000,4000);
                  while(!_loc1_)
                  {
                     if(_loc2_)
                     {
                        §_-s0§.movieClip.graphics.endFill();
                        if(_loc2_)
                        {
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.activate();
            while(LevelManager.§_-HM§ != null)
            {
               if(_loc2_)
               {
                  §_-s0§.setText(this.§_-IF§(),"TextField_LevelLoading");
               }
               if(_loc2_ || this)
               {
                  addr53:
                  break;
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      protected function §_-IF§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(" - ");
         if(!(_loc2_ && _loc2_))
         {
            return §§pop() + §_-08e§.§_-i8§(LevelManager.§_-HM§);
         }
      }
      
      override protected function initLevelMain(param1:§_-bm§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super.initLevelMain(param1);
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(§ in§.§_-HY§);
            loop0:
            while(true)
            {
               §§push((§§pop() as §_-rG§).§_-0C7§);
               addr243:
               while(true)
               {
                  §§push(false);
                  addr244:
                  while(true)
                  {
                     §§pop().§_-LA§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr195);
      }
      
      protected function §_-f4§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(param1.type == §_-a5§.§_-Gy§)
            {
               if(_loc3_ || _loc3_)
               {
                  §_-EJ§.§_-QC§(§_-42§.§_-06o§);
               }
               while(_loc2_ && param1)
               {
               }
               return;
               addr62:
            }
            else
            {
               §_-EJ§.§_-8H§();
               while(true)
               {
               }
               addr68:
            }
            while(true)
            {
               this.§_-22§ = null;
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr68);
            }
            §§goto(addr45);
         }
         §§goto(addr62);
      }
      
      protected function §_-0DT§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §_-e3§.§_-00p§ = this.§_-22§.data;
            do
            {
               this.§_-22§ = null;
            }
            while(!_loc3_);
            
         }
      }
      
      override public function isReady() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§_-22§)
            {
               if(_loc2_ || _loc2_)
               {
                  addr44:
                  §§push(false);
                  if(_loc2_ || this)
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.onLevelLoadError();
         }
         §§push("level-");
         if(_loc3_ || _loc2_)
         {
            §§push(§§pop() + LevelManager.§_-HM§);
         }
         var _loc1_:String = §§pop();
         if(_loc3_ || this)
         {
            §_-OY§.§_-ta§(_loc1_);
         }
         do
         {
            §_-EJ§.§_-8H§();
            do
            {
               (§ in§.§_-HY§ as §_-rG§).§_-09i§();
            }
            while(_loc2_);
            
         }
         while(!(_loc3_ || _loc3_));
         
      }
   }
}
