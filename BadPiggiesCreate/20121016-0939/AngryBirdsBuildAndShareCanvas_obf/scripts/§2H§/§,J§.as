package §2H§
{
   import §'p§.§`!<§;
   import §+h§.Popup;
   import §1"2§.§'s§;
   import §]!+§.§ 1§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §,J§ extends Popup
   {
       
      
      private var §"!v§:int;
      
      private var §8k§:int = 0;
      
      public function §,J§(param1:§'s§, param2:XML)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param2,param1);
            while(true)
            {
               getItemByName("Button_Prev").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§?>§);
               loop3:
               while(_loc3_ || param2)
               {
                  this.§"!v§ = getItemByName("Container_Tips").mClip.totalFrames;
                  do
                  {
                     (getItemByName("TextField_Page") as §`!<§).setText(§ 1§.§?_§);
                  }
                  while(!(_loc3_ || param1));
                  
                  if(!_loc3_)
                  {
                     continue;
                  }
                  addr41:
                  if(!(_loc4_ && _loc3_))
                  {
                     addr48:
                     if(!(_loc3_ || param1))
                     {
                        while(true)
                        {
                           getItemByName("Button_Next").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§<7§);
                           addr103:
                           while(true)
                           {
                              getItemByName("Container_Tips").goToFrame(this.§8k§ + 1,false);
                              continue loop3;
                              §§goto(addr41);
                           }
                           §§goto(addr48);
                        }
                        addr124:
                     }
                     return;
                  }
                  §§goto(addr103);
               }
            }
         }
         §§goto(addr124);
      }
      
      public function §<7§(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this);
            §§push(this.§8k§ + 1);
            if(!(_loc2_ && _loc3_))
            {
               §§push(§§pop() % this.§"!v§);
            }
            §§pop().§8k§ = §§pop();
            while(true)
            {
               getItemByName("Container_Tips").goToFrame(this.§8k§ + 1,false);
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     §§push(getItemByName("TextField_Page") as §`!<§);
                     §§push((this.§8k§ + 1).toString() + "/");
                     if(_loc3_)
                     {
                        §§push(§§pop() + this.§"!v§.toString());
                     }
                     §§pop().setText(§§pop());
                     if(!_loc2_)
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
      
      public function §?>§(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.§8k§ - 1);
            if(!(_loc3_ && _loc2_))
            {
               §§push(this.§"!v§);
               if(_loc2_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc2_ || this)
                  {
                     addr109:
                     §§push(§§pop() % this.§"!v§);
                  }
                  §§pop().§8k§ = §§pop();
                  do
                  {
                     getItemByName("Container_Tips").goToFrame(this.§8k§ + 1,false);
                     do
                     {
                        §§push(getItemByName("TextField_Page") as §`!<§);
                        §§push((this.§8k§ + 1).toString() + "/");
                        if(!_loc3_)
                        {
                           §§push(§§pop() + this.§"!v§.toString());
                        }
                        §§pop().setText(§§pop());
                     }
                     while(_loc3_ && this);
                     
                  }
                  while(_loc3_);
                  
                  return;
                  addr111:
               }
            }
            §§goto(addr109);
         }
         §§goto(addr111);
      }
   }
}
