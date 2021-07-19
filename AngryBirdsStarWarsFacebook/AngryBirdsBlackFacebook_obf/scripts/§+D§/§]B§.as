package §+D§
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §]B§
   {
       
      
      private var §1"&§:Boolean = false;
      
      private var §7"k§:MovieClip;
      
      public function §]B§(param1:MovieClip, param2:Boolean = false)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§7"k§ = param1;
               addr85:
               while(true)
               {
                  this.§7"k§.buttonMode = true;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§7"k§.addEventListener(MouseEvent.CLICK,this.§^!R§);
            §§goto(addr53);
         }
      }
      
      public function get §[!8§() : DisplayObject
      {
         return this.§7"k§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§7"k§.removeEventListener(MouseEvent.CLICK,this.§^!R§);
         }
         do
         {
            this.§7"k§ = null;
         }
         while(_loc2_ && this);
         
      }
      
      private function §^!R§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.§0" §);
            if(_loc3_)
            {
               §§push(!§§pop());
            }
            §§pop().§0" § = §§pop();
         }
      }
      
      public function get §0" §() : Boolean
      {
         return this.§1"&§;
      }
      
      public function set §0" §(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§1"&§ = param1;
            while(true)
            {
               this.§7"k§.gotoAndStop(this.§1"&§.toString());
               loop1:
               while(_loc3_ || param1)
               {
                  while(true)
                  {
                     this.§[!8§.dispatchEvent(new Event(Event.CHANGE));
                     if(!(_loc2_ && this))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
   }
}
