package §^!k§
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §5!r§ extends Sprite
   {
       
      
      public function §5!r§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            while(true)
            {
               addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
               while(_loc2_)
               {
                  addEventListener(Event.REMOVED_FROM_STAGE,this.§8!_§);
                  if(!_loc1_)
                  {
                     return;
                     addr43:
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      public function setIcon(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            removeChildren();
            do
            {
               addChild(param1);
            }
            while(_loc2_);
            
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
         if(_loc2_)
         {
            if(parent)
            {
               if(!_loc3_)
               {
                  x = parent.mouseX;
               }
               do
               {
                  y = parent.mouseY;
               }
               while(_loc3_ && _loc3_);
               
               addr45:
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
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
                  while(!_loc3_);
                  
               }
               while(_loc2_);
               
               addr56:
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function §8!_§(param1:Event) : void
      {
      }
   }
}
