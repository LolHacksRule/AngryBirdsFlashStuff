package §^[§
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §>!B§ extends Sprite
   {
       
      
      public function §>!B§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            while(true)
            {
               addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
               §§goto(addr63);
            }
         }
         addr63:
         while(true)
         {
            addEventListener(Event.REMOVED_FROM_STAGE,this.§?!N§);
            if(_loc2_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function setIcon(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            removeChildren();
            do
            {
               addChild(param1);
            }
            while(_loc3_ && _loc2_);
            
         }
      }
      
      public function onEnterGUI() : void
      {
      }
      
      public function onLeaveGUI() : void
      {
      }
      
      public function update(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(parent)
            {
               if(!_loc3_)
               {
                  x = parent.mouseX;
                  do
                  {
                     y = parent.mouseY;
                  }
                  while(_loc3_);
                  
                  addr64:
               }
               §§goto(addr64);
            }
            return;
         }
         §§goto(addr64);
      }
      
      public function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(parent)
            {
               do
               {
                  x = parent.mouseX;
                  do
                  {
                     y = parent.mouseY;
                  }
                  while(!(_loc2_ || this));
                  
               }
               while(!(_loc2_ || _loc3_));
               
               addr67:
            }
            return;
         }
         §§goto(addr67);
      }
      
      public function §?!N§(param1:Event) : void
      {
      }
   }
}
