package §+!c§
{
   import §7"a§.§1"R§;
   import §7"a§.§@4§;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §5"$§ extends Sprite
   {
       
      
      private var §>#T§:String;
      
      protected var §+=§:String;
      
      protected var §<!x§:§@4§;
      
      public function §5"$§(param1:String, param2:String = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§>#T§ = param1;
            }
            addr107:
         }
         while(true)
         {
            §§push(this);
            if(_loc3_ || param1)
            {
               §§push(param2);
               if(_loc3_)
               {
                  §§push(§§pop());
                  if(_loc3_ || _loc3_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc4_ && this))
                        {
                           addr75:
                           §§pop();
                           addr76:
                           §§push(§@4§.§ R§);
                           if(_loc3_ || this)
                           {
                           }
                           addr86:
                           §§pop().§+=§ = §§pop();
                           continue;
                        }
                        §§goto(addr86);
                        §§push(§§pop());
                     }
                     §§goto(addr86);
                  }
               }
               §§goto(addr75);
            }
            §§goto(addr76);
         }
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§<!x§ = §1"R§.§%!E§.§]i§(this.§>#T§,this.§+=§);
            do
            {
               this.§<!x§.addEventListener(Event.COMPLETE,this.§-#Y§);
               do
               {
                  addChild(this.§<!x§);
               }
               while(!(_loc1_ || _loc1_));
               
            }
            while(_loc2_);
            
         }
      }
      
      private function §-#Y§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            dispatchEvent(new Event(Event.COMPLETE));
            do
            {
               §§push(this.§<!x§);
               if(!(_loc3_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     §§goto(addr24);
                  }
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  §§push(this.§<!x§);
               }
               §§pop().removeEventListener(Event.COMPLETE,this.§-#Y§);
            }
            while(_loc3_ && _loc3_);
            
         }
         addr24:
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§<!x§)
            {
               if(_loc2_ || this)
               {
                  removeChild(this.§<!x§);
                  addr83:
                  while(true)
                  {
                     §1"R§.§%!E§.§1!^§(this.§>#T§,this.§+=§,this.§<!x§);
                     while(_loc2_)
                     {
                        this.§<!x§ = null;
                        if(!(_loc1_ && this))
                        {
                           §§goto(addr20);
                        }
                     }
                  }
                  addr83:
               }
               §§goto(addr83);
            }
            addr20:
            return;
         }
         §§goto(addr83);
      }
   }
}
