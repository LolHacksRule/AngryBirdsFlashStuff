package §false§
{
   import §!y§.§2U§;
   import §"!E§.§;!j§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §0!4§ extends Popup
   {
       
      
      private var §0![§:int;
      
      private var §1<§:int = 0;
      
      public function §0!4§(param1:§2U§, param2:XML)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param2,param1);
            if(_loc3_)
            {
               getItemByName("Button_Prev").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§2>§);
               getItemByName("Button_Next").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§]!n§);
               if(!_loc4_)
               {
                  addr54:
                  getItemByName("Container_Tips").goToFrame(this.§1<§ + 1,false);
                  this.§0![§ = getItemByName("Container_Tips").mClip.totalFrames;
               }
            }
            §§push(getItemByName("TextField_Page") as §;!j§);
            §§push((this.§1<§ + 1).toString() + "/");
            if(!(_loc4_ && param2))
            {
               §§push(§§pop() + this.§0![§.toString());
            }
            §§pop().setText(§§pop());
            return;
         }
         §§goto(addr54);
      }
      
      public function §]!n§(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.§1<§ + 1);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() % this.§0![§);
            }
            §§pop().§1<§ = §§pop();
            if(!_loc2_)
            {
               getItemByName("Container_Tips").goToFrame(this.§1<§ + 1,false);
               if(!_loc2_)
               {
                  addr68:
                  §§push(getItemByName("TextField_Page") as §;!j§);
                  §§push((this.§1<§ + 1).toString() + "/");
                  if(_loc3_)
                  {
                     §§push(§§pop() + this.§0![§.toString());
                  }
                  §§pop().setText(§§pop());
               }
               return;
            }
         }
         §§goto(addr68);
      }
      
      public function §2>§(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this);
            §§push(this.§1<§ - 1);
            if(!_loc2_)
            {
               §§push(this.§0![§);
               if(_loc3_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc3_)
                  {
                     addr49:
                     §§push(§§pop() % this.§0![§);
                  }
                  §§pop().§1<§ = §§pop();
                  if(_loc3_ || _loc3_)
                  {
                     getItemByName("Container_Tips").goToFrame(this.§1<§ + 1,false);
                     addr58:
                     if(_loc3_)
                     {
                        §§push(getItemByName("TextField_Page") as §;!j§);
                        §§push((this.§1<§ + 1).toString() + "/");
                        if(_loc3_)
                        {
                           §§push(§§pop() + this.§0![§.toString());
                        }
                        §§pop().setText(§§pop());
                     }
                  }
                  return;
               }
            }
            §§goto(addr49);
         }
         §§goto(addr58);
      }
   }
}
