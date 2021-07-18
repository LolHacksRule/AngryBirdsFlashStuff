package §+!c§
{
   import com.angrybirds.PreLoaderLoadingIndicator;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getDefinitionByName;
   
   public class §0!w§ extends MovieClip
   {
       
      
      protected var §1#F§:PreLoaderLoadingIndicator;
      
      public function §0!w§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            while(true)
            {
               this.§1#F§ = new PreLoaderLoadingIndicator();
            }
            addr103:
         }
         while(true)
         {
            addChild(this.§1#F§);
            for(; _loc2_; while(_loc2_ || _loc2_)
            {
               addEventListener(Event.ENTER_FRAME,this.§-!u§);
               while(_loc2_ || _loc2_)
               {
                  stage.addEventListener(Event.RESIZE,this.§9"q§);
                  if(_loc2_ || this)
                  {
                     return;
                  }
               }
            })
            {
               if(_loc2_)
               {
                  this.align();
                  continue;
               }
               §§goto(addr103);
            }
         }
      }
      
      private function §-!u§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(currentFrame == totalFrames)
            {
               loop0:
               while(true)
               {
                  stop();
                  while(true)
                  {
                     removeEventListener(Event.ENTER_FRAME,this.§-!u§);
                     while(!(_loc2_ && _loc2_))
                     {
                        while(true)
                        {
                           stage.removeEventListener(Event.RESIZE,this.§9"q§);
                           continue loop0;
                        }
                        if(!(_loc3_ || this))
                        {
                           continue;
                        }
                        §§goto(addr41);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr104);
      }
      
      private function §9"q§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.align();
         }
      }
      
      protected function align() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§1#F§);
            while(true)
            {
               §§pop().x = Math.round(stage.stageWidth / 2);
               §§goto(addr73);
            }
         }
         addr73:
         while(true)
         {
            §§push(this.§1#F§);
            if(_loc2_ || this)
            {
               §§pop().y = Math.round(stage.stageHeight / 2);
               if(_loc2_)
               {
                  break;
               }
               continue;
            }
            continue loop0;
         }
      }
      
      protected function §<#]§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Class = getDefinitionByName(this.mainClassName) as Class;
         if(!_loc3_)
         {
            addChild(DisplayObject(new _loc1_()));
         }
      }
      
      protected function get mainClassName() : String
      {
         return "AngryBirdsBlackCanvas";
      }
   }
}
