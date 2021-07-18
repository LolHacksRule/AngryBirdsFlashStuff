package §%i§
{
   import §1!t§.§!!G§;
   import §9@§.§3"!§;
   import flash.text.TextField;
   
   public class §4"9§ extends §!!G§
   {
       
      
      public var §-" §:TextField;
      
      private var §3M§:§3"!§ = null;
      
      public function §4"9§(param1:XML, param2:§0!Y§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
            while(true)
            {
               this.§-" § = mClip.getChildByName("text") as TextField;
               loop1:
               while(true)
               {
                  if(param1.@text)
                  {
                     if(!_loc3_)
                     {
                        this.setText(param1.@text);
                     }
                     while(true)
                     {
                     }
                     addr95:
                  }
                  loop3:
                  for(; param1.@tabIndex; §§goto(addr95))
                  {
                     if(_loc4_ || param1)
                     {
                        if(!_loc4_)
                        {
                           continue;
                        }
                        if(!_loc4_)
                        {
                           break loop1;
                        }
                        this.§-" §.tabIndex = param1.@tabIndex;
                        while(true)
                        {
                           break loop3;
                        }
                        addr84:
                     }
                     §§goto(addr84);
                  }
                  while(!mClip.mouseEnabled)
                  {
                     if(!_loc3_)
                     {
                        if(_loc3_)
                        {
                           continue loop1;
                        }
                        this.setEnabled(mClip.mouseEnabled);
                     }
                     if(_loc4_ || param2)
                     {
                        break;
                     }
                     §§goto(addr84);
                  }
                  return;
               }
            }
         }
         §§goto(addr84);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.setEnabled(param1);
            while(this.§-" §)
            {
               if(!_loc3_)
               {
                  this.§-" §.mouseEnabled = mClip.mouseEnabled;
               }
               if(_loc2_)
               {
                  addr46:
                  break;
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function setText(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§-" §.text = param1;
         }
      }
      
      public function § do§() : String
      {
         return this.§-" §.text;
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.clear();
            loop0:
            while(true)
            {
               §§push(this.§3M§);
               if(_loc1_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.§-" § = null;
                        if(!(_loc2_ && this))
                        {
                           break;
                        }
                        addr59:
                        do
                        {
                           if(!_loc1_)
                           {
                              continue;
                           }
                        }
                        while(_loc2_);
                        
                        addr70:
                        continue loop0;
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                     return;
                  }
                  while(true)
                  {
                     §§push(this.§3M§);
                  }
               }
               while(true)
               {
                  §§pop().dispose();
                  while(true)
                  {
                     this.§3M§ = null;
                     §§goto(addr59);
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      public function §#!_§(param1:uint, param2:uint, param3:uint) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            this.§3M§ = new §3"!§(this.§-" §,param1,param2,param3);
         }
      }
      
      public function §;!c§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§3M§.dispose();
         }
         do
         {
            this.§3M§ = null;
         }
         while(!(_loc1_ || this));
         
      }
   }
}
