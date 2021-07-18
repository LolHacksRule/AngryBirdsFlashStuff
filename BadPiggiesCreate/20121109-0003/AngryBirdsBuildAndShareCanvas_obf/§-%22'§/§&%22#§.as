package §-"'§
{
   import §&!<§.§>!V§;
   import §=!7§.§!!]§;
   import §?!'§.Popup;
   import §]" §.§?"-§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §&"#§ extends Popup
   {
       
      
      private var §,!C§:int;
      
      private var §`3§:int = 0;
      
      public function §&"#§(param1:§>!V§, param2:XML)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super(param2,param1);
            while(true)
            {
               getItemByName("Button_Prev").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§-!4§);
               loop1:
               for(; !(_loc4_ && _loc3_); while(_loc3_ || this)
               {
                  while(true)
                  {
                     this.§,!C§ = getItemByName("Container_Tips").mClip.totalFrames;
                     §§goto(addr48);
                  }
               })
               {
                  getItemByName("Button_Next").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§#!6§);
                  while(true)
                  {
                     getItemByName("Container_Tips").goToFrame(this.§`3§ + 1,false);
                     continue loop1;
                     addr50:
                     if(_loc3_ || this)
                     {
                        (getItemByName("TextField_Page") as §!!]§).setText(§?"-§.§>!`§);
                        addr67:
                        if(!_loc4_)
                        {
                           return;
                           addr48:
                        }
                        while(!_loc4_)
                        {
                           §§goto(addr50);
                           §§goto(addr67);
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      public function §#!6§(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.§`3§ + 1);
            if(!_loc2_)
            {
               §§push(§§pop() % this.§,!C§);
            }
            §§pop().§`3§ = §§pop();
            loop0:
            while(true)
            {
               getItemByName("Container_Tips").goToFrame(this.§`3§ + 1,false);
               do
               {
                  if(_loc3_ || param1)
                  {
                     continue;
                  }
                  continue loop0;
               }
               while(§§push(getItemByName("TextField_Page") as §!!]§), §§push((this.§`3§ + 1).toString() + "/"), if(_loc3_ || param1)
               {
                  §§push(§§pop() + this.§,!C§.toString());
               }, §§pop().setText(§§pop()), _loc2_ && _loc3_);
               
               §§goto(addr66);
            }
         }
         addr66:
      }
      
      public function §-!4§(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.§`3§ - 1);
            if(!(_loc3_ && this))
            {
               §§push(this.§,!C§);
               if(_loc2_)
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc3_)
                  {
                     addr109:
                     §§push(§§pop() % this.§,!C§);
                  }
                  §§pop().§`3§ = §§pop();
                  loop0:
                  while(true)
                  {
                     getItemByName("Container_Tips").goToFrame(this.§`3§ + 1,false);
                     do
                     {
                        if(_loc2_)
                        {
                           continue;
                        }
                        continue loop0;
                     }
                     while(§§push(getItemByName("TextField_Page") as §!!]§), §§push((this.§`3§ + 1).toString() + "/"), if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() + this.§,!C§.toString());
                     }, §§pop().setText(§§pop()), _loc3_ && this);
                     
                     §§goto(addr65);
                  }
               }
            }
            §§goto(addr109);
         }
         addr65:
      }
   }
}
