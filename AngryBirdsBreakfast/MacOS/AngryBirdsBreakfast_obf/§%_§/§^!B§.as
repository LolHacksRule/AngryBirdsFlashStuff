package §%_§
{
   import com.angrybirds.PreLoaderLoadingIndicator;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getDefinitionByName;
   
   public class §^!B§ extends MovieClip
   {
       
      
      protected var §=!J§:PreLoaderLoadingIndicator;
      
      public function §^!B§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§=!J§ = new PreLoaderLoadingIndicator();
            loop1:
            while(true)
            {
               addChild(this.§=!J§);
               loop2:
               for(; _loc2_; if(_loc1_ && _loc2_)
               {
                  continue;
               },§§goto(addr72))
               {
                  this.align();
                  loop3:
                  while(true)
                  {
                     addEventListener(Event.ENTER_FRAME,this.§"!c§);
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           continue loop2;
                        }
                        continue loop3;
                        addr72:
                        stage.addEventListener(Event.RESIZE,this.§[!C§);
                        if(!_loc1_)
                        {
                           continue loop1;
                        }
                     }
                     continue loop2;
                  }
               }
               continue loop0;
            }
         }
      }
      
      private function §"!c§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(currentFrame == totalFrames)
            {
               loop0:
               while(true)
               {
                  stop();
                  loop1:
                  while(true)
                  {
                     removeEventListener(Event.ENTER_FRAME,this.§"!c§);
                     loop2:
                     do
                     {
                        stage.removeEventListener(Event.RESIZE,this.§[!C§);
                        while(_loc2_)
                        {
                           if(!_loc3_)
                           {
                              removeChild(this.§=!J§);
                              do
                              {
                                 this.§ O§();
                              }
                              while(!(_loc2_ || _loc3_));
                              
                              if(_loc2_ || param1)
                              {
                                 continue loop2;
                              }
                              continue;
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                     while(!_loc2_);
                     
                     addr52:
                  }
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      private function §[!C§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.align();
         }
      }
      
      protected function align() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§=!J§);
            while(true)
            {
               §§pop().x = Math.round(stage.stageWidth / 2);
               §§goto(addr77);
            }
         }
         addr77:
         while(true)
         {
            §§push(this.§=!J§);
            if(_loc1_)
            {
               §§pop().y = Math.round(stage.stageHeight / 2);
               if(!(_loc2_ && this))
               {
                  break;
               }
               continue;
            }
            continue loop0;
         }
      }
      
      protected function § O§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Class = getDefinitionByName(this.§@!6§) as Class;
         if(_loc2_ || _loc2_)
         {
            addChild(DisplayObject(new _loc1_()));
         }
      }
      
      protected function get §@!6§() : String
      {
         return "AngryBirdsCustomCanvas";
      }
   }
}
